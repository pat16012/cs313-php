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
  , CONSTRAINT fk_clookup_1	  FOREIGN KEY(created_by) REFERENCES system_user(system_user_id)
  , CONSTRAINT fk_clookup_2	  FOREIGN KEY(last_updated_by) REFERENCES system_user(system_user_id));