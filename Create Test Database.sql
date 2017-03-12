CREATE DATABASE TestImport
GO

USE TestImport
GO

CREATE SCHEMA Customer
GO

CREATE TABLE Customer.Account(
	CustomerID		INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CustomerName	VARCHAR(100) NOT NULL,
	EmailAddress	VARCHAR(200) NOT NULL)
GO

CREATE INDEX IX_Customer_EmailAddress ON Customer.Account(EmailAddress)
GO

CREATE TABLE Customer.MailAddress(
	MailAddressID		INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	FirstLine			VARCHAR(50) NOT NULL,
	SecondLine			VARCHAR(50) NULL,
	City				VARCHAR(50) NOT NULL,
	PostalCode			VARCHAR(50) NULL)
GO

CREATE TABLE Customer.AccoutMailAddress(
	CustomerID		INT NOT NULL,
	MailAddressID	INT NOT NULL,
	PRIMARY KEY (CustomerID,MailAddressID))
GO

ALTER TABLE Customer.AccoutMailAddress
	ADD CONSTRAINT FK_CustomerAccount_Customer FOREIGN KEY (CustomerID) REFERENCES Customer.Account(CustomerID)
GO

ALTER TABLE Customer.AccoutMailAddress
	ADD CONSTRAINT FK_CustomerAccoutMailAddress_Customer FOREIGN KEY (MailAddressID) REFERENCES Customer.MailAddress(MailAddressID)
GO

CREATE PROCEDURE Customer.GetAll
AS

SELECT CustomerID, CustomerName, EmailAddress
FROM Customer.Account
GO

CREATE PROCEDURE dbo.CustomerGet_OLD
AS

SELECT CsutomerID, FullName
FROM dbo.Customer
GO

CREATE PROCEDURE dbo.ExternalCall
AS

SELECT *
FROM Common.common.Config