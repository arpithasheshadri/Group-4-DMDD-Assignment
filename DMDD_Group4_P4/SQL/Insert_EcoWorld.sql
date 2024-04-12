-- Insert into Account
INSERT INTO Account
    (AccountID, Username, Password)
VALUES
    (1, 'messi_10_goat', ENCRYPTBYPASSPHRASE('secret', 'password1')),
    (2, 'kohli_18_theking', ENCRYPTBYPASSPHRASE('secret', 'password2')),
    (3, 'ronaldo_7_cris', ENCRYPTBYPASSPHRASE('secret', 'password3')),
    (4, 'sachinmaster11_blaster', ENCRYPTBYPASSPHRASE('secret', 'password4')),
    (5, 'neymar_11_jr', ENCRYPTBYPASSPHRASE('secret', 'password5')),
    (6, 'steyn_10_gun', ENCRYPTBYPASSPHRASE('secret', 'password6')),
    (7, 'lionel_30_messi', ENCRYPTBYPASSPHRASE('secret', 'password7')),
    (8, 'viv_3_richards', ENCRYPTBYPASSPHRASE('secret', 'password8')),
    (9, 'ronald_10_inho', ENCRYPTBYPASSPHRASE('secret', 'password9')),
    (10, 'dhoni_7_cool', ENCRYPTBYPASSPHRASE('secret', 'password10')),
    (11, 'megan_15_rapinoe', ENCRYPTBYPASSPHRASE('secret', 'password11')),
    (12, 'serena_23_williams', ENCRYPTBYPASSPHRASE('secret', 'password12')),
    (13, 'roger_20_federer', ENCRYPTBYPASSPHRASE('secret', 'password13')),
    (14, 'lindsey_8_vonn', ENCRYPTBYPASSPHRASE('secret', 'password14')),
    (15, 'simone_12_biles', ENCRYPTBYPASSPHRASE('secret', 'password15')),
    (16, 'usain_9_bolt', ENCRYPTBYPASSPHRASE('secret', 'password16')),
    (17, 'chris_74_evans', ENCRYPTBYPASSPHRASE('secret', 'password17')),
    (18, 'angelina_85_jolie', ENCRYPTBYPASSPHRASE('secret', 'password18')),
    (19, 'leonardo_77_di', ENCRYPTBYPASSPHRASE('secret', 'password19')),
    (20, 'tom_63_hanks', ENCRYPTBYPASSPHRASE('secret', 'password20'));

-- Insert into Role
INSERT INTO Role
    (RoleID, RoleType, MonthlySalary)
VALUES
    (1, 'Customer Service Representative', ROUND(RAND()*(140000-25000)+25000, 2)),
    (2, 'Warehouse Manager', ROUND(RAND()*(140000-25000)+25000, 2)),
    (3, 'Sales Associate', ROUND(RAND()*(140000-25000)+25000, 2)),
    (4, 'Marketing Specialist', ROUND(RAND()*(140000-25000)+25000, 2)),
    (5, 'Financial Analyst', ROUND(RAND()*(140000-25000)+25000, 2)),
    (6, 'Customer Service Representative', ROUND(RAND()*(140000-25000)+25000, 2)),
    (7, 'Warehouse Manager', ROUND(RAND()*(140000-25000)+25000, 2)),
    (8, 'Sales Associate', ROUND(RAND()*(140000-25000)+25000, 2)),
    (9, 'Marketing Specialist', ROUND(RAND()*(140000-25000)+25000, 2)),
    (10, 'Financial Analyst', ROUND(RAND()*(140000-25000)+25000, 2));

-- Insert into Supplier
INSERT INTO Supplier
    (SupplierID, SupplierName, ContactInfo, AddressLine1, City, ZipCode)
VALUES
    (1, 'Nike', 'contact@nike.com', '1 Bowerman Dr', 'Beaverton', '97005'),
    (2, 'Levi Strauss & Co.', 'info@levi.com', '1155 Battery Street', 'San Francisco', '94111'),
    (3, 'Zara', 'info@zara.com', 'Arteijo, Spain', 'Arteijo', '15142'),
    (4, 'Tommy Hilfiger', 'info@tommy.com', '285 Madison Ave', 'New York', '10016'),
    (5, 'Ralph Lauren', 'info@ralphlauren.com', '650 Madison Ave', 'New York', '10022'),
    (6, 'H&M', 'info@hm.com', 'Drottninggatan 21', 'Stockholm', '111 51'),
    (7, 'Adidas', 'info@adidas.com', 'Adi-Dassler-Strasse 1', 'Herzogenaurach', '91074'),
    (8, 'Gap', 'contact@gap.com', '2 Folsom St.', 'San Francisco', '94105'),
    (9, 'Calvin Klein', 'info@calvinklein.com', '205 West 39th Street', 'New York', '10018'),
    (10, 'Puma', 'info@puma.com', 'Puma Way 1', 'Herzogenaurach', '91074'),
    (11, 'Forever 21', 'info@forever21.com', '3880 N Mission Rd', 'Los Angeles', '90031'),
    (12, 'Hollister', 'info@hollisterco.com', '6301 Fitch Path', 'New Albany', '43054'),
    (13, 'American Eagle', 'info@americaneagle.com', '77 Hot Metal St', 'Pittsburgh', '15203'),
    (14, 'Eddie Bauer', 'info@eddiebauer.com', '10401 NE 8th St', 'Bellevue', '98004'),
    (15, 'Dockers', 'info@dockers.com', '250 Brannan St', 'San Francisco', '94107'),
    (16, 'Alpha Industries', 'info@alphaindustries.com', '14 Bellows Street', 'Braintree', '02184'),
    (17, 'Old Navy', 'info@oldnavy.com', '550 Terry A Francois Blvd', 'San Francisco', '94158'),
    (18, 'Abercrombie & Fitch', 'info@abercrombie.com', '6301 Fitch Path', 'New Albany', '43054'),
    (19, 'Banana Republic', 'info@bananarepublic.com', '2 Folsom St.', 'San Francisco', '94105'),
    (20, 'Target', 'info@target.com', '1000 Nicollet Mall', 'Minneapolis', '55403'),
    (21, 'Armani Exchange', 'info@armaniexchange.com', '1115 Fashion Dr', 'Nanuet', '10954'),
    (22, 'Topshop', 'info@topshop.com', '214 Oxford St', 'London', 'W1W 8LG'),
    (23, 'Under Armour', 'info@underarmour.com', '1020 Hull St', 'Baltimore', '21230'),
    (24, 'Express', 'info@express.com', '111 Water St', 'Columbus', '43215'),
    (25, 'Guess', 'info@guess.com', '1444 S Alameda St', 'Los Angeles', '90021'),
    (26, 'The North Face', 'info@thenorthface.com', '2701 Harbor Bay Pkwy', 'Alameda', '94502'),
    (27, 'Urban Outfitters', 'info@urbanoutfitters.com', '5000 S Broad St', 'Philadelphia', '19112'),
    (28, 'Vans', 'info@vans.com', '6550 Katella Ave', 'Cypress', '90630'),
    (29, 'Victoria ''s Secret', 'info@victoriassecret.com', '4 Limited Pkwy E', 'Reynoldsburg', '43068'),
    (30, 'Wrangler', 'info@wrangler.com', '400 N Elm St', 'Greensboro', '27401');

-- Insert into Promotion
INSERT INTO Promotion
    (PromotionID, OfferName, OfferPercentage, StartDate, EndDate)
VALUES
    (1, 'Spring Sale', 20.00, '2024-03-15', '2024-04-15'),
    (2, 'Summer Clearance', 30.00, '2024-06-01', '2024-06-30'),
    (3, 'Back to School', 25.00, '2024-08-01', '2024-08-31'),
    (4, 'Black Friday', 50.00, '2024-11-23', '2024-11-26'),
    (5, 'Cyber Monday', 40.00, '2024-11-26', '2024-11-27'),
    (6, 'Holiday Special', 35.00, '2024-12-01', '2025-01-01'),
    (7, 'Valentine''s Day Sale', 15.00, '2025-02-01', '2025-02-14'),
    (8, 'Spring Break', 20.00, '2025-03-01', '2025-03-31'),
    (9, 'Mother''s Day', 25.00, '2025-05-01', '2025-05-10'),
    (10, 'Father''s Day', 25.00, '2025-06-01', '2025-06-21');

-- Insert into Product
INSERT INTO Product
    (ProductID, ProductDescription, ProductPrice, BrandName, Size, Pattern, Material)
VALUES
    (1, 'Men''s T-shirt', 29.99, 'Nike', 'M', 'Solid', 'Cotton'),
    (2, 'Women''s Jeans', 49.99, 'Levi Strauss & Co.', 'S', 'Denim', 'Cotton'),
    (3, 'Women''s Dress', 59.99, 'Zara', 'M', 'Floral', 'Polyester'),
    (4, 'Men''s Polo Shirt', 34.99, 'Tommy Hilfiger', 'L', 'Checkered', 'Cotton'),
    (5, 'Men''s Jacket', 89.99, 'Ralph Lauren', 'XL', 'Plaid', 'Wool'),
    (6, 'Women''s Skirt', 39.99, 'H&M', 'S', 'Striped', 'Cotton'),
    (7, 'Men''s Shorts', 24.99, 'Nike', 'L', 'Solid', 'Polyester'),
    (8, 'Women''s Blouse', 29.99, 'Zara', 'XS', 'Polka Dot', 'Chiffon'),
    (9, 'Men''s Hoodie', 59.99, 'Adidas', 'M', 'Graphic', 'Cotton'),
    (10, 'Women''s Sweater', 44.99, 'Gap', 'S', 'Striped', 'Wool'),
    (11, 'Men''s Chinos', 39.99, 'H&M', '32', 'Solid', 'Cotton'),
    (12, 'Women''s Dress Pants', 49.99, 'Express', '6', 'Solid', 'Polyester'),
    (13, 'Men''s Casual Shirt', 29.99, 'Uniqlo', 'L', 'Checkered', 'Cotton'),
    (14, 'Women''s Blazer', 79.99, 'Calvin Klein', 'M', 'Solid', 'Polyester'),
    (15, 'Men''s Denim Jacket', 69.99, 'Gap', 'L', 'Denim', 'Cotton'),
    (16, 'Women''s Cardigan', 34.99, 'Old Navy', 'XS', 'Striped', 'Acrylic'),
    (17, 'Men''s Cargo Shorts', 29.99, 'Columbia', 'XL', 'Solid', 'Nylon'),
    (18, 'Women''s Maxi Dress', 54.99, 'Forever 21', 'S', 'Floral', 'Rayon'),
    (19, 'Men''s Sweatpants', 24.99, 'Under Armour', 'M', 'Solid', 'Polyester'),
    (20, 'Women''s Jumpsuit', 59.99, 'Zara', 'M', 'Polka Dot', 'Chiffon'),
    (21, 'Men''s Puffer Jacket', 99.99, 'The North Face', 'XXL', 'Plaid', 'Down'),
    (22, 'Women''s Leggings', 19.99, 'Lululemon', 'XS', 'Solid', 'Spandex'),
    (23, 'Men''s Dress Shoes', 79.99, 'Cole Haan', '10', 'Solid', 'Leather'),
    (24, 'Women''s High Heels', 49.99, 'Steve Madden', '7', 'Solid', 'Synthetic'),
    (25, 'Men''s Swim Trunks', 34.99, 'Quiksilver', 'L', 'Striped', 'Polyester'),
    (26, 'Women''s Romper', 39.99, 'Urban Outfitters', 'S', 'Floral', 'Cotton'),
    (27, 'Men''s V-neck Sweater', 44.99, 'Gap', 'XL', 'Solid', 'Wool'),
    (28, 'Women''s Midi Skirt', 29.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (29, 'Men''s Baseball Cap', 19.99, 'New Era', 'One Size', 'Solid', 'Cotton'),
    (30, 'Women''s Tank Top', 14.99, 'Forever 21', 'XS', 'Solid', 'Cotton'),
    (31, 'Men''s Cargo Pants', 49.99, 'Dockers', '34', 'Solid', 'Cotton'),
    (32, 'Women''s Denim Jacket', 59.99, 'American Eagle', 'S', 'Denim', 'Cotton'),
    (33, 'Men''s Flannel Shirt', 39.99, 'Eddie Bauer', 'M', 'Plaid', 'Cotton'),
    (34, 'Women''s Trench Coat', 89.99, 'Burberry', 'M', 'Solid', 'Cotton'),
    (35, 'Men''s Track Jacket', 54.99, 'Puma', 'L', 'Striped', 'Polyester'),
    (36, 'Women''s Shift Dress', 44.99, 'Zara', 'S', 'Floral', 'Polyester'),
    (37, 'Men''s Bomber Jacket', 79.99, 'Alpha Industries', 'XL', 'Solid', 'Nylon'),
    (38, 'Women''s Crop Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (39, 'Men''s Dress Pants', 59.99, 'Banana Republic', '32x32', 'Solid', 'Wool'),
    (40, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (41, 'Men''s Henley Shirt', 29.99, 'Gap', 'M', 'Solid', 'Cotton'),
    (42, 'Women''s Flare Jeans', 49.99, 'Free People', '26', 'Solid', 'Denim'),
    (43, 'Men''s Leather Jacket', 129.99, 'AllSaints', 'L', 'Solid', 'Leather'),
    (44, 'Women''s Shift Skirt', 34.99, 'Zara', 'XS', 'Checkered', 'Polyester'),
    (45, 'Men''s Slim Fit Jeans', 44.99, 'Hollister', '30x32', 'Solid', 'Cotton'),
    (46, 'Women''s Wrap Top', 19.99, 'Express', 'S', 'Solid', 'Polyester'),
    (47, 'Men''s Pajama Set', 29.99, 'Tommy John', 'L', 'Striped', 'Cotton'),
    (48, 'Women''s Puffer Vest', 59.99, 'Patagonia', 'M', 'Solid', 'Nylon'),
    (49, 'Men''s Oxford Shirt', 34.99, 'J.Crew', 'L', 'Solid', 'Cotton'),
    (50, 'Women''s Sweater Dress', 49.99, 'Gap', 'S', 'Solid', 'Wool'),
    (51, 'Men''s Corduroy Pants', 39.99, 'Urban Outfitters', '32', 'Solid', 'Cotton'),
    (52, 'Women''s Kimono', 29.99, 'Anthropologie', 'One Size', 'Floral', 'Viscose'),
    (53, 'Men''s Quilted Jacket', 69.99, 'Barbour', 'XL', 'Solid', 'Polyester'),
    (54, 'Women''s Lace Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Nylon'),
    (55, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (56, 'Women''s Cropped Jeans', 39.99, 'Levi Strauss & Co.', '28', 'Solid', 'Denim'),
    (57, 'Men''s Cargo Jacket', 89.99, 'Carhartt', 'XXL', 'Solid', 'Canvas'),
    (58, 'Women''s Wide Leg Pants', 44.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (59, 'Men''s Rugby Shirt', 34.99, 'Ralph Lauren', 'L', 'Striped', 'Cotton'),
    (60, 'Women''s Off Shoulder Top', 29.99, 'H&M', 'S', 'Solid', 'Cotton'),
    (61, 'Men''s Fleece Pullover', 54.99, 'The North Face', 'L', 'Solid', 'Polyester'),
    (62, 'Women''s A-line Skirt', 34.99, 'Forever 21', 'XS', 'Solid', 'Cotton'),
    (63, 'Men''s Linen Shirt', 39.99, 'Banana Republic', 'M', 'Solid', 'Linen'),
    (64, 'Women''s Utility Jacket', 69.99, 'Madewell', 'M', 'Solid', 'Cotton'),
    (65, 'Men''s Performance Polo', 44.99, 'Under Armour', 'XL', 'Solid', 'Polyester'),
    (66, 'Women''s Ruffle Blouse', 34.99, 'Express', 'S', 'Solid', 'Polyester'),
    (67, 'Men''s Hooded Sweatshirt', 49.99, 'Gap', 'L', 'Solid', 'Cotton'),
    (68, 'Women''s Cargo Pants', 39.99, 'American Eagle', '4', 'Solid', 'Cotton'),
    (69, 'Men''s Button Down Shirt', 29.99, 'J.Crew', 'L', 'Solid', 'Cotton'),
    (70, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (71, 'Men''s Jogger Pants', 44.99, 'Nike', 'M', 'Solid', 'Polyester'),
    (72, 'Women''s Turtleneck Sweater', 49.99, 'Gap', 'XS', 'Solid', 'Wool'),
    (73, 'Men''s Slim Fit Chinos', 39.99, 'Uniqlo', '32x32', 'Solid', 'Cotton'),
    (74, 'Women''s Tunic Dress', 34.99, 'Old Navy', 'M', 'Solid', 'Rayon'),
    (75, 'Men''s Mock Neck Sweater', 49.99, 'H&M', 'XL', 'Solid', 'Cotton'),
    (76, 'Women''s Wrap Skirt', 29.99, 'Zara', 'S', 'Floral', 'Polyester'),
    (77, 'Men''s Cargo Shorts', 34.99, 'Columbia', 'M', 'Solid', 'Nylon'),
    (78, 'Women''s Peplum Top', 24.99, 'Forever 21', 'XS', 'Solid', 'Polyester'),
    (79, 'Men''s Track Pants', 39.99, 'Adidas', 'L', 'Solid', 'Polyester'),
    (80, 'Women''s Cropped Hoodie', 29.99, 'Nike', 'M', 'Solid', 'Cotton'),
    (81, 'Men''s Crewneck Sweatshirt', 44.99, 'Gap', 'XL', 'Solid', 'Cotton'),
    (82, 'Women''s Denim Skirt', 39.99, 'Levi Strauss & Co.', 'S', 'Solid', 'Denim'),
    (83, 'Men''s Wool Coat', 99.99, 'Calvin Klein', 'L', 'Solid', 'Wool'),
    (84, 'Women''s Pleated Dress', 59.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (85, 'Men''s Track Jacket', 49.99, 'Puma', 'XL', 'Striped', 'Polyester'),
    (86, 'Women''s Trench Coat', 89.99, 'Burberry', 'M', 'Solid', 'Cotton'),
    (87, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (88, 'Women''s Tankini', 29.99, 'Target', 'M', 'Solid', 'Nylon'),
    (89, 'Men''s Cargo Pants', 39.99, 'Dockers', '33x32', 'Solid', 'Cotton'),
    (90, 'Women''s Peasant Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (91, 'Men''s Pullover Hoodie', 49.99, 'Hollister', 'L', 'Solid', 'Cotton'),
    (92, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (93, 'Men''s Henley Shirt', 29.99, 'Gap', 'M', 'Solid', 'Cotton'),
    (94, 'Women''s Denim Jacket', 59.99, 'American Eagle', 'S', 'Denim', 'Cotton'),
    (95, 'Men''s Flannel Shirt', 39.99, 'Eddie Bauer', 'M', 'Plaid', 'Cotton'),
    (96, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (97, 'Men''s Bomber Jacket', 79.99, 'Alpha Industries', 'XL', 'Solid', 'Nylon'),
    (98, 'Women''s Crop Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (99, 'Men''s Dress Pants', 59.99, 'Banana Republic', '32x32', 'Solid', 'Wool'),
    (100, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (101, 'Men''s Jogger Pants', 39.99, 'H&M', 'M', 'Solid', 'Cotton'),
    (102, 'Women''s Crewneck Sweatshirt', 29.99, 'Gap', 'XS', 'Solid', 'Cotton'),
    (103, 'Men''s Slim Fit Chinos', 44.99, 'Uniqlo', '32x32', 'Solid', 'Cotton'),
    (104, 'Women''s Flared Jeans', 49.99, 'Levi Strauss & Co.', '28', 'Solid', 'Denim'),
    (105, 'Men''s Utility Jacket', 79.99, 'Carhartt', 'XXL', 'Solid', 'Canvas'),
    (106, 'Women''s Wide Leg Trousers', 44.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (107, 'Men''s Striped Polo Shirt', 34.99, 'Ralph Lauren', 'L', 'Striped', 'Cotton'),
    (108, 'Women''s Scoop Neck T-shirt', 19.99, 'Old Navy', 'M', 'Solid', 'Cotton'),
    (109, 'Men''s Pajama Set', 29.99, 'Tommy John', 'L', 'Striped', 'Cotton'),
    (110, 'Women''s Puffer Vest', 59.99, 'Patagonia', 'M', 'Solid', 'Nylon'),
    (111, 'Men''s Oxford Shirt', 34.99, 'J.Crew', 'L', 'Solid', 'Cotton'),
    (112, 'Women''s Turtleneck Sweater', 49.99, 'Gap', 'XS', 'Solid', 'Wool'),
    (113, 'Men''s Corduroy Pants', 39.99, 'Urban Outfitters', '32', 'Solid', 'Cotton'),
    (114, 'Women''s Kimono', 29.99, 'Anthropologie', 'One Size', 'Floral', 'Viscose'),
    (115, 'Men''s Quilted Jacket', 69.99, 'Barbour', 'XL', 'Solid', 'Polyester'),
    (116, 'Women''s Lace Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Nylon'),
    (117, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (118, 'Women''s Cropped Jeans', 39.99, 'Levi Strauss & Co.', '28', 'Solid', 'Denim'),
    (119, 'Men''s Cargo Jacket', 89.99, 'Carhartt', 'XXL', 'Solid', 'Canvas'),
    (120, 'Women''s Wide Leg Pants', 44.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (121, 'Men''s Rugby Shirt', 34.99, 'Ralph Lauren', 'L', 'Striped', 'Cotton'),
    (122, 'Women''s Off Shoulder Top', 29.99, 'H&M', 'S', 'Solid', 'Cotton'),
    (123, 'Men''s Fleece Pullover', 54.99, 'The North Face', 'L', 'Solid', 'Polyester'),
    (124, 'Women''s A-line Skirt', 34.99, 'Forever 21', 'XS', 'Solid', 'Cotton'),
    (125, 'Men''s Linen Shirt', 39.99, 'Banana Republic', 'M', 'Solid', 'Linen'),
    (126, 'Women''s Utility Jacket', 69.99, 'Madewell', 'M', 'Solid', 'Cotton'),
    (127, 'Men''s Performance Polo', 44.99, 'Under Armour', 'XL', 'Solid', 'Polyester'),
    (128, 'Women''s Ruffle Blouse', 34.99, 'Express', 'S', 'Solid', 'Polyester'),
    (129, 'Men''s Hooded Sweatshirt', 49.99, 'Gap', 'L', 'Solid', 'Cotton'),
    (130, 'Women''s Cargo Pants', 39.99, 'American Eagle', '4', 'Solid', 'Cotton'),
    (131, 'Men''s Button Down Shirt', 29.99, 'J.Crew', 'L', 'Solid', 'Cotton'),
    (132, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (133, 'Men''s Jogger Pants', 44.99, 'Nike', 'M', 'Solid', 'Polyester'),
    (134, 'Women''s Turtleneck Sweater', 49.99, 'Gap', 'XS', 'Solid', 'Wool'),
    (135, 'Men''s Slim Fit Chinos', 39.99, 'Uniqlo', '32x32', 'Solid', 'Cotton'),
    (136, 'Women''s Tunic Dress', 34.99, 'Old Navy', 'M', 'Solid', 'Rayon'),
    (137, 'Men''s Mock Neck Sweater', 49.99, 'H&M', 'XL', 'Solid', 'Cotton'),
    (138, 'Women''s Wrap Skirt', 29.99, 'Zara', 'S', 'Floral', 'Polyester'),
    (139, 'Men''s Cargo Shorts', 34.99, 'Columbia', 'M', 'Solid', 'Nylon'),
    (140, 'Women''s Peplum Top', 24.99, 'Forever 21', 'XS', 'Solid', 'Polyester'),
    (141, 'Men''s Track Pants', 39.99, 'Adidas', 'L', 'Solid', 'Polyester'),
    (142, 'Women''s Cropped Hoodie', 29.99, 'Nike', 'M', 'Solid', 'Cotton'),
    (143, 'Men''s Crewneck Sweatshirt', 44.99, 'Gap', 'XL', 'Solid', 'Cotton'),
    (144, 'Women''s Denim Skirt', 39.99, 'Levi Strauss & Co.', 'S', 'Solid', 'Denim'),
    (145, 'Men''s Wool Coat', 99.99, 'Calvin Klein', 'L', 'Solid', 'Wool'),
    (146, 'Women''s Pleated Dress', 59.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (147, 'Men''s Track Jacket', 49.99, 'Puma', 'XL', 'Striped', 'Polyester'),
    (148, 'Women''s Trench Coat', 89.99, 'Burberry', 'M', 'Solid', 'Cotton'),
    (149, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (150, 'Women''s Tankini', 29.99, 'Target', 'M', 'Solid', 'Nylon'),
    (151, 'Men''s Cargo Pants', 39.99, 'Dockers', '33x32', 'Solid', 'Cotton'),
    (152, 'Women''s Peasant Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (153, 'Men''s Pullover Hoodie', 49.99, 'Hollister', 'L', 'Solid', 'Cotton'),
    (154, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (155, 'Men''s Henley Shirt', 29.99, 'Gap', 'M', 'Solid', 'Cotton'),
    (156, 'Women''s Denim Jacket', 59.99, 'American Eagle', 'S', 'Denim', 'Cotton'),
    (157, 'Men''s Flannel Shirt', 39.99, 'Eddie Bauer', 'M', 'Plaid', 'Cotton'),
    (158, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (159, 'Men''s Bomber Jacket', 79.99, 'Alpha Industries', 'XL', 'Solid', 'Nylon'),
    (160, 'Women''s Crop Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (161, 'Men''s Dress Pants', 59.99, 'Banana Republic', '32x32', 'Solid', 'Wool'),
    (162, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (163, 'Men''s Crewneck Sweater', 49.99, 'Gap', 'XL', 'Solid', 'Cotton'),
    (164, 'Women''s Denim Skirt', 39.99, 'Levi Strauss & Co.', 'S', 'Solid', 'Denim'),
    (165, 'Men''s Wool Coat', 99.99, 'Calvin Klein', 'L', 'Solid', 'Wool'),
    (166, 'Women''s Pleated Dress', 59.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (167, 'Men''s Track Jacket', 49.99, 'Puma', 'XL', 'Striped', 'Polyester'),
    (168, 'Women''s Trench Coat', 89.99, 'Burberry', 'M', 'Solid', 'Cotton'),
    (169, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (170, 'Women''s Tankini', 29.99, 'Target', 'M', 'Solid', 'Nylon'),
    (171, 'Men''s Cargo Pants', 39.99, 'Dockers', '33x32', 'Solid', 'Cotton'),
    (172, 'Women''s Peasant Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (173, 'Men''s Pullover Hoodie', 49.99, 'Hollister', 'L', 'Solid', 'Cotton'),
    (174, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (175, 'Men''s Henley Shirt', 29.99, 'Gap', 'M', 'Solid', 'Cotton'),
    (176, 'Women''s Denim Jacket', 59.99, 'American Eagle', 'S', 'Denim', 'Cotton'),
    (177, 'Men''s Flannel Shirt', 39.99, 'Eddie Bauer', 'M', 'Plaid', 'Cotton'),
    (178, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (179, 'Men''s Bomber Jacket', 79.99, 'Alpha Industries', 'XL', 'Solid', 'Nylon'),
    (180, 'Women''s Crop Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (181, 'Men''s Dress Pants', 59.99, 'Banana Republic', '32x32', 'Solid', 'Wool'),
    (182, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (183, 'Men''s Crewneck Sweater', 49.99, 'Gap', 'XL', 'Solid', 'Cotton'),
    (184, 'Women''s Denim Skirt', 39.99, 'Levi Strauss & Co.', 'S', 'Solid', 'Denim'),
    (185, 'Men''s Wool Coat', 99.99, 'Calvin Klein', 'L', 'Solid', 'Wool'),
    (186, 'Women''s Pleated Dress', 59.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (187, 'Men''s Track Jacket', 49.99, 'Puma', 'XL', 'Striped', 'Polyester'),
    (188, 'Women''s Trench Coat', 89.99, 'Burberry', 'M', 'Solid', 'Cotton'),
    (189, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (190, 'Women''s Tankini', 29.99, 'Target', 'M', 'Solid', 'Nylon'),
    (191, 'Men''s Cargo Pants', 39.99, 'Dockers', '33x32', 'Solid', 'Cotton'),
    (192, 'Women''s Peasant Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (193, 'Men''s Pullover Hoodie', 49.99, 'Hollister', 'L', 'Solid', 'Cotton'),
    (194, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (195, 'Men''s Henley Shirt', 29.99, 'Gap', 'M', 'Solid', 'Cotton'),
    (196, 'Women''s Denim Jacket', 59.99, 'American Eagle', 'S', 'Denim', 'Cotton'),
    (197, 'Men''s Flannel Shirt', 39.99, 'Eddie Bauer', 'M', 'Plaid', 'Cotton'),
    (198, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (199, 'Men''s Bomber Jacket', 79.99, 'Alpha Industries', 'XL', 'Solid', 'Nylon'),
    (200, 'Women''s Crop Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (201, 'Men''s Dress Pants', 59.99, 'Banana Republic', '32x32', 'Solid', 'Wool'),
    (202, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (203, 'Men''s Crewneck Sweater', 49.99, 'Gap', 'XL', 'Solid', 'Cotton'),
    (204, 'Women''s Denim Skirt', 39.99, 'Levi Strauss & Co.', 'S', 'Solid', 'Denim'),
    (205, 'Men''s Wool Coat', 99.99, 'Calvin Klein', 'L', 'Solid', 'Wool'),
    (206, 'Women''s Pleated Dress', 59.99, 'Zara', 'M', 'Solid', 'Polyester'),
    (207, 'Men''s Track Jacket', 49.99, 'Puma', 'XL', 'Striped', 'Polyester'),
    (208, 'Women''s Trench Coat', 89.99, 'Burberry', 'M', 'Solid', 'Cotton'),
    (209, 'Men''s Graphic Tee', 19.99, 'Old Navy', 'M', 'Graphic', 'Cotton'),
    (210, 'Women''s Tankini', 29.99, 'Target', 'M', 'Solid', 'Nylon'),
    (211, 'Men''s Cargo Pants', 39.99, 'Dockers', '33x32', 'Solid', 'Cotton'),
    (212, 'Women''s Peasant Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton'),
    (213, 'Men''s Pullover Hoodie', 49.99, 'Hollister', 'L', 'Solid', 'Cotton'),
    (214, 'Women''s Midi Dress', 39.99, 'Forever 21', 'M', 'Striped', 'Polyester'),
    (215, 'Men''s Henley Shirt', 29.99, 'Gap', 'M', 'Solid', 'Cotton'),
    (216, 'Women''s Denim Jacket', 59.99, 'American Eagle', 'S', 'Denim', 'Cotton'),
    (217, 'Men''s Flannel Shirt', 39.99, 'Eddie Bauer', 'M', 'Plaid', 'Cotton'),
    (218, 'Women''s Shift Dress', 39.99, 'H&M', 'M', 'Striped', 'Cotton'),
    (219, 'Men''s Bomber Jacket', 79.99, 'Alpha Industries', 'XL', 'Solid', 'Nylon'),
    (220, 'Women''s Crop Top', 24.99, 'Abercrombie & Fitch', 'XS', 'Solid', 'Cotton');

-- Insert into Customer
INSERT INTO Customer
    (CustomerID, AccountID, FirstName, LastName, Email, ContactInfo, City, AddressLine1, Zipcode)
VALUES
    (1, 1, 'Lionel', 'Messi', 'lionelmessi@example.com', '1234567890', 'Barcelona', 'Main Street 1', '12345'),
    (2, 2, 'Virat', 'Kohli', 'viratkohli@example.com', '9876543210', 'Delhi', 'City Road 2', '54321'),
    (3, 3, 'Cristiano', 'Ronaldo', 'ronaldo@example.com', '4567890123', 'Madrid', 'Avenue 3', '67890'),
    (4, 4, 'Sachin', 'Tendulkar', 'sachin@example.com', '3210987654', 'Mumbai', 'Lane 4', '98765'),
    (5, 5, 'Neymar', 'Jr', 'neymar@example.com', '7890123456', 'Paris', 'Square 5', '45678'),
    (6, 6, 'Dale', 'Steyn', 'dalesteyn@example.com', '2109876543', 'Cape Town', 'Circle 6', '87654'),
    (7, 7, 'Lionel', 'Messi', 'lionelmessi@example.com', '1234567890', 'Barcelona', 'Main Street 1', '12345'),
    (8, 8, 'Vivian', 'Richards', 'vivrichards@example.com', '9876543210', 'Delhi', 'City Road 2', '54321'),
    (9, 9, 'Ronaldinho', 'Gaucho', 'ronaldinho@example.com', '2345678901', 'Rio de Janeiro', 'Beach Avenue 9', '23456'),
    (10, 10, 'Mahendra', 'Dhoni', 'dhoni@example.com', '8765432109', 'Ranchi', 'Farm Road 10', '76543'),
    (11, 11, 'Megan', 'Rapinoe', 'meganrapinoe@example.com', '1234509876', 'Seattle', 'Goal Avenue 11', '13579'),
    (12, 12, 'Serena', 'Williams', 'serenawilliams@example.com', '9876512340', 'Los Angeles', 'Court Street 12', '97531'),
    (13, 13, 'Roger', 'Federer', 'rogerfederer@example.com', '4567890123', 'Zurich', 'Grand Slam Lane 13', '86420'),
    (14, 14, 'Lindsey', 'Vonn', 'lindseyvonn@example.com', '3210456789', 'Vail', 'Ski Slope Drive 14', '75310'),
    (15, 15, 'Simone', 'Biles', 'simonebiles@example.com', '6789012345', 'Houston', 'Gymnastics Street 15', '36985'),
    (16, 16, 'Usain', 'Bolt', 'usainbolt@example.com', '2109876543', 'Kingston', 'Sprint Avenue 16', '25874'),
    (17, 17, 'Chris', 'Evans', 'chrisevans@example.com', '5432109876', 'Boston', 'Superhero Lane 17', '74125'),
    (18, 18, 'Angelina', 'Jolie', 'angelinajolie@example.com', '8790123456', 'Los Angeles', 'Movie Star Boulevard 18', '63210'),
    (19, 19, 'Leonardo', 'DiCaprio', 'leonardodicaprio@example.com', '2345678901', 'Los Angeles', 'Oscar Avenue 19', '54896'),
    (20, 20, 'Tom', 'Hanks', 'tomhanks@example.com', '8765432109', 'Los Angeles', 'Blockbuster Road 20', '12347');

-- Insert into CustomerHelpline
INSERT INTO CustomerHelpline
    (HelplineID, CustomerID, Query)
VALUES
    (1, 1, 'How can I return a product?'),
    (2, 2, 'I received the wrong size. Can I exchange it?'),
    (3, 3, 'Is there a warranty for this product?'),
    (4, 4, 'My order hasn''t arrived yet. Can you provide an update?'),
    (5, 5, 'I''m having trouble logging into my account. Can you help?'),
    (6, 6, 'I need assistance with tracking my shipment.'),
    (7, 7, 'How can I change my shipping address?'),
    (8, 8, 'What payment methods do you accept?'),
    (9, 9, 'Can I cancel my order after it has been placed?'),
    (10, 10, 'Do you offer international shipping?'),
    (11, 11, 'I received a damaged product. What should I do?'),
    (12, 12, 'How can I check the status of my refund request?');

-- Insert into Feedback
INSERT INTO Feedback
    (FeedbackID, ProductID, CustomerID, Content, Rating)
VALUES
    (1, 1, 1, 'Great quality and comfortable fit!', 5),
    (2, 2, 2, 'Love these jeans! Perfect fit and excellent quality.', 5),
    (4, 4, 4, 'The dress is beautiful and fits perfectly. Highly recommend!', 5),
    (5, 5, 5, 'The polo shirt is nice, but the color is slightly different from the picture.', 4),
    (7, 7, 7, 'The jacket is warm and looks great, but the buttons are a bit loose.', 4),
    (8, 8, 8, 'The skirt is cute and fits well. Happy with my purchase.', 5),
    (9, 9, 9, 'The shorts are comfortable and true to size. Fast shipping too!', 5),
    (10, 10, 10, 'The blouse is lovely, but the fabric is a bit sheer.', 3);

-- Insert into SupplyLine
INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (1, 1, 3),
    -- Nike supplies Men's T-shirt 
    (7, 7, 4),
    -- Nike supplies Men's Shorts 
    (2, 2, 3),
    -- Levi Strauss & Co. supplies Women's Jeans 
    (3, 3, 3),
    -- Zara supplies Women's Dress 
    (4, 4, 2),
    -- Tommy Hilfiger supplies Men's Polo Shirt 
    (5, 5, 3),
    -- Ralph Lauren supplies Men's Jacket 
    (6, 6, 3),
    -- H&M supplies Women's Skirt 
    (7, 8, 1),
    -- Nike supplies Women's Blouse 
    (2, 9, 3),
    -- Levi Strauss & Co. supplies Men's Hoodie 
    (8, 10, 3);
-- H&M supplies Women's Sweater 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (10, 11, 3),
    -- Burberry supplies product 11 
    (7, 12, 2),
    -- Nike supplies product 12 
    (3, 13, 3),
    -- Zara supplies product 13 
    (12, 14, 3),
    -- Hollister supplies product 14 
    (13, 15, 1),
    -- American Eagle supplies product 15 
    (14, 16, 3),
    -- Eddie Bauer supplies product 16 
    (15, 17, 3),
    -- Dockers supplies product 17 
    (16, 18, 2),
    -- Alpha Industries supplies product 18 
    (17, 19, 3),
    -- Old Navy supplies product 19 
    (18, 20, 3);
-- Abercrombie & Fitch supplies product 20 


INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (19, 21, 3),
    -- Banana Republic supplies product 21 
    (20, 22, 3),
    -- Target supplies product 22 
    (6, 23, 4),
    -- H&M supplies product 23 
    (2, 24, 3),
    -- Levi Strauss & Co. supplies product 24 
    (5, 25, 1),
    -- Ralph Lauren supplies product 25 
    (10, 26, 2),
    -- Burberry supplies product 26 
    (4, 27, 4),
    -- Tommy Hilfiger supplies product 27 
    (3, 28, 4),
    -- Zara supplies product 28 
    (7, 29, 3),
    -- Nike supplies product 29 
    (8, 30, 3);
-- H&M supplies product 30 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (9, 31, 1),
    -- Gucci supplies product 31 
    (10, 32, 2),
    -- Burberry supplies product 32 
    (3, 33, 4),
    -- Zara supplies product 33 
    (4, 34, 4),
    -- Tommy Hilfiger supplies product 34 
    (5, 35, 1),
    -- Ralph Lauren supplies product 35 
    (6, 36, 1),
    -- H&M supplies product 36 
    (7, 37, 2),
    -- Nike supplies product 37 
    (8, 38, 2),
    -- H&M supplies product 38 
    (2, 39, 3),
    -- Levi Strauss & Co. supplies product 39 
    (3, 40, 3);
-- Zara supplies product 40 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (10, 41, 3),
    -- Burberry supplies product 41 
    (7, 42, 2),
    -- Nike supplies product 42 
    (8, 43, 3),
    -- H&M supplies product 43 
    (6, 44, 3),
    -- H&M supplies product 44 
    (5, 45, 1),
    -- Ralph Lauren supplies product 45 
    (4, 46, 2),
    -- Tommy Hilfiger supplies product 46 
    (3, 47, 5),
    -- Zara supplies product 47 
    (2, 48, 4),
    -- Levi Strauss & Co. supplies product 48 
    (7, 49, 3),
    -- Nike supplies product 49 
    (8, 50, 3);
-- H&M supplies product 50 


INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (7, 51, 3),
    -- Nike supplies product 51 
    (8, 52, 3),
    -- H&M supplies product 52 
    (2, 53, 2),
    -- Levi Strauss & Co. supplies product 53 
    (3, 54, 2),
    -- Zara supplies product 54 
    (4, 55, 2),
    -- Tommy Hilfiger supplies product 55 
    (5, 56, 1),
    -- Ralph Lauren supplies product 56 
    (6, 57, 1),
    -- H&M supplies product 57 
    (7, 58, 1),
    -- Nike supplies product 58 
    (8, 59, 2),
    -- H&M supplies product 59 
    (2, 60, 2);
-- Levi Strauss & Co. supplies product 60 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (3, 61, 1),
    -- Zara supplies product 61 
    (4, 62, 2),
    -- Tommy Hilfiger supplies product 62 
    (5, 63, 1),
    -- Ralph Lauren supplies product 63 
    (6, 64, 2),
    -- H&M supplies product 64 
    (7, 65, 4),
    -- Nike supplies product 65 
    (8, 66, 5),
    -- H&M supplies product 66 
    (2, 67, 2),
    -- Levi Strauss & Co. supplies product 67 
    (3, 68, 1),
    -- Zara supplies product 68 
    (4, 69, 2),
    -- Tommy Hilfiger supplies product 69 
    (5, 70, 3);
-- Ralph Lauren supplies product 70 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (6, 71, 3),
    -- H&M supplies product 71 
    (7, 72, 2),
    -- Nike supplies product 72 
    (8, 73, 2),
    -- H&M supplies product 73 
    (2, 74, 5),
    -- Levi Strauss & Co. supplies product 74 
    (3, 75, 1),
    -- Zara supplies product 75 
    (4, 76, 2),
    -- Tommy Hilfiger supplies product 76 
    (5, 77, 4),
    -- Ralph Lauren supplies product 77 
    (6, 78, 5),
    -- H&M supplies product 78 
    (7, 79, 1),
    -- Nike supplies product 79 
    (8, 80, 4);
-- H&M supplies product 80 


INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (2, 81, 3),
    -- Levi Strauss & Co. supplies product 81 
    (3, 82, 4),
    -- Zara supplies product 82 
    (4, 83, 3),
    -- Tommy Hilfiger supplies product 83 
    (5, 84, 3),
    -- Ralph Lauren supplies product 84 
    (6, 85, 2),
    -- H&M supplies product 85 
    (7, 86, 2),
    -- Nike supplies product 86 
    (8, 87, 1),
    -- H&M supplies product 87 
    (2, 88, 3),
    -- Levi Strauss & Co. supplies product 88 
    (3, 89, 3),
    -- Zara supplies product 89 
    (4, 90, 3);
-- Tommy Hilfiger supplies product 90 


INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (5, 91, 2),
    -- Ralph Lauren supplies product 91 
    (6, 92, 2),
    -- H&M supplies product 92 
    (7, 93, 3),
    -- Nike supplies product 93 
    (8, 94, 3),
    -- H&M supplies product 94 
    (2, 95, 3),
    -- Levi Strauss & Co. supplies product 95 
    (3, 96, 1),
    -- Zara supplies product 96 
    (4, 97, 2),
    -- Tommy Hilfiger supplies product 97 
    (5, 98, 2),
    -- Ralph Lauren supplies product 98 
    (6, 99, 1),
    -- H&M supplies product 99 
    (7, 100, 1);
-- Nike supplies product 100 


INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (8, 101, 2),
    -- H&M supplies product 101 
    (2, 102, 1),
    -- Levi Strauss & Co. supplies product 102 
    (3, 103, 2),
    -- Zara supplies product 103 
    (4, 104, 3),
    -- Tommy Hilfiger supplies product 104 
    (5, 105, 3),
    -- Ralph Lauren supplies product 105 
    (6, 106, 3),
    -- H&M supplies product 106 
    (7, 107, 2),
    -- Nike supplies product 107 
    (8, 108, 2),
    -- H&M supplies product 108 
    (2, 109, 1),
    -- Levi Strauss & Co. supplies product 109 
    (3, 110, 1);
-- Zara supplies product 110 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (4, 111, 2),
    -- Tommy Hilfiger supplies product 111 
    (5, 112, 2),
    -- Ralph Lauren supplies product 112 
    (6, 113, 3),
    -- H&M supplies product 113 
    (7, 114, 3),
    -- Nike supplies product 114 
    (8, 115, 1),
    -- H&M supplies product 115 
    (2, 116, 1),
    -- Levi Strauss & Co. supplies product 116 
    (3, 117, 2),
    -- Zara supplies product 117 
    (4, 118, 2),
    -- Tommy Hilfiger supplies product 118 
    (5, 119, 3),
    -- Ralph Lauren supplies product 119 
    (6, 120, 3);
-- H&M supplies product 120 

-- Inserting data for Product IDs 121-130 
INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (7, 121, 2),
    -- Nike supplies product 121 
    (8, 122, 3),
    -- H&M supplies product 122 
    (2, 123, 2),
    -- Levi Strauss & Co. supplies product 123 
    (3, 124, 2),
    -- Zara supplies product 124 
    (4, 125, 2),
    -- Tommy Hilfiger supplies product 125 
    (5, 126, 1),
    -- Ralph Lauren supplies product 126 
    (6, 127, 1),
    -- H&M supplies product 127 
    (7, 128, 1),
    -- Nike supplies product 128 
    (8, 129, 3),
    -- H&M supplies product 129 
    (2, 130, 3);
-- Levi Strauss & Co. supplies product 130 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (3, 131, 1),
    -- Zara supplies product 131 
    (4, 132, 2),
    -- Tommy Hilfiger supplies product 132 
    (5, 133, 2),
    -- Ralph Lauren supplies product 133 
    (6, 134, 2),
    -- H&M supplies product 134 
    (7, 135, 2),
    -- Nike supplies product 135 
    (8, 136, 2),
    -- H&M supplies product 136 
    (2, 137, 3),
    -- Levi Strauss & Co. supplies product 137 
    (3, 138, 3),
    -- Zara supplies product 138 
    (4, 139, 3),
    -- Tommy Hilfiger supplies product 139 
    (5, 140, 3);
-- Ralph Lauren supplies product 140 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (6, 141, 2),
    -- H&M supplies product 141 
    (7, 142, 2),
    -- Nike supplies product 142 
    (8, 143, 2),
    -- H&M supplies product 143 
    (2, 144, 1),
    -- Levi Strauss & Co. supplies product 144 
    (3, 145, 1),
    -- Zara supplies product 145 
    (4, 146, 1),
    -- Tommy Hilfiger supplies product 146 
    (5, 147, 1),
    -- Ralph Lauren supplies product 147 
    (6, 148, 2),
    -- H&M supplies product 148 
    (7, 149, 2),
    -- Nike supplies product 149 
    (8, 150, 3);
-- H&M supplies product 150 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (2, 151, 2),
    -- Levi Strauss & Co. supplies product 151 
    (3, 152, 2),
    -- Zara supplies product 152 
    (4, 153, 2),
    -- Tommy Hilfiger supplies product 153 
    (5, 154, 2),
    -- Ralph Lauren supplies product 154 
    (6, 155, 2),
    -- H&M supplies product 155 
    (7, 156, 1),
    -- Nike supplies product 156 
    (8, 157, 1),
    -- H&M supplies product 157 
    (2, 158, 1),
    -- Levi Strauss & Co. supplies product 158 
    (3, 159, 3),
    -- Zara supplies product 159 
    (4, 160, 1);
-- Tommy Hilfiger supplies product 160 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (5, 161, 2),
    -- Ralph Lauren supplies product 161 
    (6, 162, 3),
    -- H&M supplies product 162 
    (7, 163, 3),
    -- Nike supplies product 163 
    (8, 164, 3),
    -- H&M supplies product 164 
    (2, 165, 3),
    -- Levi Strauss & Co. supplies product 165 
    (3, 166, 3),
    -- Zara supplies product 166 
    (4, 167, 2),
    -- Tommy Hilfiger supplies product 167 
    (5, 168, 1),
    -- Ralph Lauren supplies product 168 
    (6, 169, 1),
    -- H&M supplies product 169 
    (7, 170, 3);
-- Nike supplies product 170 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (8, 171, 2),
    -- H&M supplies product 171 
    (2, 172, 2),
    -- Levi Strauss & Co. supplies product 172 
    (3, 173, 3),
    -- Zara supplies product 173 
    (4, 174, 3),
    -- Tommy Hilfiger supplies product 174 
    (5, 175, 3),
    -- Ralph Lauren supplies product 175 
    (6, 176, 3),
    -- H&M supplies product 176 
    (7, 177, 3),
    -- Nike supplies product 177 
    (8, 178, 3),
    -- H&M supplies product 178 
    (2, 179, 2),
    -- Levi Strauss & Co. supplies product 179 
    (3, 180, 2);
-- Zara supplies product 180 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (4, 181, 2),
    -- Tommy Hilfiger supplies product 181 
    (5, 182, 2),
    -- Ralph Lauren supplies product 182 
    (6, 183, 2),
    -- H&M supplies product 183 
    (7, 184, 2),
    -- Nike supplies product 184 
    (8, 185, 1),
    -- H&M supplies product 185 
    (2, 186, 1),
    -- Levi Strauss & Co. supplies product 186 
    (3, 187, 1),
    -- Zara supplies product 187 
    (4, 188, 1),
    -- Tommy Hilfiger supplies product 188 
    (5, 189, 3),
    -- Ralph Lauren supplies product 189 
    (6, 190, 3);
-- H&M supplies product 190 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (7, 191, 2),
    -- Nike supplies product 191 
    (8, 192, 1),
    -- H&M supplies product 192 
    (2, 193, 2),
    -- Levi Strauss & Co. supplies product 193 
    (3, 194, 1),
    -- Zara supplies product 194 
    (4, 195, 2),
    -- Tommy Hilfiger supplies product 195 
    (5, 196, 1),
    -- Ralph Lauren supplies product 196 
    (6, 197, 2),
    -- H&M supplies product 197 
    (7, 198, 3),
    -- Nike supplies product 198 
    (8, 199, 3),
    -- H&M supplies product 199 
    (2, 200, 2);
-- Levi Strauss & Co. supplies product 200 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (3, 201, 1),
    -- Zara supplies product 201 
    (4, 202, 1),
    -- Tommy Hilfiger supplies product 202 
    (5, 203, 1),
    -- Ralph Lauren supplies product 203 
    (6, 204, 2),
    -- H&M supplies product 204 
    (7, 205, 2),
    -- Nike supplies product 205 
    (8, 206, 2),
    -- H&M supplies product 206 
    (2, 207, 2),
    -- Levi Strauss & Co. supplies product 207 
    (3, 208, 2),
    -- Zara supplies product 208 
    (4, 209, 3),
    -- Tommy Hilfiger supplies product 209 
    (5, 210, 3);
-- Ralph Lauren supplies product 210 

INSERT INTO SupplyLine
    (SupplierID, ProductID, Quantity)
VALUES
    (6, 211, 2),
    -- H&M supplies product 211 
    (7, 212, 1),
    -- Nike supplies product 212 
    (8, 213, 1),
    -- H&M supplies product 213 
    (2, 214, 2),
    -- Levi Strauss & Co. supplies product 214 
    (3, 215, 2),
    -- Zara supplies product 215 
    (4, 216, 2),
    -- Tommy Hilfiger supplies product 216 
    (5, 217, 2),
    -- Ralph Lauren supplies product 217 
    (6, 218, 3),
    -- H&M supplies product 218 
    (7, 219, 3),
    -- Nike supplies product 219 
    (8, 220, 3);
-- H&M supplies product 220 


-- Insert into Employee
INSERT INTO Employee
    (EmployeeID, EmployeeName, DateJoined, DateOfBirth, RoleID)
VALUES
    (1, 'John Smith', '2023-01-15', '1990-05-20', 1),
    -- Customer Service Representative 
    (2, 'Emma Johnson', '2022-11-10', '1988-09-12', 2),
    -- Warehouse Manager 
    (3, 'Michael Brown', '2023-03-05', '1992-07-25', 3),
    -- Sales Associate 
    (4, 'Emily Davis', '2022-12-20', '1991-04-18', 4),
    -- Marketing Specialist 
    (5, 'Daniel Wilson', '2023-02-08', '1993-10-30', 5),
    -- Financial Analyst 
    (6, 'Olivia Martinez', '2022-10-05', '1990-12-05', 1),
    -- Customer Service Representative 
    (7, 'William Taylor', '2023-04-18', '1994-06-15', 2),-- Warehouse Manager 
    (8, 'Sophia Anderson', '2022-11-30', '1993-03-20', 3),
    -- Sales Associate 
    (9, 'Matthew Thomas', '2023-01-25', '1992-08-10', 4),-- Marketing Specialist 
    (10, 'Isabella Garcia', '2023-03-10', '1991-05-28', 5),
    -- Financial Analyst 
    (11, 'Ethan Hernandez', '2022-12-15', '1989-09-22', 1),
    -- Customer Service Representative 
    (12, 'Ava Martinez', '2023-02-20', '1995-01-15', 2),
    -- Warehouse Manager 
    (13, 'Alexander Rodriguez', '2023-05-05', '1990-07-08', 3),
    -- Sales Associate 
    (14, 'Samantha Brown', '2022-11-10', '1993-04-25', 4),
    -- Marketing Specialist 
    (15, 'Christopher Wilson', '2023-01-08', '1992-10-12', 5);
-- Financial Analyst 


-- Insert into Ticket
INSERT INTO Ticket
    (TicketID, EmployeeID, HelplineID, Status, TimeTaken)
VALUES
    (1, 1, 1, 'OPEN', NULL),
    -- Customer helpline query is open  
    (2, 6, 2, 'TAKEN', 15),
    -- Customer helpline query has been taken by an employee  
    (3, 11, 3, 'CLOSED', 45),
    -- Customer helpline query has been resolved and closed 
    (4, 1, 4, 'ESCALATED', 30),
    -- Customer helpline query has been escalated for further action
    (5, 6, 4, 'ESCALATED', 5),
    (6, 11, 4, 'ESCALATED', 20),
    (7, 1, 4, 'ESCALATED', 10),
    (8, 6, 4, 'ESCALATED', 30),
    (9, 11, 4, 'ESCALATED', 25),
    (10, 1, 4, 'ESCALATED', 15),
    (11, 6, 4, 'ESCALATED', 5),
    (12, 11, 4, 'ESCALATED', 10);

-- Insert into Order
INSERT INTO [Order]
    (OrderID, CustomerID, PromotionID, EmployeeID, OrderDate, OrderStatus)
VALUES
    (1, 1, 1, 2, '2024-04-01', 'Completed'),
    (2, 2, 3, 7, '2024-04-02', 'Completed'),
    (3, 3, NULL, 12, '2024-04-03', 'Completed'),
    (4, 4, 2, 2, '2024-04-04', 'Completed'),
    (5, 5, NULL, 7, '2024-04-05', 'Processing'),
    (6, 6, 4, 12, '2024-04-06', 'Processing'),
    (7, 7, NULL, 2, '2024-04-07', 'Processing'),
    (8, 8, 1, 7, '2024-04-08', 'Cancelled'),
    (9, 9, 2, 12, '2024-04-09', 'Completed'),
    (10, 10, NULL, 2, '2024-04-10', 'Completed'),
    (11, 11, 3, 7, '2024-04-11', 'Processing'),
    (12, 12, NULL, 12, '2024-04-12', 'Processing'),
    (13, 13, NULL, 2, '2024-04-13', 'Processing'),
    (14, 14, 5, 7, '2024-04-14', 'Completed'),
    (15, 15, NULL, 12, '2024-04-15', 'Processing'),
    (16, 16, 6, 2, '2024-04-16', 'Processing'),
    (17, 17, NULL, 7, '2024-04-17', 'Processing'),
    (18, 18, NULL, 12, '2024-04-18', 'Completed'),
    (19, 19, 7, 2, '2024-04-19', 'Completed'),
    (20, 20, NULL, 7, '2024-04-20', 'Processing');

-- Insert into OrderLine
INSERT INTO OrderLine
    (ProductID, OrderID, OrderQuantity)
VALUES
    (1, 1, 2),
    (2, 2, 1),
    (3, 3, 3),
    (4, 4, 1),
    (5, 5, 2),
    (6, 6, 1),
    (7, 7, 3),
    (8, 8, 1),
    (9, 9, 2),
    (10, 10, 1),
    (11, 11, 3),
    (12, 12, 1),
    (13, 13, 2),
    (14, 14, 1),
    (15, 15, 1),
    (16, 16, 1),
    (17, 17, 3),
    (18, 18, 1),
    (19, 19, 2),
    (20, 20, 1);


-- Insert into Invoice
INSERT INTO Invoice
    (InvoiceID, OrderID, InvoiceDate, OrderTotal)
VALUES
    (101, 1, '2024-04-01', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 1
        GROUP BY o.OrderID,p.OfferPercentage)),
    (102, 2, '2024-04-02', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 2
        GROUP BY o.OrderID,p.OfferPercentage)),
    (103, 3, '2024-04-03', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 3
        GROUP BY o.OrderID,p.OfferPercentage)),
    (104, 4, '2024-04-04', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 4
        GROUP BY o.OrderID,p.OfferPercentage)),
    (105, 5, '2024-04-05', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 5
        GROUP BY o.OrderID,p.OfferPercentage)),
    (106, 6, '2024-04-06', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 6
        GROUP BY o.OrderID,p.OfferPercentage)),
    (107, 7, '2024-04-07', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 7
        GROUP BY o.OrderID,p.OfferPercentage)),
    (108, 8, '2024-04-08', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 8
        GROUP BY o.OrderID,p.OfferPercentage)),
    (109, 9, '2024-04-09', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 9
        GROUP BY o.OrderID,p.OfferPercentage)),
    (110, 10, '2024-04-10', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 10
        GROUP BY o.OrderID,p.OfferPercentage)),
    (111, 11, '2024-04-11', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 11
        GROUP BY o.OrderID,p.OfferPercentage)),
    (112, 12, '2024-04-12', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 12
        GROUP BY o.OrderID,p.OfferPercentage)),
    (113, 13, '2024-04-13', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 13
        GROUP BY o.OrderID,p.OfferPercentage)),
    (114, 14, '2024-04-14', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 14
        GROUP BY o.OrderID,p.OfferPercentage)),
    (115, 15, '2024-04-15', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 15
        GROUP BY o.OrderID,p.OfferPercentage)),
    (116, 16, '2024-04-16', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 16
        GROUP BY o.OrderID,p.OfferPercentage)),
    (117, 17, '2024-04-17', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 17
        GROUP BY o.OrderID,p.OfferPercentage)),
    (118, 18, '2024-04-18', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 18
        GROUP BY o.OrderID,p.OfferPercentage)),
    (119, 19, '2024-04-19', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 19
        GROUP BY o.OrderID,p.OfferPercentage)),
    (120, 20, '2024-04-20', (SELECT SUM(ProductPrice * ol.OrderQuantity) * (1 - ISNULL(p.OfferPercentage / 100, 0))
        FROM OrderLine ol
            JOIN Product pr ON ol.ProductID = pr.ProductID
            LEFT JOIN [Order] o ON ol.OrderID = o.OrderID
            LEFT JOIN Promotion p ON o.PromotionID = p.PromotionID
        WHERE o.OrderID = 20
        GROUP BY o.OrderID,p.OfferPercentage));



-- Insert into Payment
INSERT INTO Payment
    (PaymentID, InvoiceID, PaymentDate, PaymentAmount, PaymentMethod)
VALUES
    (201, 101, '2024-04-01', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 101), 'Credit Card'),
    (202, 102, '2024-04-02', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 102), 'PayPal'),
    (203, 103, '2024-04-03', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 103), 'Credit Card'),
    (204, 104, '2024-04-04', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 104), 'Cash'),
    (205, 105, '2024-04-05', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 105), 'Credit Card'),
    (206, 106, '2024-04-06', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 106), 'PayPal'),
    (207, 107, '2024-04-07', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 107), 'Credit Card'),
    (208, 108, '2024-04-08', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 108), 'Cash'),
    (209, 109, '2024-04-09', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 109), 'Credit Card'),
    (210, 110, '2024-04-10', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 110), 'PayPal'),
    (211, 111, '2024-04-11', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 111), 'Credit Card'),
    (212, 112, '2024-04-12', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 112), 'Cash'),
    (213, 113, '2024-04-13', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 113), 'Credit Card'),
    (214, 114, '2024-04-14', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 114), 'PayPal'),
    (215, 115, '2024-04-15', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 115), 'Credit Card'),
    (216, 116, '2024-04-16', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 116), 'Cash'),
    (217, 117, '2024-04-17', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 117), 'Credit Card'),
    (218, 118, '2024-04-18', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 118), 'PayPal'),
    (219, 119, '2024-04-19', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 119), 'Credit Card'),
    (220, 120, '2024-04-20', (SELECT OrderTotal
        FROM Invoice
        WHERE InvoiceID = 120), 'Cash');


-- Insert into Shipment
INSERT INTO Shipment
    (TrackingID, OrderID, ExpectedDeliveryDate, DeliveryCode)
VALUES
    (301, 1, '2024-04-02', 'EXP001'),
    (302, 2, '2024-04-03', 'STD002'),
    (303, 3, '2024-04-04', 'EXP003'),
    (304, 4, '2024-04-05', 'STD004'),
    (305, 5, '2024-04-06', 'EXP005'),
    (306, 6, '2024-04-07', 'STD006'),
    (307, 7, '2024-04-08', 'EXP007'),
    (308, 8, '2024-04-09', 'STD008'),
    (309, 9, '2024-04-10', 'EXP009'),
    (310, 10, '2024-04-11', 'STD010'),
    (311, 11, '2024-04-12', 'EXP011'),
    (312, 12, '2024-04-13', 'STD012'),
    (313, 13, '2024-04-14', 'EXP013'),
    (314, 14, '2024-04-15', 'STD014'),
    (315, 15, '2024-04-16', 'EXP015'),
    (316, 16, '2024-04-17', 'STD016'),
    (317, 17, '2024-04-18', 'EXP017'),
    (318, 18, '2024-04-19', 'STD018'),
    (319, 19, '2024-04-20', 'EXP019'),
    (320, 20, '2024-04-21', 'STD020');