CREATE TABLE [Customer].[Account] (
    [CustomerID]   INT           IDENTITY (1, 1) NOT NULL,
    [CustomerName] VARCHAR (100) NOT NULL,
    [EmailAddress] VARCHAR (200) NOT NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Customer_EmailAddress]
    ON [Customer].[Account]([EmailAddress] ASC);

