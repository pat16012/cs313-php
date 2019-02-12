-- Create table.
CREATE TABLE member
( member_id                   INT
, member_type                 INT       
, account_number              VARCHAR(10)   NOT NULL
, credit_card_number          VARCHAR(19)   NOT NULL
, credit_card_type            INT           NOT NULL
, created_by                  INT           NOT NULL
, creation_date               DATE          NOT NULL
, last_updated_by             INT           NOT NULL
, last_update_date            DATE          NOT NULL
, CONSTRAINT pk_member_1      PRIMARY KEY(member_id)
, CONSTRAINT fk_member_1      FOREIGN KEY(member_type) REFERENCES common_lookup(common_lookup_id)
, CONSTRAINT fk_member_2      FOREIGN KEY(credit_card_type) REFERENCES common_lookup(common_lookup_id)
, CONSTRAINT fk_member_3      FOREIGN KEY(created_by) REFERENCES system_user(system_user_id)
, CONSTRAINT fk_member_4      FOREIGN KEY(last_updated_by) REFERENCES system_user(system_user_id));