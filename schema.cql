CREATE TABLE IF NOT EXISTS bank.transactions (
    account_id text,
    transaction_id text,
    transaction_date timestamp,
    amount double,
    merchant_id text,
    medium text,
    tx_status text,
    description text,
    category text,
    PRIMARY KEY ((account_id), transaction_date)
  ) WITH CLUSTERING ORDER BY (transaction_date DESC);

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

insert into bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) values
    ('jeremy', '12345678', 'Banking', 'Savings', 0.005, 48991.55);
insert into bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) values
    ('jeremy', '87654321', 'Banking', 'Primary Access', 0.0, 8553.23);
insert into bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) values
    ('jeremy', '84394856', 'Banking', 'Mortgate Loan', 0.03, -554553.23);
insert into bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) values
    ('jeremy', '39845898', 'Banking', 'Marriott Visa', 0.08, -223.47);
insert into bank.accounts
    (user_id, account_id, account_type, account_name, interest_rate, account_balance) values
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
    (user_id, password_hash, email, phone, address1, address2, city, state, postcode, country) values
    ('yoshi', 'fjklqk234jk09xcv8jq2k34jlaslkdfj023i4jlsdfaj', 'yoshi.k@yahoo.com', '+81 43384938', '11-1 Kamitoba Hokodatecho', '', 'Minami Ward', 'Kyoto', '601-8501', 'Japan');

INSERT INTO bank.users
    (user_id, password_hash, email, phone, address1, address2, city, state, postcode, country) values
    ('jeremy', 'anvklj453209lk../l;j230jklfl09823lkj,.4n,..', 'jeremy.h@live.com', '+61 488948582', '', '', '', '', '', '');