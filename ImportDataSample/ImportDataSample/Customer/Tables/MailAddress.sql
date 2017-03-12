CREATE TABLE [Customer].[MailAddress] (
    [MailAddressID] INT          IDENTITY (1, 1) NOT NULL,
    [FirstLine]     VARCHAR (50) NOT NULL,
    [SecondLine]    VARCHAR (50) NULL,
    [City]          VARCHAR (50) NOT NULL,
    [PostalCode]    VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([MailAddressID] ASC)
);

