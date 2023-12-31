PGDMP             	    
        {            gg_db    15.3    15.3 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16505    gg_db    DATABASE     x   CREATE DATABASE gg_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE gg_db;
                postgres    false            �            1259    16734    administateur    TABLE     q  CREATE TABLE public.administateur (
    id integer NOT NULL,
    reference_entrepriseid integer NOT NULL,
    nom_admin character varying(50) NOT NULL,
    prenom_admin character varying(50),
    mail_admin character varying(50) NOT NULL,
    pass_admin character varying(50) NOT NULL,
    date_inscript character varying(50),
    mobile_admin character varying(50)
);
 !   DROP TABLE public.administateur;
       public         heap    postgres    false            �            1259    16733    administateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.administateur_id_seq;
       public          postgres    false    231            �           0    0    administateur_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.administateur_id_seq OWNED BY public.administateur.id;
          public          postgres    false    230            �            1259    16676    arbre    TABLE       CREATE TABLE public.arbre (
    id integer NOT NULL,
    especeid integer NOT NULL,
    clientid integer NOT NULL,
    "opérateur_de_saisiid" integer NOT NULL,
    date_plantation character varying(255),
    status character varying(255),
    date_creation character varying(255)
);
    DROP TABLE public.arbre;
       public         heap    postgres    false            �            1259    16675    arbre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.arbre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.arbre_id_seq;
       public          postgres    false    215            �           0    0    arbre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.arbre_id_seq OWNED BY public.arbre.id;
          public          postgres    false    214            �            1259    16752    client    TABLE     �  CREATE TABLE public.client (
    id integer NOT NULL,
    reference_entrepriseid integer NOT NULL,
    nom_client character varying(50) NOT NULL,
    mail_client character varying(50) NOT NULL,
    pass_client character varying(50) NOT NULL,
    adresse_client character varying(50),
    date_inscrip character varying(50),
    prenom_client character varying(50),
    mobile_client character varying(50)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    16751    client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public          postgres    false    235            �           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public          postgres    false    234            �            1259    16706    espece    TABLE     v   CREATE TABLE public.espece (
    id integer NOT NULL,
    typeid integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.espece;
       public         heap    postgres    false            �            1259    16705    espece_id_seq    SEQUENCE     �   CREATE SEQUENCE public.espece_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.espece_id_seq;
       public          postgres    false    223            �           0    0    espece_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.espece_id_seq OWNED BY public.espece.id;
          public          postgres    false    222            �            1259    16713    etat    TABLE     �   CREATE TABLE public.etat (
    id integer NOT NULL,
    etat_feuillageid2 integer NOT NULL,
    arbreid integer NOT NULL,
    height real NOT NULL,
    trunk_diameter real NOT NULL,
    date_create_etat character varying(255)
);
    DROP TABLE public.etat;
       public         heap    postgres    false            �            1259    16720    etat_feuillage    TABLE     h   CREATE TABLE public.etat_feuillage (
    id integer NOT NULL,
    description character varying(255)
);
 "   DROP TABLE public.etat_feuillage;
       public         heap    postgres    false            �            1259    16719    etat_feuillage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.etat_feuillage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.etat_feuillage_id_seq;
       public          postgres    false    227            �           0    0    etat_feuillage_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.etat_feuillage_id_seq OWNED BY public.etat_feuillage.id;
          public          postgres    false    226            �            1259    16712    etat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.etat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.etat_id_seq;
       public          postgres    false    225            �           0    0    etat_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.etat_id_seq OWNED BY public.etat.id;
          public          postgres    false    224            �            1259    16685    lieu_travail    TABLE     d   CREATE TABLE public.lieu_travail (
    id integer NOT NULL,
    name_lieu character varying(255)
);
     DROP TABLE public.lieu_travail;
       public         heap    postgres    false            �            1259    16684    lieu_travail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lieu_travail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.lieu_travail_id_seq;
       public          postgres    false    217            �           0    0    lieu_travail_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.lieu_travail_id_seq OWNED BY public.lieu_travail.id;
          public          postgres    false    216            �            1259    16743    opérateur_de_saisi    TABLE     T  CREATE TABLE public."opérateur_de_saisi" (
    id integer NOT NULL,
    "statut_opérateurid" integer NOT NULL,
    lieu_travailid integer NOT NULL,
    nom_oper character varying(50),
    prenom_oper character varying(50),
    mail_oper character varying(50),
    pass_oper character varying(50),
    mobile_oper character varying(50)
);
 )   DROP TABLE public."opérateur_de_saisi";
       public         heap    postgres    false            �            1259    16742    opérateur_de_saisi_id_seq    SEQUENCE     �   CREATE SEQUENCE public."opérateur_de_saisi_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."opérateur_de_saisi_id_seq";
       public          postgres    false    233            �           0    0    opérateur_de_saisi_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."opérateur_de_saisi_id_seq" OWNED BY public."opérateur_de_saisi".id;
          public          postgres    false    232            �            1259    16727    position    TABLE     �   CREATE TABLE public."position" (
    id integer NOT NULL,
    zoneid integer NOT NULL,
    arbreid integer NOT NULL,
    latitude real NOT NULL,
    longitude real NOT NULL
);
    DROP TABLE public."position";
       public         heap    postgres    false            �            1259    16726    position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.position_id_seq;
       public          postgres    false    229            �           0    0    position_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.position_id_seq OWNED BY public."position".id;
          public          postgres    false    228            �            1259    16761    reference_entreprise    TABLE     l   CREATE TABLE public.reference_entreprise (
    id integer NOT NULL,
    label_ref character varying(255)
);
 (   DROP TABLE public.reference_entreprise;
       public         heap    postgres    false            �            1259    16760    reference_entreprise_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reference_entreprise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.reference_entreprise_id_seq;
       public          postgres    false    237            �           0    0    reference_entreprise_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.reference_entreprise_id_seq OWNED BY public.reference_entreprise.id;
          public          postgres    false    236            �            1259    16777    statut_arbre    TABLE     �   CREATE TABLE public.statut_arbre (
    id integer NOT NULL,
    arbreid integer NOT NULL,
    administateurid integer NOT NULL,
    status character varying(255),
    date_creation character varying(255)
);
     DROP TABLE public.statut_arbre;
       public         heap    postgres    false            �            1259    16776    statut_arbre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.statut_arbre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.statut_arbre_id_seq;
       public          postgres    false    241            �           0    0    statut_arbre_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.statut_arbre_id_seq OWNED BY public.statut_arbre.id;
          public          postgres    false    240            �            1259    16768    statut_opérateur    TABLE     �   CREATE TABLE public."statut_opérateur" (
    id integer NOT NULL,
    administateurid integer NOT NULL,
    status character varying(255),
    date_application character varying(255)
);
 '   DROP TABLE public."statut_opérateur";
       public         heap    postgres    false            �            1259    16767    statut_opérateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public."statut_opérateur_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."statut_opérateur_id_seq";
       public          postgres    false    239            �           0    0    statut_opérateur_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."statut_opérateur_id_seq" OWNED BY public."statut_opérateur".id;
          public          postgres    false    238            �            1259    16692    type    TABLE     W   CREATE TABLE public.type (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.type;
       public         heap    postgres    false            �            1259    16691    type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.type_id_seq;
       public          postgres    false    219            �           0    0    type_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.type_id_seq OWNED BY public.type.id;
          public          postgres    false    218            �            1259    16699    zone    TABLE     W   CREATE TABLE public.zone (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.zone;
       public         heap    postgres    false            �            1259    16698    zone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.zone_id_seq;
       public          postgres    false    221            �           0    0    zone_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.zone_id_seq OWNED BY public.zone.id;
          public          postgres    false    220            �           2604    16737    administateur id    DEFAULT     t   ALTER TABLE ONLY public.administateur ALTER COLUMN id SET DEFAULT nextval('public.administateur_id_seq'::regclass);
 ?   ALTER TABLE public.administateur ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16679    arbre id    DEFAULT     d   ALTER TABLE ONLY public.arbre ALTER COLUMN id SET DEFAULT nextval('public.arbre_id_seq'::regclass);
 7   ALTER TABLE public.arbre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16755 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16709 	   espece id    DEFAULT     f   ALTER TABLE ONLY public.espece ALTER COLUMN id SET DEFAULT nextval('public.espece_id_seq'::regclass);
 8   ALTER TABLE public.espece ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16716    etat id    DEFAULT     b   ALTER TABLE ONLY public.etat ALTER COLUMN id SET DEFAULT nextval('public.etat_id_seq'::regclass);
 6   ALTER TABLE public.etat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16723    etat_feuillage id    DEFAULT     v   ALTER TABLE ONLY public.etat_feuillage ALTER COLUMN id SET DEFAULT nextval('public.etat_feuillage_id_seq'::regclass);
 @   ALTER TABLE public.etat_feuillage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16688    lieu_travail id    DEFAULT     r   ALTER TABLE ONLY public.lieu_travail ALTER COLUMN id SET DEFAULT nextval('public.lieu_travail_id_seq'::regclass);
 >   ALTER TABLE public.lieu_travail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16746    opérateur_de_saisi id    DEFAULT     �   ALTER TABLE ONLY public."opérateur_de_saisi" ALTER COLUMN id SET DEFAULT nextval('public."opérateur_de_saisi_id_seq"'::regclass);
 G   ALTER TABLE public."opérateur_de_saisi" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    16730    position id    DEFAULT     l   ALTER TABLE ONLY public."position" ALTER COLUMN id SET DEFAULT nextval('public.position_id_seq'::regclass);
 <   ALTER TABLE public."position" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16764    reference_entreprise id    DEFAULT     �   ALTER TABLE ONLY public.reference_entreprise ALTER COLUMN id SET DEFAULT nextval('public.reference_entreprise_id_seq'::regclass);
 F   ALTER TABLE public.reference_entreprise ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16780    statut_arbre id    DEFAULT     r   ALTER TABLE ONLY public.statut_arbre ALTER COLUMN id SET DEFAULT nextval('public.statut_arbre_id_seq'::regclass);
 >   ALTER TABLE public.statut_arbre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16771    statut_opérateur id    DEFAULT     �   ALTER TABLE ONLY public."statut_opérateur" ALTER COLUMN id SET DEFAULT nextval('public."statut_opérateur_id_seq"'::regclass);
 E   ALTER TABLE public."statut_opérateur" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16695    type id    DEFAULT     b   ALTER TABLE ONLY public.type ALTER COLUMN id SET DEFAULT nextval('public.type_id_seq'::regclass);
 6   ALTER TABLE public.type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16702    zone id    DEFAULT     b   ALTER TABLE ONLY public.zone ALTER COLUMN id SET DEFAULT nextval('public.zone_id_seq'::regclass);
 6   ALTER TABLE public.zone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ~          0    16734    administateur 
   TABLE DATA           �   COPY public.administateur (id, reference_entrepriseid, nom_admin, prenom_admin, mail_admin, pass_admin, date_inscript, mobile_admin) FROM stdin;
    public          postgres    false    231   �       n          0    16676    arbre 
   TABLE DATA           x   COPY public.arbre (id, especeid, clientid, "opérateur_de_saisiid", date_plantation, status, date_creation) FROM stdin;
    public          postgres    false    215    �       �          0    16752    client 
   TABLE DATA           �   COPY public.client (id, reference_entrepriseid, nom_client, mail_client, pass_client, adresse_client, date_inscrip, prenom_client, mobile_client) FROM stdin;
    public          postgres    false    235   =�       v          0    16706    espece 
   TABLE DATA           2   COPY public.espece (id, typeid, name) FROM stdin;
    public          postgres    false    223   Z�       x          0    16713    etat 
   TABLE DATA           h   COPY public.etat (id, etat_feuillageid2, arbreid, height, trunk_diameter, date_create_etat) FROM stdin;
    public          postgres    false    225   w�       z          0    16720    etat_feuillage 
   TABLE DATA           9   COPY public.etat_feuillage (id, description) FROM stdin;
    public          postgres    false    227   ��       p          0    16685    lieu_travail 
   TABLE DATA           5   COPY public.lieu_travail (id, name_lieu) FROM stdin;
    public          postgres    false    217   ��       �          0    16743    opérateur_de_saisi 
   TABLE DATA           �   COPY public."opérateur_de_saisi" (id, "statut_opérateurid", lieu_travailid, nom_oper, prenom_oper, mail_oper, pass_oper, mobile_oper) FROM stdin;
    public          postgres    false    233   Έ       |          0    16727    position 
   TABLE DATA           N   COPY public."position" (id, zoneid, arbreid, latitude, longitude) FROM stdin;
    public          postgres    false    229   �       �          0    16761    reference_entreprise 
   TABLE DATA           =   COPY public.reference_entreprise (id, label_ref) FROM stdin;
    public          postgres    false    237   �       �          0    16777    statut_arbre 
   TABLE DATA           [   COPY public.statut_arbre (id, arbreid, administateurid, status, date_creation) FROM stdin;
    public          postgres    false    241   %�       �          0    16768    statut_opérateur 
   TABLE DATA           \   COPY public."statut_opérateur" (id, administateurid, status, date_application) FROM stdin;
    public          postgres    false    239   B�       r          0    16692    type 
   TABLE DATA           (   COPY public.type (id, name) FROM stdin;
    public          postgres    false    219   _�       t          0    16699    zone 
   TABLE DATA           (   COPY public.zone (id, name) FROM stdin;
    public          postgres    false    221   |�       �           0    0    administateur_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.administateur_id_seq', 1, false);
          public          postgres    false    230            �           0    0    arbre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.arbre_id_seq', 1, false);
          public          postgres    false    214            �           0    0    client_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.client_id_seq', 1, false);
          public          postgres    false    234            �           0    0    espece_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.espece_id_seq', 1, false);
          public          postgres    false    222            �           0    0    etat_feuillage_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.etat_feuillage_id_seq', 1, false);
          public          postgres    false    226            �           0    0    etat_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.etat_id_seq', 1, false);
          public          postgres    false    224            �           0    0    lieu_travail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.lieu_travail_id_seq', 1, false);
          public          postgres    false    216            �           0    0    opérateur_de_saisi_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."opérateur_de_saisi_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    position_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.position_id_seq', 1, false);
          public          postgres    false    228            �           0    0    reference_entreprise_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.reference_entreprise_id_seq', 1, false);
          public          postgres    false    236            �           0    0    statut_arbre_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.statut_arbre_id_seq', 1, false);
          public          postgres    false    240            �           0    0    statut_opérateur_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."statut_opérateur_id_seq"', 1, false);
          public          postgres    false    238            �           0    0    type_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.type_id_seq', 1, false);
          public          postgres    false    218            �           0    0    zone_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.zone_id_seq', 1, false);
          public          postgres    false    220            �           2606    16741     administateur administateur_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.administateur
    ADD CONSTRAINT administateur_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.administateur DROP CONSTRAINT administateur_pkey;
       public            postgres    false    231            �           2606    16683    arbre arbre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.arbre
    ADD CONSTRAINT arbre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.arbre DROP CONSTRAINT arbre_pkey;
       public            postgres    false    215            �           2606    16759    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    235            �           2606    16711    espece espece_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.espece
    ADD CONSTRAINT espece_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.espece DROP CONSTRAINT espece_pkey;
       public            postgres    false    223            �           2606    16725 "   etat_feuillage etat_feuillage_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.etat_feuillage
    ADD CONSTRAINT etat_feuillage_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.etat_feuillage DROP CONSTRAINT etat_feuillage_pkey;
       public            postgres    false    227            �           2606    16718    etat etat_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.etat
    ADD CONSTRAINT etat_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.etat DROP CONSTRAINT etat_pkey;
       public            postgres    false    225            �           2606    16690    lieu_travail lieu_travail_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lieu_travail
    ADD CONSTRAINT lieu_travail_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.lieu_travail DROP CONSTRAINT lieu_travail_pkey;
       public            postgres    false    217            �           2606    16750 ,   opérateur_de_saisi opérateur_de_saisi_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."opérateur_de_saisi"
    ADD CONSTRAINT "opérateur_de_saisi_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."opérateur_de_saisi" DROP CONSTRAINT "opérateur_de_saisi_pkey";
       public            postgres    false    233            �           2606    16732    position position_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."position" DROP CONSTRAINT position_pkey;
       public            postgres    false    229            �           2606    16766 .   reference_entreprise reference_entreprise_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.reference_entreprise
    ADD CONSTRAINT reference_entreprise_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.reference_entreprise DROP CONSTRAINT reference_entreprise_pkey;
       public            postgres    false    237            �           2606    16784    statut_arbre statut_arbre_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.statut_arbre
    ADD CONSTRAINT statut_arbre_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.statut_arbre DROP CONSTRAINT statut_arbre_pkey;
       public            postgres    false    241            �           2606    16775 (   statut_opérateur statut_opérateur_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."statut_opérateur"
    ADD CONSTRAINT "statut_opérateur_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."statut_opérateur" DROP CONSTRAINT "statut_opérateur_pkey";
       public            postgres    false    239            �           2606    16697    type type_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pkey;
       public            postgres    false    219            �           2606    16704    zone zone_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.zone DROP CONSTRAINT zone_pkey;
       public            postgres    false    221            �           2606    16785     administateur fkadministat919515    FK CONSTRAINT     �   ALTER TABLE ONLY public.administateur
    ADD CONSTRAINT fkadministat919515 FOREIGN KEY (reference_entrepriseid) REFERENCES public.reference_entreprise(id);
 J   ALTER TABLE ONLY public.administateur DROP CONSTRAINT fkadministat919515;
       public          postgres    false    231    3275    237            �           2606    16845    arbre fkarbre268837    FK CONSTRAINT     t   ALTER TABLE ONLY public.arbre
    ADD CONSTRAINT fkarbre268837 FOREIGN KEY (clientid) REFERENCES public.client(id);
 =   ALTER TABLE ONLY public.arbre DROP CONSTRAINT fkarbre268837;
       public          postgres    false    235    3273    215            �           2606    16850    arbre fkarbre937450    FK CONSTRAINT     t   ALTER TABLE ONLY public.arbre
    ADD CONSTRAINT fkarbre937450 FOREIGN KEY (especeid) REFERENCES public.espece(id);
 =   ALTER TABLE ONLY public.arbre DROP CONSTRAINT fkarbre937450;
       public          postgres    false    3261    223    215            �           2606    16800    arbre fkarbre995294    FK CONSTRAINT     �   ALTER TABLE ONLY public.arbre
    ADD CONSTRAINT fkarbre995294 FOREIGN KEY ("opérateur_de_saisiid") REFERENCES public."opérateur_de_saisi"(id);
 =   ALTER TABLE ONLY public.arbre DROP CONSTRAINT fkarbre995294;
       public          postgres    false    233    3271    215            �           2606    16835    client fkclient511794    FK CONSTRAINT     �   ALTER TABLE ONLY public.client
    ADD CONSTRAINT fkclient511794 FOREIGN KEY (reference_entrepriseid) REFERENCES public.reference_entreprise(id);
 ?   ALTER TABLE ONLY public.client DROP CONSTRAINT fkclient511794;
       public          postgres    false    3275    235    237            �           2606    16840    espece fkespece741511    FK CONSTRAINT     r   ALTER TABLE ONLY public.espece
    ADD CONSTRAINT fkespece741511 FOREIGN KEY (typeid) REFERENCES public.type(id);
 ?   ALTER TABLE ONLY public.espece DROP CONSTRAINT fkespece741511;
       public          postgres    false    3257    219    223            �           2606    16855    etat fketat570236    FK CONSTRAINT     �   ALTER TABLE ONLY public.etat
    ADD CONSTRAINT fketat570236 FOREIGN KEY (etat_feuillageid2) REFERENCES public.etat_feuillage(id);
 ;   ALTER TABLE ONLY public.etat DROP CONSTRAINT fketat570236;
       public          postgres    false    227    225    3265            �           2606    16830    etat fketat617301    FK CONSTRAINT     p   ALTER TABLE ONLY public.etat
    ADD CONSTRAINT fketat617301 FOREIGN KEY (arbreid) REFERENCES public.arbre(id);
 ;   ALTER TABLE ONLY public.etat DROP CONSTRAINT fketat617301;
       public          postgres    false    225    3253    215            �           2606    16825 '   opérateur_de_saisi fkopérateur_650334    FK CONSTRAINT     �   ALTER TABLE ONLY public."opérateur_de_saisi"
    ADD CONSTRAINT "fkopérateur_650334" FOREIGN KEY ("statut_opérateurid") REFERENCES public."statut_opérateur"(id);
 U   ALTER TABLE ONLY public."opérateur_de_saisi" DROP CONSTRAINT "fkopérateur_650334";
       public          postgres    false    233    239    3277            �           2606    16820 '   opérateur_de_saisi fkopérateur_805576    FK CONSTRAINT     �   ALTER TABLE ONLY public."opérateur_de_saisi"
    ADD CONSTRAINT "fkopérateur_805576" FOREIGN KEY (lieu_travailid) REFERENCES public.lieu_travail(id);
 U   ALTER TABLE ONLY public."opérateur_de_saisi" DROP CONSTRAINT "fkopérateur_805576";
       public          postgres    false    233    217    3255            �           2606    16815    position fkposition214470    FK CONSTRAINT     x   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT fkposition214470 FOREIGN KEY (zoneid) REFERENCES public.zone(id);
 E   ALTER TABLE ONLY public."position" DROP CONSTRAINT fkposition214470;
       public          postgres    false    3259    229    221            �           2606    16810    position fkposition897030    FK CONSTRAINT     z   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT fkposition897030 FOREIGN KEY (arbreid) REFERENCES public.arbre(id);
 E   ALTER TABLE ONLY public."position" DROP CONSTRAINT fkposition897030;
       public          postgres    false    3253    229    215            �           2606    16795    statut_arbre fkstatut_arb590508    FK CONSTRAINT     �   ALTER TABLE ONLY public.statut_arbre
    ADD CONSTRAINT fkstatut_arb590508 FOREIGN KEY (administateurid) REFERENCES public.administateur(id);
 I   ALTER TABLE ONLY public.statut_arbre DROP CONSTRAINT fkstatut_arb590508;
       public          postgres    false    241    231    3269            �           2606    16805    statut_arbre fkstatut_arb624690    FK CONSTRAINT     ~   ALTER TABLE ONLY public.statut_arbre
    ADD CONSTRAINT fkstatut_arb624690 FOREIGN KEY (arbreid) REFERENCES public.arbre(id);
 I   ALTER TABLE ONLY public.statut_arbre DROP CONSTRAINT fkstatut_arb624690;
       public          postgres    false    3253    215    241            �           2606    16790 %   statut_opérateur fkstatut_opé545486    FK CONSTRAINT     �   ALTER TABLE ONLY public."statut_opérateur"
    ADD CONSTRAINT "fkstatut_opé545486" FOREIGN KEY (administateurid) REFERENCES public.administateur(id);
 S   ALTER TABLE ONLY public."statut_opérateur" DROP CONSTRAINT "fkstatut_opé545486";
       public          postgres    false    3269    239    231            ~      x������ � �      n      x������ � �      �      x������ � �      v      x������ � �      x      x������ � �      z      x������ � �      p      x������ � �      �      x������ � �      |      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      r      x������ � �      t      x������ � �     