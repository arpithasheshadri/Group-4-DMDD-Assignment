-- Indexing
-- OrderDate index -> makes it easier to access Order by OrderDate
CREATE INDEX IX_OrderDate ON [Order](OrderDate);

-- BrandName index -> makes it easier to search Product by BrandName
CREATE INDEX IX_BrandName ON Product(BrandName);

-- Rating index -> makes it easier to search Product based on Rating
CREATE INDEX IX_Rating ON Feedback(Rating);

-- RoleType index -> makes it easier to search Employee based on Role
CREATE INDEX IX_Role_RoleType ON Role(RoleType);

-- User Defined Functions (UDFs)

-- CalculateOrderTotal -> calculates the total order price based on Ordered Quantity and Promotion Applied
CREATE FUNCTION CalculateOrderTotal
(
    @OrderID INT
)
RETURNS DECIMAL(20, 2)
AS
BEGIN
    DECLARE @Total DECIMAL(20, 2);


    -- Calculate total without considering promotions
    SELECT @Total = SUM(ol.OrderQuantity * p.ProductPrice)
    FROM OrderLine ol
        JOIN Product p ON ol.ProductID = p.ProductID
    WHERE ol.OrderID = @OrderID;


    -- Apply promotion if exists
    SELECT @Total = @Total * (1 - ISNULL(pr.OfferPercentage / 100, 0))
    FROM [Order] o
        LEFT JOIN Promotion pr ON o.PromotionID = pr.PromotionID
    WHERE o.OrderID = @OrderID;


    RETURN @Total;
END;

-- Views

-- Entire Order Details 
CREATE VIEW OrderDetails
AS
    SELECT
        o.OrderID,
        o.OrderDate,
        o.OrderStatus,
        c.FirstName,
        c.LastName,
        c.Email,
        STRING_AGG(CAST(p.ProductDescription AS VARCHAR), ', ') AS ProductDescription,
        SUM(p.ProductPrice) AS TotalProductPrice,
        SUM(ol.OrderQuantity) AS TotalOrderedQuantity,
        SUM(dbo.CalculateOrderTotal(o.OrderID)) AS TotalPrice
    FROM [Order] o
        JOIN Customer c ON o.CustomerID = c.CustomerID
        JOIN OrderLine ol ON o.OrderID = ol.OrderID
        JOIN Product p ON ol.ProductID = p.ProductID
    GROUP BY o.OrderID,o.OrderDate, o.OrderStatus, c.FirstName, c.LastName, c.Email;


--Yearly Sales Summary 
CREATE VIEW SalesSummary
AS
    SELECT DATEPART(YEAR, o.OrderDate) AS OrderYear, DATEPART(MONTH, o.OrderDate) AS OrderMonth, COUNT(o.OrderID) AS NumOrders, SUM(dbo.CalculateOrderTotal(o.OrderID)) AS TotalSalesAmount, AVG(dbo.CalculateOrderTotal(o.OrderID)) AS AvgOrderValue
    FROM [Order] o
        JOIN OrderLine ol ON o.OrderID = ol.OrderID
        JOIN Product p ON ol.ProductID = p.ProductID
    GROUP BY DATEPART(YEAR, o.OrderDate), DATEPART(MONTH, o.OrderDate);


-- OrdersByBrand
CREATE VIEW OrdersByBrand
AS
    SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName, p.BrandName, ol.OrderQuantity, ol.ProductID
    FROM [Order] o
        JOIN Customer c ON o.CustomerID = c.CustomerID
        JOIN OrderLine ol ON o.OrderID = ol.OrderID
        JOIN Product p ON ol.ProductID = p.ProductID;


-- Brand X No of Products
CREATE VIEW BrandCount
AS
    SELECT BrandName, COUNT(*) AS ProductCount
    FROM Product
    GROUP BY BrandName;


--Product Material Count
CREATE VIEW ProductMaterialCount
AS
    SELECT Material, COUNT(ProductID) AS TotalProducts
    FROM Product
    GROUP BY Material;


-- ProductPatternCount
CREATE VIEW ProductPatternCount
AS
    SELECT Pattern, COUNT(ProductID) AS TotalProducts
    FROM Product
    GROUP BY Pattern;


-- Get Cities where suppliers are present
CREATE VIEW SupplierCity
AS
    SELECT City, COUNT(*) AS SupplierCount
    FROM Supplier
    GROUP BY City;


-- Cities from where Customers have placed orders
CREATE VIEW CustomerCityCount
AS
    SELECT City, COUNT(*) AS CustomerCount
    FROM Customer
    GROUP BY City;


-- Customer Feedback for Product
CREATE VIEW CustomerFeedbackProduct
AS
    SELECT c.CustomerID, c.FirstName, c.LastName, f.FeedbackID, f.Content, f.Rating, p.ProductID, p.ProductDescription
    FROM Customer c
        JOIN Feedback f ON c.CustomerID = f.CustomerID
        JOIN Product p ON f.ProductID = p.ProductID;


-- Material X Order
CREATE VIEW materialsOrdered
AS
    SELECT p.Material, COUNT(*) AS MaterialCount
    FROM OrderLine ol
        JOIN Product p ON ol.ProductID = p.ProductID
    GROUP BY p.Material;

-- Stored Procedure

-- CreateOrderLine
CREATE PROCEDURE CreateOrderLine
    @OrderID INT,
    @ProductID INT,
    @OrderQuantity INT
AS
BEGIN
    SET NOCOUNT ON;
    -- Insert into OrderLine table
    INSERT INTO OrderLine
        (ProductID, OrderID, OrderQuantity)
    VALUES
        (@ProductID, @OrderID, @OrderQuantity);
    -- Check if all order lines are filled and update order status
    UPDATE [Order] SET OrderStatus = 'Processing' WHERE OrderID = @OrderID;

END


-- ProcessOrder
CREATE PROCEDURE ProcessOrder
    @OrderID INT
AS
BEGIN
    DECLARE @ExpectedDeliveryDate DATE;
    SET @ExpectedDeliveryDate = DATEADD(DAY, RAND()*(10-6)+6, GETDATE());
    DECLARE @RandomNumber INT;

    -- Generate a random number between 1 and 3
    SET @RandomNumber = CAST(RAND() * 3 AS INT) + 1;

    DECLARE @PaymentMethod VARCHAR(50);

    -- Select payment method based on the random number
    SET @PaymentMethod = CASE @RandomNumber
                           WHEN 1 THEN 'PayPal'
                           WHEN 2 THEN 'Cash'
                           ELSE 'Credit Card'
                       END;

    SET NOCOUNT ON;
    DECLARE @DeliveryCode VARCHAR(10);

    -- Generate a random prefix consisting of three uppercase letters
    DECLARE @Prefix CHAR(3) =
       CHAR(65 + CAST(RAND() * 26 AS INT)) + -- Random uppercase letter
       CHAR(65 + CAST(RAND() * 26 AS INT)) + -- Random uppercase letter
       CHAR(65 + CAST(RAND() * 26 AS INT));
    -- Random uppercase letter

    -- Generate a random number between 1 and 999 to use in the delivery code
    SET @RandomNumber = CAST(RAND() * 999 AS INT);

    -- Concatenate the random prefix with the random number to form the delivery code
    SET @DeliveryCode = @Prefix + RIGHT('000' + CAST(@RandomNumber AS VARCHAR(3)), 3);

    DECLARE @LastTrackingID INT;
    SELECT TOP 1
        @LastTrackingID = TrackingID
    FROM Shipment
    ORDER BY TrackingID DESC;

    INSERT INTO Shipment
        (TrackingID, OrderID, ExpectedDeliveryDate, DeliveryCode)
    VALUES
        (@LastTrackingID + 1, @OrderID, @ExpectedDeliveryDate, @DeliveryCode);

    DECLARE @LastPaymentID INT;
    SELECT TOP 1
        @LastPaymentID = PaymentID
    FROM Payment
    ORDER BY PaymentID DESC;

    DECLARE @LastInvoiceID INT;
    SELECT TOP 1
        @LastInvoiceID = InvoiceID
    FROM Invoice
    ORDER BY InvoiceID DESC;

    DECLARE @OrderTotal DECIMAL(20, 2);
    SET @OrderTotal = dbo.CalculateOrderTotal(@OrderID);

    -- Insert into Invoice table
    INSERT INTO Invoice
        (InvoiceID, OrderID, InvoiceDate, OrderTotal)
    VALUES
        (@LastInvoiceID + 1, @OrderID, GETDATE(), @OrderTotal);

    -- Insert into Payment table
    INSERT INTO Payment
        (PaymentID,InvoiceID, PaymentDate, PaymentAmount, PaymentMethod)
    VALUES
        (@LastPaymentID + 1, (SELECT InvoiceID
            FROM Invoice
            WHERE OrderID = @OrderID), GETDATE(),
            @OrderTotal, @PaymentMethod);
END

-- UpdateOrderStatus
CREATE PROCEDURE UpdateOrderStatus
    @OrderID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update order status to 'PROCESSING'
    UPDATE [Order] SET OrderStatus = 'PROCESSING' WHERE OrderID = @OrderID;
END

-- CreateTicket
CREATE PROCEDURE CreateTicket
    (
    @CustomerID INT,
    @Query TEXT
)
AS
BEGIN
    DECLARE @HelplineID INT;
    SELECT TOP 1
        @HelplineID = HelplineID
    FROM CustomerHelpline
    ORDER BY HelplineID DESC;

    -- Insert the customer query into the CustomerHelpline table
    INSERT INTO CustomerHelpline
        (HelplineID,CustomerID, Query)
    VALUES
        (@HelplineID +1, @CustomerID, @Query);

    -- Create a ticket for the customer query
    DECLARE @LastTicketID INT;
    SELECT TOP 1
        @LastTicketID = TicketID
    FROM Ticket
    ORDER BY TicketID DESC;

    DECLARE @EmployeeID INT;
    SET @EmployeeID = (SELECT TOP 1
        EmployeeID
    FROM (VALUES
            (1),
            (6),
            (11)) AS Employee(EmployeeID)
    ORDER BY NEWID());

    INSERT INTO Ticket
        (TicketID,EmployeeID, HelplineID, Status)
    VALUES
        (@LastTicketID + 1, @EmployeeID, @HelplineID, 'OPEN');

END;


-- DML Triggers 

-- OrderStatusChangedTrigger
CREATE TRIGGER OrderStatusChangedTrigger
ON dbo.[Order]
AFTER UPDATE
AS
BEGIN
    IF UPDATE(OrderStatus)
   BEGIN
        DECLARE @OldStatus VARCHAR(50), @NewStatus VARCHAR(50), @OrderID INT;

        SELECT @OldStatus = OrderStatus
        FROM deleted;

        SELECT @NewStatus = OrderStatus
        FROM inserted;

        SELECT @OrderID = OrderID
        FROM inserted;

        IF @OldStatus = 'Pending' AND @NewStatus = 'Processing'
       BEGIN
            EXEC ProcessOrder @OrderID = @OrderID;
        END
    END
END;

-- PreventDeleteTrigger -> Plan is to enchance this by adding one more trigger which will auto delete 
--the order if the order stays in pending for more than 10 days

CREATE TRIGGER PreventDeleteTrigger
ON dbo.[Order]
INSTEAD OF DELETE
AS
BEGIN
    RAISERROR ('Deletion not allowed on this table.', 16, 1);
END;









