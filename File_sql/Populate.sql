-- Populate Client table
INSERT INTO Client (Client_ID, First_Name, Last_Name, Email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Mary', 'Smith', 'mary.smith@example.com'),
(3, 'Julian', 'Martin', 'julian.martin@example.com'),
(4, 'Sophie', 'Johnson', 'sophie.johnson@example.com'),
(5, 'William', 'Brown', 'william.brown@example.com'),
(6, 'Camilla', 'Taylor', 'camilla.taylor@example.com'),
(7, 'Nicholas', 'Moore', 'nicholas.moore@example.com'),
(8, 'Lucy', 'Anderson', 'lucy.anderson@example.com'),
(9, 'Peter', 'Clark', 'peter.clark@example.com'),
(10, 'Celine', 'Wilson', 'celine.wilson@example.com'),
(11, 'Luca', 'Bianchi', 'luca.bianchi@example.com'),
(12, 'Laura', 'Rossi', 'laura.rossi@example.com'),
(13, 'Francesco', 'Verdi', 'francesco.verdi@example.com'),
(14, 'Chiara', 'Russo', 'chiara.russo@example.com'),
(15, 'Alessandro', 'Romano', 'alessandro.romano@example.com');


-- Populate Bot table
INSERT INTO Bot (Bot_ID, Bot_Name, Description, Status,Last_Transactions) VALUES
(1, 'TradingBot1', 'Bot for cryptocurrency trading.', 'Active'),
(2, 'TradingBot2', 'Bot for stock trading.', 'Inactive'),
(3, 'TradingBot3', 'Bot for commodities trading.', 'Active'),
(4, 'TradingBot4', 'Bot for index trading.', 'Inactive'),
(5, 'ScalpingBot', 'Bot for high-frequency trading.', 'Active'),
(6, 'SwingBot', 'Bot for swing trading.', 'Inactive'),
(7, 'ArbitrageBot', 'Bot for arbitrage.', 'Active'),
(8, 'OptionsBot', 'Bot for options trading.', 'Inactive'),
(9, 'FuturesBot', 'Bot for futures trading.', 'Active');

-- Populate Bot_Client table
INSERT INTO Bot_Client (Bot_ID, Client_ID) VALUES
(1, 1), (2, 1), (3, 2), (4, 2), (1, 3), (2, 4), (3, 5), (4, 6), (1, 7), (2, 8), (3, 9), (4, 10),(5, 1), (6, 2), (7, 3), (8, 4), (9, 5), (5, 6), (6, 7), (7, 8), (8, 9), (9, 10), (5, 11), (6, 12), (7, 13), (8, 14), (9, 15);


-- Populate Asset table
INSERT INTO Asset (Asset_ID, Asset_Name, Asset_Type) VALUES
(1, 'Bitcoin', 'Cryptocurrency'),
(2, 'Ethereum', 'Cryptocurrency'),
(3, 'Apple', 'Stock'),
(4, 'Amazon', 'Stock'),
(5, 'Gold', 'Commodity'),
(6, 'Oil', 'Commodity'),
(7, 'S&P 500', 'Index'),
(8, 'Nasdaq', 'Index'),
(9, 'Ripple', 'Cryptocurrency'),
(10, 'Litecoin', 'Cryptocurrency'),
(11, 'Microsoft', 'Stock'),
(12, 'Facebook', 'Stock'),
(13, 'Silver', 'Commodity'),
(14, 'Copper', 'Commodity'),
(15, 'DAX', 'Index'),
(16, 'FTSE 100', 'Index'),
(17, 'Cardano', 'Cryptocurrency'),
(18, 'Polkadot', 'Cryptocurrency'),
(19, 'Tesla', 'Stock'),
(20, 'NVIDIA', 'Stock'),
(21, 'Platinum', 'Commodity'),
(22, 'Natural Gas', 'Commodity'),
(23, 'CAC 40', 'Index'),
(24, 'NIKKEI', 'Index'),
(25, 'Binance Coin', 'Cryptocurrency'),
(26, 'Chainlink', 'Cryptocurrency'),
(27, 'Intel', 'Stock'),
(28, 'IBM', 'Stock'),
(29, 'Cotton', 'Commodity'),
(30, 'Wheat', 'Commodity'),
(31, 'DJIA', 'Index'),
(32, 'Russell 2000', 'Index');


-- Populate Bot_Asset table
INSERT INTO Bot_Asset (Bot_ID, Asset_ID) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8),(5, 9), (6, 10), (7, 11), (8, 12), (9, 13), (5, 14), (6, 15), (7, 16), (8, 17), (9, 18), (5, 19), (6, 20), (7, 21), (8, 22), (9, 23), (5, 24), (6, 25), (7, 26), (8, 27), (9, 28), (5, 29), (6, 30), (7, 31), (8, 32);


-- Populate Currency_Pair table
INSERT INTO Currency_Pair (Pair_ID, Asset_ID, Currency) VALUES
(1, 1, 'USD'),
(2, 2, 'USD'),
(3, 3, 'USD'),
(4, 4, 'USD'),
(5, 5, 'USD'),
(6, 6, 'USD'),
(7, 7, 'USD'),
(8, 8, 'USD'),
(9, 9, 'EUR'),
(10, 10, 'CHF'),
(11, 11, 'JPY'),
(12, 12, 'GBP'),
(13, 13, 'AUD'),
(14, 14, 'CAD'),
(15, 15, 'NZD'),
(16, 16, 'SGD'),
(17, 17, 'USD'),
(18, 18, 'USD'),
(19, 19, 'USD'),
(20, 20, 'USD'),
(21, 21, 'USD'),
(22, 22, 'USD'),
(23, 23, 'USD'),
(24, 24, 'USD'),
(25, 25, 'USD'),
(26, 26, 'USD'),
(27, 27, 'USD'),
(28, 28, 'USD');


-- Populate Portefeuille table
INSERT INTO Portefeuille (Portefeuille_ID, Currency, Quantity) VALUES
(1, 'USD', 10000),
(2, 'Bitcoin', 2),
(3, 'Ethereum', 50),
(4, 'Apple', 100),
(5, 'Amazon', 50),
(6, 'Gold', 200),
(7, 'Oil', 1000),
(8, 'S&P 500', 10),
(9, 'Nasdaq', 5),
(10, 'EUR', 10000),
(11, 'Ripple', 1000),
(12, 'Litecoin', 500),
(13, 'Microsoft', 100),
(14, 'Facebook', 150),
(15, 'Silver', 200),
(16, 'Copper', 500),
(17, 'DAX', 10),
(18, 'FTSE 100', 5);


-- Populate Portfolio_Client table
INSERT INTO Portefeuille_Client (Client_ID, Portefeuille_ID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 1),(11, 10), (12, 11), (13, 12), (14, 13), (15, 14);


-- Populate Transactions table
INSERT INTO Transactions (Transactions_ID, Bot_ID, Currency_Pair, Quantity, Price, Date) VALUES
(1, 1, 1, 0.5, 5000, '2023-01-01'),
(2, 2, 3, 10, 150, '2023-01-02'),
(3, 3, 5, 50, 1300, '2023-01-03'),
(4, 4, 7, 2, 3000, '2023-01-04'),
(5, 1, 2, 10, 200, '2023-01-05'),
(6, 2, 4, 5, 2000, '2023-01-06'),
(7, 3, 6, 200, 70, '2023-01-07'),
(8, 4, 8, 1, 7000, '2023-01-08'),
(9, 5, 9, 100, 1, '2023-02-01'),
(10, 6, 10, 50, 200, '2023-02-02'),
(11, 7, 11, 10, 100, '2023-02-03'),
(12, 8, 12, 5, 150, '2023-02-04'),
(13, 9, 13, 100, 15, '2023-02-05'),
(14, 5, 14, 500, 2, '2023-02-06'),
(15, 6, 15, 2, 5000, '2023-02-07'),
(16, 7, 16, 1, 7000, '2023-02-08'),
(17, 8, 17, 100, 2, '2023-02-09'),
(18, 9, 18, 200, 1.5, '2023-02-10'),
(19, 5, 19, 10, 600, '2023-02-11'),
(20, 6, 20, 5, 200, '2023-02-12'),
(21, 7, 21, 50, 20, '2023-02-13'),
(22, 8, 22, 500, 3, '2023-02-14'),
(23, 9, 23, 2, 4000, '2023-02-15'),
(24, 5, 24, 1, 20000, '2023-02-16'),
(25, 6, 25, 100, 3, '2023-02-17'),
(26, 7, 26, 200, 2.5, '2023-02-18'),
(27, 8, 27, 20, 50, '2023-02-19'),
(28, 9, 28, 10, 100, '2023-02-20');

-- Populate Log table
INSERT INTO Log (Log_ID, Bot_ID, Date_Time, Message) VALUES
(1, 1, '2023-01-01 10:00:00', 'Bitcoin purchase executed.'),
(2, 2, '2023-01-02 11:00:00', 'Apple purchase executed.'),
(3, 3, '2023-01-03 12:00:00', 'Gold purchase executed.'),
(4, 4, '2023-01-04 13:00:00', 'S&P 500 purchase executed.'),
(5, 1, '2023-01-05 14:00:00', 'Ethereum purchase executed.'),
(6, 2, '2023-01-06 15:00:00', 'Amazon purchase executed.'),
(7, 3, '2023-01-07 16:00:00', 'Oil purchase executed.'),
(8, 4, '2023-01-08 17:00:00', 'Nasdaq purchase executed.'),
(9, 5, '2023-02-01 10:00:00', 'Ripple purchase executed.'),
(10, 6, '2023-02-02 11:00:00', 'Litecoin purchase executed.'),
(11, 7, '2023-02-03 12:00:00', 'Microsoft purchase executed.'),
(12, 8, '2023-02-04 13:00:00', 'Facebook purchase executed.'),
(13, 9, '2023-02-05 14:00:00', 'Silver purchase executed.'),
(14, 5, '2023-02-06 15:00:00', 'Copper purchase executed.'),
(15, 6, '2023-02-07 16:00:00', 'DAX purchase executed.'),
(16, 7, '2023-02-08 17:00:00', 'FTSE 100 purchase executed.'),
(17, 8, '2023-02-09 18:00:00', 'Cardano purchase executed.'),
(18, 9, '2023-02-10 19:00:00', 'Polkadot purchase executed.'),
(19, 5, '2023-02-11 20:00:00', 'Tesla purchase executed.'),
(20, 6, '2023-02-12 21:00:00', 'NVIDIA purchase executed.'),
(21, 7, '2023-02-13 22:00:00', 'Platinum purchase executed.'),
(22, 8, '2023-02-14 23:00:00', 'Natural Gas purchase executed.'),
(23, 9, '2023-02-15 00:00:00', 'CAC 40 purchase executed.'),
(24, 5, '2023-02-16 01:00:00', 'NIKKEI purchase executed.'),
(25, 6, '2023-02-17 02:00:00', 'Binance Coin purchase executed.'),
(26, 7, '2023-02-18 03:00:00', 'Chainlink purchase executed.'),
(27, 8, '2023-02-19 04:00:00', 'Intel purchase executed.'),
(28, 9, '2023-02-20 05:00:00', 'IBM purchase executed.');
