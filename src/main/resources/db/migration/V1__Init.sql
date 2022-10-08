CREATE TABLE USER_ACCOUNT
(
    id       serial NOT NULL,
    name     character varying(255),
    username character varying(255) UNIQUE,
    password character varying(255)
);
