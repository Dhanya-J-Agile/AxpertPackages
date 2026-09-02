<<
CREATE TABLE IF NOT EXISTS "{{schemaName}}"."librarybook" (
    "bookid" integer NOT NULL,
    "bookname" varchar(100),
    "authorname" varchar(100),
    "price" numeric(10,2),
    "publisheddate" date
)
>>

<<
DROP MATERIALIZED VIEW IF EXISTS "{{schemaName}}".librarybookmaterializedview
>>

<<
CREATE MATERIALIZED VIEW "{{schemaName}}".librarybookmaterializedview
AS
 SELECT librarybook.authorname,
    count(*) AS totalbooks,
    avg(librarybook.price) AS averageprice,
    sum(librarybook.price) AS totalprice
   FROM librarybook
  GROUP BY librarybook.authorname
WITH DATA
>>

<<
INSERT INTO axpages (name,caption,props,blobno,img,visible,type,parent,ordno,levelno,updatedon,createdon,importedon,createdby,updatedby,importedby,readonly,updusername,category,pagetype,intview,webenable,shortcut,icon,websubtype,workflow,oldappurl) VALUES ('HP1785914918282','AxiExportPluginPg','htmlPages.aspx?load=1785914918282',1,NULL,'T','p',NULL,(SELECT COALESCE(MAX(ordno),0) + 1 FROM axpages),0,'05/08/2026 13:17:15','05/08/2026 12:53:54',NULL,'admin','admin',NULL,NULL,NULL,NULL,'web',NULL,NULL,NULL,NULL,'htmlpage',NULL,NULL);INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','PageTsaxip1','p',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','PageTsaxip2','p',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','PageIvaxipack1','p',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','PageIvaxipack2','p',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','axip1','t',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','axip2','t',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','axipack1','i',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>

<<
INSERT INTO axuseraccess (rname,sname,stype,props,blobno,updatedon,actflag) VALUES ('MyAxiRole','axipack2','i',NULL,NULL,'27/07/2026 12:55:40',NULL)
>>