PGDMP         7                w            db-sistemas    10.1    12.1 (Debian 12.1-1) (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    db-sistemas    DATABASE        CREATE DATABASE "db-sistemas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "db-sistemas";
                postgres    false            �            1259    16394    cat_categorias    TABLE     �   CREATE TABLE public.cat_categorias (
    id_categoria_prod integer NOT NULL,
    nom_categoria_prod character varying(25),
    desc_categoria_prod character varying(50)
);
 "   DROP TABLE public.cat_categorias;
       public            postgres    false            �            1259    16397 $   CAT_CATEGORIAS_id_categoria_prod_seq    SEQUENCE     �   CREATE SEQUENCE public."CAT_CATEGORIAS_id_categoria_prod_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."CAT_CATEGORIAS_id_categoria_prod_seq";
       public          postgres    false    196            �           0    0 $   CAT_CATEGORIAS_id_categoria_prod_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."CAT_CATEGORIAS_id_categoria_prod_seq" OWNED BY public.cat_categorias.id_categoria_prod;
          public          postgres    false    197            �            1259    16399    cat_proveedores    TABLE     $  CREATE TABLE public.cat_proveedores (
    id_proveedor integer NOT NULL,
    nom_proveedor character varying(25),
    dir_proveedor character varying(50),
    telefono_proveedor character varying(15),
    email_proveedor character varying(20),
    contacto_proveedor character varying(30)
);
 #   DROP TABLE public.cat_proveedores;
       public            postgres    false            �            1259    16402     CAT_PROVEEDORES_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public."CAT_PROVEEDORES_id_proveedor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."CAT_PROVEEDORES_id_proveedor_seq";
       public          postgres    false    198            �           0    0     CAT_PROVEEDORES_id_proveedor_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."CAT_PROVEEDORES_id_proveedor_seq" OWNED BY public.cat_proveedores.id_proveedor;
          public          postgres    false    199            �            1259    16404    detalle_venta    TABLE     �   CREATE TABLE public.detalle_venta (
    id_detalle_venta integer NOT NULL,
    id_venta integer NOT NULL,
    id_prod character varying(25) NOT NULL,
    cantidad_vendida numeric(8,2) NOT NULL
);
 !   DROP TABLE public.detalle_venta;
       public            postgres    false            �            1259    16407 "   DETALLE_VENTA_id_detalle_venta_seq    SEQUENCE     �   CREATE SEQUENCE public."DETALLE_VENTA_id_detalle_venta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."DETALLE_VENTA_id_detalle_venta_seq";
       public          postgres    false    200            �           0    0 "   DETALLE_VENTA_id_detalle_venta_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."DETALLE_VENTA_id_detalle_venta_seq" OWNED BY public.detalle_venta.id_detalle_venta;
          public          postgres    false    201            �            1259    16409    ventas    TABLE     r   CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    monto_venta numeric(8,2),
    fecha_venta date
);
    DROP TABLE public.ventas;
       public            postgres    false            �            1259    16412    VENTAS_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public."VENTAS_id_venta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."VENTAS_id_venta_seq";
       public          postgres    false    202            �           0    0    VENTAS_id_venta_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."VENTAS_id_venta_seq" OWNED BY public.ventas.id_venta;
          public          postgres    false    203            �            1259    16414    cat_productos    TABLE     �  CREATE TABLE public.cat_productos (
    nombre_prod character varying(25) NOT NULL,
    desc_prod character varying(50),
    stock_prod numeric(8,2),
    foto_prod bytea,
    unidad_prod character varying(15),
    precio_compra_prod numeric(8,2),
    precio_venta_prod numeric(8,2),
    existencias_prod numeric(6,2),
    id_categoria_prod integer NOT NULL,
    id_proveedor integer NOT NULL,
    id_prod character varying(25) NOT NULL
);
 !   DROP TABLE public.cat_productos;
       public            postgres    false            
           2604    16420     cat_categorias id_categoria_prod    DEFAULT     �   ALTER TABLE ONLY public.cat_categorias ALTER COLUMN id_categoria_prod SET DEFAULT nextval('public."CAT_CATEGORIAS_id_categoria_prod_seq"'::regclass);
 O   ALTER TABLE public.cat_categorias ALTER COLUMN id_categoria_prod DROP DEFAULT;
       public          postgres    false    197    196                       2604    16421    cat_proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.cat_proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public."CAT_PROVEEDORES_id_proveedor_seq"'::regclass);
 K   ALTER TABLE public.cat_proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    199    198                       2604    16422    detalle_venta id_detalle_venta    DEFAULT     �   ALTER TABLE ONLY public.detalle_venta ALTER COLUMN id_detalle_venta SET DEFAULT nextval('public."DETALLE_VENTA_id_detalle_venta_seq"'::regclass);
 M   ALTER TABLE public.detalle_venta ALTER COLUMN id_detalle_venta DROP DEFAULT;
       public          postgres    false    201    200                       2604    16423    ventas id_venta    DEFAULT     t   ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public."VENTAS_id_venta_seq"'::regclass);
 >   ALTER TABLE public.ventas ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    203    202            �          0    16394    cat_categorias 
   TABLE DATA           d   COPY public.cat_categorias (id_categoria_prod, nom_categoria_prod, desc_categoria_prod) FROM stdin;
    public          postgres    false    196   x2       �          0    16414    cat_productos 
   TABLE DATA           �   COPY public.cat_productos (nombre_prod, desc_prod, stock_prod, foto_prod, unidad_prod, precio_compra_prod, precio_venta_prod, existencias_prod, id_categoria_prod, id_proveedor, id_prod) FROM stdin;
    public          postgres    false    204   �2       �          0    16399    cat_proveedores 
   TABLE DATA           �   COPY public.cat_proveedores (id_proveedor, nom_proveedor, dir_proveedor, telefono_proveedor, email_proveedor, contacto_proveedor) FROM stdin;
    public          postgres    false    198   �2       �          0    16404    detalle_venta 
   TABLE DATA           ^   COPY public.detalle_venta (id_detalle_venta, id_venta, id_prod, cantidad_vendida) FROM stdin;
    public          postgres    false    200   �2       �          0    16409    ventas 
   TABLE DATA           D   COPY public.ventas (id_venta, monto_venta, fecha_venta) FROM stdin;
    public          postgres    false    202   �2       �           0    0 $   CAT_CATEGORIAS_id_categoria_prod_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."CAT_CATEGORIAS_id_categoria_prod_seq"', 1, true);
          public          postgres    false    197            �           0    0     CAT_PROVEEDORES_id_proveedor_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."CAT_PROVEEDORES_id_proveedor_seq"', 1, false);
          public          postgres    false    199            �           0    0 "   DETALLE_VENTA_id_detalle_venta_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."DETALLE_VENTA_id_detalle_venta_seq"', 1, false);
          public          postgres    false    201            �           0    0    VENTAS_id_venta_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."VENTAS_id_venta_seq"', 1, false);
          public          postgres    false    203                       2606    16425 "   cat_categorias CAT_CATEGORIAS_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.cat_categorias
    ADD CONSTRAINT "CAT_CATEGORIAS_pkey" PRIMARY KEY (id_categoria_prod);
 N   ALTER TABLE ONLY public.cat_categorias DROP CONSTRAINT "CAT_CATEGORIAS_pkey";
       public            postgres    false    196                       2606    16427     cat_productos CAT_PRODUCTOS_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cat_productos
    ADD CONSTRAINT "CAT_PRODUCTOS_pkey" PRIMARY KEY (id_prod);
 L   ALTER TABLE ONLY public.cat_productos DROP CONSTRAINT "CAT_PRODUCTOS_pkey";
       public            postgres    false    204                       2606    16429 $   cat_proveedores CAT_PROVEEDORES_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cat_proveedores
    ADD CONSTRAINT "CAT_PROVEEDORES_pkey" PRIMARY KEY (id_proveedor);
 P   ALTER TABLE ONLY public.cat_proveedores DROP CONSTRAINT "CAT_PROVEEDORES_pkey";
       public            postgres    false    198                       2606    16431     detalle_venta DETALLE_VENTA_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT "DETALLE_VENTA_pkey" PRIMARY KEY (id_detalle_venta);
 L   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT "DETALLE_VENTA_pkey";
       public            postgres    false    200                       2606    16433    ventas VENTAS_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT "VENTAS_pkey" PRIMARY KEY (id_venta);
 >   ALTER TABLE ONLY public.ventas DROP CONSTRAINT "VENTAS_pkey";
       public            postgres    false    202                       2606    16435 &   cat_categorias nombre_categoria_unique 
   CONSTRAINT     o   ALTER TABLE ONLY public.cat_categorias
    ADD CONSTRAINT nombre_categoria_unique UNIQUE (nom_categoria_prod);
 P   ALTER TABLE ONLY public.cat_categorias DROP CONSTRAINT nombre_categoria_unique;
       public            postgres    false    196                       2606    16436 "   cat_productos id_categoria_prod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_productos
    ADD CONSTRAINT id_categoria_prod_fk FOREIGN KEY (id_categoria_prod) REFERENCES public.cat_categorias(id_categoria_prod);
 L   ALTER TABLE ONLY public.cat_productos DROP CONSTRAINT id_categoria_prod_fk;
       public          postgres    false    204    3343    196                       2606    16441    detalle_venta id_prod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT id_prod_fk FOREIGN KEY (id_prod) REFERENCES public.cat_productos(id_prod);
 B   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT id_prod_fk;
       public          postgres    false    204    200    3353                       2606    16446    cat_productos id_proveedor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_productos
    ADD CONSTRAINT id_proveedor_fk FOREIGN KEY (id_proveedor) REFERENCES public.cat_proveedores(id_proveedor) NOT VALID;
 G   ALTER TABLE ONLY public.cat_productos DROP CONSTRAINT id_proveedor_fk;
       public          postgres    false    3347    198    204                       2606    16451    detalle_venta id_venta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT id_venta_fk FOREIGN KEY (id_venta) REFERENCES public.ventas(id_venta);
 C   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT id_venta_fk;
       public          postgres    false    202    200    3351            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     