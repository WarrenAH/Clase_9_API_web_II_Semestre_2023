PGDMP         '                {            libreria    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24046    libreria    DATABASE     e   CREATE DATABASE libreria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE libreria;
                postgres    false            �            1259    24047    libro    TABLE     �   CREATE TABLE public.libro (
    id integer NOT NULL,
    titulo character varying(200),
    autor character varying(100),
    descripcion text,
    publicado timestamp without time zone
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    24052    libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.libro_id_seq;
       public          postgres    false    209            �           0    0    libro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.libro_id_seq OWNED BY public.libro.id;
          public          postgres    false    210            \           2604    24053    libro id    DEFAULT     d   ALTER TABLE ONLY public.libro ALTER COLUMN id SET DEFAULT nextval('public.libro_id_seq'::regclass);
 7   ALTER TABLE public.libro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �          0    24047    libro 
   TABLE DATA           J   COPY public.libro (id, titulo, autor, descripcion, publicado) FROM stdin;
    public          postgres    false    209   s
       �           0    0    libro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.libro_id_seq', 3, true);
          public          postgres    false    210            ^           2606    24055    libro libro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    209            �   J   x�3���L*�7�,O,*J��,���4202�5��52R00�#.c�:#�ļ���J����BJ�T��=... �9     