-- Tables

CREATE TABLE Client (
  Client_ID INT PRIMARY KEY,
  Prenom VARCHAR(50),
  Nom VARCHAR(50),
  Email VARCHAR(100) UNIQUE
);

CREATE TABLE Bot (
  Bot_ID INT PRIMARY KEY,
  Bot_Name VARCHAR(50),
  Description TEXT,
  Status VARCHAR(10),
  Last_Transactions DATE
);

CREATE TABLE Bot_Client (
  Bot_ID INT,
  Client_ID INT,
  FOREIGN KEY (Bot_ID) REFERENCES Bot (Bot_ID),
  FOREIGN KEY (Client_ID) REFERENCES Client (Client_ID)
);

CREATE TABLE Transactions (
  Transactions_ID INT PRIMARY KEY,
  Bot_ID INT,
  Currency_Pair INT,
  Quantity DECIMAL,
  Price DECIMAL,
  Date DATE,
  FOREIGN KEY (Bot_ID) REFERENCES Bot (Bot_ID),
  FOREIGN KEY (Currency_Pair) REFERENCES Currency_Pair (Pair_ID)
);

CREATE TABLE Log (
  Log_ID INT PRIMARY KEY,
  Bot_ID INT,
  Date_Time TIMESTAMP,
  Message TEXT,
  FOREIGN KEY (Bot_ID) REFERENCES Bot (Bot_ID)
);

CREATE TABLE Portefeuille (
  Portefeuille_ID INT PRIMARY KEY,
  Currency VARCHAR(20),
  Quantity DECIMAL
);

CREATE TABLE Portefeuille_Client (
  Client_ID INT,
  Portefeuille_ID INT,
  FOREIGN KEY (Client_ID) REFERENCES Client (Client_ID),
  FOREIGN KEY (Portefeuille_ID) REFERENCES Portefeuille (Portefeuille_ID)
);

CREATE TABLE Asset (
  Asset_ID INT PRIMARY KEY,
  Asset_Name VARCHAR(50),
  Asset_Type VARCHAR(50)
);

CREATE TABLE Bot_Asset (
  Bot_ID INT,
  Asset_ID INT,
  FOREIGN KEY (Bot_ID) REFERENCES Bot (Bot_ID),
  FOREIGN KEY (Asset_ID) REFERENCES Asset (Asset_ID)
);

CREATE TABLE Currency_Pair (
  Pair_ID INT PRIMARY KEY,
  Asset_ID INT,
  Currency VARCHAR(20),
  FOREIGN KEY (Asset_ID) REFERENCES Asset (Asset_ID)
);


-- Index
CREATE INDEX idx_client_name ON Client (Nom);
CREATE INDEX idx_bot_id ON Bot (Bot_ID);

-- Trigger
CREATE TRIGGER update_last_transactions AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    UPDATE Bot
    SET Last_Transactions = NEW.Date
    WHERE Bot_ID = NEW.Bot_ID;
END;