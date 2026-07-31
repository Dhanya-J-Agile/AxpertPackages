<<
CREATE OR REPLACE FUNCTION "{{schemaName}}".axi_fn_getstructlist(p_roles text, p_mode text, p_structtype text)
 RETURNS TABLE(displaydata text, caption text, name text)
 LANGUAGE plpgsql
AS $function$
DECLARE
    v_roles text[];
BEGIN
    v_roles := string_to_array(p_roles, ',');

    IF lower(p_structtype) = 'i' THEN
        RETURN QUERY
        SELECT DISTINCT
               (a.caption || ' (' || a.name || ')')::text,
               a.caption::text,
               a.name::text
        FROM iviews a
        JOIN axpages b ON b.pagetype = 'i' || a.name
        LEFT JOIN axuseraccess ua ON ua.sname = a.name
        WHERE (lower(p_mode) = 'dev' OR b.visible = 'T')
          AND (
                'default' = ANY(v_roles)
                OR (ua.stype = 'i' AND ua.rname = ANY(v_roles))
              )
        ORDER BY 2;

    ELSE
        RETURN QUERY
        SELECT DISTINCT
               (a.caption || ' (' || a.name || ')')::text,
               a.caption::text,
               a.name::text
        FROM tstructs a
        JOIN axpages b ON b.pagetype = 't' || a.name
        LEFT JOIN axuseraccess ua ON ua.sname = a.name
        WHERE (lower(p_mode) = 'dev' OR b.visible = 'T')
          AND (
                'default' = ANY(v_roles)
                OR (ua.stype = 't' AND ua.rname = ANY(v_roles))
              )
        ORDER BY 2;
    END IF;

END;
$function$
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','PageTssrsql','p',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','PageTslrmt','p',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','PageTststcn','p',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','PageTststgd','p',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','PageTssrcgn','p',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','PageTstargn','p',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','lrmt','t',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','tstcn','t',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','tstgd','t',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','srcgn','t',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','targn','t',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('role45','srsql','t',NULL,NULL,'12/11/2025 11:49:11',NULL)
>>