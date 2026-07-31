<<
CREATE SEQUENCE IF NOT EXISTS "{{schemaName}}".axiexportcheckdummysequence START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1
>>

<<
CREATE SEQUENCE IF NOT EXISTS "{{schemaName}}".axiexportcheckdummytable_id_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
>>

<<
CREATE TABLE IF NOT EXISTS "{{schemaName}}"."axiexportcheckdummytable" (
    "id" integer DEFAULT nextval('axiexportcheckdummytable_id_seq'::regclass) NOT NULL,
    "name" varchar(100),
    "salary" numeric(10,2)
)
>>

<<
ALTER TABLE "{{schemaName}}".axiexportcheckdummytable ADD CONSTRAINT axiexportcheckdummytable_pkey PRIMARY KEY (id)
>>

<<
ALTER TABLE "{{schemaName}}".axiexportcheckdummytable ADD CONSTRAINT axiexportcheckdummyconstraint CHECK (salary > 0::numeric)
>>

<<
CREATE UNIQUE INDEX axiexportcheckdummytable_pkey ON "{{schemaName}}".axiexportcheckdummytable USING btree (id)
>>

<<
CREATE INDEX axiexportcheckdummyindex ON "{{schemaName}}".axiexportcheckdummytable USING btree (name)
>>

<<
CREATE OR REPLACE FUNCTION "{{schemaName}}".axiexportcheckdummyfunction()
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN (SELECT COUNT(*) FROM "{{schemaName}}".axiexportcheckdummytable);
END;
$function$
>>

<<
CREATE OR REPLACE FUNCTION "{{schemaName}}".axiexportcheckdummytriggerfunction()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.name := UPPER(NEW.name);
    RETURN NEW;
END;
$function$
>>

<<
CREATE OR REPLACE FUNCTION "{{schemaName}}".axiexportcheckdummytriggerfunction()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.name := UPPER(NEW.name);
    RETURN NEW;
END;
$function$
>>

<<
CREATE TRIGGER axiexportcheckdummytrigger BEFORE INSERT ON axiexportcheckdummytable FOR EACH ROW EXECUTE FUNCTION axiexportcheckdummytriggerfunction()
>>

<<
CREATE OR REPLACE VIEW "{{schemaName}}".axiexportcheckdummyview AS  SELECT axiexportcheckdummytable.id,
    axiexportcheckdummytable.name,
    axiexportcheckdummytable.salary
   FROM axiexportcheckdummytable;
>>