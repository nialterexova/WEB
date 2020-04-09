CREATE TABLE [dbo].[Employee] (
    [LastName]    VARCHAR (20) NOT NULL,
    [BirthDate]   DATE     NULL,
    [TabelNumber] INT          NOT NULL,
    [PhoneNamber] BIGINT          NOT NULL,
    [Position]    CHAR (18)    NOT NULL,
    [email]       CHAR (18)    NULL,
    [FirstName]   VARCHAR (20) NOT NULL,
    [MiddleName]  VARCHAR (20) NULL,
    [Department]  CHAR (18)    NULL,
    CONSTRAINT [XPKСотрудник] PRIMARY KEY NONCLUSTERED ([TabelNumber] ASC)
);

