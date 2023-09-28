--liquibase formatted sql

--changeset nvoxland:1 

CREATE TABLE test (
    ID INT PRIMARY KEY,
    Name NVARCHAR(255)
);
--rollback drop table test; 


--changeset nvoxland:2
INSERT INTO test (ID, Name) VALUES (1, 'Value1');
INSERT INTO test (ID, Name) VALUES (2, 'Value2');

--rollback DELETE FROM test WHERE ID IN (1, 2 );
