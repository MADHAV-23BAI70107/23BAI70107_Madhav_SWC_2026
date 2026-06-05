----Q1---
CREATE TABLE transactions
(
transaction_id INT PRIMARY KEY,
merchant_id INT,
credit_card_id INT,
amount INT,
transaction_timestamp TIMESTAMP
);
INSERT INTO transactions
VALUES
(1, 101, 1, 100, '2022-09-25 12:00:00'),
(2, 101, 1, 100, '2022-09-25 12:08:00'),
(3, 101, 1, 100, '2022-09-25 12:28:00'),
(4, 102, 2, 300, '2022-09-25 12:00:00'),
(6, 102, 2, 400, '2022-09-25 14:00:00');




---solution 1-----
select count(*) as payment_count
from transactions t1 inner join transactions t2
on t1.merchant_id=t2.merchant_id and t1.credit_card_id=t2.credit_card_id
and t1.amount=t2.amount
where t1.transaction_timestamp='2022-09-25 12:00:00' 
and t2.transaction_timestamp='2022-09-25 12:08:00'
;