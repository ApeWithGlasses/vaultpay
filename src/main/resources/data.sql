USE vaultpay;

INSERT INTO users (email, name, password) VALUES
('johndoe@email.com', 'John Doe', '$2a$12$UBl3/P.o0oBp6WvcMALaj.H1qdMhhONSvk2iP146k8lq5bQ6DjV1S'),
('email2@email.com', 'User Two', '$2a$12$McdFPzgPh3jyKCI4V3BC1.s5HApqwbQi4gV5pq1g1lni.GxCnxY3C');

INSERT INTO bank_accounts (account_number, balance, user_id) VALUES
('ES123456789', 1000.00, 1),
('ES987654321', 2000.00, 2);
