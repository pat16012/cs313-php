
-- Create the table in the specified schema
CREATE TABLE course
(
    id INT NOT NULL PRIMARY KEY, -- primary key column
    id serial primary key NOT NULL,
    name VARCHAR(60) NOT NULL,
    course_code VARCHAR(10) NOT NULL,
   
);

CREATE TABLE note
(
    id serial PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    content TEXT NOT NULL,
    course_id INT REFERENCES course(id)

);

INSERT INTO course(name, course_code) VALUES ('WEB II', 'CS 313');
INSERT INTO course(name, course_code) VALUES ('WEB I', 'CS 213');

-- Create table.
CREATE TABLE systemUser
( system_user_id              serial 
, system_user_name            VARCHAR(20)   NOT NULL
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
, CONSTRAINT fk_system_user_1 FOREIGN KEY(created_by) REFERENCES systemUser(system_user_id)
, CONSTRAINT fk_system_user_2 FOREIGN KEY(last_updated_by) REFERENCES systemUser(system_user_id));

 CREATE TABLE common_lookup
  ( common_lookup_id 	       INT
  , common_lookup_context	   VARCHAR(30)   NOT NULL
  , common_lookup_type	       VARCHAR(30)   NOT NULL
  , common_lookup_meaning	   VARCHAR(30)   NOT NULL
  , created_by		           INT	         NOT NULL
  , creation_date		       DATE 	     NOT NULL
  , last_updated_by		       INT	         NOT NULL
  , last_update_date 	       DATE 	     NOT NULL
  , CONSTRAINT pk_clookup_1	  PRIMARY KEY(common_lookup_id)
  , CONSTRAINT fk_clookup_1	  FOREIGN KEY(created_by) REFERENCES systemUser(system_user_id)
  , CONSTRAINT fk_clookup_2	  FOREIGN KEY(last_updated_by) REFERENCES systemUser(system_user_id));

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
, CONSTRAINT fk_member_3      FOREIGN KEY(created_by) REFERENCES systemUser(system_user_id)
, CONSTRAINT fk_member_4      FOREIGN KEY(last_updated_by) REFERENCES systemUser(system_user_id));

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
, CONSTRAINT fk_contact_3     FOREIGN KEY(created_by) REFERENCES systemUser(system_user_id)
, CONSTRAINT fk_contact_4     FOREIGN KEY(last_updated_by) REFERENCES systemUser(system_user_id));

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
, CONSTRAINT fk_saddress_3   FOREIGN KEY(created_by) REFERENCES systemUser(system_user_id)
, CONSTRAINT fk_saddress_4   FOREIGN KEY(last_updated_by) REFERENCES systemUser(system_user_id));