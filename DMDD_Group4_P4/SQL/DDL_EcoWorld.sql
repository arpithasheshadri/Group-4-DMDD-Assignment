-- create database EcoWorld
CREATE DATABASE EcoWorld
USE EcoWorld 
GO

-- create Account table
CREATE TABLE Account
(
    AccountID INT PRIMARY KEY,
    Username VARCHAR(255),
    Password VARCHAR(255)
);

-- create Role table with Check constraint on Role Type
CREATE TABLE Role
(
    RoleID INT PRIMARY KEY,
    RoleType VARCHAR(255) CHECK (RoleType IN ('Customer Service Representative', 'Warehouse Manager', 'Sales Associate', 'Marketing Specialist', 'Financial Analyst')),
    MonthlySalary DECIMAL(10, 2)
);

-- create Supplier table
CREATE TABLE Supplier
(
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactInfo VARCHAR(255),
    AddressLine1 VARCHAR(255),
    City VARCHAR(255),
    ZipCode VARCHAR(255)
);

-- create Promotion table
CREATE TABLE Promotion
(
    PromotionID INT PRIMARY KEY,
    OfferName VARCHAR(255),
    OfferPercentage DECIMAL(5, 2),
    StartDate DATE,
    EndDate DATE
);

-- create Product table
CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductDescription TEXT,
    ProductPrice DECIMAL(10, 2),
    BrandName VARCHAR(255),
    Size VARCHAR(50),
    Pattern VARCHAR(255),
    Material VARCHAR(255)
);

-- create Customer table with Check constraint on email
CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY,
    AccountID INT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) CHECK (Email LIKE '%@%.%'),
    ContactInfo VARCHAR(255),
    City VARCHAR(255),
    AddressLine1 VARCHAR(255),
    Zipcode VARCHAR(255),
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- create CustomerHelpline table
CREATE TABLE CustomerHelpline
(
    HelplineID INT PRIMARY KEY,
    CustomerID INT,
    Query TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- create Feedback table with Check constraint for rating
CREATE TABLE Feedback
(
    FeedbackID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Content TEXT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- create SupplyLine table
CREATE TABLE SupplyLine
(
    SupplierID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (SupplierID, ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- create Employee table
CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(255),
    DateJoined DATE,
    DateOfBirth DATE,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
);

-- create Ticket table
CREATE TABLE Ticket
(
    TicketID INT PRIMARY KEY,
    EmployeeID INT,
    HelplineID INT,
    Status VARCHAR(50),
    TimeTaken INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (HelplineID) REFERENCES CustomerHelpline(HelplineID)
);

-- create Order table
CREATE TABLE [Order]
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    PromotionID INT Null,
    EmployeeID INT,
    OrderDate DATE,
    OrderStatus VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PromotionID) REFERENCES Promotion(PromotionID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- create Invoice table
CREATE TABLE Invoice
(
    InvoiceID INT PRIMARY KEY,
    OrderID INT,
    InvoiceDate DATE,
    OrderTotal DECIMAL(20,2)
        FOREIGN KEY (OrderID) REFERENCES [Order](OrderID)
);

-- create Payment table
CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    InvoiceID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(20, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);

-- create Shipment table
CREATE TABLE Shipment
(
    TrackingID INT PRIMARY KEY,
    OrderID INT,
    ExpectedDeliveryDate DATE,
    DeliveryCode VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID)
);

-- create OrderLine table
CREATE TABLE OrderLine
(
    ProductID INT,
    OrderID INT,
    OrderQuantity INT,
    PRIMARY KEY (ProductID, OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID)
);