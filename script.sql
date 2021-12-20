CREATE SCHEMA finkargo
    AUTHORIZATION postgres;

CREATE TABLE finkargo.usuario
(
    id integer NOT NULL,
    nombre text COLLATE pg_catalog."default" NOT NULL,
    edad integer,
    sexo text COLLATE pg_catalog."default",
    correo text COLLATE pg_catalog."default",
    contrasena text COLLATE pg_catalog."default",
    CONSTRAINT usuario_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE finkargo.usuario
    OWNER to postgres;


CREATE TABLE finkargo.usuario
(
    id integer NOT NULL,
    nombre text COLLATE pg_catalog."default" NOT NULL,
    edad integer,
    sexo text COLLATE pg_catalog."default",
    correo text COLLATE pg_catalog."default",
    contrasena text COLLATE pg_catalog."default",
    CONSTRAINT usuario_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE finkargo.usuario
    OWNER to postgres;

CREATE TABLE finkargo.areas
(
    id integer NOT NULL,
    nombre "char" NOT NULL,
    edad integer,
    sexo "char",
    correo "char",
    contrasena "char",
    id_areas integer NOT NULL,
    id_usuario integer NOT NULL,
    id_area integer NOT NULL,
    CONSTRAINT areas_pkey PRIMARY KEY (id_areas)
)

TABLESPACE pg_default;

ALTER TABLE finkargo.areas
    OWNER to postgres;

CREATE TABLE finkargo.area
(
    id_area integer NOT NULL,
    nombre_area "char",
    sub_area "char",
    ubicacion "char",
    CONSTRAINT area_pkey PRIMARY KEY (id_area)
)

TABLESPACE pg_default;

ALTER TABLE finkargo.area
    OWNER to postgres;