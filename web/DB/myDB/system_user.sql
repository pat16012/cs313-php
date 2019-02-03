
-- Create table.
CREATE TABLE system_user
( system_user_id              INT
, system_user_name            VARCHAR(20)  NOT NULL
, system_user_group_id        INT           NOT NULL
, system_user_type            INT           NOT NULL
, first_name                  VARCHAR(20)
, middle_name                 VARCHAR(20)
, last_name                   VARCHAR(20)
, created_by                  INT           NOT NULL
, creation_date               DATE          NOT NULL
, last_updated_by             INT           NOT NULL
, last_update_date            DATE          NOT NULL
, CONSTRAINT pk_system_user_1 PRIMARY KEY(system_user_id)
, CONSTRAINT fk_system_user_1 FOREIGN KEY(created_by) REFERENCES system_user(system_user_id)
, CONSTRAINT fk_system_user_2 FOREIGN KEY(last_updated_by) REFERENCES system_user(system_user_id));
