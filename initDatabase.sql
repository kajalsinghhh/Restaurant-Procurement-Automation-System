-- Set the default engine 
SET       default_storage_engine = InnoDB;

-- Create and use database
DROP database IF EXISTS YummyRestaurantGroupDB;

CREATE database YummyRestaurantGroupDB CHARACTER
SET       utf8;

USE YummyRestaurantGroupDB;

-- Create table (24)
-- layer 0: Location RestaurantType Supplier DeliveryNote
-- layer 1: Staff Restaurant SupplierItem
-- layer 2: Account RestaurantRequest Item Buyer ActivityLog
-- layer 3: Agreement Inventory VirtualItem RequestItem DeliveryNoteRestaurantRequest
-- layer 4: PurchaseOrder BPAItem CPAItem PPO PPOItem
-- layer 5: OrderItem DeliveryNotePurchaseOrder
-- Standalone table (layer 0)
-- LocType no meaning
CREATE    TABLE Location (
          LocID CHAR(10) NOT NULL,
          LocType CHAR(1) NOT NULL,
          Address VARCHAR(100) NOT NULL,
          PRIMARY KEY (LocID),
          CHECK (LocType IN ('H', 'N', 'K', 'L'))
          );

INSERT    INTO Location (LocID, LocType, Address)
VALUES    ('L000000001', 'H', '21 Yuen Wo Rd, Sha Tin'),
          ('L000000002', 'N', '15 King''s Rd, Causeway Bay'),
          ('L000000003', 'K', '8 Nathan Rd, Tsim Sha Tsui'),
          ('L000000004', 'L', '1 Lantau Link, Lantau Island'),
          ('L000000005', 'L', 'Test Location 1'),
          ('L000000006', 'L', 'Test Location 2'),
          ('L000000007', 'L', 'Test Location 3'),
          ('L000000008', 'L', 'Test Location 4');

CREATE    TABLE RestaurantType (TypeID CHAR(10) NOT NULL, TypeName VARCHAR(20) NOT NULL UNIQUE, Description VARCHAR(100) NOT NULL, PRIMARY KEY (TypeID));

INSERT    INTO RestaurantType (TypeID, TypeName, Description)
VALUES    ('T000000001', 'Japanese', 'Sushi'),
          ('T000000002', 'Chinese', 'Dim Sum'),
          ('T000000003', 'Italian', 'Pizza'),
          ('T000000004', 'French', 'Croissant');

CREATE    TABLE Category (CategoryID CHAR(10) NOT NULL, CategoryName VARCHAR(20) NOT NULL UNIQUE, Description VARCHAR(100) NOT NULL, PRIMARY KEY (CategoryID));

INSERT    INTO Category (CategoryID, CategoryName, Description)
VALUES    ('C000000001', 'Food', 'Various culinary offerings including appetizers, main courses, sides, and desserts'),
          ('C000000002', 'Beverage', 'Non-alcoholic and alcoholic drinks like soft drinks, juices, coffee, tea, and alcohol'),
          ('C000000003', 'Household', 'Catering essentials such as disposable utensils, plates, decorations, and cleaning supplies');

CREATE    TABLE Supplier (
          SupplierID CHAR(10) NOT NULL,
          NAME VARCHAR(20) NOT NULL,
          Address VARCHAR(100) NOT NULL,
          ContactPerson VARCHAR(20) NOT NULL,
          Phone VARCHAR(15) NOT NULL,
          PRIMARY KEY (SupplierID)
          );

INSERT    INTO Supplier (SupplierID, NAME, Address, ContactPerson, Phone)
VALUES    ('SP00000001', 'ABC Company', '21 Yuen Wo Rd, Sha Tin', 'Jane Doe', '25415656'),
          ('SP00000002', 'XYZ Limited', '15 King''s Rd, Causeway Bay', 'John Smith', '28765432'),
          ('SP00000003', 'LMN Trading', '8 Nathan Rd, Tsim Sha Tsui', 'Mary Lee', '23678945');

CREATE    TABLE DeliveryNote (NoteID CHAR(10) NOT NULL, DeliveryDate DATE, State CHAR(1) NOT NULL, PRIMARY KEY (NoteID), CHECK (State IN ('D', 'C')));

INSERT    INTO DeliveryNote
VALUES    ('N000000001', '2023-03-17', 'D'),
          ('N000000002', '2023-03-17', 'D'),
          ('N000000003', '2023-03-17', 'C'),
          ('N000000004', '2023-03-17', 'C');

-- Related table (layer 1)
CREATE    TABLE Staff (
          StaffID CHAR(10) NOT NULL,
          LocID CHAR(10) NOT NULL,
          JobTitle VARCHAR(20) NOT NULL,
          NAME VARCHAR(20) NOT NULL,
          Email VARCHAR(35) NOT NULL,
          Phone VARCHAR(15) NOT NULL,
          Dob DATE NOT NULL,
          HireDate DATE NOT NULL,
          Salary INT NOT NULL,
          State VARCHAR(10) NOT NULL,
          PRIMARY KEY (StaffID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID)
          );

INSERT    INTO Staff (StaffID, LocID, JobTitle, NAME, Email, Phone, Dob, HireDate, Salary, State)
VALUES    ('S000000001', 'L000000001', 'Restaurant Manager', 'John Smith', 'johnSmite@yum.ml', '25480123', '1990-01-01', '2020-01-01', 50000, 'Active'),
          ('S000000002', 'L000000001', 'Restaurant Staff', 'Mary Lee', 'maryLee@yum.ml', '28765432', '1992-02-02', '2020-02-02', 20000, 'Active'),
          ('S000000003', 'L000000002', 'Restaurant Manager', 'Bob Chan', 'BobChan@yum.ml', '23678945', '1994-03-03', '2020-03-03', 40000, 'Active'),
          ('S000000004', 'L000000002', 'Category Manager', 'Alice Wong', 'AliceWong@yum.ml', '25415656', '1996-04-04', '2020-04-04', 20000, 'Active'),
          ('S000000005', 'L000000003', 'Buyer', 'Test1', 'Test1@entrenix.ml', '44444444', '1996-04-04', '2020-04-04', 44444, 'Active'),
          ('S000000006', 'L000000004', 'Administrator', 'Test2', 'Test2@entrenix.ml', '44444444', '1996-04-04', '2020-04-04', 44444, 'Active'),
          ('S000000007', 'L000000005', 'Purchase Manager', 'Test3', 'Test3@entrenix.ml', '44444444', '1996-04-04', '2020-04-04', 44444, 'Active'),
          ('S000000008', 'L000000006', 'Warehouse Clerk', 'Test4', 'Test4@entrenix.ml', '44444444', '1996-04-04', '2020-04-04', 44444, 'Active'),
          ('S000000009', 'L000000006', 'Accounting Manager', 'Test5', 'Test5@entrenix.ml', '44444444', '1996-04-04', '2020-04-04', 44444, 'Active');

CREATE    TABLE Restaurant (
          LocID CHAR(10) NOT NULL,
          NAME VARCHAR(20) NOT NULL,
          TypeID CHAR(10) NOT NULL,
          PRIMARY KEY (LocID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID),
          FOREIGN KEY (TypeID) REFERENCES RestaurantType (TypeID)
          );

INSERT    INTO Restaurant (LocID, NAME, TypeID)
VALUES    ('L000000001', 'Sakura Sushi', 'T000000001'),
          ('L000000002', 'Jade Garden', 'T000000002');

CREATE    TABLE SupplierItem (
          SupplierID CHAR(10) NOT NULL,
          SupplierItemID CHAR(10) NOT NULL,
          NAME VARCHAR(20) NOT NULL,
          CategoryID VARCHAR(10) NOT NULL,
          Description VARCHAR(100) NOT NULL,
          PRIMARY KEY (SupplierID, SupplierItemID),
          FOREIGN KEY (SupplierID) REFERENCES Supplier (SupplierID),
          FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID)
          );

INSERT    INTO SupplierItem (SupplierID, SupplierItemID, NAME, CategoryID, Description)
VALUES    ('SP00000001', 'AB00000001', 'Spaghetti', 'C000000001', 'Italy Spaghetti'),
          ('SP00000001', 'AB00000002', 'Tomato Sauce', 'C000000001', 'Organic Tomato Sauce'),
          ('SP00000002', 'IT00000003', 'Paper Towel', 'C000000003', 'Soft and Absorbent Paper Towel'),
          ('SP00000003', 'IT00000003', 'Coffee Beans', 'C000000002', 'Premium Arabica Coffee Beans'),
          ('SP00000001', 'AB00000003', 'JP rice', 'C000000001', 'Japan rice'),
          ('SP00000002', 'IT00000004', 'CN rice', 'C000000001', 'China rice'),
          ('SP00000003', 'IT00000005', 'Cake', 'C000000001', 'Cream Cake'),
          ('SP00000003', 'IT00000006', 'Test', 'C000000001', 'Testing');

-- Related table (layer 2)
CREATE    TABLE Account (
          AccName VARCHAR(20) NOT NULL,
          HASH CHAR(64) NOT NULL,
          Salt CHAR(16) NOT NULL,
          StaffID CHAR(10) NOT NULL,
          UserGroup VARCHAR(20) NOT NULL,
          PRIMARY KEY (AccName),
          FOREIGN KEY (StaffID) REFERENCES Staff (StaffID)
          );

-- password = 12345678*3 test1-test5
INSERT    INTO Account (AccName, HASH, Salt, StaffID, UserGroup)
VALUES    ('JohnSmith01', 'c281f79bd292080a1282c3efa40c0c73f4b5587b0074bfd5b99b4766935ed6d3', 'aaaaaaaaaaaaaaaa', 'S000000001', 'Restaurant Manager'),
          ('MaryLee02', 'afda4d81b2d5b97156106e487bfc10aa8b92c2d880ff6352e72c2aeae42aa8d9', 'bbbbbbbbbbbbbbbb', 'S000000002', 'Restaurant Staff'),
          ('BobChan03', 'c2d281be526891f6409ea62464c563b998296c22243e8a8c3d0911fe83ec4ab2', 'cccccccccccccccc', 'S000000003', 'Restaurant Manager'),
          ('AliceWong04', 'bc17e7f923590b3ec99403d58159aeacd36d00543db520e01b19f2eb6162a2b1', 'testtesttesttest', 'S000000004', 'Category Manager'),
          ('Test1', '803d4dfc2e5249e71a14f8f856a605cf5a52d44975fe1a8b4926186f53f6bbe3', 'testtesttesttest', 'S000000005', 'Buyer'),
          ('Test2', 'd355d274d3640683a40ec1a2b0f95f941630e0850a05501f484893cfa386014e', 'testtesttesttest', 'S000000006', 'Administrator'),
          ('Test3', '15ea15b96c70604e1318f986f451a5e26602b0a356620a7a9ce58094a4a26d14', 'testtesttesttest', 'S000000007', 'Purchase Manager'),
          ('Test4', 'a7d9e313022f8d1321922542a01f9b110fa07578a2e977d4a3db2a7b4f0d5ed4', 'testtesttesttest', 'S000000008', 'Warehouse Clerk'),
          ('Test5', 'a7d9e313022f8d1321922542a01f9b110fa07578a2e977d4a3db2a7b4f0d5ed4', 'testtesttesttest', 'S000000009', 'Accounting Manager');

CREATE    TABLE ActivityLog (
          ActivityID CHAR(10) NOT NULL,
          StaffID CHAR(10) NOT NULL,
          SqlQuery VARCHAR(255) NOT NULL,
          TIMESTAMP DATETIME NOT NULL,
          PRIMARY KEY (ActivityID),
          FOREIGN KEY (StaffID) REFERENCES Staff (StaffID)
          );

INSERT    INTO ActivityLog (ActivityID, StaffID, SqlQuery, TIMESTAMP)
VALUES    ('A000000001', 'S000000006', 'SELECT * FROM ActivityLog', '2023-06-20 20:30:40');

CREATE    TABLE RestaurantRequest (
          RequestID CHAR(10) NOT NULL,
          ManagerID CHAR(10) NOT NULL,
          CreatedDate DATE NOT NULL,
          RestaurantID CHAR(10) NOT NULL,
          ExpectedDeliveryDate DATE NOT NULL,
          Remark VARCHAR(200) NULL,
          State CHAR(1) NOT NULL,
          PRIMARY KEY (RequestID),
          FOREIGN KEY (ManagerID) REFERENCES Staff (StaffID),
          FOREIGN KEY (RestaurantID) REFERENCES Location (LocID),
          CHECK (State IN ('P', 'F', 'C'))
          );

-- state: Pending, Failed, Completed
INSERT    INTO RestaurantRequest (RequestID, ManagerID, CreatedDate, RestaurantID, ExpectedDeliveryDate, Remark, State)
VALUES    ('R000000001', 'S000000001', '2022-01-15', 'L000000001', '2022-01-20', 'Urgent delivery needed', 'C'),
          ('R000000002', 'S000000001', '2022-01-16', 'L000000001', '2022-01-21', NULL, 'C'),
          ('R000000003', 'S000000001', '2022-01-16', 'L000000001', '2022-01-21', NULL, 'C'),
          ('R000000004', 'S000000003', '2022-01-17', 'L000000002', '2022-01-22', NULL, 'F'),
          ('R000000005', 'S000000003', '2022-01-18', 'L000000002', '2022-01-23', NULL, 'P'),
          ('R000000006', 'S000000003', '2022-01-18', 'L000000002', '2022-01-23', NULL, 'P');

CREATE    TABLE Item (
          ItemID CHAR(10) NOT NULL,
          SupplierID CHAR(10) NOT NULL,
          SupplierItemID CHAR(10) NOT NULL,
          PRIMARY KEY (ItemID),
          UNIQUE (SupplierID, SupplierItemID),
          FOREIGN KEY (SupplierID, SupplierItemID) REFERENCES SupplierItem (SupplierID, SupplierItemID)
          );

INSERT    INTO Item (ItemID, SupplierID, SupplierItemID)
VALUES    ('I000000001', 'SP00000001', 'AB00000001'),
          ('I000000002', 'SP00000001', 'AB00000002'),
          ('I000000003', 'SP00000002', 'IT00000003'),
          ('I000000004', 'SP00000003', 'IT00000003'),
          ('I000000005', 'SP00000001', 'AB00000003'),
          ('I000000006', 'SP00000002', 'IT00000004'),
          ('I000000007', 'SP00000003', 'IT00000005');

CREATE    TABLE Buyer (
          BuyerID CHAR(10),
          BillingAddress VARCHAR(50),
          BankAccount VARCHAR(20),
          PRIMARY KEY (BuyerID),
          FOREIGN KEY (BuyerID) REFERENCES Staff (StaffID)
          );

INSERT    INTO Buyer
VALUES    ('S000000005', '21 Yuen Wo Rd, Sha Tin', '1234567890');

-- Related table (layer 3)
-- AgreementType: BPA, CPA, PPO
-- State: Pending, Fulfilled
CREATE    TABLE Agreement (
          AgreementID CHAR(10) PRIMARY KEY,
          BuyerID CHAR(10),
          AgreementType CHAR(1) CHECK (AgreementType IN ('B', 'C', 'P')),
          CreatedDate DATE,
          EffectiveDate DATE,
          State CHAR(1) CHECK (State IN ('P', 'F')),
          TermAndCondition VARCHAR(300),
          FOREIGN KEY (BuyerID) REFERENCES Buyer (BuyerID)
          );

INSERT    INTO Agreement
VALUES    ('A000000001', 'S000000005', 'B', '2022-01-15', '2022-01-15', 'P', "TermAndCondition: TEST1"),
          ('A000000002', 'S000000005', 'C', '2022-01-16', '2022-01-16', 'F', "TermAndCondition: TEST2"),
          ('A000000003', 'S000000005', 'P', '2022-01-17', '2022-01-17', 'P', "TermAndCondition: TEST3");

CREATE    TABLE Inventory (
          LocID CHAR(10) NOT NULL,
          ItemID CHAR(10) NOT NULL,
          COUNT INT NOT NULL,
          PRIMARY KEY (LocID, ItemID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO Inventory (LocID, ItemID, COUNT)
VALUES    ('L000000001', 'I000000001', 400),
          ('L000000001', 'I000000002', 500),
          ('L000000001', 'I000000005', 700),
          ('L000000002', 'I000000002', 300),
          ('L000000002', 'I000000003', 200),
          ('L000000002', 'I000000006', 800),
          ('L000000006', 'I000000004', 80000);

CREATE    TABLE VirtualItem (
          VirtualID CHAR(10) NOT NULL,
          TypeID CHAR(10) NOT NULL,
          ItemID CHAR(10) NOT NULL,
          PRIMARY KEY (VirtualID, TypeID),
          FOREIGN KEY (TypeID) REFERENCES RestaurantType (TypeID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO VirtualItem (VirtualID, TypeID, ItemID)
VALUES    ('V000000001', 'T000000001', 'I000000001'),
          ('V000000001', 'T000000002', 'I000000001'),
          ('V000000002', 'T000000001', 'I000000002'),
          ('V000000002', 'T000000002', 'I000000002'),
          ('V000000003', 'T000000001', 'I000000003'),
          ('V000000003', 'T000000002', 'I000000003'),
          ('V000000004', 'T000000001', 'I000000005'),
          ('V000000004', 'T000000002', 'I000000006');

CREATE    TABLE RequestItem (
          RequestID CHAR(10) NOT NULL,
          ItemID CHAR(10) NOT NULL,
          Quantity INT NOT NULL,
          PRIMARY KEY (RequestID, ItemID),
          FOREIGN KEY (RequestID) REFERENCES RestaurantRequest (RequestID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO RequestItem
VALUES    ('R000000001', 'I000000001', 10),
          ('R000000001', 'I000000002', 50),
          ('R000000002', 'I000000003', 80),
          ('R000000003', 'I000000004', 70),
          ('R000000004', 'I000000006', 30),
          ('R000000005', 'I000000006', 90),
          ('R000000006', 'I000000004', 100);

CREATE    TABLE DeliveryNoteRestaurantRequest (
          NoteID CHAR(10),
          RequestID CHAR(10),
          LocID CHAR(10),
          PRIMARY KEY (NoteID, RequestID),
          FOREIGN KEY (NoteID) REFERENCES DeliveryNote (NoteID),
          FOREIGN KEY (RequestID) REFERENCES RestaurantRequest (RequestID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID)
          );

INSERT    INTO DeliveryNoteRestaurantRequest
VALUES    ('N000000001', 'R000000001', 'L000000006'),
          ('N000000002', 'R000000002', 'L000000006');

-- Related table (layer 4)
CREATE    TABLE PurchaseOrder (
          OrderID CHAR(10) NOT NULL,
          AgreementID CHAR(10) NOT NULL,
          LocID VARCHAR(100) NOT NULL,
          CreatedDate DATE NOT NULL,
          ExpectedDeliveryDate DATE NOT NULL,
          State CHAR(1) CHECK (State IN ('P', 'D', 'F')),
          PRIMARY KEY (OrderID),
          FOREIGN KEY (AgreementID) REFERENCES Agreement (AgreementID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID)
          );

INSERT    INTO PurchaseOrder (OrderID, AgreementID, LocID, CreatedDate, ExpectedDeliveryDate, State)
VALUES    ('O000000001', 'A000000001', 'L000000001', '2021-03-16', '2023-03-18', 'P'),
          ('O000000002', 'A000000002', 'L000000002', '2021-03-17', '2023-03-19', 'P'),
          ('O000000003', 'A000000001', 'L000000003', '2021-03-18', '2023-03-20', 'F');

CREATE    TABLE BPAItem (
          BPA_ID CHAR(10) NOT NULL,
          ItemID CHAR(10) NOT NULL,
          AmountAgreed INT NOT NULL,
          AmountDelivered INT NOT NULL,
          UnitPrice NUMERIC(5, 2) NOT NULL,
          Currency VARCHAR(10) NOT NULL,
          PriceBreakAmount INT NULL,
          Discount NUMERIC(5, 5) NULL,
          PriceBreakEffectiveDate DATE NULL,
          PRIMARY KEY (BPA_ID, ItemID),
          FOREIGN KEY (BPA_ID) REFERENCES Agreement (AgreementID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO BPAItem (BPA_ID, ItemID, AmountAgreed, AmountDelivered, UnitPrice, Currency, PriceBreakAmount, Discount, PriceBreakEffectiveDate)
VALUES    ('A000000001', 'I000000001', 1000, 500, 10.50, 'HKD', 500, 0.05, '2023-01-01'),
          ('A000000001', 'I000000002', 500, 300, 15.00, 'HKD', NULL, NULL, NULL),
          ('A000000001', 'I000000005', 200, 100, 25.00, 'HKD', 100, 0.10, '2023-02-01');

CREATE    TABLE CPAItem (
          CPA_ID CHAR(10) NOT NULL,
          ItemID CHAR(10) NOT NULL,
          PRIMARY KEY (CPA_ID, ItemID),
          FOREIGN KEY (CPA_ID) REFERENCES Agreement (AgreementID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO CPAItem
VALUES    ('A000000002', 'I000000003'),
          ('A000000002', 'I000000006');

CREATE    TABLE PPO (
          PPO_ID CHAR(10) NOT NULL,
          LocID VARCHAR(100) NOT NULL,
          DeliverySchedule CHAR(1) CHECK (DeliverySchedule IN ('W', 'M')),
          Currency VARCHAR(10),
          PRIMARY KEY (PPO_ID, LocID),
          FOREIGN KEY (PPO_ID) REFERENCES Agreement (AgreementID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID)
          );

INSERT    INTO PPO
VALUES    ('A000000003', 'L000000001', 'W', 'HKD');

CREATE    TABLE PPOItem (
          PPO_ID CHAR(10),
          ItemID CHAR(10),
          Quantity INT,
          UnitPrice NUMERIC(5, 2),
          PRIMARY KEY (PPO_ID, ItemID),
          FOREIGN KEY (PPO_ID) REFERENCES Agreement (AgreementID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO PPOItem
VALUES    ('A000000003', 'I000000004', 100, 10.50),
          ('A000000003', 'I000000007', 100, 10.50);

-- Related table (layer 5)
CREATE    TABLE OrderItem (
          OrderID CHAR(10),
          ItemID CHAR(10),
          Quantity INT NOT NULL,
          UoM VARCHAR(10),
          UnitPrice NUMERIC(5, 2),
          PRIMARY KEY (OrderID, ItemID),
          FOREIGN KEY (OrderID) REFERENCES PurchaseOrder (OrderID),
          FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
          );

INSERT    INTO OrderItem
VALUES    ('O000000001', 'I000000001', 10, 'kg', 10.50),
          ('O000000002', 'I000000003', 20, 'pack', 15.00),
          ('O000000003', 'I000000002', 30, 'kg', 20.00);

CREATE    TABLE DeliveryNotePurchaseOrder (
          NoteID CHAR(10),
          OrderID CHAR(10),
          LocID CHAR(10),
          PRIMARY KEY (NoteID, OrderID),
          FOREIGN KEY (NoteID) REFERENCES DeliveryNote (NoteID),
          FOREIGN KEY (OrderID) REFERENCES PurchaseOrder (OrderID),
          FOREIGN KEY (LocID) REFERENCES Location (LocID)
          );

INSERT    INTO DeliveryNotePurchaseOrder
VALUES    ('N000000003', 'O000000001', 'L000000001'),
          ('N000000004', 'O000000002', 'L000000001');