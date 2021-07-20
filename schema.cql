CREATE TABLE IF NOT EXISTS bank.transactions (
    account_id text,
    transaction_date timestamp,
    transaction_id text,
    amount double,
    merchant_id text,
    medium text,
    tx_status text,
    description text,
    category text,
    PRIMARY KEY ((account_id), transaction_date)
  ) WITH CLUSTERING ORDER BY (transaction_date DESC);

INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('74883478', '2021-06-28T11:08:35.179Z', '7539bc9e-9a64-4f76-ae78-e9a65520bd07', 57.00, '7-11', 'debit card', 'COMPLETE', '', 'Food');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('74883478', '2021-07-01T13:16:01.473Z', '2fb064a2-a33d-4956-81c5-f0e246b43990', 385.90, 'Green Power', 'debit card', 'COMPLETE', '', 'Utilities');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('74883478', '2021-07-19T08:33:21.894Z', '12dcfb0b-cf65-49d3-9863-6a145fd87f8f', 182.21, 'Coles', 'debit card', 'COMPLETE', '', 'Groceries');

INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-07-11T11:51:52.095Z', '76b8c0f9-bee8-4616-ab0b-a3920e7d0b11', 4.85, '7-11', 'debit card', 'COMPLETE', '', 'Food');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-06-29T02:48:47.515Z', '2e862993-2021-48e2-9379-76aae3951f87', 478.24, 'PowerShop', 'debit card', 'COMPLETE', '', 'Utilities');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-07-01T08:45:14.13Z', '05f2adb5-07bb-445f-8f4d-c24fe2ecc7df', 137.48, 'Coles', 'debit card', 'COMPLETE', '', 'Groceries');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-07-15T09:54:44.141Z', '0f7fa52d-b7bd-4f9e-becc-9b02df6fd498', 64.85, 'Shell', 'debit card', 'COMPLETE', '', 'Fuel');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-06-28T06:12:45.639Z', '70034527-400c-4f28-9806-39dcaa9c254a', 48.48, 'Coles', 'debit card', 'COMPLETE', '', 'Groceries');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-06-24T09:23:40.373Z', '57297afd-4c25-4b58-bc3b-06e0cfc5426c', 89.48, 'Woolworths', 'debit card', 'COMPLETE', '', 'Groceries');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-07-06T16:21:59.854Z', '07c235e8-0796-4d1b-a97b-131633e8c2c5', 47.48, 'Costco', 'debit card', 'COMPLETE', '', 'Fuel');
INSERT INTO bank.transactions
    (account_id, transaction_date, transaction_id, amount, merchant_id, medium, tx_status, description, category) VALUES
    ('87654321', '2021-07-06T17:35:18.861Z', '1b76c60b-e59b-4fa0-adb1-ba3b70a408ee', 235.61, 'Costco', 'debit card', 'COMPLETE', '', 'Groceries');


// Checking, Savings, credit card, loans
CREATE TABLE IF NOT EXISTS bank.accounts (
    user_id text,
    account_id text,
    account_name text,
    account_type text,
    interest_rate double,
    account_balance double,
    PRIMARY KEY (user_id, account_type, account_id)
);

INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('yoshi', '09918395', 'Banking', 'Savings', 0.005, 299430.31);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('yoshi', '74883478', 'Banking', 'Primary Access', 0.0, 10448.45);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('yoshi', '77938948', 'Banking', 'Mortgage Loan', 0.025, -44803.08);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('yoshi', '48939849', 'Banking', 'Master Card', 0.08, -112.64);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('yoshi', '10039489', 'Investment', 'Mutual Fund', 0.02, 886401.00);

INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('jeremy', '12345678', 'Banking', 'Savings', 0.005, 48991.55);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('jeremy', '87654321', 'Banking', 'Primary Access', 0.0, 8553.23);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('jeremy', '84394856', 'Banking', 'Mortgate Loan', 0.03, -554553.23);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('jeremy', '39845898', 'Banking', 'Marriott Visa', 0.08, -223.47);
INSERT INTO bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) VALUES
    ('jeremy', '45839489', 'Investment', 'Mutual Fund', 0.02, 234400.00);

CREATE TABLE IF NOT EXISTS bank.users (
    user_id text PRIMARY KEY,
    password_hash text,
    email text,
    phone text,
    address1 text,
    address2 text,
    city text,
    state text,
    postcode text,
    country text
);

INSERT INTO bank.users
    (user_id, password_hash, email, phone, address1, address2, city, state, postcode, country) VALUES
    ('yoshi', 'fjklqk234jk09xcv8jq2k34jlaslkdfj023i4jlsdfaj', 'yoshi.k@yahoo.com', '+81-75-662-9600', '11-1 Kamitoba Hokodatecho', '', 'Minami Ward', 'Kyoto', '601-8501', 'Japan');

INSERT INTO bank.users
    (user_id, password_hash, email, phone, address1, address2, city, state, postcode, country) VALUES
    ('jeremy', 'anvklj453209lk../l;j230jklfl09823lkj,.4n,..', 'jeremy.h@live.com', '+61 2 6652 4355', '351 Pacific Hwy', '', 'Coffs Harbour', 'NSW', '2450', 'Australia');