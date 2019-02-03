CREATE TABLE street_address
( street_address_id           INT
, address_id                  INT            NOT NULL
, street_address              VARCHAR(30)    NOT NULL
, created_by                  INT            NOT NULL
, creation_date               DATE           NOT NULL
, last_updated_by             INT            NOT NULL
, last_update_date            DATE           NOT NULL
, CONSTRAINT pk_saddress_1   PRIMARY KEY(street_address_id)
, CONSTRAINT fk_saddress_1   FOREIGN KEY(address_id) REFERENCES address(address_id)
, CONSTRAINT fk_saddress_3   FOREIGN KEY(created_by) REFERENCES system_user(system_user_id)
, CONSTRAINT fk_saddress_4   FOREIGN KEY(last_updated_by) REFERENCES system_user(system_user_id));