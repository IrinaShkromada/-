
CREATE TABLE doc_types_fields
(
    doc_type_id integer,
    doc_field_id integer
)

CREATE TABLE doc_types
(
    doc_type_id integer,
    doc_name character varying(255)
)

CREATE TABLE doc_data
(
    doc_type_id integer,
    doc_field_id integer,
    client_id integer,
    field_data character varying(255),
    doc_id integer
)

CREATE TABLE doc_fields
(
    doc_field_id integer,
    doc_field_name character varying(255),
    doc_field_type character varying(255),
    doc_field_required boolean
)