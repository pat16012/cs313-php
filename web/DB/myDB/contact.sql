CREATE TABLE contact
( contact_id                  INT
, member_id                   INT            NOT NULL
, contact_type                INT            NOT NULL
, first_name                  VARCHAR(20)    NOT NULL
, middle_name                 VARCHAR(20)
, last_name                   VARCHAR(20)    NOT NULL
, created_by                  INT            NOT NULL
, creation_date               DATE           NOT NULL
, last_updated_by             INT            NOT NULL
, last_update_date            DATE           NOT NULL
, CONSTRAINT pk_contact_1     PRIMARY KEY(contact_id)
, CONSTRAINT fk_contact_1     FOREIGN KEY(member_id) REFERENCES member(member_id)
, CONSTRAINT fk_contact_2     FOREIGN KEY(contact_type) REFERENCES common_lookup(common_lookup_id)
, CONSTRAINT fk_contact_3     FOREIGN KEY(created_by) REFERENCES system_user(system_user_id)
, CONSTRAINT fk_contact_4     FOREIGN KEY(last_updated_by) REFERENCES system_user(system_user_id));
