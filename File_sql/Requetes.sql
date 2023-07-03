--1. Récupérer les clients qui ont moins de 5 bots

SELECT *
FROM Client
INNER JOIN Bot_Client ON Client.Client_ID = Bot_Client.Client_ID
GROUP BY Client.Client_ID
HAVING COUNT(Bot_Client.Bot_ID) < 5;

--2. Récupérer les bots qui ont effectué des transactions après le '2023-02-01'

SELECT *
FROM Bot
WHERE Bot.Last_Transactions > '2023-02-01';

--3. Récupérer les clients qui ont fait des transactions (Prénom, Nom, Email et Nom du bot)

SELECT Client.Prenom, Client.Nom, Client.Email, Bot.Bot_Name
FROM Client
INNER JOIN Bot_Client ON Client.Client_ID = Bot_Client.Client_ID
INNER JOIN Bot ON Bot_Client.Bot_ID = Bot.Bot_ID;

--4. Récupérer les bots qui sont associés à des transactions sur la paire de devises Bitcoin/USD

SELECT Bot.*
FROM Bot
INNER JOIN Transactions ON Bot.Bot_ID = Transactions.Bot_ID
INNER JOIN Currency_Pair ON Transactions.Currency_Pair = Currency_Pair.Pair_ID
WHERE Currency_Pair.Asset_ID IN (SELECT Asset_ID FROM Asset WHERE Asset_Name = 'Bitcoin')
AND Currency_Pair.Currency = 'USD';

--5. Compter le nombre de transactions pour chaque bot

SELECT Bot.Bot_Name, COUNT(Transactions.Transactions_ID)
FROM Bot
INNER JOIN Transactions ON Bot.Bot_ID = Transactions.Bot_ID
GROUP BY Bot.Bot_ID;

--6. Récupérer les clients qui ont effectué au moins une transaction

SELECT Client.*
FROM Client
INNER JOIN Bot_Client ON Client.Client_ID = Bot_Client.Client_ID
INNER JOIN Transactions ON Bot_Client.Bot_ID = Transactions.Bot_ID
GROUP BY Client.Client_ID
HAVING COUNT(Transactions.Transactions_ID) > 0;

--7. Récupérer les détails de toutes les transactions effectuées par un bot particulier "ScalpingBot"

SELECT Bot.Bot_Name, Transactions.* 
FROM Bot 
INNER JOIN Transactions ON Bot.Bot_ID = Transactions.Bot_ID 
WHERE Bot.Bot_Name = 'ScalpingBot';


--8. Récupérer le nombre total de transactions effectuées par tous les bots

SELECT COUNT(Transactions.Transactions_ID) AS Total_Transactions 
FROM Transactions;

--9. Récupérer le nombre de bots actifs et inactifs

SELECT Status, COUNT(Bot_ID) 
FROM Bot 
GROUP BY Status;

--10. Récupérer le bot qui a réalisé le plus grand nombre de transactions

SELECT Bot.Bot_Name, COUNT(Transactions.Transactions_ID) as NumberOfTransactions 
FROM Bot 
INNER JOIN Transactions ON Bot.Bot_ID = Transactions.Bot_ID 
GROUP BY Bot.Bot_ID 
ORDER BY NumberOfTransactions DESC 
LIMIT 1;

