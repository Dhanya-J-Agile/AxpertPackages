<<
CREATE TABLE IF NOT EXISTS "{{schemaName}}"."absc1" (
    "absc1id" numeric(16,0) NOT NULL,
    "cancel" varchar(1),
    "sourceid" numeric(16,0),
    "mapname" varchar(20),
    "username" varchar(50),
    "modifiedon" timestamp without time zone,
    "createdby" varchar(50),
    "createdon" timestamp without time zone,
    "wkid" varchar(15),
    "app_level" numeric(3,0),
    "app_desc" numeric(1,0),
    "app_slevel" numeric(3,0),
    "cancelremarks" varchar(150),
    "wfroles" varchar(250),
    "inputfield1" varchar(10)
)
>>