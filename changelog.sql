--liquibase formatted sql

--changeset nvoxland:1 

CREATE TABLE test (
    ID INT PRIMARY KEY,
    Name NVARCHAR(255)
);
--rollback drop table test; 


