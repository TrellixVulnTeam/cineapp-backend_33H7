PGDMP     ,                	    y            cineapp #   13.4 (Ubuntu 13.4-0ubuntu0.21.04.1) #   13.4 (Ubuntu 13.4-0ubuntu0.21.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16527    cineapp    DATABASE     \   CREATE DATABASE cineapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_PE.UTF-8';
    DROP DATABASE cineapp;
                postgres    false            �            1259    16528    asiento    TABLE     �   CREATE TABLE public.asiento (
    id integer NOT NULL,
    idsala integer NOT NULL,
    nombre character varying(100) NOT NULL,
    fila character varying(10) NOT NULL,
    descripcion character varying(300),
    estado boolean NOT NULL
);
    DROP TABLE public.asiento;
       public         heap    postgres    false            �            1259    16531    asiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.asiento_id_seq;
       public          postgres    false    200            �           0    0    asiento_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.asiento_id_seq OWNED BY public.asiento.id;
          public          postgres    false    201            �            1259    16533    ciudad    TABLE     �   CREATE TABLE public.ciudad (
    id integer NOT NULL,
    idpais integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300),
    estado boolean NOT NULL
);
    DROP TABLE public.ciudad;
       public         heap    postgres    false            �            1259    16536    ciudad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ciudad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ciudad_id_seq;
       public          postgres    false    202            �           0    0    ciudad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ciudad_id_seq OWNED BY public.ciudad.id;
          public          postgres    false    203            �            1259    16538    horario    TABLE       CREATE TABLE public.horario (
    id integer NOT NULL,
    idpelicula integer NOT NULL,
    idsala integer NOT NULL,
    fecha date NOT NULL,
    horainicio time without time zone NOT NULL,
    horafinal time without time zone NOT NULL,
    idsucursal integer NOT NULL
);
    DROP TABLE public.horario;
       public         heap    postgres    false            �            1259    16541    horario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.horario_id_seq;
       public          postgres    false    204            �           0    0    horario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.horario_id_seq OWNED BY public.horario.id;
          public          postgres    false    205            �            1259    16543    pais    TABLE     �   CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300),
    estado boolean NOT NULL
);
    DROP TABLE public.pais;
       public         heap    postgres    false            �            1259    16546    pais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pais_id_seq;
       public          postgres    false    206            �           0    0    pais_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;
          public          postgres    false    207            �            1259    16548    pelicula    TABLE     �  CREATE TABLE public.pelicula (
    id integer NOT NULL,
    idtipopelicula integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300),
    estado boolean NOT NULL,
    sinopsis text NOT NULL,
    duracion integer NOT NULL,
    trailer character varying(250),
    imagen_portada character varying(250),
    home_portada boolean,
    descripcion_portada character varying(300),
    nombre2 character varying(200),
    imagen character varying(200),
    nombre_slug character varying(200),
    estreno character(1) DEFAULT 0,
    genero character varying(100),
    calificacion_edad character varying(10)
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16555    pelicula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pelicula_id_seq;
       public          postgres    false    208            �           0    0    pelicula_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pelicula_id_seq OWNED BY public.pelicula.id;
          public          postgres    false    209            �            1259    16557 	   personaje    TABLE     �   CREATE TABLE public.personaje (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    estado boolean NOT NULL,
    imagen character varying(300)
);
    DROP TABLE public.personaje;
       public         heap    postgres    false            �            1259    16560    personaje_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.personaje_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.personaje_id_seq1;
       public          postgres    false    210            �           0    0    personaje_id_seq1    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.personaje_id_seq1 OWNED BY public.personaje.id;
          public          postgres    false    211            �            1259    16562    personajepelicula    TABLE     �   CREATE TABLE public.personajepelicula (
    id integer NOT NULL,
    idpersonaje integer NOT NULL,
    idpelicula integer NOT NULL,
    estado boolean NOT NULL,
    idtipo integer NOT NULL
);
 %   DROP TABLE public.personajepelicula;
       public         heap    postgres    false            �            1259    16565    personajepelicula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personajepelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.personajepelicula_id_seq;
       public          postgres    false    212            �           0    0    personajepelicula_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.personajepelicula_id_seq OWNED BY public.personajepelicula.id;
          public          postgres    false    213            �            1259    16743    precio    TABLE     �   CREATE TABLE public.precio (
    id integer NOT NULL,
    idtipoprecio integer NOT NULL,
    idtiposala integer NOT NULL,
    precio double precision NOT NULL,
    descripcion text,
    estado boolean DEFAULT true
);
    DROP TABLE public.precio;
       public         heap    postgres    false            �            1259    16741    precio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.precio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.precio_id_seq;
       public          postgres    false    231            �           0    0    precio_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.precio_id_seq OWNED BY public.precio.id;
          public          postgres    false    230            �            1259    16567    sala    TABLE     �   CREATE TABLE public.sala (
    id integer NOT NULL,
    idtiposala integer NOT NULL,
    idsucursal integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300) NOT NULL,
    estado boolean NOT NULL
);
    DROP TABLE public.sala;
       public         heap    postgres    false            �            1259    16570    sala_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sala_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.sala_id_seq;
       public          postgres    false    214            �           0    0    sala_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.sala_id_seq OWNED BY public.sala.id;
          public          postgres    false    215            �            1259    16572    sucursal    TABLE       CREATE TABLE public.sucursal (
    id integer NOT NULL,
    idciudad integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300),
    direccion character varying(300),
    estado boolean NOT NULL,
    urlimagen character varying(300)
);
    DROP TABLE public.sucursal;
       public         heap    postgres    false            �            1259    16578    sucursal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sucursal_id_seq;
       public          postgres    false    216            �           0    0    sucursal_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sucursal_id_seq OWNED BY public.sucursal.id;
          public          postgres    false    217            �            1259    16580    tipopelicula    TABLE     �   CREATE TABLE public.tipopelicula (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300),
    estado boolean NOT NULL
);
     DROP TABLE public.tipopelicula;
       public         heap    postgres    false            �            1259    16583    tipopelicula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipopelicula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tipopelicula_id_seq;
       public          postgres    false    218            �           0    0    tipopelicula_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tipopelicula_id_seq OWNED BY public.tipopelicula.id;
          public          postgres    false    219            �            1259    16585    tipopersonaje    TABLE     �   CREATE TABLE public.tipopersonaje (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    estado boolean NOT NULL
);
 !   DROP TABLE public.tipopersonaje;
       public         heap    postgres    false            �            1259    16588    tipopersonaje_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipopersonaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tipopersonaje_id_seq;
       public          postgres    false    220            �           0    0    tipopersonaje_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tipopersonaje_id_seq OWNED BY public.tipopersonaje.id;
          public          postgres    false    221            �            1259    16732 
   tipoprecio    TABLE     �   CREATE TABLE public.tipoprecio (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    descripcion text,
    estado boolean
);
    DROP TABLE public.tipoprecio;
       public         heap    postgres    false            �            1259    16730    tipoprecio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipoprecio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tipoprecio_id_seq;
       public          postgres    false    229            �           0    0    tipoprecio_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tipoprecio_id_seq OWNED BY public.tipoprecio.id;
          public          postgres    false    228            �            1259    16590    tiposala    TABLE     �   CREATE TABLE public.tiposala (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300),
    estado boolean NOT NULL
);
    DROP TABLE public.tiposala;
       public         heap    postgres    false            �            1259    16593    tiposala_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tiposala_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tiposala_id_seq;
       public          postgres    false    222            �           0    0    tiposala_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tiposala_id_seq OWNED BY public.tiposala.id;
          public          postgres    false    223            �            1259    16595    tipousuario    TABLE     �   CREATE TABLE public.tipousuario (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300) NOT NULL,
    estado boolean NOT NULL
);
    DROP TABLE public.tipousuario;
       public         heap    postgres    false            �            1259    16598    tipousuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipousuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tipousuario_id_seq;
       public          postgres    false    224            �           0    0    tipousuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tipousuario_id_seq OWNED BY public.tipousuario.id;
          public          postgres    false    225            �            1259    16600    usuario    TABLE     R  CREATE TABLE public.usuario (
    id integer NOT NULL,
    idtipo integer DEFAULT 4,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    usuario character varying(50) NOT NULL,
    descripcion character varying(300),
    tipodocumento character varying(100) NOT NULL,
    documento character varying(100) NOT NULL,
    celular character varying(100) NOT NULL,
    correo character varying(100) NOT NULL,
    contrasena character varying(100) NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    session boolean,
    _token character varying(200)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16608    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    226            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    227            �            1259    16765    venta    TABLE     ;  CREATE TABLE public.venta (
    id integer NOT NULL,
    idhorario integer NOT NULL,
    idsocio integer NOT NULL,
    cantidad integer NOT NULL,
    subtotal double precision NOT NULL,
    igv double precision NOT NULL,
    total double precision NOT NULL,
    descripcion text,
    estado boolean DEFAULT true
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    16763    venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venta_id_seq;
       public          postgres    false    233            �           0    0    venta_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venta_id_seq OWNED BY public.venta.id;
          public          postgres    false    232            �            1259    16787    ventadetalle    TABLE     a  CREATE TABLE public.ventadetalle (
    id integer NOT NULL,
    idventa integer NOT NULL,
    idprecio integer NOT NULL,
    idasiento integer NOT NULL,
    cantidad integer NOT NULL,
    subtotal double precision NOT NULL,
    igv double precision NOT NULL,
    total double precision NOT NULL,
    descripcion text,
    estado boolean DEFAULT true
);
     DROP TABLE public.ventadetalle;
       public         heap    postgres    false            �            1259    16785    ventadetalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventadetalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ventadetalle_id_seq;
       public          postgres    false    235            �           0    0    ventadetalle_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ventadetalle_id_seq OWNED BY public.ventadetalle.id;
          public          postgres    false    234            �           2604    16610 
   asiento id    DEFAULT     h   ALTER TABLE ONLY public.asiento ALTER COLUMN id SET DEFAULT nextval('public.asiento_id_seq'::regclass);
 9   ALTER TABLE public.asiento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            �           2604    16611 	   ciudad id    DEFAULT     f   ALTER TABLE ONLY public.ciudad ALTER COLUMN id SET DEFAULT nextval('public.ciudad_id_seq'::regclass);
 8   ALTER TABLE public.ciudad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    16612 
   horario id    DEFAULT     h   ALTER TABLE ONLY public.horario ALTER COLUMN id SET DEFAULT nextval('public.horario_id_seq'::regclass);
 9   ALTER TABLE public.horario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    16613    pais id    DEFAULT     b   ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);
 6   ALTER TABLE public.pais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �           2604    16614    pelicula id    DEFAULT     j   ALTER TABLE ONLY public.pelicula ALTER COLUMN id SET DEFAULT nextval('public.pelicula_id_seq'::regclass);
 :   ALTER TABLE public.pelicula ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            �           2604    16615    personaje id    DEFAULT     m   ALTER TABLE ONLY public.personaje ALTER COLUMN id SET DEFAULT nextval('public.personaje_id_seq1'::regclass);
 ;   ALTER TABLE public.personaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    16616    personajepelicula id    DEFAULT     |   ALTER TABLE ONLY public.personajepelicula ALTER COLUMN id SET DEFAULT nextval('public.personajepelicula_id_seq'::regclass);
 C   ALTER TABLE public.personajepelicula ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    16746 	   precio id    DEFAULT     f   ALTER TABLE ONLY public.precio ALTER COLUMN id SET DEFAULT nextval('public.precio_id_seq'::regclass);
 8   ALTER TABLE public.precio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16617    sala id    DEFAULT     b   ALTER TABLE ONLY public.sala ALTER COLUMN id SET DEFAULT nextval('public.sala_id_seq'::regclass);
 6   ALTER TABLE public.sala ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16618    sucursal id    DEFAULT     j   ALTER TABLE ONLY public.sucursal ALTER COLUMN id SET DEFAULT nextval('public.sucursal_id_seq'::regclass);
 :   ALTER TABLE public.sucursal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16619    tipopelicula id    DEFAULT     r   ALTER TABLE ONLY public.tipopelicula ALTER COLUMN id SET DEFAULT nextval('public.tipopelicula_id_seq'::regclass);
 >   ALTER TABLE public.tipopelicula ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16620    tipopersonaje id    DEFAULT     t   ALTER TABLE ONLY public.tipopersonaje ALTER COLUMN id SET DEFAULT nextval('public.tipopersonaje_id_seq'::regclass);
 ?   ALTER TABLE public.tipopersonaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16735    tipoprecio id    DEFAULT     n   ALTER TABLE ONLY public.tipoprecio ALTER COLUMN id SET DEFAULT nextval('public.tipoprecio_id_seq'::regclass);
 <   ALTER TABLE public.tipoprecio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16621    tiposala id    DEFAULT     j   ALTER TABLE ONLY public.tiposala ALTER COLUMN id SET DEFAULT nextval('public.tiposala_id_seq'::regclass);
 :   ALTER TABLE public.tiposala ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16622    tipousuario id    DEFAULT     p   ALTER TABLE ONLY public.tipousuario ALTER COLUMN id SET DEFAULT nextval('public.tipousuario_id_seq'::regclass);
 =   ALTER TABLE public.tipousuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16623 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16768    venta id    DEFAULT     d   ALTER TABLE ONLY public.venta ALTER COLUMN id SET DEFAULT nextval('public.venta_id_seq'::regclass);
 7   ALTER TABLE public.venta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16790    ventadetalle id    DEFAULT     r   ALTER TABLE ONLY public.ventadetalle ALTER COLUMN id SET DEFAULT nextval('public.ventadetalle_id_seq'::regclass);
 >   ALTER TABLE public.ventadetalle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �          0    16528    asiento 
   TABLE DATA           P   COPY public.asiento (id, idsala, nombre, fila, descripcion, estado) FROM stdin;
    public          postgres    false    200   ��       �          0    16533    ciudad 
   TABLE DATA           I   COPY public.ciudad (id, idpais, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    202   �       �          0    16538    horario 
   TABLE DATA           c   COPY public.horario (id, idpelicula, idsala, fecha, horainicio, horafinal, idsucursal) FROM stdin;
    public          postgres    false    204   :�       �          0    16543    pais 
   TABLE DATA           ?   COPY public.pais (id, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    206   v�       �          0    16548    pelicula 
   TABLE DATA           �   COPY public.pelicula (id, idtipopelicula, nombre, descripcion, estado, sinopsis, duracion, trailer, imagen_portada, home_portada, descripcion_portada, nombre2, imagen, nombre_slug, estreno, genero, calificacion_edad) FROM stdin;
    public          postgres    false    208   ��       �          0    16557 	   personaje 
   TABLE DATA           ?   COPY public.personaje (id, nombre, estado, imagen) FROM stdin;
    public          postgres    false    210   ��       �          0    16562    personajepelicula 
   TABLE DATA           X   COPY public.personajepelicula (id, idpersonaje, idpelicula, estado, idtipo) FROM stdin;
    public          postgres    false    212   ��       �          0    16743    precio 
   TABLE DATA           [   COPY public.precio (id, idtipoprecio, idtiposala, precio, descripcion, estado) FROM stdin;
    public          postgres    false    231   ��       �          0    16567    sala 
   TABLE DATA           W   COPY public.sala (id, idtiposala, idsucursal, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    214   �       �          0    16572    sucursal 
   TABLE DATA           c   COPY public.sucursal (id, idciudad, nombre, descripcion, direccion, estado, urlimagen) FROM stdin;
    public          postgres    false    216   ��       �          0    16580    tipopelicula 
   TABLE DATA           G   COPY public.tipopelicula (id, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    218   ��       �          0    16585    tipopersonaje 
   TABLE DATA           ;   COPY public.tipopersonaje (id, nombre, estado) FROM stdin;
    public          postgres    false    220   #�       �          0    16732 
   tipoprecio 
   TABLE DATA           E   COPY public.tipoprecio (id, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    229   Q�       �          0    16590    tiposala 
   TABLE DATA           C   COPY public.tiposala (id, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    222   ��       �          0    16595    tipousuario 
   TABLE DATA           F   COPY public.tipousuario (id, nombre, descripcion, estado) FROM stdin;
    public          postgres    false    224   ��       �          0    16600    usuario 
   TABLE DATA           �   COPY public.usuario (id, idtipo, nombre, apellido, usuario, descripcion, tipodocumento, documento, celular, correo, contrasena, estado, session, _token) FROM stdin;
    public          postgres    false    226   O�       �          0    16765    venta 
   TABLE DATA           l   COPY public.venta (id, idhorario, idsocio, cantidad, subtotal, igv, total, descripcion, estado) FROM stdin;
    public          postgres    false    233   s�       �          0    16787    ventadetalle 
   TABLE DATA           }   COPY public.ventadetalle (id, idventa, idprecio, idasiento, cantidad, subtotal, igv, total, descripcion, estado) FROM stdin;
    public          postgres    false    235   ��       �           0    0    asiento_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.asiento_id_seq', 1, false);
          public          postgres    false    201            �           0    0    ciudad_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ciudad_id_seq', 2, true);
          public          postgres    false    203            �           0    0    horario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.horario_id_seq', 1, true);
          public          postgres    false    205            �           0    0    pais_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.pais_id_seq', 2, true);
          public          postgres    false    207            �           0    0    pelicula_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pelicula_id_seq', 1, false);
          public          postgres    false    209            �           0    0    personaje_id_seq1    SEQUENCE SET     @   SELECT pg_catalog.setval('public.personaje_id_seq1', 1, false);
          public          postgres    false    211            �           0    0    personajepelicula_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.personajepelicula_id_seq', 1, false);
          public          postgres    false    213            �           0    0    precio_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.precio_id_seq', 1, false);
          public          postgres    false    230            �           0    0    sala_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sala_id_seq', 1, false);
          public          postgres    false    215            �           0    0    sucursal_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sucursal_id_seq', 2, true);
          public          postgres    false    217            �           0    0    tipopelicula_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tipopelicula_id_seq', 1, false);
          public          postgres    false    219            �           0    0    tipopersonaje_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipopersonaje_id_seq', 1, false);
          public          postgres    false    221            �           0    0    tipoprecio_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tipoprecio_id_seq', 3, true);
          public          postgres    false    228            �           0    0    tiposala_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tiposala_id_seq', 1, false);
          public          postgres    false    223            �           0    0    tipousuario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tipousuario_id_seq', 4, true);
          public          postgres    false    225            �           0    0    usuario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuario_id_seq', 13, true);
          public          postgres    false    227            �           0    0    venta_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.venta_id_seq', 1, false);
          public          postgres    false    232            �           0    0    ventadetalle_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ventadetalle_id_seq', 1, false);
          public          postgres    false    234            �           2606    16625    asiento asiento_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.asiento
    ADD CONSTRAINT asiento_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.asiento DROP CONSTRAINT asiento_pkey;
       public            postgres    false    200            �           2606    16627    ciudad ciudad_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_pkey;
       public            postgres    false    202            �           2606    16629    horario horario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public            postgres    false    204            �           2606    16631    pais pais_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    206            �           2606    16633    pelicula pelicula_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    208                       2606    16635    personaje personaje_pkey1 
   CONSTRAINT     W   ALTER TABLE ONLY public.personaje
    ADD CONSTRAINT personaje_pkey1 PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.personaje DROP CONSTRAINT personaje_pkey1;
       public            postgres    false    210                       2606    16637 (   personajepelicula personajepelicula_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.personajepelicula
    ADD CONSTRAINT personajepelicula_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.personajepelicula DROP CONSTRAINT personajepelicula_pkey;
       public            postgres    false    212                       2606    16752    precio precio_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.precio
    ADD CONSTRAINT precio_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.precio DROP CONSTRAINT precio_pkey;
       public            postgres    false    231                       2606    16639    sala sala_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public            postgres    false    214                       2606    16641    sucursal sucursal_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public            postgres    false    216            	           2606    16643    tipopelicula tipopelicula_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipopelicula
    ADD CONSTRAINT tipopelicula_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tipopelicula DROP CONSTRAINT tipopelicula_pkey;
       public            postgres    false    218                       2606    16645     tipopersonaje tipopersonaje_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipopersonaje
    ADD CONSTRAINT tipopersonaje_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tipopersonaje DROP CONSTRAINT tipopersonaje_pkey;
       public            postgres    false    220                       2606    16740    tipoprecio tipoprecio_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tipoprecio
    ADD CONSTRAINT tipoprecio_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tipoprecio DROP CONSTRAINT tipoprecio_pkey;
       public            postgres    false    229                       2606    16647    tiposala tiposala_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tiposala
    ADD CONSTRAINT tiposala_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tiposala DROP CONSTRAINT tiposala_pkey;
       public            postgres    false    222                       2606    16649    tipousuario tipousuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipousuario
    ADD CONSTRAINT tipousuario_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tipousuario DROP CONSTRAINT tipousuario_pkey;
       public            postgres    false    224                       2606    16651    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    226                       2606    16774    venta venta_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    233                       2606    16652    asiento asiento_idsala_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.asiento
    ADD CONSTRAINT asiento_idsala_fkey FOREIGN KEY (idsala) REFERENCES public.sala(id);
 E   ALTER TABLE ONLY public.asiento DROP CONSTRAINT asiento_idsala_fkey;
       public          postgres    false    214    3077    200                       2606    16657    ciudad ciudad_idpais_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_idpais_fkey FOREIGN KEY (idpais) REFERENCES public.pais(id);
 C   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_idpais_fkey;
       public          postgres    false    206    3069    202                       2606    16662    horario horario_idpelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_idpelicula_fkey FOREIGN KEY (idpelicula) REFERENCES public.pelicula(id);
 I   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_idpelicula_fkey;
       public          postgres    false    208    3071    204                       2606    16667    horario horario_idsala_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_idsala_fkey FOREIGN KEY (idsala) REFERENCES public.sala(id);
 E   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_idsala_fkey;
       public          postgres    false    204    214    3077                       2606    16713    horario horario_idsucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_idsucursal_fkey FOREIGN KEY (idsucursal) REFERENCES public.sucursal(id) NOT VALID;
 I   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_idsucursal_fkey;
       public          postgres    false    216    3079    204                       2606    16672 %   pelicula pelicula_idtipopelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_idtipopelicula_fkey FOREIGN KEY (idtipopelicula) REFERENCES public.tipopelicula(id);
 O   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_idtipopelicula_fkey;
       public          postgres    false    218    208    3081                       2606    16677 3   personajepelicula personajepelicula_idpelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personajepelicula
    ADD CONSTRAINT personajepelicula_idpelicula_fkey FOREIGN KEY (idpelicula) REFERENCES public.pelicula(id);
 ]   ALTER TABLE ONLY public.personajepelicula DROP CONSTRAINT personajepelicula_idpelicula_fkey;
       public          postgres    false    3071    212    208                       2606    16682 4   personajepelicula personajepelicula_idpersonaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personajepelicula
    ADD CONSTRAINT personajepelicula_idpersonaje_fkey FOREIGN KEY (idpersonaje) REFERENCES public.personaje(id);
 ^   ALTER TABLE ONLY public.personajepelicula DROP CONSTRAINT personajepelicula_idpersonaje_fkey;
       public          postgres    false    212    3073    210                        2606    16687 /   personajepelicula personajepelicula_idtipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personajepelicula
    ADD CONSTRAINT personajepelicula_idtipo_fkey FOREIGN KEY (idtipo) REFERENCES public.tipopersonaje(id) NOT VALID;
 Y   ALTER TABLE ONLY public.personajepelicula DROP CONSTRAINT personajepelicula_idtipo_fkey;
       public          postgres    false    212    3083    220            %           2606    16753    precio precio_idtipoprecio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio
    ADD CONSTRAINT precio_idtipoprecio_fkey FOREIGN KEY (idtipoprecio) REFERENCES public.tipoprecio(id) NOT VALID;
 I   ALTER TABLE ONLY public.precio DROP CONSTRAINT precio_idtipoprecio_fkey;
       public          postgres    false    231    3091    229            &           2606    16758    precio precio_idtiposala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio
    ADD CONSTRAINT precio_idtiposala_fkey FOREIGN KEY (idtiposala) REFERENCES public.tiposala(id) NOT VALID;
 G   ALTER TABLE ONLY public.precio DROP CONSTRAINT precio_idtiposala_fkey;
       public          postgres    false    3085    222    231            !           2606    16692    sala sala_idsucursal_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_idsucursal_fkey FOREIGN KEY (idsucursal) REFERENCES public.sucursal(id);
 C   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_idsucursal_fkey;
       public          postgres    false    216    3079    214            "           2606    16697    sala sala_idtiposala_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_idtiposala_fkey FOREIGN KEY (idtiposala) REFERENCES public.tiposala(id);
 C   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_idtiposala_fkey;
       public          postgres    false    222    214    3085            #           2606    16702    sucursal sucursal_idciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_idciudad_fkey FOREIGN KEY (idciudad) REFERENCES public.ciudad(id);
 I   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_idciudad_fkey;
       public          postgres    false    3065    216    202            $           2606    16707    usuario usuario_idtipo_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_idtipo_fkey FOREIGN KEY (idtipo) REFERENCES public.tipousuario(id);
 E   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_idtipo_fkey;
       public          postgres    false    224    226    3087            '           2606    16775    venta venta_idhorario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idhorario_fkey FOREIGN KEY (idhorario) REFERENCES public.horario(id) NOT VALID;
 D   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idhorario_fkey;
       public          postgres    false    3067    233    204            (           2606    16780    venta venta_idsocio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_idsocio_fkey FOREIGN KEY (idsocio) REFERENCES public.usuario(id) NOT VALID;
 B   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_idsocio_fkey;
       public          postgres    false    3089    226    233            +           2606    16805 (   ventadetalle ventadetalle_idasiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT ventadetalle_idasiento_fkey FOREIGN KEY (idasiento) REFERENCES public.asiento(id) NOT VALID;
 R   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT ventadetalle_idasiento_fkey;
       public          postgres    false    3063    200    235            *           2606    16800 '   ventadetalle ventadetalle_idprecio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT ventadetalle_idprecio_fkey FOREIGN KEY (idprecio) REFERENCES public.tipoprecio(id) NOT VALID;
 Q   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT ventadetalle_idprecio_fkey;
       public          postgres    false    3091    235    229            )           2606    16795 &   ventadetalle ventadetalle_idventa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT ventadetalle_idventa_fkey FOREIGN KEY (idventa) REFERENCES public.venta(id) NOT VALID;
 P   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT ventadetalle_idventa_fkey;
       public          postgres    false    233    235    3095            �   M  x�]�I�d7C�هq|���a��1|�0Du��� "*�B2�D��>?�������7O�_)�%#e|ɗ�;����-�ɞ_r��/9)�liOj?�R�hOG��~���ёڏ~S��:�^�������Gj?z�Ɨ�'um��<�	Α�$��D�/�����'<�Oz>R��|R_��I}�>��S�����C�>��M}�CK}�ê��#��3��/��'�����S�����"��/^�+�h�O~�S��b�>�Ť��{��'��R��^O}�{W}W~o�>��o���R��������H}�������I}�ߌ���y�s�����-R���:k���[O}��F�s����ߟ����R��wO}��W}W��H}����O�����O��ί��'�>S��Ɠ��7���ox��@�^���7^�+��R��FO}�#��o�������7-��oz��ħ�矑������gK}�?;�u�9R��ϙ��ߞ'�(�h��4j�?H�f�i�V��Z5Ɵ�F��g�Q��Y�ޓܞ4j����2<�(�~�i�I��4��y���@�D�w�F��;R#S�dJ�tɔT�)��%SG#���W�w��ҨL��Q��H�2�U�)�4*SX�)<�ʔ��)3$S2fH��̐LI�!�3C2%g�dJ�ɔ��)Q3$�@�iD�i�J��ҨL��Q��H�2%q��A�LɃ̙��3%RgJ�Δ<ȝ)�'x����ϣ���\���T)�O:U	D�.�J��!�ҩ��J�
$�LPhd�	�4��z�v�z�r�z�$(�d�E#�L�h$�	�l2���w;�2�m�z�g�w�����>�Sm3��TߐT&�3��vFZ����+��e�<#�L�g��	���2��\&�3��~6m;����T>$�	3���b&3r�dF�����2�if�3'�Lx�� �9?��h�`;('��d����Oێ�ӷ�r�v�����n�v��N�)�۹�,��׮$��׶$��׾$����$����$����4%�7�@r2�Ν3!�N���N�챝�ymP���J�W_[�,���(�a}mR���ڥd���M�2�k��}��F�+�ک���۩z�^���ڬt5\��.�k���p�W� �{.+�|.K��S9Gl�r�����h۩~�����۩~&�\V>' ]�>']�>']?']V?']�?']�?']@'�i=c;W=s;U9�2�t�?N��']�9�:�A��C�ΟַS�W۩�����Aߝ����Aߝ����Aߝ����Aߝ�s��L����v�\��N�kd�w�N���v�Gl��pd��\m;5WG�N��1�Ss���39�gr��� ���Ah?���~&��LB���<i89y��9�S�Bϳ�z�@�c�@�c�@�c�@�c !�1�����A�}� �>rr9���l;u.��Թ,k���,�S�^�n����m��,k���ll��ln����N�Úe�&d�Gd�9�;ABOp @6O����� d�9Y>���l��m�r�o�zX̚�۩��n�rF�N�L2�@��1��!s�!s�`�92�@��1��!s�`�92�};�O��T>�`�=�`�=�`�=�`�=�`�=�`�=�`�=�`�=�%Z���U��Nճ�#e�a�H��z��9��*)s�]R��ˤ�1��I�ch};�s۩�[�|�a�S}�m;Շݷs=tg����v������ｷ�����@��q C�8��!{���=�`�r0d�9�ǁ��@��q};��۩�G�|�<��T�ӶS9O�N�L���@���@���@���@���@���@��ǂ�����۷o�2��K      �   D   x�3�4����M���,�2�K���!\c ױ(��4� ��� #39'���(�YZU���� �y      �   ,   x�3�4B##C]C]C#NCS+c+NCs+#�+F��� ���      �      x�3�H-*���,����� &��      �   H
  x��XMo�H=+��w�	 K���N� �e'�����$�`Q"[d�$��&e˧���s�a0�\���%���%;�M���#�(vw}�z��O:k��6�6EAj�Ձ�2������ܞ�ݮJ�W�Vy5i����r�ѫڦ�YO�m[���J7�r��R��j,.S[~���qX�8CM����Z�j�t�P�+�K�Z'%mAN%�c���j�q���M�)�,�Sy[ReRJ{����-�t��V�i�tY�X=�(�Ժ0\�jj�\�����V�ù�US��!�T������¸��׾�T���؊Թ�����r�gl�F�ͺP�ɨ�,�`M�+xg��Kecc8mO��*��T������1G�R�^�����"�:���Ϟ�j=U)g�7�M3��R����C��O����s�K�j�g�pB������Nm�H���oƅ�+���/�Su�&� ����{x�2c�xS8��˂j�%)��i>3�^gum�ɛ��O������̶M;�=�տ�&ɟO���:x�?z2���~˒��Qm|/Al|yy�����q�ԩ�>�7ͬ�����Ȳ�/չI�{��Y<~����}�����4��'����\�
J��-��gH��d1e+S�r�vV�y�Vq���l�4}fK�G.��i��)�����B(�B���%$
H����Zs1���Q�<T���.zj�8��ϭ
��jwaP�:*e���1¾�rl�*)/�le�).=2�(�z�����8��3|�;k�=���r��j�s��2�w�����G�]s��N����������~�l�/�?$WQ�աs1��6���h�e���5�3�p�'��fv�|��f$y(`U�i����J�� �8g+Q������c|���`f&�+��K�&��嬌(E�"��F�[���t
�䜰s �Z�F�#,X�o�����]�l ��@�9H���$�d�����j�1�J�(�=�TL^4kS�/�.�-7�6�7B�=5����t *���
ua}�Ⱦ�2ډJ)��m��,��Ŵ�Q,$~�g�ϋ�����ݣ�[�{��X���.Z�#.�`�[!5h�S���䏦2�h�����)l�A�͸�Qi�ņ>28S!o�4�����	�x�v��\k�N_q�!#u�z�U�J����p{�5��H�:4�r%���*td5�b��.nH�{{� !O�����ta+�h3*�1�Q�хY���
R�Lq[F��_jK	`N���A�q�,�.ζQ\���:�gә�as[�[h��S`�Ed����nf���@�DO��~�W�w~c��`��e���:�>�K�Z�l[�wEԡ��/�����h�-SSe�	#J{d �TG�ڠe���P.RDEBExb+��(8��D��E�9F�C/�.'����Z��b���_Mh�����Y���hf�P�iT�AL� =M柡�X-����n�M�XX4շ��Ȉ�_�/�� tH���p�L�� :j��&���_��B/���)d6���oYɣG�R`+ⶴ�����E�C\'������E�-D��b
�)	h�y���]J�K-�d����h�]�AP��1a���+�T>���\0��.x����!w5���r�����"��-WBTgh��b��F�}�v�4�ܤ��L	M������;X��a��]�CWx^# �̘�8��i˄eH��٬ �O��)��Qꢻ\U	-��S��ʱA�{�mZ�v������4��P�P`=y������&j�fjm��D-I��}���mj���D11v���	�t3��<��Z�8�"Ṏ�,��d���̳<D�9���3����V�(d�W z�fQ<�� �=�*���.fZ�X���a"��w �*J�'��^�h)�����\�4H��fX��ǣ���>D�ZxƵ���z����1��[�K�t�+�L�=S"&�;�����)J���gԡG�{� ����?�-�/�c@��~�k!n�ۈ��iz�E�#�=�FDW1+?qm�y��;-�>��6_j��%�@b{D5dH��5�ْ�N�b�W���᫭�H�+u�M�"m_O�0�����fBG��M<��1S&L`5�P#��m �q��	w���	�f�=x�H��!>6�����ڞy4�����d�ͅ��I�̉�F�h�=G��%�V)E�=Xލ|�b1������j�q��G����EIc2�^=F�2q	ۤ���susc��U�02�cO/�C����v'dZ��*�@w�\ ���p�O��)+re����*12������ȕ6�Ωk���߯�ޯ�o�4 V@��A����=�Y4m#ߍ)莄�4\Pqz�~}d[�fߥ�\m�63Q�!�9B_@K��^"9,+�D�>�8Ԩ��3���|Q��D2���	�)t���gZ�_Ҷ�Ѿ/9����>9M0�����v���le������Q��0=�S8Y�ί�Vex�謮;�;���n?�y�*�P-$r��վ�}��^���~] ���o��/�v�x	�I�����`����z�u��[�޹��ڻw�� �й-      �   �   x��Mn�  е��+W����MȄ����*S$�s���k��J����U���o����IkU*[J�� [(�$�9�{u}��_��ew1�������(R82�y�u��c�䝜Ϥ�(�xe�0R~�o�\�� ��v:���'6w�+Gl�v�Ap�M��y����_���Uw��g���u���@�      �      x�3�4��,�4����� �      �      x������ � �      �   �   x����� D��W��
G�Ǧ5�C~��w�؋�������t`8~ne*���̇k��e��ipg��@�6C�xVAŋ ��t���tfH�J�BJf'fAm�$��ByJk	��mh<�����k�b��zM|� 	|�[��<��ۦ�Z3+E	����E� 1��9&vL8fvL�#�TVi�o��X�r��nZ^���,����V��5�\ghU�q2Ƽ ����      �   �  x����r�6���S� �BܲS5�ԝأ��M&���f�U�t�~�n����Ȋ�^v��7���#�lw���e��\�/7�j]��4�q7���L�}�L��4���������0��UV\ө	���x�i]��a��*E�4�&+�u`xйp_��I�[uڎp<�lW�חoHl� uf�w��<��B�E#�M\�F��I�,F+Uj��#��q��pA�/��k�:2��a�rp`\�:�y���c�k�d0�i͙�f�^8h@�xdW�p7�ö�31��h<`�wJv<�y]Q�#D���q{��X��ٓa@�YQJ��g����o5.���(\� D1�G,�+	"e$�ZۨWE�c�������T��Y��B9b:�#�»�*^D�1:k��[��Ħ��s ��#�lK�U.T�:ͤ�U��?�ݮo"EA��i<9�"Vx^��f�����'���W���F�&o�`!DId� �B
��!;�!�����ن�{�}�xz��u7�iyPD���#�B,$I�����b� M��Dn�־XZ2�R4愲����/��~�a���>Q]�c���e ��JEz�P&�����d�)��&�Vʿ��O��|*ݓ��t�?�����#xԉ���a�h�Z�B��7�Z�����~8#��K��G=V>Ҩ"(����K�
F�_Vm��n��      �   3   x�3�(ʯ���/Vp-.)J��/���,�2�tN,*I�I-J���qqq p��      �      x�3�tL.�/�,�2�t�,J�rb���� r)a      �   Y   x�3�tt	�	��44R�U05UH<�1����ˈ�����/��G��U�H�Ј�H!Q��S��E��1�?HA��T���L(���� �a      �   5  x�U�1n�0Eg�<@ 	�vm�lZd�Ѕ�C %:�l ��2u˪��r3��M$��c����X�!J
Ƞ��m�a������(C�hF(RB��OG@�$*}�Z�
�D�^�\�X��;�p˘�����䶣=+A��:e�=�1�KSP呸^�ĸV�Ws| ��%��D�Dqf�Yw	^֛�I�d��v�޸���B#I�cn��g(�3Kc�+,�r�ݙ����h������Y���Pm�ő�嬺���������)eZ�z4�a�Wp�`��b�Sb�E�P��"�.��?=$E������_��d      �   @   x�3�,�O�̇�
�9��y%��%\&��)��y��E%E�)�Eh\���������D��=... ���      �     x�e�AO�@��ï聛	���7c��R��T��e[�@�B���z�h51�I�d^��g�u������R���+�"0�L0F]�&�-7Eͷ���p���XE�h,xۊF��^����n��~��kuhׂ+~�����������w���T�a:|�'���tk�$�7��^$��$lR�(�������e�/
f�L�R�QJ��pNs����9}O�˕I��Ȉ�yP>�˴�D�o2l��X�$QKy��ԫ�a�-6�r�V�Y�\�M�>�)l�      �      x������ � �      �      x������ � �     