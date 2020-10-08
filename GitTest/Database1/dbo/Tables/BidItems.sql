CREATE TABLE [dbo].[BidItems] (
    [BidItemId]            INT             IDENTITY (1, 1) NOT NULL,
    [ProjectId]            INT             NOT NULL,
    [ItemNo]               INT             NOT NULL,
    [Code]                 NVARCHAR (MAX)  NULL,
    [Description]          NVARCHAR (300)  NULL,
    [UnitOfMeasure]        NVARCHAR (6)    NULL,
    [EEQuantity]           DECIMAL (12, 3) NOT NULL,
    [BidUnitPrice]         DECIMAL (13, 2) NOT NULL,
    [IsFinalPay]           BIT             NOT NULL,
    [CcoQuantity]          DECIMAL (12, 3) DEFAULT ((0.0)) NOT NULL,
    [IsStructuresItem]     BIT             DEFAULT ((0)) NOT NULL,
    [IsAdministrativeItem] BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_BidItems] PRIMARY KEY CLUSTERED ([BidItemId] ASC),
    CONSTRAINT [FK_BidItems_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([ProjectId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_BidItems_ProjectId]
    ON [dbo].[BidItems]([ProjectId] ASC);

