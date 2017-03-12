CREATE TABLE [Customer].[AccoutMailAddress] (
    [CustomerID]    INT NOT NULL,
    [MailAddressID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC, [MailAddressID] ASC),
    CONSTRAINT [FK_CustomerAccount_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [Customer].[Account] ([CustomerID]),
    CONSTRAINT [FK_CustomerAccoutMailAddress_Customer] FOREIGN KEY ([MailAddressID]) REFERENCES [Customer].[MailAddress] ([MailAddressID])
);

