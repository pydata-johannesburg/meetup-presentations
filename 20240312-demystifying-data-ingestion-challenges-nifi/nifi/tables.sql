CREATE TABLE IF NOT EXISTS public.parquetdata
(
    passengerid integer,
    survived integer,
    pclass integer,
    name character varying(255) COLLATE pg_catalog."default",
    sex character varying(10) COLLATE pg_catalog."default",
    age integer,
    sibsp integer,
    parch integer,
    ticket character varying(20) COLLATE pg_catalog."default",
    fare numeric(8,2),
    cabin character varying(20) COLLATE pg_catalog."default",
    embarked character varying(1) COLLATE pg_catalog."default",
)
 
TABLESPACE pg_default;
 
ALTER TABLE IF EXISTS public.parquetdata
    OWNER to myuser;



CREATE TABLE IF NOT EXISTS public.boredapi
(
    id integer,
    activity character varying(255) COLLATE pg_catalog."default",
    type character varying(255) COLLATE pg_catalog."default",
    participants integer,
    price numeric(10,2),
    link character varying(255) COLLATE pg_catalog."default",
    key character varying(255) COLLATE pg_catalog."default",
    accessibility numeric(10,2)
 
)
 
TABLESPACE pg_default;
 
ALTER TABLE IF EXISTS public.boredapi
    OWNER to myuser;