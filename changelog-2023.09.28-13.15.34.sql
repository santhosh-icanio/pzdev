--liquibase formatted sql

--changeset nvoxland:1
INSERT INTO test (ID, Name) VALUES (3, 'Value1');
INSERT INTO test (ID, Name) VALUES (4, 'Value2');

--rollback DELETE FROM test WHERE ID IN (3, 4);
--changeset nvoxland:2
INSERT INTO test (ID, Name) VALUES (5, 'kishor');
INSERT INTO test (ID, Name) VALUES (6, 'santhosh');

--rollback DELETE FROM test WHERE ID IN (5, 6);
