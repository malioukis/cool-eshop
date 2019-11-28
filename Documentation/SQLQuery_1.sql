-- Create a new table called '[Users]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Users]', 'U') IS NOT NULL
DROP TABLE [dbo].[Users]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Users]
(
    [UserId] INT IDENTITY NOT NULL PRIMARY KEY, -- Primary Key column
    [Name] NVARCHAR(50) NOT NULL,
    [Surname] NVARCHAR(50) NOT NULL,
    [AccountType] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Password] NVARCHAR(100) NOT NULL,
    [DateCreated] DATETIME
);
GO

-- Create a new table called '[Product]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Product]', 'U') IS NOT NULL
DROP TABLE [dbo].[Product]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Product]
(
    [ProductId] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [CategoryId] INT FOREIGN KEY REFERENCES [Category](CategoryId)  , 
    [BrandId] INT FOREIGN KEY REFERENCES [Brand](BrandId)  , 
    [ProductName] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(1000) NOT NULL,
    [Price] MONEY NOT NULL,
    [Tags] NVARCHAR
);
GO

-- Create a new table called '[Order]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Order]', 'U') IS NOT NULL
DROP TABLE [dbo].[Order]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Order]
(
    [OrderId] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [ColumnName2] NVARCHAR(50) NOT NULL,
    [ColumnName3] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO