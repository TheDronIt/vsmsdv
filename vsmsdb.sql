toc.dat                                                                                             0000600 0004000 0002000 00000117377 14160242403 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       /                    y            vsmsdv    14.1    14.1 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    25152    vsmsdv    DATABASE     c   CREATE DATABASE vsmsdv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE vsmsdv;
             	   thedronit    false         ?            1259    25179 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 	   thedronit    false         ?            1259    25178    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       	   thedronit    false    216         ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       	   thedronit    false    215         ?            1259    25188    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 	   thedronit    false         ?            1259    25187    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       	   thedronit    false    218         ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       	   thedronit    false    217         ?            1259    25172    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 	   thedronit    false         ?            1259    25171    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       	   thedronit    false    214         ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       	   thedronit    false    213         ?            1259    25195 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 	   thedronit    false         ?            1259    25204    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 	   thedronit    false         ?            1259    25203    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       	   thedronit    false    222         ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       	   thedronit    false    221         ?            1259    25194    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       	   thedronit    false    220         ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       	   thedronit    false    219         ?            1259    25211    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 	   thedronit    false         ?            1259    25210 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       	   thedronit    false    224         ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       	   thedronit    false    223         ?            1259    25270    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 	   thedronit    false         ?            1259    25269    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       	   thedronit    false    226         ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       	   thedronit    false    225         ?            1259    25163    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 	   thedronit    false         ?            1259    25162    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       	   thedronit    false    212         ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       	   thedronit    false    211         ?            1259    25154    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 	   thedronit    false         ?            1259    25153    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       	   thedronit    false    210         ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       	   thedronit    false    209         ?            1259    25299    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 	   thedronit    false         ?            1259    25362    web_district    TABLE     h   CREATE TABLE public.web_district (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL
);
     DROP TABLE public.web_district;
       public         heap 	   thedronit    false         ?            1259    25361    web_district_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_district_id_seq;
       public       	   thedronit    false    235         ?           0    0    web_district_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.web_district_id_seq OWNED BY public.web_district.id;
          public       	   thedronit    false    234         ?            1259    25318    web_doc    TABLE     ?   CREATE TABLE public.web_doc (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Description" text NOT NULL,
    "File" character varying(100) NOT NULL
);
    DROP TABLE public.web_doc;
       public         heap 	   thedronit    false         ?            1259    25317    web_doc_id_seq    SEQUENCE     w   CREATE SEQUENCE public.web_doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.web_doc_id_seq;
       public       	   thedronit    false    231         ?           0    0    web_doc_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.web_doc_id_seq OWNED BY public.web_doc.id;
          public       	   thedronit    false    230         ?            1259    25309    web_news    TABLE     ?   CREATE TABLE public.web_news (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Text" text NOT NULL,
    "Date" date NOT NULL
);
    DROP TABLE public.web_news;
       public         heap 	   thedronit    false         ?            1259    25308    web_news_id_seq    SEQUENCE     x   CREATE SEQUENCE public.web_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_news_id_seq;
       public       	   thedronit    false    229         ?           0    0    web_news_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.web_news_id_seq OWNED BY public.web_news.id;
          public       	   thedronit    false    228         ?            1259    25335    web_project    TABLE     ?   CREATE TABLE public.web_project (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Text" text NOT NULL,
    "Date" date NOT NULL,
    "District_id" bigint
);
    DROP TABLE public.web_project;
       public         heap 	   thedronit    false         ?            1259    25334    web_prject_id_seq    SEQUENCE     z   CREATE SEQUENCE public.web_prject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_prject_id_seq;
       public       	   thedronit    false    233         ?           0    0    web_prject_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.web_prject_id_seq OWNED BY public.web_project.id;
          public       	   thedronit    false    232         ?           2604    25182    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    216    215    216         ?           2604    25191    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    218    217    218         ?           2604    25175    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    214    213    214         ?           2604    25198    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    220    219    220         ?           2604    25207    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    221    222    222         ?           2604    25214    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    223    224    224         ?           2604    25273    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    226    225    226         ?           2604    25166    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    212    211    212         ?           2604    25157    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    210    209    210         ?           2604    25365    web_district id    DEFAULT     r   ALTER TABLE ONLY public.web_district ALTER COLUMN id SET DEFAULT nextval('public.web_district_id_seq'::regclass);
 >   ALTER TABLE public.web_district ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    234    235    235         ?           2604    25321 
   web_doc id    DEFAULT     h   ALTER TABLE ONLY public.web_doc ALTER COLUMN id SET DEFAULT nextval('public.web_doc_id_seq'::regclass);
 9   ALTER TABLE public.web_doc ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    231    230    231         ?           2604    25312    web_news id    DEFAULT     j   ALTER TABLE ONLY public.web_news ALTER COLUMN id SET DEFAULT nextval('public.web_news_id_seq'::regclass);
 :   ALTER TABLE public.web_news ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    228    229    229         ?           2604    25338    web_project id    DEFAULT     o   ALTER TABLE ONLY public.web_project ALTER COLUMN id SET DEFAULT nextval('public.web_prject_id_seq'::regclass);
 =   ALTER TABLE public.web_project ALTER COLUMN id DROP DEFAULT;
       public       	   thedronit    false    233    232    233         ~          0    25179 
   auth_group 
   TABLE DATA                 public       	   thedronit    false    216       3454.dat ?          0    25188    auth_group_permissions 
   TABLE DATA                 public       	   thedronit    false    218       3456.dat |          0    25172    auth_permission 
   TABLE DATA                 public       	   thedronit    false    214       3452.dat ?          0    25195 	   auth_user 
   TABLE DATA                 public       	   thedronit    false    220       3458.dat ?          0    25204    auth_user_groups 
   TABLE DATA                 public       	   thedronit    false    222       3460.dat ?          0    25211    auth_user_user_permissions 
   TABLE DATA                 public       	   thedronit    false    224       3462.dat ?          0    25270    django_admin_log 
   TABLE DATA                 public       	   thedronit    false    226       3464.dat z          0    25163    django_content_type 
   TABLE DATA                 public       	   thedronit    false    212       3450.dat x          0    25154    django_migrations 
   TABLE DATA                 public       	   thedronit    false    210       3448.dat ?          0    25299    django_session 
   TABLE DATA                 public       	   thedronit    false    227       3465.dat ?          0    25362    web_district 
   TABLE DATA                 public       	   thedronit    false    235       3473.dat ?          0    25318    web_doc 
   TABLE DATA                 public       	   thedronit    false    231       3469.dat ?          0    25309    web_news 
   TABLE DATA                 public       	   thedronit    false    229       3467.dat ?          0    25335    web_project 
   TABLE DATA                 public       	   thedronit    false    233       3471.dat ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       	   thedronit    false    215         ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       	   thedronit    false    217         ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public       	   thedronit    false    213         ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       	   thedronit    false    221         ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       	   thedronit    false    219         ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       	   thedronit    false    223         ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);
          public       	   thedronit    false    225         ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public       	   thedronit    false    211         ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public       	   thedronit    false    209         ?           0    0    web_district_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_district_id_seq', 17, true);
          public       	   thedronit    false    234         ?           0    0    web_doc_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.web_doc_id_seq', 2, true);
          public       	   thedronit    false    230         ?           0    0    web_news_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.web_news_id_seq', 2, true);
          public       	   thedronit    false    228         ?           0    0    web_prject_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.web_prject_id_seq', 2, true);
          public       	   thedronit    false    232         ?           2606    25297    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         	   thedronit    false    216         ?           2606    25227 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         	   thedronit    false    218    218         ?           2606    25193 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         	   thedronit    false    218         ?           2606    25184    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         	   thedronit    false    216         ?           2606    25218 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         	   thedronit    false    214    214         ?           2606    25177 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         	   thedronit    false    214         ?           2606    25209 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         	   thedronit    false    222         ?           2606    25242 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         	   thedronit    false    222    222         ?           2606    25200    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         	   thedronit    false    220         ?           2606    25216 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         	   thedronit    false    224         ?           2606    25256 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         	   thedronit    false    224    224         ?           2606    25292     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         	   thedronit    false    220         ?           2606    25278 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         	   thedronit    false    226         ?           2606    25170 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         	   thedronit    false    212    212         ?           2606    25168 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         	   thedronit    false    212         ?           2606    25161 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         	   thedronit    false    210         ?           2606    25305 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         	   thedronit    false    227         ?           2606    25367    web_district web_district_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_district
    ADD CONSTRAINT web_district_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_district DROP CONSTRAINT web_district_pkey;
       public         	   thedronit    false    235         ?           2606    25325    web_doc web_doc_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.web_doc
    ADD CONSTRAINT web_doc_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.web_doc DROP CONSTRAINT web_doc_pkey;
       public         	   thedronit    false    231         ?           2606    25316    web_news web_news_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.web_news
    ADD CONSTRAINT web_news_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_news DROP CONSTRAINT web_news_pkey;
       public         	   thedronit    false    229         ?           2606    25342    web_project web_prject_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.web_project
    ADD CONSTRAINT web_prject_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.web_project DROP CONSTRAINT web_prject_pkey;
       public         	   thedronit    false    233         ?           1259    25298    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         	   thedronit    false    216         ?           1259    25238 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         	   thedronit    false    218         ?           1259    25239 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         	   thedronit    false    218         ?           1259    25224 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         	   thedronit    false    214         ?           1259    25254 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         	   thedronit    false    222         ?           1259    25253 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         	   thedronit    false    222         ?           1259    25268 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         	   thedronit    false    224         ?           1259    25267 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         	   thedronit    false    224         ?           1259    25293     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         	   thedronit    false    220         ?           1259    25289 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         	   thedronit    false    226         ?           1259    25290 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         	   thedronit    false    226         ?           1259    25307 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         	   thedronit    false    227         ?           1259    25306 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         	   thedronit    false    227         ?           1259    25348    web_prject_District_id_a2d1deae    INDEX     b   CREATE INDEX "web_prject_District_id_a2d1deae" ON public.web_project USING btree ("District_id");
 5   DROP INDEX public."web_prject_District_id_a2d1deae";
       public         	   thedronit    false    233         ?           2606    25233 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       	   thedronit    false    218    214    3252         ?           2606    25228 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       	   thedronit    false    216    218    3257         ?           2606    25219 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       	   thedronit    false    212    3247    214         ?           2606    25248 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       	   thedronit    false    222    3257    216         ?           2606    25243 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       	   thedronit    false    220    222    3265         ?           2606    25262 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       	   thedronit    false    224    214    3252         ?           2606    25257 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       	   thedronit    false    224    220    3265         ?           2606    25279 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       	   thedronit    false    3247    212    226         ?           2606    25284 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       	   thedronit    false    220    3265    226         ?           2606    25368 ?   web_project web_project_District_id_9812c04a_fk_web_district_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.web_project
    ADD CONSTRAINT "web_project_District_id_9812c04a_fk_web_district_id" FOREIGN KEY ("District_id") REFERENCES public.web_district(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.web_project DROP CONSTRAINT "web_project_District_id_9812c04a_fk_web_district_id";
       public       	   thedronit    false    235    233    3297                                                                                                                                                                                                                                                                         3454.dat                                                                                            0000600 0004000 0002000 00000000002 14160242403 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3456.dat                                                                                            0000600 0004000 0002000 00000000002 14160242403 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3452.dat                                                                                            0000600 0004000 0002000 00000013107 14160242403 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add Новости', 7, 'add_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change Новости', 7, 'change_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete Новости', 7, 'delete_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view Новости', 7, 'view_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add Новости', 8, 'add_doc');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change Новости', 8, 'change_doc');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete Новости', 8, 'delete_doc');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view Новости', 8, 'view_doc');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add Районы', 9, 'add_district');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change Районы', 9, 'change_district');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete Районы', 9, 'delete_district');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view Районы', 9, 'view_district');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add Проекты', 10, 'add_prject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change Проекты', 10, 'change_prject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete Проекты', 10, 'delete_prject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view Проекты', 10, 'view_prject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add Проекты', 10, 'add_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change Проекты', 10, 'change_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete Проекты', 10, 'delete_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view Проекты', 10, 'view_project');


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3458.dat                                                                                            0000600 0004000 0002000 00000000564 14160242403 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$260000$g0GI0dSCX7GGGaZhhs3wm5$AUGDdLKgHDiak7eqLYAMCEVt1hfJ0EBSntz3Fj7atn4=', '2021-12-17 18:33:07.360689+10', true, 'admin', '', '', 'admin@admin.admin', true, true, '2021-12-16 20:40:04.577893+10');


                                                                                                                                            3460.dat                                                                                            0000600 0004000 0002000 00000000002 14160242403 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3462.dat                                                                                            0000600 0004000 0002000 00000000002 14160242403 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3464.dat                                                                                            0000600 0004000 0002000 00000021142 14160242403 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-12-17 18:34:28.744878+10', '1', '1 | Первая новость', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2021-12-17 18:35:02.889904+10', '2', '2 | Вторая новость', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2021-12-17 20:11:07.276843+10', '2', '2 | Вторая новость', 2, '[{"changed": {"fields": ["Text"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2021-12-17 20:14:03.309968+10', '1', '1 | Первая новость', 2, '[{"changed": {"fields": ["\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435", "Text"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2021-12-17 20:14:36.177982+10', '2', '2 | Вторая новость', 2, '[{"changed": {"fields": ["\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2021-12-18 13:41:45.276397+10', '1', 'Устав', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2021-12-18 13:42:40.496457+10', '1', 'Устав', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2021-12-18 13:55:37.224423+10', '1', 'Устав', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2021-12-18 13:56:29.163351+10', '2', 'План работы ХКРО ВСМС на 2019 год', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2021-12-19 12:07:02.249813+10', '2', '2 | Амурский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2021-12-19 12:07:53.616087+10', '2', '2 | Амурский муниципальный район', 3, '', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2021-12-19 12:10:22.590012+10', '1', '1 | Амурский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2021-12-19 12:10:36.693201+10', '2', '2 | Аяно-Майский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2021-12-19 12:10:43.087647+10', '3', '3 | Бикинский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2021-12-19 12:10:48.819804+10', '3', '3 | Бикинский муниципальный район', 2, '[]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2021-12-19 12:10:57.530691+10', '4', '4 | Ванинский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2021-12-19 12:11:02.29577+10', '5', '5 | Верхнебуреинский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2021-12-19 12:11:06.75777+10', '6', '6 | Вяземский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2021-12-19 12:11:11.996955+10', '7', '7 | Комсомольский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2021-12-19 12:11:16.698018+10', '8', '8 | Нанайский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2021-12-19 12:11:21.146024+10', '9', '9 | Николаевский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2021-12-19 12:11:25.139484+10', '10', '10 | Охотский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2021-12-19 12:11:29.251801+10', '11', '11 | Муниципальный район им.Лазо', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2021-12-19 12:11:34.02988+10', '12', '12 | Муниципальный район им.Полины Осипенко', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2021-12-19 12:11:38.176993+10', '13', '13 | Советско-Гаванский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2021-12-19 12:11:42.65519+10', '14', '14 | Солнечный муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2021-12-19 12:11:49.838816+10', '15', '15 | Тугуро-Чумиканский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2021-12-19 12:11:55.232035+10', '16', '16 | Ульчский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2021-12-19 12:12:11.639747+10', '17', '17 | Хабаровский муниципальный район', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2021-12-19 12:22:41.508575+10', '1', '1 | Проект №1', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2021-12-19 12:28:51.911332+10', '2', '2 | Проект 2', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2021-12-19 13:08:02.140466+10', '2', '2 | Проект 2', 2, '[{"changed": {"fields": ["Text"]}}]', 10, 1);


                                                                                                                                                                                                                                                                                                                                                                                                                              3450.dat                                                                                            0000600 0004000 0002000 00000001653 14160242403 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'web', 'news');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'web', 'doc');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'web', 'district');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'web', 'project');


                                                                                     3448.dat                                                                                            0000600 0004000 0002000 00000006670 14160242403 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-12-16 20:39:48.801055+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2021-12-16 20:39:49.788272+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2021-12-16 20:39:49.959312+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-12-16 20:39:49.967314+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-16 20:39:49.984317+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-12-16 20:39:50.046332+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-12-16 20:39:50.055333+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-12-16 20:39:50.062335+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-12-16 20:39:50.070338+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-12-16 20:39:50.077338+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-12-16 20:39:50.096342+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-16 20:39:50.103344+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-12-16 20:39:50.164358+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-16 20:39:50.187364+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-12-16 20:39:50.196366+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-12-16 20:39:50.226372+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-16 20:39:50.234374+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2021-12-16 20:39:50.3484+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'web', '0001_initial', '2021-12-17 18:31:45.52299+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'web', '0002_doc', '2021-12-18 13:39:45.400215+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'web', '0003_auto_20211219_1203', '2021-12-19 12:03:59.39263+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'web', '0004_rename_prject_project', '2021-12-19 12:06:15.541355+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'web', '0005_auto_20211219_1209', '2021-12-19 12:10:10.769339+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'web', '0006_auto_20211219_1210', '2021-12-19 12:10:10.865359+10');


                                                                        3465.dat                                                                                            0000600 0004000 0002000 00000000605 14160242404 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('jz2v9zp9wkd1dol9lp71t1vik9lhw95m', '.eJxVjDsOwyAQRO9CHSGD-W3K9D4DWhYITiKQjF1FuXtsyUVSTDPvzbyZx20tfutp8XNkVybY5bcLSM9UDxAfWO-NU6vrMgd-KPyknU8tptftdP8OCvayr-0QIDvYMypIpBU4mxUhpSGjitboEZySpKQ2iTLoiE4ba0EEGSAK9vkC3iY3qw:1my8fr:ozjsob3Yc1QstxLsnIqwQHkuLgJ-yItd_6i8f2DEEqk', '2021-12-31 18:33:07.362691+10');


                                                                                                                           3473.dat                                                                                            0000600 0004000 0002000 00000004033 14160242404 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_district (id, "Name") VALUES (1, 'Амурский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (2, 'Аяно-Майский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (3, 'Бикинский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (4, 'Ванинский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (5, 'Верхнебуреинский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (6, 'Вяземский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (7, 'Комсомольский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (8, 'Нанайский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (9, 'Николаевский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (10, 'Охотский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (11, 'Муниципальный район им.Лазо');
INSERT INTO public.web_district (id, "Name") VALUES (12, 'Муниципальный район им.Полины Осипенко');
INSERT INTO public.web_district (id, "Name") VALUES (13, 'Советско-Гаванский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (14, 'Солнечный муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (15, 'Тугуро-Чумиканский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (16, 'Ульчский муниципальный район');
INSERT INTO public.web_district (id, "Name") VALUES (17, 'Хабаровский муниципальный район');


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3469.dat                                                                                            0000600 0004000 0002000 00000000716 14160242404 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_doc (id, "Title", "Description", "File") VALUES (1, 'Устав', 'Устав общероссийской общественной организации «Всероссийский Совет местного самоуправления»', 'file/Устав_ВСМС.docx');
INSERT INTO public.web_doc (id, "Title", "Description", "File") VALUES (2, 'План работы ХКРО ВСМС на 2019 год', '', 'file/2019_.pdf');


                                                  3467.dat                                                                                            0000600 0004000 0002000 00000000723 14160242404 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_news (id, "Title", "Image", "Text", "Date") VALUES (1, 'Первая новость', 'news/landshaft-bernskikh-alp-v-yasniy-den_thumb.jpg', '<p>Текст новости</p>', '2021-12-17');
INSERT INTO public.web_news (id, "Title", "Image", "Text", "Date") VALUES (2, 'Вторая новость', 'news/dlya_dushi_35_13130628.jpg', '<p>Еще один текст для новости<br />
123 <strong>321</strong></p>', '2021-12-17');


                                             3471.dat                                                                                            0000600 0004000 0002000 00000000556 14160242404 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.web_project (id, "Title", "Image", "Text", "Date", "District_id") VALUES (1, 'Проект №1', 'prject/download.png', 'Текст', '2021-12-19', 1);
INSERT INTO public.web_project (id, "Title", "Image", "Text", "Date", "District_id") VALUES (2, 'Проект 2', 'prject/8bHVaNR3NRY.jpg', '<p>Текст 2<br />
123</p>', '2021-12-19', 2);


                                                                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000071762 14160242404 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE vsmsdv;
--
-- Name: vsmsdv; Type: DATABASE; Schema: -; Owner: thedronit
--

CREATE DATABASE vsmsdv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';


ALTER DATABASE vsmsdv OWNER TO thedronit;

\connect vsmsdv

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO thedronit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO thedronit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO thedronit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO thedronit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO thedronit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO thedronit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO thedronit;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO thedronit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO thedronit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO thedronit;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO thedronit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO thedronit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO thedronit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO thedronit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO thedronit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO thedronit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO thedronit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO thedronit;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO thedronit;

--
-- Name: web_district; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_district (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public.web_district OWNER TO thedronit;

--
-- Name: web_district_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_district_id_seq OWNER TO thedronit;

--
-- Name: web_district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_district_id_seq OWNED BY public.web_district.id;


--
-- Name: web_doc; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_doc (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Description" text NOT NULL,
    "File" character varying(100) NOT NULL
);


ALTER TABLE public.web_doc OWNER TO thedronit;

--
-- Name: web_doc_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_doc_id_seq OWNER TO thedronit;

--
-- Name: web_doc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_doc_id_seq OWNED BY public.web_doc.id;


--
-- Name: web_news; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_news (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Text" text NOT NULL,
    "Date" date NOT NULL
);


ALTER TABLE public.web_news OWNER TO thedronit;

--
-- Name: web_news_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_news_id_seq OWNER TO thedronit;

--
-- Name: web_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_news_id_seq OWNED BY public.web_news.id;


--
-- Name: web_project; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_project (
    id bigint NOT NULL,
    "Title" character varying(120) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Text" text NOT NULL,
    "Date" date NOT NULL,
    "District_id" bigint
);


ALTER TABLE public.web_project OWNER TO thedronit;

--
-- Name: web_prject_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_prject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_prject_id_seq OWNER TO thedronit;

--
-- Name: web_prject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_prject_id_seq OWNED BY public.web_project.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: web_district id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_district ALTER COLUMN id SET DEFAULT nextval('public.web_district_id_seq'::regclass);


--
-- Name: web_doc id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_doc ALTER COLUMN id SET DEFAULT nextval('public.web_doc_id_seq'::regclass);


--
-- Name: web_news id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_news ALTER COLUMN id SET DEFAULT nextval('public.web_news_id_seq'::regclass);


--
-- Name: web_project id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_project ALTER COLUMN id SET DEFAULT nextval('public.web_prject_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3454.dat

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3456.dat

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3452.dat

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3458.dat

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3460.dat

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3462.dat

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3464.dat

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3450.dat

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3448.dat

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3465.dat

--
-- Data for Name: web_district; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3473.dat

--
-- Data for Name: web_doc; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3469.dat

--
-- Data for Name: web_news; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3467.dat

--
-- Data for Name: web_project; Type: TABLE DATA; Schema: public; Owner: thedronit
--

\i $$PATH$$/3471.dat

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: web_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_district_id_seq', 17, true);


--
-- Name: web_doc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_doc_id_seq', 2, true);


--
-- Name: web_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_news_id_seq', 2, true);


--
-- Name: web_prject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_prject_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: web_district web_district_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_district
    ADD CONSTRAINT web_district_pkey PRIMARY KEY (id);


--
-- Name: web_doc web_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_doc
    ADD CONSTRAINT web_doc_pkey PRIMARY KEY (id);


--
-- Name: web_news web_news_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_news
    ADD CONSTRAINT web_news_pkey PRIMARY KEY (id);


--
-- Name: web_project web_prject_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_project
    ADD CONSTRAINT web_prject_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: web_prject_District_id_a2d1deae; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX "web_prject_District_id_a2d1deae" ON public.web_project USING btree ("District_id");


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: web_project web_project_District_id_9812c04a_fk_web_district_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_project
    ADD CONSTRAINT "web_project_District_id_9812c04a_fk_web_district_id" FOREIGN KEY ("District_id") REFERENCES public.web_district(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              