PGDMP     %                    y            postgres    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13442    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3259                        2615    152477    finkargo    SCHEMA        CREATE SCHEMA finkargo;
    DROP SCHEMA finkargo;
                postgres    false            "           1259    152488    area    TABLE     ?   CREATE TABLE finkargo.area (
    id_area integer NOT NULL,
    nombre_area "char",
    sub_area "char",
    ubicacion "char"
);
    DROP TABLE finkargo.area;
       finkargo         heap    postgres    false    4            !           1259    152483    areas    TABLE        CREATE TABLE finkargo.areas (
    id integer NOT NULL,
    nombre "char" NOT NULL,
    edad integer,
    sexo "char",
    correo "char",
    contrasena "char",
    id_areas integer NOT NULL,
    id_usuario integer NOT NULL,
    id_area integer NOT NULL
);
    DROP TABLE finkargo.areas;
       finkargo         heap    postgres    false    4                        1259    152478    usuario    TABLE     ?   CREATE TABLE finkargo.usuario (
    id integer NOT NULL,
    nombre text NOT NULL,
    edad integer,
    sexo text,
    correo text,
    contrasena text
);
    DROP TABLE finkargo.usuario;
       finkargo         heap    postgres    false    4            ?          0    152488    area 
   TABLE DATA           K   COPY finkargo.area (id_area, nombre_area, sub_area, ubicacion) FROM stdin;
    finkargo          postgres    false    290   ?       ?          0    152483    areas 
   TABLE DATA           l   COPY finkargo.areas (id, nombre, edad, sexo, correo, contrasena, id_areas, id_usuario, id_area) FROM stdin;
    finkargo          postgres    false    289   
       ?          0    152478    usuario 
   TABLE DATA           O   COPY finkargo.usuario (id, nombre, edad, sexo, correo, contrasena) FROM stdin;
    finkargo          postgres    false    288   '       0           2606    152492    area area_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY finkargo.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id_area);
 :   ALTER TABLE ONLY finkargo.area DROP CONSTRAINT area_pkey;
       finkargo            postgres    false    290            .           2606    152487    areas areas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY finkargo.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id_areas);
 <   ALTER TABLE ONLY finkargo.areas DROP CONSTRAINT areas_pkey;
       finkargo            postgres    false    289            ,           2606    152482    usuario usuario_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY finkargo.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY finkargo.usuario DROP CONSTRAINT usuario_pkey;
       finkargo            postgres    false    288            ?      x?????? ? ?      ?      x?????? ? ?      ?   M   x?3?tMIO,R?????K?42???L????E?K22?Kr3s???s93?srK?R?????jB?VS????qqq ~'Q7     