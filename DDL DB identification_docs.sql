-- Table: public.doc_fields

-- DROP TABLE IF EXISTS public.doc_fields;

CREATE TABLE IF NOT EXISTS public.doc_fields
(
    doc_type_id integer,
    doc_field_id integer
)

CREATE TABLE IF NOT EXISTS public.doc_types
(
    doc_type_id integer,
    doc_name character varying(255) COLLATE pg_catalog."default"
)

CREATE TABLE IF NOT EXISTS public.field_data
(
    doc_type_id integer,
    doc_field_id integer,
    client_id integer,
    data character varying(255) COLLATE pg_catalog."default",
    doc_id integer DEFAULT 1
)

CREATE TABLE IF NOT EXISTS public.fields
(
    doc_field_id integer,
    name character varying(255) COLLATE pg_catalog."default",
    type character varying(255) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.doc_fields
    OWNER to postgres;