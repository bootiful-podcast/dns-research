--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: lxfohtek
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO lxfohtek;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: link; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.link (
    id bigint NOT NULL,
    description character varying(255),
    href character varying(255)
);


ALTER TABLE public.link OWNER TO lxfohtek;

--
-- Name: mappings; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.mappings (
    uid character varying(255) NOT NULL,
    json_guid character varying(255) NOT NULL
);


ALTER TABLE public.mappings OWNER TO lxfohtek;

--
-- Name: media; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.media (
    id bigint NOT NULL,
    description character varying(255),
    extension character varying(255),
    file_name character varying(255),
    href character varying(255),
    type character varying(255)
);


ALTER TABLE public.media OWNER TO lxfohtek;

--
-- Name: podcast; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.podcast (
    id bigint NOT NULL,
    date timestamp without time zone,
    description character varying(2000),
    notes character varying(255),
    podbean_draft_created timestamp without time zone,
    podbean_draft_published timestamp without time zone,
    podbean_media_uri character varying(255),
    podbean_photo_uri character varying(255),
    s3_audio_file_name character varying(255),
    s3_audio_uri character varying(255),
    s3_photo_file_name character varying(255),
    s3_photo_uri character varying(255),
    title character varying(255),
    transcript character varying(255),
    uid character varying(255)
);


ALTER TABLE public.podcast OWNER TO lxfohtek;

--
-- Name: podcast_link; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.podcast_link (
    podcast_id bigint NOT NULL,
    link_id bigint NOT NULL
);


ALTER TABLE public.podcast_link OWNER TO lxfohtek;

--
-- Name: podcast_media; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.podcast_media (
    podcast_id bigint NOT NULL,
    media_id bigint NOT NULL
);


ALTER TABLE public.podcast_media OWNER TO lxfohtek;

--
-- Name: redo; Type: TABLE; Schema: public; Owner: lxfohtek
--

CREATE TABLE public.redo (
    uid character varying(255),
    id bigint,
    title character varying(255),
    s3_photo_file_name character varying(255),
    s3_audio_file_name character varying(255)
);


ALTER TABLE public.redo OWNER TO lxfohtek;

--
-- Data for Name: link; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.link (id, description, href) FROM stdin;
\.


--
-- Data for Name: mappings; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.mappings (uid, json_guid) FROM stdin;
61e314c4-763a-4746-abdd-39406c14f08c	tag:soundcloud,2010:tracks/586589739
484c3fea-c15c-4a6c-b7d6-05def2b9ee7c	tag:soundcloud,2010:tracks/653361302
47b9e94f-4314-4a52-8fb0-3c9ca317b48c	tag:soundcloud,2010:tracks/593419098
59f63044-5c25-40d9-8c9f-232083137be5	tag:soundcloud,2010:tracks/744740773
9e69e673-3dbc-4860-9209-b2a6360e7f12	tag:soundcloud,2010:tracks/646455324
8182415b-d8d6-4238-9141-83d845d98498	tag:soundcloud,2010:tracks/625772892
edeb6cb9-294c-41f6-8c4f-7f89e2ad9136	tag:soundcloud,2010:tracks/672686666
d525acbf-3f65-4431-ae47-a7e856f4691a	tag:soundcloud,2010:tracks/709390942
b852db47-14eb-4188-bbfc-9a16f54c8996	tag:soundcloud,2010:tracks/639959205
fe8afa8f-f73a-42fd-b133-473c693ae6bd	tag:soundcloud,2010:tracks/629305281
a00968ac-fb9b-4228-9d50-8a0375f7dec3	tag:soundcloud,2010:tracks/547881708
a92a98a8-3d87-48a0-9038-15036041ef02	tag:soundcloud,2010:tracks/650006849
eaae6699-6e67-438c-a1a5-0762aa1a1434	tag:soundcloud,2010:tracks/706122148
91c4de22-69d8-44ad-a120-d859acbe251e	tag:soundcloud,2010:tracks/748552399
1d189c9e-5679-4b8f-821d-1bad2a8cd501	tag:soundcloud,2010:tracks/713165467
291814bf-1fb3-43f9-adc0-12ec96d91b1a	tag:soundcloud,2010:tracks/690906610
d65ae607-5298-4436-91a9-2b4976c96242	tag:soundcloud,2010:tracks/677112024
70c3fa93-ffd1-458e-b2d3-4b9321a99f88	tag:soundcloud,2010:tracks/663320411
8affbc01-89c8-4cdf-adc8-29daf4f78bec	tag:soundcloud,2010:tracks/575698557
3d0c5700-8e81-4220-a9b2-9ebc7a29b88a	tag:soundcloud,2010:tracks/737749519
c106105d-fc05-4321-ad4b-5b7b18e0e722	tag:soundcloud,2010:tracks/698141305
35df7bc5-d7c6-403b-a2c8-fd9a1a40c196	tag:soundcloud,2010:tracks/643100952
05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d	tag:soundcloud,2010:tracks/600772455
ed2466e8-a739-4be8-9b14-4881137b834f	tag:soundcloud,2010:tracks/680122409
f6aaf7fa-8cc8-4bef-9e39-177524b7298f	tag:soundcloud,2010:tracks/659985764
75983beb-8fa6-45e9-a33f-9760e5d4c3e5	tag:soundcloud,2010:tracks/604685703
13d87c27-cba4-46b4-b978-9b472353992c	tag:soundcloud,2010:tracks/589977558
e9d5a15b-fabf-4d7b-8852-907d2d313307	tag:soundcloud,2010:tracks/666530666
15a96291-9267-476d-b743-60d1cab2f6c6	tag:soundcloud,2010:tracks/560296218
71ba05ed-7a4a-44b3-b20f-028a35185484	tag:soundcloud,2010:tracks/618107604
07d32ead-cb0a-418f-bd0f-0d508ea86f54	tag:soundcloud,2010:tracks/512505879
c102dbe9-5464-4e6b-9c36-b6e2001e76b4	tag:soundcloud,2010:tracks/734412553
31e0f731-398d-43d9-bacb-f2c7b578c1f7	tag:soundcloud,2010:tracks/564342702
155d863c-5dd5-4431-b0ae-300417d7805e	tag:soundcloud,2010:tracks/607633950
df2f53a6-0d32-4302-9d1b-0e49622f2e8e	tag:soundcloud,2010:tracks/670101815
4bf03a77-495d-4e58-9ef1-c4583b400681	tag:soundcloud,2010:tracks/752396113
974acc14-5396-4122-8f07-765352c7e558	tag:soundcloud,2010:tracks/621942714
863c6399-c65d-4a60-ba24-327ac3db4c44	tag:soundcloud,2010:tracks/582654270
91847c03-82f4-4575-8801-8a7c74976313	tag:soundcloud,2010:tracks/615074445
c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd	tag:soundcloud,2010:tracks/731355979
ac45826d-ffaa-414f-9895-9511b2f9a363	tag:soundcloud,2010:tracks/597710070
2b956f1a-9407-4556-a19d-03a0ec68c076	tag:soundcloud,2010:tracks/720162076
a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5	tag:soundcloud,2010:tracks/716771506
f96eaaa5-3beb-4bc4-b21b-2d70980ff96b	tag:soundcloud,2010:tracks/656622650
7d5cb1e4-1c74-4474-b80c-329ad504e5cd	tag:soundcloud,2010:tracks/687499570
bbbbfbc4-fe9b-4f0c-ab4f-10279d739875	tag:soundcloud,2010:tracks/579250395
564af652-f099-4d4d-9930-85c725567dea	tag:soundcloud,2010:tracks/611519967
b7a9786d-fdef-419a-8da7-5475a90b4631	tag:soundcloud,2010:tracks/741177268
9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb	tag:soundcloud,2010:tracks/632979783
b6aaf914-7ea8-4292-a79c-e5587e9407da	tag:soundcloud,2010:tracks/636372984
aa3da822-e1c0-4e22-b794-a54c249e2319	tag:soundcloud,2010:tracks/701224858
520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0	tag:soundcloud,2010:tracks/568258017
d99dcb7f-8aec-427b-8940-bc13eabcff67	tag:soundcloud,2010:tracks/571909224
f40131bf-1501-4e3d-9ff3-6324f206e26d	tag:soundcloud,2010:tracks/694048639
2545ebeb-6949-4bdb-9f07-12e8463b7f58	tag:soundcloud,2010:tracks/723382387
5734a058-2bc9-4930-acc4-61bb730edf40	tag:soundcloud,2010:tracks/683439446
4677643c-a921-4fef-a30f-64c813d7e8ca	tag:soundcloud,2010:tracks/727188835
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.media (id, description, extension, file_name, href, type) FROM stdin;
108	\N	jpg	59f63044-5c25-40d9-8c9f-232083137be5.jpg	s3://podcast-input-bucket/59f63044-5c25-40d9-8c9f-232083137be5/59f63044-5c25-40d9-8c9f-232083137be5.jpg	photo
107	\N	mp3	59f63044-5c25-40d9-8c9f-232083137be5.mp3	s3://podcast-input-bucket/59f63044-5c25-40d9-8c9f-232083137be5/59f63044-5c25-40d9-8c9f-232083137be5.mp3	produced
111	\N	jpg	9e69e673-3dbc-4860-9209-b2a6360e7f12.jpg	s3://podcast-input-bucket/9e69e673-3dbc-4860-9209-b2a6360e7f12/9e69e673-3dbc-4860-9209-b2a6360e7f12.jpg	photo
110	\N	mp3	9e69e673-3dbc-4860-9209-b2a6360e7f12.mp3	s3://podcast-input-bucket/9e69e673-3dbc-4860-9209-b2a6360e7f12/9e69e673-3dbc-4860-9209-b2a6360e7f12.mp3	produced
114	\N	jpg	8182415b-d8d6-4238-9141-83d845d98498.jpg	s3://podcast-input-bucket/8182415b-d8d6-4238-9141-83d845d98498/8182415b-d8d6-4238-9141-83d845d98498.jpg	photo
113	\N	mp3	8182415b-d8d6-4238-9141-83d845d98498.mp3	s3://podcast-input-bucket/8182415b-d8d6-4238-9141-83d845d98498/8182415b-d8d6-4238-9141-83d845d98498.mp3	produced
117	\N	jpg	edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.jpg	s3://podcast-input-bucket/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.jpg	photo
116	\N	mp3	edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.mp3	s3://podcast-input-bucket/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.mp3	produced
120	\N	jpg	d525acbf-3f65-4431-ae47-a7e856f4691a.jpg	s3://podcast-input-bucket/d525acbf-3f65-4431-ae47-a7e856f4691a/d525acbf-3f65-4431-ae47-a7e856f4691a.jpg	photo
99	\N	jpg	61e314c4-763a-4746-abdd-39406c14f08c.jpg	s3://podcast-input-bucket/61e314c4-763a-4746-abdd-39406c14f08c/61e314c4-763a-4746-abdd-39406c14f08c.jpg	photo
98	\N	mp3	61e314c4-763a-4746-abdd-39406c14f08c.mp3	s3://podcast-input-bucket/61e314c4-763a-4746-abdd-39406c14f08c/61e314c4-763a-4746-abdd-39406c14f08c.mp3	produced
102	\N	jpg	484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.jpg	s3://podcast-input-bucket/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.jpg	photo
101	\N	mp3	484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.mp3	s3://podcast-input-bucket/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.mp3	produced
105	\N	jpg	47b9e94f-4314-4a52-8fb0-3c9ca317b48c.jpg	s3://podcast-input-bucket/47b9e94f-4314-4a52-8fb0-3c9ca317b48c/47b9e94f-4314-4a52-8fb0-3c9ca317b48c.jpg	photo
104	\N	mp3	47b9e94f-4314-4a52-8fb0-3c9ca317b48c.mp3	s3://podcast-input-bucket/47b9e94f-4314-4a52-8fb0-3c9ca317b48c/47b9e94f-4314-4a52-8fb0-3c9ca317b48c.mp3	produced
119	\N	mp3	d525acbf-3f65-4431-ae47-a7e856f4691a.mp3	s3://podcast-input-bucket/d525acbf-3f65-4431-ae47-a7e856f4691a/d525acbf-3f65-4431-ae47-a7e856f4691a.mp3	produced
123	\N	jpg	b852db47-14eb-4188-bbfc-9a16f54c8996.jpg	s3://podcast-input-bucket/b852db47-14eb-4188-bbfc-9a16f54c8996/b852db47-14eb-4188-bbfc-9a16f54c8996.jpg	photo
122	\N	mp3	b852db47-14eb-4188-bbfc-9a16f54c8996.mp3	s3://podcast-input-bucket/b852db47-14eb-4188-bbfc-9a16f54c8996/b852db47-14eb-4188-bbfc-9a16f54c8996.mp3	produced
126	\N	jpg	fe8afa8f-f73a-42fd-b133-473c693ae6bd.jpg	s3://podcast-input-bucket/fe8afa8f-f73a-42fd-b133-473c693ae6bd/fe8afa8f-f73a-42fd-b133-473c693ae6bd.jpg	photo
125	\N	mp3	fe8afa8f-f73a-42fd-b133-473c693ae6bd.mp3	s3://podcast-input-bucket/fe8afa8f-f73a-42fd-b133-473c693ae6bd/fe8afa8f-f73a-42fd-b133-473c693ae6bd.mp3	produced
132	\N	jpg	a00968ac-fb9b-4228-9d50-8a0375f7dec3.jpg	s3://podcast-input-bucket/a00968ac-fb9b-4228-9d50-8a0375f7dec3/a00968ac-fb9b-4228-9d50-8a0375f7dec3.jpg	photo
131	\N	mp3	a00968ac-fb9b-4228-9d50-8a0375f7dec3.mp3	s3://podcast-input-bucket/a00968ac-fb9b-4228-9d50-8a0375f7dec3/a00968ac-fb9b-4228-9d50-8a0375f7dec3.mp3	produced
135	\N	jpg	a92a98a8-3d87-48a0-9038-15036041ef02.jpg	s3://podcast-input-bucket/a92a98a8-3d87-48a0-9038-15036041ef02/a92a98a8-3d87-48a0-9038-15036041ef02.jpg	photo
134	\N	mp3	a92a98a8-3d87-48a0-9038-15036041ef02.mp3	s3://podcast-input-bucket/a92a98a8-3d87-48a0-9038-15036041ef02/a92a98a8-3d87-48a0-9038-15036041ef02.mp3	produced
138	\N	jpg	eaae6699-6e67-438c-a1a5-0762aa1a1434.jpg	s3://podcast-input-bucket/eaae6699-6e67-438c-a1a5-0762aa1a1434/eaae6699-6e67-438c-a1a5-0762aa1a1434.jpg	photo
137	\N	mp3	eaae6699-6e67-438c-a1a5-0762aa1a1434.mp3	s3://podcast-input-bucket/eaae6699-6e67-438c-a1a5-0762aa1a1434/eaae6699-6e67-438c-a1a5-0762aa1a1434.mp3	produced
141	\N	jpg	91c4de22-69d8-44ad-a120-d859acbe251e.jpg	s3://podcast-input-bucket/91c4de22-69d8-44ad-a120-d859acbe251e/91c4de22-69d8-44ad-a120-d859acbe251e.jpg	photo
140	\N	mp3	91c4de22-69d8-44ad-a120-d859acbe251e.mp3	s3://podcast-input-bucket/91c4de22-69d8-44ad-a120-d859acbe251e/91c4de22-69d8-44ad-a120-d859acbe251e.mp3	produced
144	\N	jpg	1d189c9e-5679-4b8f-821d-1bad2a8cd501.jpg	s3://podcast-input-bucket/1d189c9e-5679-4b8f-821d-1bad2a8cd501/1d189c9e-5679-4b8f-821d-1bad2a8cd501.jpg	photo
143	\N	mp3	1d189c9e-5679-4b8f-821d-1bad2a8cd501.mp3	s3://podcast-input-bucket/1d189c9e-5679-4b8f-821d-1bad2a8cd501/1d189c9e-5679-4b8f-821d-1bad2a8cd501.mp3	produced
147	\N	jpg	291814bf-1fb3-43f9-adc0-12ec96d91b1a.jpg	s3://podcast-input-bucket/291814bf-1fb3-43f9-adc0-12ec96d91b1a/291814bf-1fb3-43f9-adc0-12ec96d91b1a.jpg	photo
146	\N	mp3	291814bf-1fb3-43f9-adc0-12ec96d91b1a.mp3	s3://podcast-input-bucket/291814bf-1fb3-43f9-adc0-12ec96d91b1a/291814bf-1fb3-43f9-adc0-12ec96d91b1a.mp3	produced
150	\N	jpg	d65ae607-5298-4436-91a9-2b4976c96242.jpg	s3://podcast-input-bucket/d65ae607-5298-4436-91a9-2b4976c96242/d65ae607-5298-4436-91a9-2b4976c96242.jpg	photo
149	\N	mp3	d65ae607-5298-4436-91a9-2b4976c96242.mp3	s3://podcast-input-bucket/d65ae607-5298-4436-91a9-2b4976c96242/d65ae607-5298-4436-91a9-2b4976c96242.mp3	produced
153	\N	jpg	70c3fa93-ffd1-458e-b2d3-4b9321a99f88.jpg	s3://podcast-input-bucket/70c3fa93-ffd1-458e-b2d3-4b9321a99f88/70c3fa93-ffd1-458e-b2d3-4b9321a99f88.jpg	photo
152	\N	mp3	70c3fa93-ffd1-458e-b2d3-4b9321a99f88.mp3	s3://podcast-input-bucket/70c3fa93-ffd1-458e-b2d3-4b9321a99f88/70c3fa93-ffd1-458e-b2d3-4b9321a99f88.mp3	produced
156	\N	jpg	8affbc01-89c8-4cdf-adc8-29daf4f78bec.jpg	s3://podcast-input-bucket/8affbc01-89c8-4cdf-adc8-29daf4f78bec/8affbc01-89c8-4cdf-adc8-29daf4f78bec.jpg	photo
155	\N	mp3	8affbc01-89c8-4cdf-adc8-29daf4f78bec.mp3	s3://podcast-input-bucket/8affbc01-89c8-4cdf-adc8-29daf4f78bec/8affbc01-89c8-4cdf-adc8-29daf4f78bec.mp3	produced
158	\N	mp3	3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.mp3	s3://podcast-input-bucket/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.mp3	produced
159	\N	jpg	3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.jpg	s3://podcast-input-bucket/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.jpg	photo
165	\N	jpg	c106105d-fc05-4321-ad4b-5b7b18e0e722.jpg	s3://podcast-input-bucket/c106105d-fc05-4321-ad4b-5b7b18e0e722/c106105d-fc05-4321-ad4b-5b7b18e0e722.jpg	photo
164	\N	mp3	c106105d-fc05-4321-ad4b-5b7b18e0e722.mp3	s3://podcast-input-bucket/c106105d-fc05-4321-ad4b-5b7b18e0e722/c106105d-fc05-4321-ad4b-5b7b18e0e722.mp3	produced
168	\N	jpg	35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.jpg	s3://podcast-input-bucket/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.jpg	photo
167	\N	mp3	35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.mp3	s3://podcast-input-bucket/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.mp3	produced
171	\N	jpg	05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.jpg	s3://podcast-input-bucket/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.jpg	photo
170	\N	mp3	05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.mp3	s3://podcast-input-bucket/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.mp3	produced
174	\N	jpg	ed2466e8-a739-4be8-9b14-4881137b834f.jpg	s3://podcast-input-bucket/ed2466e8-a739-4be8-9b14-4881137b834f/ed2466e8-a739-4be8-9b14-4881137b834f.jpg	photo
173	\N	mp3	ed2466e8-a739-4be8-9b14-4881137b834f.mp3	s3://podcast-input-bucket/ed2466e8-a739-4be8-9b14-4881137b834f/ed2466e8-a739-4be8-9b14-4881137b834f.mp3	produced
177	\N	jpg	f6aaf7fa-8cc8-4bef-9e39-177524b7298f.jpg	s3://podcast-input-bucket/f6aaf7fa-8cc8-4bef-9e39-177524b7298f/f6aaf7fa-8cc8-4bef-9e39-177524b7298f.jpg	photo
176	\N	mp3	f6aaf7fa-8cc8-4bef-9e39-177524b7298f.mp3	s3://podcast-input-bucket/f6aaf7fa-8cc8-4bef-9e39-177524b7298f/f6aaf7fa-8cc8-4bef-9e39-177524b7298f.mp3	produced
180	\N	jpg	75983beb-8fa6-45e9-a33f-9760e5d4c3e5.jpg	s3://podcast-input-bucket/75983beb-8fa6-45e9-a33f-9760e5d4c3e5/75983beb-8fa6-45e9-a33f-9760e5d4c3e5.jpg	photo
179	\N	mp3	75983beb-8fa6-45e9-a33f-9760e5d4c3e5.mp3	s3://podcast-input-bucket/75983beb-8fa6-45e9-a33f-9760e5d4c3e5/75983beb-8fa6-45e9-a33f-9760e5d4c3e5.mp3	produced
183	\N	jpg	13d87c27-cba4-46b4-b978-9b472353992c.jpg	s3://podcast-input-bucket/13d87c27-cba4-46b4-b978-9b472353992c/13d87c27-cba4-46b4-b978-9b472353992c.jpg	photo
182	\N	mp3	13d87c27-cba4-46b4-b978-9b472353992c.mp3	s3://podcast-input-bucket/13d87c27-cba4-46b4-b978-9b472353992c/13d87c27-cba4-46b4-b978-9b472353992c.mp3	produced
186	\N	jpg	e9d5a15b-fabf-4d7b-8852-907d2d313307.jpg	s3://podcast-input-bucket/e9d5a15b-fabf-4d7b-8852-907d2d313307/e9d5a15b-fabf-4d7b-8852-907d2d313307.jpg	photo
185	\N	mp3	e9d5a15b-fabf-4d7b-8852-907d2d313307.mp3	s3://podcast-input-bucket/e9d5a15b-fabf-4d7b-8852-907d2d313307/e9d5a15b-fabf-4d7b-8852-907d2d313307.mp3	produced
189	\N	jpg	15a96291-9267-476d-b743-60d1cab2f6c6.jpg	s3://podcast-input-bucket/15a96291-9267-476d-b743-60d1cab2f6c6/15a96291-9267-476d-b743-60d1cab2f6c6.jpg	photo
188	\N	mp3	15a96291-9267-476d-b743-60d1cab2f6c6.mp3	s3://podcast-input-bucket/15a96291-9267-476d-b743-60d1cab2f6c6/15a96291-9267-476d-b743-60d1cab2f6c6.mp3	produced
192	\N	jpg	71ba05ed-7a4a-44b3-b20f-028a35185484.jpg	s3://podcast-input-bucket/71ba05ed-7a4a-44b3-b20f-028a35185484/71ba05ed-7a4a-44b3-b20f-028a35185484.jpg	photo
191	\N	mp3	71ba05ed-7a4a-44b3-b20f-028a35185484.mp3	s3://podcast-input-bucket/71ba05ed-7a4a-44b3-b20f-028a35185484/71ba05ed-7a4a-44b3-b20f-028a35185484.mp3	produced
198	\N	jpg	07d32ead-cb0a-418f-bd0f-0d508ea86f54.jpg	s3://podcast-input-bucket/07d32ead-cb0a-418f-bd0f-0d508ea86f54/07d32ead-cb0a-418f-bd0f-0d508ea86f54.jpg	photo
197	\N	mp3	07d32ead-cb0a-418f-bd0f-0d508ea86f54.mp3	s3://podcast-input-bucket/07d32ead-cb0a-418f-bd0f-0d508ea86f54/07d32ead-cb0a-418f-bd0f-0d508ea86f54.mp3	produced
201	\N	jpg	c102dbe9-5464-4e6b-9c36-b6e2001e76b4.jpg	s3://podcast-input-bucket/c102dbe9-5464-4e6b-9c36-b6e2001e76b4/c102dbe9-5464-4e6b-9c36-b6e2001e76b4.jpg	photo
200	\N	mp3	c102dbe9-5464-4e6b-9c36-b6e2001e76b4.mp3	s3://podcast-input-bucket/c102dbe9-5464-4e6b-9c36-b6e2001e76b4/c102dbe9-5464-4e6b-9c36-b6e2001e76b4.mp3	produced
204	\N	jpg	31e0f731-398d-43d9-bacb-f2c7b578c1f7.jpg	s3://podcast-input-bucket/31e0f731-398d-43d9-bacb-f2c7b578c1f7/31e0f731-398d-43d9-bacb-f2c7b578c1f7.jpg	photo
203	\N	mp3	31e0f731-398d-43d9-bacb-f2c7b578c1f7.mp3	s3://podcast-input-bucket/31e0f731-398d-43d9-bacb-f2c7b578c1f7/31e0f731-398d-43d9-bacb-f2c7b578c1f7.mp3	produced
207	\N	jpg	155d863c-5dd5-4431-b0ae-300417d7805e.jpg	s3://podcast-input-bucket/155d863c-5dd5-4431-b0ae-300417d7805e/155d863c-5dd5-4431-b0ae-300417d7805e.jpg	photo
206	\N	mp3	155d863c-5dd5-4431-b0ae-300417d7805e.mp3	s3://podcast-input-bucket/155d863c-5dd5-4431-b0ae-300417d7805e/155d863c-5dd5-4431-b0ae-300417d7805e.mp3	produced
210	\N	jpg	df2f53a6-0d32-4302-9d1b-0e49622f2e8e.jpg	s3://podcast-input-bucket/df2f53a6-0d32-4302-9d1b-0e49622f2e8e/df2f53a6-0d32-4302-9d1b-0e49622f2e8e.jpg	photo
209	\N	mp3	df2f53a6-0d32-4302-9d1b-0e49622f2e8e.mp3	s3://podcast-input-bucket/df2f53a6-0d32-4302-9d1b-0e49622f2e8e/df2f53a6-0d32-4302-9d1b-0e49622f2e8e.mp3	produced
213	\N	jpg	4bf03a77-495d-4e58-9ef1-c4583b400681.jpg	s3://podcast-input-bucket/4bf03a77-495d-4e58-9ef1-c4583b400681/4bf03a77-495d-4e58-9ef1-c4583b400681.jpg	photo
212	\N	mp3	4bf03a77-495d-4e58-9ef1-c4583b400681.mp3	s3://podcast-input-bucket/4bf03a77-495d-4e58-9ef1-c4583b400681/4bf03a77-495d-4e58-9ef1-c4583b400681.mp3	produced
216	\N	jpg	974acc14-5396-4122-8f07-765352c7e558.jpg	s3://podcast-input-bucket/974acc14-5396-4122-8f07-765352c7e558/974acc14-5396-4122-8f07-765352c7e558.jpg	photo
215	\N	mp3	974acc14-5396-4122-8f07-765352c7e558.mp3	s3://podcast-input-bucket/974acc14-5396-4122-8f07-765352c7e558/974acc14-5396-4122-8f07-765352c7e558.mp3	produced
219	\N	jpg	863c6399-c65d-4a60-ba24-327ac3db4c44.jpg	s3://podcast-input-bucket/863c6399-c65d-4a60-ba24-327ac3db4c44/863c6399-c65d-4a60-ba24-327ac3db4c44.jpg	photo
218	\N	mp3	863c6399-c65d-4a60-ba24-327ac3db4c44.mp3	s3://podcast-input-bucket/863c6399-c65d-4a60-ba24-327ac3db4c44/863c6399-c65d-4a60-ba24-327ac3db4c44.mp3	produced
222	\N	jpg	91847c03-82f4-4575-8801-8a7c74976313.jpg	s3://podcast-input-bucket/91847c03-82f4-4575-8801-8a7c74976313/91847c03-82f4-4575-8801-8a7c74976313.jpg	photo
221	\N	mp3	91847c03-82f4-4575-8801-8a7c74976313.mp3	s3://podcast-input-bucket/91847c03-82f4-4575-8801-8a7c74976313/91847c03-82f4-4575-8801-8a7c74976313.mp3	produced
225	\N	jpg	c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.jpg	s3://podcast-input-bucket/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.jpg	photo
224	\N	mp3	c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.mp3	s3://podcast-input-bucket/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.mp3	produced
231	\N	jpg	ac45826d-ffaa-414f-9895-9511b2f9a363.jpg	s3://podcast-input-bucket/ac45826d-ffaa-414f-9895-9511b2f9a363/ac45826d-ffaa-414f-9895-9511b2f9a363.jpg	photo
230	\N	mp3	ac45826d-ffaa-414f-9895-9511b2f9a363.mp3	s3://podcast-input-bucket/ac45826d-ffaa-414f-9895-9511b2f9a363/ac45826d-ffaa-414f-9895-9511b2f9a363.mp3	produced
234	\N	jpg	2b956f1a-9407-4556-a19d-03a0ec68c076.jpg	s3://podcast-input-bucket/2b956f1a-9407-4556-a19d-03a0ec68c076/2b956f1a-9407-4556-a19d-03a0ec68c076.jpg	photo
233	\N	mp3	2b956f1a-9407-4556-a19d-03a0ec68c076.mp3	s3://podcast-input-bucket/2b956f1a-9407-4556-a19d-03a0ec68c076/2b956f1a-9407-4556-a19d-03a0ec68c076.mp3	produced
237	\N	jpg	a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.jpg	s3://podcast-input-bucket/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.jpg	photo
236	\N	mp3	a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.mp3	s3://podcast-input-bucket/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.mp3	produced
240	\N	jpg	f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.jpg	s3://podcast-input-bucket/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.jpg	photo
239	\N	mp3	f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.mp3	s3://podcast-input-bucket/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.mp3	produced
243	\N	jpg	7d5cb1e4-1c74-4474-b80c-329ad504e5cd.jpg	s3://podcast-input-bucket/7d5cb1e4-1c74-4474-b80c-329ad504e5cd/7d5cb1e4-1c74-4474-b80c-329ad504e5cd.jpg	photo
242	\N	mp3	7d5cb1e4-1c74-4474-b80c-329ad504e5cd.mp3	s3://podcast-input-bucket/7d5cb1e4-1c74-4474-b80c-329ad504e5cd/7d5cb1e4-1c74-4474-b80c-329ad504e5cd.mp3	produced
246	\N	jpg	bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.jpg	s3://podcast-input-bucket/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.jpg	photo
245	\N	mp3	bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.mp3	s3://podcast-input-bucket/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.mp3	produced
249	\N	jpg	564af652-f099-4d4d-9930-85c725567dea.jpg	s3://podcast-input-bucket/564af652-f099-4d4d-9930-85c725567dea/564af652-f099-4d4d-9930-85c725567dea.jpg	photo
248	\N	mp3	564af652-f099-4d4d-9930-85c725567dea.mp3	s3://podcast-input-bucket/564af652-f099-4d4d-9930-85c725567dea/564af652-f099-4d4d-9930-85c725567dea.mp3	produced
252	\N	jpg	b7a9786d-fdef-419a-8da7-5475a90b4631.jpg	s3://podcast-input-bucket/b7a9786d-fdef-419a-8da7-5475a90b4631/b7a9786d-fdef-419a-8da7-5475a90b4631.jpg	photo
251	\N	mp3	b7a9786d-fdef-419a-8da7-5475a90b4631.mp3	s3://podcast-input-bucket/b7a9786d-fdef-419a-8da7-5475a90b4631/b7a9786d-fdef-419a-8da7-5475a90b4631.mp3	produced
255	\N	jpg	9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.jpg	s3://podcast-input-bucket/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.jpg	photo
254	\N	mp3	9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.mp3	s3://podcast-input-bucket/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.mp3	produced
258	\N	jpg	b6aaf914-7ea8-4292-a79c-e5587e9407da.jpg	s3://podcast-input-bucket/b6aaf914-7ea8-4292-a79c-e5587e9407da/b6aaf914-7ea8-4292-a79c-e5587e9407da.jpg	photo
257	\N	mp3	b6aaf914-7ea8-4292-a79c-e5587e9407da.mp3	s3://podcast-input-bucket/b6aaf914-7ea8-4292-a79c-e5587e9407da/b6aaf914-7ea8-4292-a79c-e5587e9407da.mp3	produced
264	\N	jpg	aa3da822-e1c0-4e22-b794-a54c249e2319.jpg	s3://podcast-input-bucket/aa3da822-e1c0-4e22-b794-a54c249e2319/aa3da822-e1c0-4e22-b794-a54c249e2319.jpg	photo
263	\N	mp3	aa3da822-e1c0-4e22-b794-a54c249e2319.mp3	s3://podcast-input-bucket/aa3da822-e1c0-4e22-b794-a54c249e2319/aa3da822-e1c0-4e22-b794-a54c249e2319.mp3	produced
267	\N	jpg	520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.jpg	s3://podcast-input-bucket/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.jpg	photo
266	\N	mp3	520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.mp3	s3://podcast-input-bucket/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.mp3	produced
270	\N	jpg	d99dcb7f-8aec-427b-8940-bc13eabcff67.jpg	s3://podcast-input-bucket/d99dcb7f-8aec-427b-8940-bc13eabcff67/d99dcb7f-8aec-427b-8940-bc13eabcff67.jpg	photo
269	\N	mp3	d99dcb7f-8aec-427b-8940-bc13eabcff67.mp3	s3://podcast-input-bucket/d99dcb7f-8aec-427b-8940-bc13eabcff67/d99dcb7f-8aec-427b-8940-bc13eabcff67.mp3	produced
273	\N	jpg	f40131bf-1501-4e3d-9ff3-6324f206e26d.jpg	s3://podcast-input-bucket/f40131bf-1501-4e3d-9ff3-6324f206e26d/f40131bf-1501-4e3d-9ff3-6324f206e26d.jpg	photo
272	\N	mp3	f40131bf-1501-4e3d-9ff3-6324f206e26d.mp3	s3://podcast-input-bucket/f40131bf-1501-4e3d-9ff3-6324f206e26d/f40131bf-1501-4e3d-9ff3-6324f206e26d.mp3	produced
276	\N	jpg	2545ebeb-6949-4bdb-9f07-12e8463b7f58.jpg	s3://podcast-input-bucket/2545ebeb-6949-4bdb-9f07-12e8463b7f58/2545ebeb-6949-4bdb-9f07-12e8463b7f58.jpg	photo
275	\N	mp3	2545ebeb-6949-4bdb-9f07-12e8463b7f58.mp3	s3://podcast-input-bucket/2545ebeb-6949-4bdb-9f07-12e8463b7f58/2545ebeb-6949-4bdb-9f07-12e8463b7f58.mp3	produced
279	\N	jpg	5734a058-2bc9-4930-acc4-61bb730edf40.jpg	s3://podcast-input-bucket/5734a058-2bc9-4930-acc4-61bb730edf40/5734a058-2bc9-4930-acc4-61bb730edf40.jpg	photo
278	\N	mp3	5734a058-2bc9-4930-acc4-61bb730edf40.mp3	s3://podcast-input-bucket/5734a058-2bc9-4930-acc4-61bb730edf40/5734a058-2bc9-4930-acc4-61bb730edf40.mp3	produced
282	\N	jpg	4677643c-a921-4fef-a30f-64c813d7e8ca.jpg	s3://podcast-input-bucket/4677643c-a921-4fef-a30f-64c813d7e8ca/4677643c-a921-4fef-a30f-64c813d7e8ca.jpg	photo
281	\N	mp3	4677643c-a921-4fef-a30f-64c813d7e8ca.mp3	s3://podcast-input-bucket/4677643c-a921-4fef-a30f-64c813d7e8ca/4677643c-a921-4fef-a30f-64c813d7e8ca.mp3	produced
284	\N	mp3	interview.mp3	s3://podcast-input-bucket/5eb141fd-fcbe-4962-840d-f82c6f582a90/interview.mp3	interview
285	\N	mp3	oleg-intro.mp3	s3://podcast-input-bucket/5eb141fd-fcbe-4962-840d-f82c6f582a90/oleg-intro.mp3	introduction
286	\N	jpg	oleg-selajev.jpg	s3://podcast-input-bucket/5eb141fd-fcbe-4962-840d-f82c6f582a90/oleg-selajev.jpg	photo
288	\N	mp3	interview.mp3	s3://podcast-input-bucket/d1dc9637-bb9d-483c-93d3-e989db4cfff7/interview.mp3	interview
289	\N	mp3	introduction.mp3	s3://podcast-input-bucket/d1dc9637-bb9d-483c-93d3-e989db4cfff7/introduction.mp3	introduction
290	\N	jpg	photo.jpg	s3://podcast-input-bucket/d1dc9637-bb9d-483c-93d3-e989db4cfff7/photo.jpg	photo
292	\N	mp3	interview.mp3	s3://podcast-input-bucket/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6/interview.mp3	interview
293	\N	mp3	intro.mp3	s3://podcast-input-bucket/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6/intro.mp3	introduction
294	\N	jpg	podcast-cover.jpg	s3://podcast-input-bucket/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6/podcast-cover.jpg	photo
296	\N	mp3	interview.mp3	s3://podcast-input-bucket/ed5d9a39-7ca5-477d-a743-3cb74ebc866f/interview.mp3	interview
297	\N	mp3	intro.mp3	s3://podcast-input-bucket/ed5d9a39-7ca5-477d-a743-3cb74ebc866f/intro.mp3	introduction
298	\N	jpg	profile.jpg	s3://podcast-input-bucket/ed5d9a39-7ca5-477d-a743-3cb74ebc866f/profile.jpg	photo
300	\N	mp3	interview.mp3	s3://podcast-input-bucket/456c2f06-502f-41ca-a8c9-4430849066c3/interview.mp3	interview
301	\N	mp3	intro.mp3	s3://podcast-input-bucket/456c2f06-502f-41ca-a8c9-4430849066c3/intro.mp3	introduction
302	\N	jpg	sergi-squared.jpg	s3://podcast-input-bucket/456c2f06-502f-41ca-a8c9-4430849066c3/sergi-squared.jpg	photo
304	\N	mp3	interview.mp3	s3://podcast-input-bucket/7c73e1a6-47a2-4d11-8be2-0aa763053b9a/interview.mp3	interview
305	\N	mp3	intro.mp3	s3://podcast-input-bucket/7c73e1a6-47a2-4d11-8be2-0aa763053b9a/intro.mp3	introduction
306	\N	jpg	john-550x550.jpg	s3://podcast-input-bucket/7c73e1a6-47a2-4d11-8be2-0aa763053b9a/john-550x550.jpg	photo
308	\N	mp3	interview.mp3	s3://podcast-input-bucket/f2533aba-2850-410c-aeec-2f8f3833f075/interview.mp3	interview
309	\N	mp3	introduction.mp3	s3://podcast-input-bucket/f2533aba-2850-410c-aeec-2f8f3833f075/introduction.mp3	introduction
310	\N	jpg	glen-2.jpg	s3://podcast-input-bucket/f2533aba-2850-410c-aeec-2f8f3833f075/glen-2.jpg	photo
312	\N	mp3	interview.mp3	s3://podcast-input-bucket/0bfe08cd-3443-4f7e-9d62-5da50408621c/interview.mp3	interview
313	\N	mp3	intro.mp3	s3://podcast-input-bucket/0bfe08cd-3443-4f7e-9d62-5da50408621c/intro.mp3	introduction
314	\N	jpg	sergei.jpg	s3://podcast-input-bucket/0bfe08cd-3443-4f7e-9d62-5da50408621c/sergei.jpg	photo
316	\N	mp3	interview.mp3	s3://podcast-input-bucket/faf00426-0b5d-4a0d-912a-20504ae6f694/interview.mp3	interview
317	\N	mp3	intro.mp3	s3://podcast-input-bucket/faf00426-0b5d-4a0d-912a-20504ae6f694/intro.mp3	introduction
318	\N	jpg	joe-beda.jpg	s3://podcast-input-bucket/faf00426-0b5d-4a0d-912a-20504ae6f694/joe-beda.jpg	photo
320	\N	mp3	interview.mp3	s3://podcast-input-bucket/e4fa038c-8a13-4c1d-acb6-734f5f543f13/interview.mp3	interview
321	\N	mp3	intro.mp3	s3://podcast-input-bucket/e4fa038c-8a13-4c1d-acb6-734f5f543f13/intro.mp3	introduction
322	\N	jpg	kushagra-thapar.jpg	s3://podcast-input-bucket/e4fa038c-8a13-4c1d-acb6-734f5f543f13/kushagra-thapar.jpg	photo
324	\N	mp3	interview.mp3	s3://podcast-input-bucket/98e8d404-ff07-42ed-9100-cc3c5c20eef5/interview.mp3	interview
325	\N	mp3	intro.mp3	s3://podcast-input-bucket/98e8d404-ff07-42ed-9100-cc3c5c20eef5/intro.mp3	introduction
326	\N	jpg	hadi.jpg	s3://podcast-input-bucket/98e8d404-ff07-42ed-9100-cc3c5c20eef5/hadi.jpg	photo
328	\N	mp3	interview.mp3	s3://podcast-input-bucket/16c8789f-5562-4062-b88a-61770e2af9db/interview.mp3	interview
329	\N	mp3	intro.mp3	s3://podcast-input-bucket/16c8789f-5562-4062-b88a-61770e2af9db/intro.mp3	introduction
330	\N	jpg	SteveRostedt-sm.jpg	s3://podcast-input-bucket/16c8789f-5562-4062-b88a-61770e2af9db/SteveRostedt-sm.jpg	photo
332	\N	mp3	interview.mp3	s3://podcast-input-bucket/ee343a8d-368e-4711-8f9c-4b571fa7a8e4/interview.mp3	interview
333	\N	mp3	intro.mp3	s3://podcast-input-bucket/ee343a8d-368e-4711-8f9c-4b571fa7a8e4/intro.mp3	introduction
334	\N	jpg	adrianfcole.jpg	s3://podcast-input-bucket/ee343a8d-368e-4711-8f9c-4b571fa7a8e4/adrianfcole.jpg	photo
336	\N	mp3	interview.mp3	s3://podcast-input-bucket/7d323056-84e8-4026-a783-4704db38709d/interview.mp3	interview
337	\N	mp3	intro.mp3	s3://podcast-input-bucket/7d323056-84e8-4026-a783-4704db38709d/intro.mp3	introduction
338	\N	jpg	eddu-photo.jpg	s3://podcast-input-bucket/7d323056-84e8-4026-a783-4704db38709d/eddu-photo.jpg	photo
340	\N	mp3	interview.mp3	s3://podcast-input-bucket/b2bbe730-2e31-46d1-a391-1a6270211de2/interview.mp3	interview
341	\N	mp3	intro.mp3	s3://podcast-input-bucket/b2bbe730-2e31-46d1-a391-1a6270211de2/intro.mp3	introduction
342	\N	jpg	sanjay-poonen.jpg	s3://podcast-input-bucket/b2bbe730-2e31-46d1-a391-1a6270211de2/sanjay-poonen.jpg	photo
344	\N	mp3	interview.mp3	s3://podcast-input-bucket/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e/interview.mp3	interview
345	\N	mp3	intro.mp3	s3://podcast-input-bucket/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e/intro.mp3	introduction
346	\N	jpg	kohsuke.jpg	s3://podcast-input-bucket/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e/kohsuke.jpg	photo
348	\N	mp3	interview.mp3	s3://podcast-input-bucket/60026531-40a7-4e6b-a404-7bc033172af9/interview.mp3	interview
349	\N	mp3	intro.mp3	s3://podcast-input-bucket/60026531-40a7-4e6b-a404-7bc033172af9/intro.mp3	introduction
350	\N	jpg	dr_bhandaru.jpg	s3://podcast-input-bucket/60026531-40a7-4e6b-a404-7bc033172af9/dr_bhandaru.jpg	photo
352	\N	mp3	interview.mp3	s3://podcast-input-bucket/85dc9285-ba68-4180-aec2-52cccc140655/interview.mp3	interview
353	\N	mp3	intro.mp3	s3://podcast-input-bucket/85dc9285-ba68-4180-aec2-52cccc140655/intro.mp3	introduction
354	\N	jpg	tim-pepper.jpg	s3://podcast-input-bucket/85dc9285-ba68-4180-aec2-52cccc140655/tim-pepper.jpg	photo
356	\N	mp3	interview.mp3	s3://podcast-input-bucket/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df/interview.mp3	interview
357	\N	mp3	paul-intro.mp3	s3://podcast-input-bucket/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df/paul-intro.mp3	introduction
358	\N	jpg	paul.jpg	s3://podcast-input-bucket/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df/paul.jpg	photo
360	\N	mp3	interview.mp3	s3://podcast-input-bucket/49689040-28d8-4434-afa4-7f41d22b9c37/interview.mp3	interview
361	\N	mp3	intro.mp3	s3://podcast-input-bucket/49689040-28d8-4434-afa4-7f41d22b9c37/intro.mp3	introduction
362	\N	jpg	tern-logo.jpg	s3://podcast-input-bucket/49689040-28d8-4434-afa4-7f41d22b9c37/tern-logo.jpg	photo
364	\N	mp3	interview.mp3	s3://podcast-input-bucket/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7/interview.mp3	interview
365	\N	mp3	intro.mp3	s3://podcast-input-bucket/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7/intro.mp3	introduction
366	\N	jpg	clement-pang.jpg	s3://podcast-input-bucket/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7/clement-pang.jpg	photo
368	\N	mp3	interview.mp3	s3://podcast-input-bucket/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab/interview.mp3	interview
369	\N	mp3	intro.mp3	s3://podcast-input-bucket/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab/intro.mp3	introduction
370	\N	jpg	YordanKaradzhov.jpg	s3://podcast-input-bucket/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab/YordanKaradzhov.jpg	photo
372	\N	mp3	interview.mp3	s3://podcast-input-bucket/a0f59cfb-d9e7-405b-8f5e-0c34894332b1/interview.mp3	interview
373	\N	mp3	intro.mp3	s3://podcast-input-bucket/a0f59cfb-d9e7-405b-8f5e-0c34894332b1/intro.mp3	introduction
374	\N	jpg	jens-schauder.jpg	s3://podcast-input-bucket/a0f59cfb-d9e7-405b-8f5e-0c34894332b1/jens-schauder.jpg	photo
376	\N	mp3	interview.mp3	s3://podcast-input-bucket/70c31ba4-f424-43a3-bbec-6f891aee6610/interview.mp3	interview
377	\N	mp3	intro.mp3	s3://podcast-input-bucket/70c31ba4-f424-43a3-bbec-6f891aee6610/intro.mp3	introduction
378	\N	jpg	katie-levy.jpg	s3://podcast-input-bucket/70c31ba4-f424-43a3-bbec-6f891aee6610/katie-levy.jpg	photo
380	\N	mp3	interview.mp3	s3://podcast-input-bucket/b564a312-5a03-4f5d-928f-cb27d0047e3c/interview.mp3	interview
381	\N	mp3	intro.mp3	s3://podcast-input-bucket/b564a312-5a03-4f5d-928f-cb27d0047e3c/intro.mp3	introduction
382	\N	jpg	mark-paluch.jpg	s3://podcast-input-bucket/b564a312-5a03-4f5d-928f-cb27d0047e3c/mark-paluch.jpg	photo
384	\N	mp3	interview.mp3	s3://podcast-input-bucket/db632a7a-10d6-4027-873f-3b5874a90703/interview.mp3	interview
385	\N	mp3	intro.mp3	s3://podcast-input-bucket/db632a7a-10d6-4027-873f-3b5874a90703/intro.mp3	introduction
386	\N	jpg	josh-lock.jpg	s3://podcast-input-bucket/db632a7a-10d6-4027-873f-3b5874a90703/josh-lock.jpg	photo
388	\N	mp3	interview.mp3	s3://podcast-input-bucket/30740b6f-7781-4c17-b4d2-f7a2536ab245/interview.mp3	interview
389	\N	mp3	intro.mp3	s3://podcast-input-bucket/30740b6f-7781-4c17-b4d2-f7a2536ab245/intro.mp3	introduction
390	\N	jpg	baruch.jpg	s3://podcast-input-bucket/30740b6f-7781-4c17-b4d2-f7a2536ab245/baruch.jpg	photo
392	\N	mp3	interview.mp3	s3://podcast-input-bucket/95f7ed9e-11b6-4b80-aca6-733921b073d2/interview.mp3	interview
393	\N	mp3	intro.mp3	s3://podcast-input-bucket/95f7ed9e-11b6-4b80-aca6-733921b073d2/intro.mp3	introduction
394	\N	jpg	img.jpg	s3://podcast-input-bucket/95f7ed9e-11b6-4b80-aca6-733921b073d2/img.jpg	photo
396	\N	mp3	interview.mp3	s3://podcast-input-bucket/97942784-2299-42f4-b647-9e896ac6debf/interview.mp3	interview
397	\N	mp3	intro.mp3	s3://podcast-input-bucket/97942784-2299-42f4-b647-9e896ac6debf/intro.mp3	introduction
398	\N	jpg	profile_photo_400x400.jpg	s3://podcast-input-bucket/97942784-2299-42f4-b647-9e896ac6debf/profile_photo_400x400.jpg	photo
400	\N	mp3	interview-mixdown1.mp3	s3://podcast-input-bucket/241d560b-0f20-455f-b8ea-551c6d949ba1/interview-mixdown1.mp3	interview
401	\N	mp3	intro1.mp3	s3://podcast-input-bucket/241d560b-0f20-455f-b8ea-551c6d949ba1/intro1.mp3	introduction
402	\N	jpg	cover.jpg	s3://podcast-input-bucket/241d560b-0f20-455f-b8ea-551c6d949ba1/cover.jpg	photo
404	\N	mp3	interview.mp3	s3://podcast-input-bucket/64ba7927-685d-429c-a4a4-135425fa6cac/interview.mp3	interview
405	\N	mp3	intro.mp3	s3://podcast-input-bucket/64ba7927-685d-429c-a4a4-135425fa6cac/intro.mp3	introduction
406	\N	jpg	jonathan-giles.jpg	s3://podcast-input-bucket/64ba7927-685d-429c-a4a4-135425fa6cac/jonathan-giles.jpg	photo
408	\N	mp3	interview.mp3	s3://podcast-input-bucket/83ae4357-fb6c-404d-8acf-0788b79f0c71/interview.mp3	interview
409	\N	mp3	intro.mp3	s3://podcast-input-bucket/83ae4357-fb6c-404d-8acf-0788b79f0c71/intro.mp3	introduction
410	\N	jpg	rossen.jpg	s3://podcast-input-bucket/83ae4357-fb6c-404d-8acf-0788b79f0c71/rossen.jpg	photo
412	\N	mp3	interview.mp3	s3://podcast-input-bucket/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69/interview.mp3	interview
413	\N	mp3	intro.mp3	s3://podcast-input-bucket/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69/intro.mp3	introduction
414	\N	jpg	jonas.jpg	s3://podcast-input-bucket/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69/jonas.jpg	photo
416	\N	mp3	interview.mp3	s3://podcast-input-bucket/53a8a31e-f454-482a-a7ec-1db83c509918/interview.mp3	interview
417	\N	mp3	intro.mp3	s3://podcast-input-bucket/53a8a31e-f454-482a-a7ec-1db83c509918/intro.mp3	introduction
418	\N	jpg	david-cramerx400.jpg	s3://podcast-input-bucket/53a8a31e-f454-482a-a7ec-1db83c509918/david-cramerx400.jpg	photo
420	\N	mp3	interview.mp3	s3://podcast-input-bucket/d8b01a23-a4d1-479d-85f6-52d0485dc6c2/interview.mp3	interview
421	\N	mp3	intro.mp3	s3://podcast-input-bucket/d8b01a23-a4d1-479d-85f6-52d0485dc6c2/intro.mp3	introduction
422	\N	jpg	arjen.jpg	s3://podcast-input-bucket/d8b01a23-a4d1-479d-85f6-52d0485dc6c2/arjen.jpg	photo
424	\N	mp3	interview.mp3	s3://podcast-input-bucket/fce25c42-1439-42d5-a3d1-4a97ee3fab57/interview.mp3	interview
425	\N	mp3	intro.mp3	s3://podcast-input-bucket/fce25c42-1439-42d5-a3d1-4a97ee3fab57/intro.mp3	introduction
426	\N	jpg	audrey.jpg	s3://podcast-input-bucket/fce25c42-1439-42d5-a3d1-4a97ee3fab57/audrey.jpg	photo
428	\N	mp3	interview.mp3	s3://podcast-input-bucket/053f0141-2910-4fef-9e4a-08c939506874/interview.mp3	interview
429	\N	mp3	intro.mp3	s3://podcast-input-bucket/053f0141-2910-4fef-9e4a-08c939506874/intro.mp3	introduction
430	\N	jpg	patrick.jpg	s3://podcast-input-bucket/053f0141-2910-4fef-9e4a-08c939506874/patrick.jpg	photo
432	\N	mp3	interview.mp3	s3://podcast-input-bucket/43544e66-3307-4e8c-817e-8afa92622ae5/interview.mp3	interview
433	\N	mp3	intro.mp3	s3://podcast-input-bucket/43544e66-3307-4e8c-817e-8afa92622ae5/intro.mp3	introduction
434	\N	jpg	aidan.jpg	s3://podcast-input-bucket/43544e66-3307-4e8c-817e-8afa92622ae5/aidan.jpg	photo
436	\N	mp3	interview.mp3	s3://podcast-input-bucket/a07248d7-4aa3-4e90-bb45-0c90ab8671f3/interview.mp3	interview
437	\N	mp3	intro.mp3	s3://podcast-input-bucket/a07248d7-4aa3-4e90-bb45-0c90ab8671f3/intro.mp3	introduction
438	\N	jpg	sam.jpg	s3://podcast-input-bucket/a07248d7-4aa3-4e90-bb45-0c90ab8671f3/sam.jpg	photo
440	\N	mp3	interview.mp3	s3://podcast-input-bucket/dc4a4262-a7e2-4af0-879d-328a57fd86b4/interview.mp3	interview
441	\N	mp3	intro.mp3	s3://podcast-input-bucket/dc4a4262-a7e2-4af0-879d-328a57fd86b4/intro.mp3	introduction
442	\N	jpg	trisberg_bw_400x400.jpg	s3://podcast-input-bucket/dc4a4262-a7e2-4af0-879d-328a57fd86b4/trisberg_bw_400x400.jpg	photo
\.


--
-- Data for Name: podcast; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.podcast (id, date, description, notes, podbean_draft_created, podbean_draft_published, podbean_media_uri, podbean_photo_uri, s3_audio_file_name, s3_audio_uri, s3_photo_file_name, s3_photo_uri, title, transcript, uid) FROM stdin;
172	2019-09-12 09:28:19	Hi, Spring fans! Welcome to another extra-special, extra-long installment of A Bootiful Podcast. In this episode, I talk to Spring Framework lead and #2 co-founder of Spring itself, the one, the only, the amazing Juergen Hoeller. We talk about his tenure as the longest and most prolific contributor to Spring; designing clean code; the early days of Spring the project; new features in Spring Framework 5.2; the role of Kotlin, Project Loom, Graal in the Spring ecosystem; Spring's role in the ecosystem; Java's place and possibilities; and so much more. \n\n* Juergen on Twitter: @SpringJuergen\n* Spring Framework on Github: https://github.com/spring-projects/spring-framework	\N	2020-02-03 19:45:21.591	\N	https://starbuxman.podbean.com/mf/play/5x3rph/ed2466e8-a739-4be8-9b14-4881137b834f.mp3	https://mcdn.podbean.com/mf/web/4a2mvb/ed2466e8-a739-4be8-9b14-4881137b834f.jpg	ed2466e8-a739-4be8-9b14-4881137b834f.mp3	s3://podcast-output-bucket/ed2466e8-a739-4be8-9b14-4881137b834f/ed2466e8-a739-4be8-9b14-4881137b834f.mp3	ed2466e8-a739-4be8-9b14-4881137b834f.jpg	s3://podcast-input-bucket/ed2466e8-a739-4be8-9b14-4881137b834f/ed2466e8-a739-4be8-9b14-4881137b834f.jpg	Spring Framework co-founder and lead Juergen Hoeller on Spring Framework 5.2 and more	\N	ed2466e8-a739-4be8-9b14-4881137b834f
175	2019-08-01 22:42:46	Hi Spring fans! In today's installment I talk to Gradle Developer Advocate Jenn Strater about Gradle, Groovy, Spring REST Docs, and so much more. \n\n* Jenn on Twitter: https://twitter.com/codeJENNerator	\N	2020-02-03 19:46:00.836	\N	https://starbuxman.podbean.com/mf/play/7e93xy/f6aaf7fa-8cc8-4bef-9e39-177524b7298f.mp3	https://mcdn.podbean.com/mf/web/5piipj/f6aaf7fa-8cc8-4bef-9e39-177524b7298f.jpg	f6aaf7fa-8cc8-4bef-9e39-177524b7298f.mp3	s3://podcast-output-bucket/f6aaf7fa-8cc8-4bef-9e39-177524b7298f/f6aaf7fa-8cc8-4bef-9e39-177524b7298f.mp3	f6aaf7fa-8cc8-4bef-9e39-177524b7298f.jpg	s3://podcast-input-bucket/f6aaf7fa-8cc8-4bef-9e39-177524b7298f/f6aaf7fa-8cc8-4bef-9e39-177524b7298f.jpg	Gradle Developer Advocate Jenn Strater	\N	f6aaf7fa-8cc8-4bef-9e39-177524b7298f
178	2019-04-11 16:30:35	Hi Spring fans! In this installment Josh Long talks to Roy Braam, a solutions architect at Rabobank, a bank in the Netherlands, about how they are able to quickly iterate despite regulation and size. \n\nRoy Braam on Twitter: http://twitter.com/rbraam\nRabobank: https://www.rabobank.com/en/home/index.html\nJosh Long on Twitter: http://twitter.com/starbuxman	\N	2020-02-03 19:46:29.802	\N	https://starbuxman.podbean.com/mf/play/5xfstd/75983beb-8fa6-45e9-a33f-9760e5d4c3e5.mp3	https://mcdn.podbean.com/mf/web/ji5f2b/75983beb-8fa6-45e9-a33f-9760e5d4c3e5.jpg	75983beb-8fa6-45e9-a33f-9760e5d4c3e5.mp3	s3://podcast-output-bucket/75983beb-8fa6-45e9-a33f-9760e5d4c3e5/75983beb-8fa6-45e9-a33f-9760e5d4c3e5.mp3	75983beb-8fa6-45e9-a33f-9760e5d4c3e5.jpg	s3://podcast-input-bucket/75983beb-8fa6-45e9-a33f-9760e5d4c3e5/75983beb-8fa6-45e9-a33f-9760e5d4c3e5.jpg	Rabobank's Roy Braam	\N	75983beb-8fa6-45e9-a33f-9760e5d4c3e5
130	2018-12-20 12:05:43	In this installment we talk to Jon Schneider, lead of the Micrometer project that supports dimensional metrics instrumentation. It aims to be "SLF4J, but for metrics," and it has already seen uptake in a number of JVM community projects including the RabbitMQ JVM driver and Spring Boot.\n\nTwitter: https://twitter.com/jon_k_schneider \nTwitter: https://twitter.com/MicrometerIO\n\nRecorded: May 25, 2018\nNotes:\n- Check out the Micrometer project http://Micrometer.io	\N	2020-02-03 19:03:55.07	\N	https://starbuxman.podbean.com/mf/play/2pce2w/a00968ac-fb9b-4228-9d50-8a0375f7dec3.mp3	https://mcdn.podbean.com/mf/web/9bdyfg/a00968ac-fb9b-4228-9d50-8a0375f7dec3.jpg	a00968ac-fb9b-4228-9d50-8a0375f7dec3.mp3	s3://podcast-output-bucket/a00968ac-fb9b-4228-9d50-8a0375f7dec3/a00968ac-fb9b-4228-9d50-8a0375f7dec3.mp3	a00968ac-fb9b-4228-9d50-8a0375f7dec3.jpg	s3://podcast-input-bucket/a00968ac-fb9b-4228-9d50-8a0375f7dec3/a00968ac-fb9b-4228-9d50-8a0375f7dec3.jpg	Jon Schneider on his project metrics collection facade Micrometer	\N	a00968ac-fb9b-4228-9d50-8a0375f7dec3
112	2019-05-24 00:29:14	Hi Spring fans! In this installment of a Bootiful Podcast Josh Long (@starbuxman) talks to Twitter's Chris Thalinger (@christhalinger) about Graal VM; JITs; Compilers; Hawaii, USA; Sao Paolo, Brazil; and so much more.\n\nChris Thalinger on Twitter: @christhalinger\nGraalVM: https://www.graalvm.org/	\N	2020-02-03 19:00:17.437	\N	https://starbuxman.podbean.com/mf/play/mkmzne/8182415b-d8d6-4238-9141-83d845d98498.mp3	https://mcdn.podbean.com/mf/web/xrr8dm/8182415b-d8d6-4238-9141-83d845d98498.jpg	8182415b-d8d6-4238-9141-83d845d98498.mp3	s3://podcast-output-bucket/8182415b-d8d6-4238-9141-83d845d98498/8182415b-d8d6-4238-9141-83d845d98498.mp3	8182415b-d8d6-4238-9141-83d845d98498.jpg	s3://podcast-input-bucket/8182415b-d8d6-4238-9141-83d845d98498/8182415b-d8d6-4238-9141-83d845d98498.jpg	Twitter's Chris Thalinger on Java, Graal, JVMs, JITs, Sao Paolo, Hawaii, and more	\N	8182415b-d8d6-4238-9141-83d845d98498
124	2019-05-30 18:17:07	Hi Spring fans! In this episode I talk to Go-lang and Kubernetes-legend Verónica Lopez about community, physics, distributed systems and more. \n\nVerónica on Twitter: http://twitter.com/maria_fibonacci	\N	2020-02-03 19:03:49.195	\N	https://starbuxman.podbean.com/mf/play/4p2a8v/fe8afa8f-f73a-42fd-b133-473c693ae6bd.mp3	https://mcdn.podbean.com/mf/web/5nkjw2/fe8afa8f-f73a-42fd-b133-473c693ae6bd.jpg	fe8afa8f-f73a-42fd-b133-473c693ae6bd.mp3	s3://podcast-output-bucket/fe8afa8f-f73a-42fd-b133-473c693ae6bd/fe8afa8f-f73a-42fd-b133-473c693ae6bd.mp3	fe8afa8f-f73a-42fd-b133-473c693ae6bd.jpg	s3://podcast-input-bucket/fe8afa8f-f73a-42fd-b133-473c693ae6bd/fe8afa8f-f73a-42fd-b133-473c693ae6bd.jpg	Go-lang and Kubernetes legend Verónica Lopez	\N	fe8afa8f-f73a-42fd-b133-473c693ae6bd
136	2019-10-31 15:07:28	Hi, Spring fans! in today's episode Josh Long (@starbuxman) talks to Vlad Mihalcea (@vlad_mihalcea) about Hibernate, databases, optimizations, and more. \n\n* Vlad on Twitter: http://twitter.com/vlad_mihalcea\n* Vlad's blog: https://vladmihalcea.com	\N	2020-02-03 19:13:09.78	\N	https://starbuxman.podbean.com/mf/play/qwzaib/eaae6699-6e67-438c-a1a5-0762aa1a1434.mp3	https://mcdn.podbean.com/mf/web/4bfbri/eaae6699-6e67-438c-a1a5-0762aa1a1434.jpg	eaae6699-6e67-438c-a1a5-0762aa1a1434.mp3	s3://podcast-output-bucket/eaae6699-6e67-438c-a1a5-0762aa1a1434/eaae6699-6e67-438c-a1a5-0762aa1a1434.mp3	eaae6699-6e67-438c-a1a5-0762aa1a1434.jpg	s3://podcast-input-bucket/eaae6699-6e67-438c-a1a5-0762aa1a1434/eaae6699-6e67-438c-a1a5-0762aa1a1434.jpg	Hibernate community legend Vlad Mihalcea on the project, Hibernate, databases and more	\N	eaae6699-6e67-438c-a1a5-0762aa1a1434
145	2019-10-04 04:07:04	Hi Spring fans! In this episode, Josh Long (@starbuxman) interviews Oracle's Geertjan Wielenga (@GeertjanW) about his new book (on developer advocacy) "Developer, Advocate!"	\N	2020-02-03 19:23:07.606	\N	https://starbuxman.podbean.com/mf/play/jygtte/291814bf-1fb3-43f9-adc0-12ec96d91b1a.mp3	https://mcdn.podbean.com/mf/web/gbfaba/291814bf-1fb3-43f9-adc0-12ec96d91b1a.jpg	291814bf-1fb3-43f9-adc0-12ec96d91b1a.mp3	s3://podcast-output-bucket/291814bf-1fb3-43f9-adc0-12ec96d91b1a/291814bf-1fb3-43f9-adc0-12ec96d91b1a.mp3	291814bf-1fb3-43f9-adc0-12ec96d91b1a.jpg	s3://podcast-input-bucket/291814bf-1fb3-43f9-adc0-12ec96d91b1a/291814bf-1fb3-43f9-adc0-12ec96d91b1a.jpg	Oracle's Geertjan Wielenga on his new book "Developer, Advocate!"	\N	291814bf-1fb3-43f9-adc0-12ec96d91b1a
109	2019-07-04 19:37:04	Hi, Spring fans! In today's episode, I talk to the man, the myth, the legend, the good Dr. Venkat Subramaniam on Kotlin, the future of Java, Spring, open-source, being productive and awesome, and so much more. \n\n* Dr. Subramaniam on Twitter - http://twitter.com/Venkat_S\n* https://twitter.com/starbuxman/status/1103810728883040256 - a tweet asking that whatever recording I do with Dr. Subramaniam for the Bootiful Podcast be longer than an hour (wish granted!)\n* The image from today's episode comes from a joint-talk that the good Dr. Subramaniam and I did in Atlanta, GA for the epic Devnexus conference. I am using the photo from [Matt Raible's tweet](https://twitter.com/mraible/status/1103692771028803590)\n* Dr. Subramaniam's new book Programming Kotlin: https://pragprog.com/book/vskotlin/programming-kotlin	\N	2020-02-03 18:47:22.983	\N	https://starbuxman.podbean.com/mf/play/xkrp3u/9e69e673-3dbc-4860-9209-b2a6360e7f12.mp3	https://mcdn.podbean.com/mf/web/9q4ajp/9e69e673-3dbc-4860-9209-b2a6360e7f12.jpg	9e69e673-3dbc-4860-9209-b2a6360e7f12.mp3	s3://podcast-output-bucket/9e69e673-3dbc-4860-9209-b2a6360e7f12/9e69e673-3dbc-4860-9209-b2a6360e7f12.mp3	9e69e673-3dbc-4860-9209-b2a6360e7f12.jpg	s3://podcast-input-bucket/9e69e673-3dbc-4860-9209-b2a6360e7f12/9e69e673-3dbc-4860-9209-b2a6360e7f12.jpg	Dr. Venkat Subramaniam on Kotlin, Java, Spring, open-source, being productive, and so much more	\N	9e69e673-3dbc-4860-9209-b2a6360e7f12
118	2019-11-07 12:48:26	Hi, Spring fans! In this installment Josh Long talks to "Spring Boot Buch"  author, Spring community legend and an engineer working on the new, reactive Spring Data Neo4j project Michael Simons \n\n* Reactive Spring Data Neo4j: https://github.com/neo4j/sdn-rx\n* Neo4j NODES 2019: https://neo4j.com/online-summit\n* Michael's Twitter: https://twitter.com/@rotnroll666\n* His blog: https://info.michael-simons.eu	\N	2020-02-03 19:01:58.97	\N	https://starbuxman.podbean.com/mf/play/3xmsun/d525acbf-3f65-4431-ae47-a7e856f4691a.mp3	https://mcdn.podbean.com/mf/web/vazbxf/d525acbf-3f65-4431-ae47-a7e856f4691a.jpg	d525acbf-3f65-4431-ae47-a7e856f4691a.mp3	s3://podcast-output-bucket/d525acbf-3f65-4431-ae47-a7e856f4691a/d525acbf-3f65-4431-ae47-a7e856f4691a.mp3	d525acbf-3f65-4431-ae47-a7e856f4691a.jpg	s3://podcast-input-bucket/d525acbf-3f65-4431-ae47-a7e856f4691a/d525acbf-3f65-4431-ae47-a7e856f4691a.jpg	Michael Simons on Spring Boot, reactive Spring Data Neo4j, and more	\N	d525acbf-3f65-4431-ae47-a7e856f4691a
163	2019-10-18 01:35:16	Hi, Spring fans! Welcome to another installment of a Bootiful Podcast! In this week's installment @starbuxman (Josh Long) talks to Rafael Winterhalter (@rafaelcodes) about Bytebuddy; Mockito; the JVM; bytecode; Oslo, Norway; and so much more.\n\n* Rafael on Twitter: @rafaelcodes\n* ByteBuddy: https://bytebuddy.net/\n* Mockito: https://site.mockito.org \n* JavaZone: http://JavaZone.no	\N	2020-02-03 19:35:53.311	\N	https://starbuxman.podbean.com/mf/play/79423y/c106105d-fc05-4321-ad4b-5b7b18e0e722.mp3	https://mcdn.podbean.com/mf/web/fxitbn/c106105d-fc05-4321-ad4b-5b7b18e0e722.jpg	c106105d-fc05-4321-ad4b-5b7b18e0e722.mp3	s3://podcast-output-bucket/c106105d-fc05-4321-ad4b-5b7b18e0e722/c106105d-fc05-4321-ad4b-5b7b18e0e722.mp3	c106105d-fc05-4321-ad4b-5b7b18e0e722.jpg	s3://podcast-input-bucket/c106105d-fc05-4321-ad4b-5b7b18e0e722/c106105d-fc05-4321-ad4b-5b7b18e0e722.jpg	Bytebuddy and Mockito maestro Rafael Winterhalter	\N	c106105d-fc05-4321-ad4b-5b7b18e0e722
166	2019-06-27 14:33:16	Hi Spring fans! In this installment Josh Long (@starbuxman) talks to @Datadog 's Jason Yee (@gitbisect) about observability, operations, metrics, Kubernetes, language and more. \n\n* Jason on Twitter: http://twitter.com/GitBisect\n* a great post on the (brief) history of Observability: https://www.cncf.io/blog/2019/05/21/a-brief-history-of-opentelemetry-so-far/\n* DevoxxUK: http://twitter.com/DevoxxUK	\N	2020-02-03 19:36:38.901	\N	https://starbuxman.podbean.com/mf/play/2zis5t/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.mp3	https://mcdn.podbean.com/mf/web/539sx3/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.jpg	35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.mp3	s3://podcast-output-bucket/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.mp3	35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.jpg	s3://podcast-input-bucket/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196/35df7bc5-d7c6-403b-a2c8-fd9a1a40c196.jpg	Datadog's Jason Yee on observability, operations, metrics, Kubernetes, language and more	\N	35df7bc5-d7c6-403b-a2c8-fd9a1a40c196
139	2020-01-23 19:55:58	Hi, Spring fans! In this episode Josh Long (http://twitter.com/starbuxman) talks to Neo4j's mad scientist, and one of the most brilliant and generous people around, Michael Hunger (http://twitter.com/mesirii), about all things graph, relationships and more.	\N	2020-02-03 19:13:48.912	\N	https://starbuxman.podbean.com/mf/play/c2gats/91c4de22-69d8-44ad-a120-d859acbe251e.mp3	https://mcdn.podbean.com/mf/web/xfazsh/91c4de22-69d8-44ad-a120-d859acbe251e.jpg	91c4de22-69d8-44ad-a120-d859acbe251e.mp3	s3://podcast-output-bucket/91c4de22-69d8-44ad-a120-d859acbe251e/91c4de22-69d8-44ad-a120-d859acbe251e.mp3	91c4de22-69d8-44ad-a120-d859acbe251e.jpg	s3://podcast-input-bucket/91c4de22-69d8-44ad-a120-d859acbe251e/91c4de22-69d8-44ad-a120-d859acbe251e.jpg	Neo4j's mad scientist Michael Hunger on graphs, databases and relationships	\N	91c4de22-69d8-44ad-a120-d859acbe251e
199	2019-12-26 19:19:36	Hi, Spring fans! Welcome to another installment of "A Bootiful Podcast"! In this installment, Josh Long (@starbuxman) talks to Microsoft's Jialin Dai about the various Spring for Azure Spring Boot starters and auto-configuration! \n\nHappy holidays from the @BootifulPodcast team to you!	\N	2020-02-03 19:50:23.935	\N	https://starbuxman.podbean.com/mf/play/ynva9y/c102dbe9-5464-4e6b-9c36-b6e2001e76b4.mp3	https://mcdn.podbean.com/mf/web/cve6tq/c102dbe9-5464-4e6b-9c36-b6e2001e76b4.jpg	c102dbe9-5464-4e6b-9c36-b6e2001e76b4.mp3	s3://podcast-output-bucket/c102dbe9-5464-4e6b-9c36-b6e2001e76b4/c102dbe9-5464-4e6b-9c36-b6e2001e76b4.mp3	c102dbe9-5464-4e6b-9c36-b6e2001e76b4.jpg	s3://podcast-input-bucket/c102dbe9-5464-4e6b-9c36-b6e2001e76b4/c102dbe9-5464-4e6b-9c36-b6e2001e76b4.jpg	Microsoft's Jialin Dai on Spring for Azure	\N	c102dbe9-5464-4e6b-9c36-b6e2001e76b4
148	2019-09-06 02:17:19	Hi, Spring fans! In this installment, @starbuxman talks to Spring Integration lead Gary Russell about Apache Kafka, RabbitMQ, Spring Integration and more. \n\n* Gary on Twitter: https://twitter.com/gprussell?lang=en	\N	2020-02-03 19:24:07.224	\N	https://starbuxman.podbean.com/mf/play/564ccn/d65ae607-5298-4436-91a9-2b4976c96242.mp3	https://mcdn.podbean.com/mf/web/yzdadb/d65ae607-5298-4436-91a9-2b4976c96242.jpg	d65ae607-5298-4436-91a9-2b4976c96242.mp3	s3://podcast-output-bucket/d65ae607-5298-4436-91a9-2b4976c96242/d65ae607-5298-4436-91a9-2b4976c96242.mp3	d65ae607-5298-4436-91a9-2b4976c96242.jpg	s3://podcast-input-bucket/d65ae607-5298-4436-91a9-2b4976c96242/d65ae607-5298-4436-91a9-2b4976c96242.jpg	Spring Integration lead Gary Russell on Apache Kafka, RabbitMQ, Spring Integration and more	\N	d65ae607-5298-4436-91a9-2b4976c96242
151	2019-08-08 23:04:27	Hi Spring fans! In this week's installment, Josh Long (@starbuxman) talk to DevOps luminary, cloud-computing visionary, and all-around-great-guy John Willis (@botchagalupe). This a white-knuckle rollercoaster ride of knowledge, so buckle up and enjoy!	\N	2020-02-03 19:25:44.089	\N	https://starbuxman.podbean.com/mf/play/sgr9zg/70c3fa93-ffd1-458e-b2d3-4b9321a99f88.mp3	https://mcdn.podbean.com/mf/web/4ibta7/70c3fa93-ffd1-458e-b2d3-4b9321a99f88.jpg	70c3fa93-ffd1-458e-b2d3-4b9321a99f88.mp3	s3://podcast-output-bucket/70c3fa93-ffd1-458e-b2d3-4b9321a99f88/70c3fa93-ffd1-458e-b2d3-4b9321a99f88.mp3	70c3fa93-ffd1-458e-b2d3-4b9321a99f88.jpg	s3://podcast-input-bucket/70c3fa93-ffd1-458e-b2d3-4b9321a99f88/70c3fa93-ffd1-458e-b2d3-4b9321a99f88.jpg	Devops luminary and all around great guy John Willis	\N	70c3fa93-ffd1-458e-b2d3-4b9321a99f88
154	2019-02-14 21:16:21	It was a lot of fun to talk to Greg Turnquist, one of the more industrious and variously applied members of the Spring family, about how he found his way to the Spring team and community, Python, his new book, Spring team legends like Keith Donald and Brian Dussault, and so much more. \n\nhttp://twitter.com/GregTurn\nhttp://Spring.io/team/gturnquist	\N	2020-02-03 19:26:23.599	\N	https://starbuxman.podbean.com/mf/play/7756mg/8affbc01-89c8-4cdf-adc8-29daf4f78bec.mp3	https://mcdn.podbean.com/mf/web/nkj47c/8affbc01-89c8-4cdf-adc8-29daf4f78bec.jpg	8affbc01-89c8-4cdf-adc8-29daf4f78bec.mp3	s3://podcast-output-bucket/8affbc01-89c8-4cdf-adc8-29daf4f78bec/8affbc01-89c8-4cdf-adc8-29daf4f78bec.mp3	8affbc01-89c8-4cdf-adc8-29daf4f78bec.jpg	s3://podcast-input-bucket/8affbc01-89c8-4cdf-adc8-29daf4f78bec/8affbc01-89c8-4cdf-adc8-29daf4f78bec.jpg	Spring Contributor and "Learning Spring Boot 2.0" author Greg Turnquist	\N	8affbc01-89c8-4cdf-adc8-29daf4f78bec
196	2018-10-10 17:12:44	Today's interview is with Cornelia Davis, senior director of technology at Pivotal and author of Manning's upcoming, and epic, "Cloud Native." I first met Cornelia when she was working in the office of the CTO at EMC. She took the proverbial plunge and joined the then nascent cloud computing effort, Cloud Foundry, and has never looked back. Corenlia has, over the course of her 30+ years as an engineer, also become a champion for diversity and inclusion in computing.\n\nTwitter: http://twitter.com/cdavisafc\nRecorded: May 29, 2018\nNotes:\n- Her book is available here https://www.manning.com/books/cloud-native	\N	2020-02-03 19:49:43.475	\N	https://starbuxman.podbean.com/mf/play/4ire4d/07d32ead-cb0a-418f-bd0f-0d508ea86f54.mp3	https://mcdn.podbean.com/mf/web/2sqnjf/07d32ead-cb0a-418f-bd0f-0d508ea86f54.jpg	07d32ead-cb0a-418f-bd0f-0d508ea86f54.mp3	s3://podcast-output-bucket/07d32ead-cb0a-418f-bd0f-0d508ea86f54/07d32ead-cb0a-418f-bd0f-0d508ea86f54.mp3	07d32ead-cb0a-418f-bd0f-0d508ea86f54.jpg	s3://podcast-input-bucket/07d32ead-cb0a-418f-bd0f-0d508ea86f54/07d32ead-cb0a-418f-bd0f-0d508ea86f54.jpg	Pivotal's Senior Director of Technology Cornelia Davis	\N	07d32ead-cb0a-418f-bd0f-0d508ea86f54
229	2019-03-28 22:28:38	Hi Spring fans! In this week's installment of a Bootiful Podcast I, Josh Long, welcome Josh Mckenty - or "better Josh," as I affectionately call him - to the show to discuss Pivotal, Cloud Foundry, Python, microservices, and data sovereignty, among other things. \n\nJosh Mckenty on Twitter: http://twitter.com/jmckenty	\N	2020-02-03 19:57:17.898	\N	https://starbuxman.podbean.com/mf/play/9ww5u6/ac45826d-ffaa-414f-9895-9511b2f9a363.mp3	https://mcdn.podbean.com/mf/web/sejwj3/ac45826d-ffaa-414f-9895-9511b2f9a363.jpg	ac45826d-ffaa-414f-9895-9511b2f9a363.mp3	s3://podcast-output-bucket/ac45826d-ffaa-414f-9895-9511b2f9a363/ac45826d-ffaa-414f-9895-9511b2f9a363.mp3	ac45826d-ffaa-414f-9895-9511b2f9a363.jpg	s3://podcast-input-bucket/ac45826d-ffaa-414f-9895-9511b2f9a363/ac45826d-ffaa-414f-9895-9511b2f9a363.jpg	Josh Mckenty - "Better Josh" - on data sovereignty, Python, the cloud, Pivotal, and more	\N	ac45826d-ffaa-414f-9895-9511b2f9a363
268	2019-02-07 17:07:13	Hi Spring fans! In this installment I talk to Dror Weiss, CEO of Codota, a company that seeks to make smart code completion in your IDE even smarter.\n\nhttps://www.linkedin.com/in/drorwe\nhttps://www.codota.com/about	\N	2020-02-03 20:33:59.138	\N	https://starbuxman.podbean.com/mf/play/twcnmw/d99dcb7f-8aec-427b-8940-bc13eabcff67.mp3	https://mcdn.podbean.com/mf/web/fj9ssw/d99dcb7f-8aec-427b-8940-bc13eabcff67.jpg	d99dcb7f-8aec-427b-8940-bc13eabcff67.mp3	s3://podcast-output-bucket/d99dcb7f-8aec-427b-8940-bc13eabcff67/d99dcb7f-8aec-427b-8940-bc13eabcff67.mp3	d99dcb7f-8aec-427b-8940-bc13eabcff67.jpg	s3://podcast-input-bucket/d99dcb7f-8aec-427b-8940-bc13eabcff67/d99dcb7f-8aec-427b-8940-bc13eabcff67.jpg	Codota's Dror Weiss	\N	d99dcb7f-8aec-427b-8940-bc13eabcff67
97	2019-03-07 14:39:49	Hi Spring fans! In this extra-long installment I talk with longtime friends and fellow developer advocates, Okta's Matt Raible and Google's James Ward. We talked about Java, Kotlin, cloud computing technologies, security, Go, paradigm changes, web frameworks past and present, Macromedia, Scala, and a MILLION more things! This was a ton of fun for me so I'm hoping you'll enjoy it too. \n\nMatt on Twitter: http://twitter.com/mraible\nJames on Twitter: http://twitter.com/_jamesward	\N	2020-02-03 18:43:29.221	\N	https://starbuxman.podbean.com/mf/play/c5pwk7/61e314c4-763a-4746-abdd-39406c14f08c.mp3	https://mcdn.podbean.com/mf/web/h64vnr/61e314c4-763a-4746-abdd-39406c14f08c.jpg	61e314c4-763a-4746-abdd-39406c14f08c.mp3	s3://podcast-output-bucket/61e314c4-763a-4746-abdd-39406c14f08c/61e314c4-763a-4746-abdd-39406c14f08c.mp3	61e314c4-763a-4746-abdd-39406c14f08c.jpg	s3://podcast-input-bucket/61e314c4-763a-4746-abdd-39406c14f08c/61e314c4-763a-4746-abdd-39406c14f08c.jpg	Matt Raible and James Ward at Devnexus 2019	\N	61e314c4-763a-4746-abdd-39406c14f08c
103	2019-03-21 00:53:31	Hi Spring fans! In this week's installment Josh Long talks to AxonIQ's Steven van Beelen, lead of the Axon project, and Pivotal's Ben Wilcock, on CQRS, event-sourcing, event-storming, microservices, Spring Boot and the long camaraderie  shared by the Spring and Axon teams\n\nSteve van Beelen: https://twitter.com/smcvbeelen \nBen Wilcock: http://twitter.com/benbravo73\nAllard Buijze: http://twitter.com/allardbz\nAxonIQ: https://axoniq.io/	\N	2020-02-03 18:45:01.323	\N	https://starbuxman.podbean.com/mf/play/isat6m/47b9e94f-4314-4a52-8fb0-3c9ca317b48c.mp3	https://mcdn.podbean.com/mf/web/4c63g7/47b9e94f-4314-4a52-8fb0-3c9ca317b48c.jpg	47b9e94f-4314-4a52-8fb0-3c9ca317b48c.mp3	s3://podcast-output-bucket/47b9e94f-4314-4a52-8fb0-3c9ca317b48c/47b9e94f-4314-4a52-8fb0-3c9ca317b48c.mp3	47b9e94f-4314-4a52-8fb0-3c9ca317b48c.jpg	s3://podcast-input-bucket/47b9e94f-4314-4a52-8fb0-3c9ca317b48c/47b9e94f-4314-4a52-8fb0-3c9ca317b48c.jpg	CQRS with AxonIQ's Steven van Beelen and Pivotal's Ben Wilcock	\N	47b9e94f-4314-4a52-8fb0-3c9ca317b48c
100	2019-07-19 00:25:32	Hi Spring fans! Welcome to another installment of a Bootiful Podcast! In this week I'm joined by my old friend, Azul CTO, Gil Tene as we discuss Java, JVMs, garbage collection, and a ton more in this extra packed 90 minute-plus episode. \n\n* Gil on Twitter - http://twitter.com/GilTene\n* Azul Systems - https://www.azul.com/\n* Zing - https://www.azul.com/products/zing/	\N	2020-02-03 18:44:22.383	\N	https://starbuxman.podbean.com/mf/play/wz752a/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.mp3	https://mcdn.podbean.com/mf/web/st9m3a/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.jpg	484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.mp3	s3://podcast-output-bucket/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.mp3	484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.jpg	s3://podcast-input-bucket/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c/484c3fea-c15c-4a6c-b7d6-05def2b9ee7c.jpg	Azul CTO Gil Tene on JVMs, Garbage Collection, Performance and so much More	\N	484c3fea-c15c-4a6c-b7d6-05def2b9ee7c
106	2020-01-16 19:19:52	Hi, Spring fans! Int his week's installment Josh Long (@starbuxman) talks to Spring Cloud Services teammate Bella (Yuxin) Bai. \n\n* https://pivotal.io/platform/services-marketplace/microservices-management/spring-cloud-services	\N	2020-02-03 18:45:49.343	\N	https://starbuxman.podbean.com/mf/play/23pvqv/59f63044-5c25-40d9-8c9f-232083137be5.mp3	https://mcdn.podbean.com/mf/web/65tcrc/59f63044-5c25-40d9-8c9f-232083137be5.jpg	59f63044-5c25-40d9-8c9f-232083137be5.mp3	s3://podcast-output-bucket/59f63044-5c25-40d9-8c9f-232083137be5/59f63044-5c25-40d9-8c9f-232083137be5.mp3	59f63044-5c25-40d9-8c9f-232083137be5.jpg	s3://podcast-input-bucket/59f63044-5c25-40d9-8c9f-232083137be5/59f63044-5c25-40d9-8c9f-232083137be5.jpg	Spring Cloud Services teammate Bella (Yuxin) Bai	\N	59f63044-5c25-40d9-8c9f-232083137be5
133	2019-07-12 01:07:42	Hi Spring fans! Welcome to another installment of a Bootiful Podcast! This week Josh Long (@starbuxman) talks to "Mr. REST" Mike Amundsen (@mamund) to talk about APIs, Microservices, HTTP and much more! \n\n* http://twitter.com/mamund	\N	2020-02-03 19:11:25.421	\N	https://starbuxman.podbean.com/mf/play/5sixez/a92a98a8-3d87-48a0-9038-15036041ef02.mp3	https://mcdn.podbean.com/mf/web/im6hj5/a92a98a8-3d87-48a0-9038-15036041ef02.jpg	a92a98a8-3d87-48a0-9038-15036041ef02.mp3	s3://podcast-output-bucket/a92a98a8-3d87-48a0-9038-15036041ef02/a92a98a8-3d87-48a0-9038-15036041ef02.mp3	a92a98a8-3d87-48a0-9038-15036041ef02.jpg	s3://podcast-input-bucket/a92a98a8-3d87-48a0-9038-15036041ef02/a92a98a8-3d87-48a0-9038-15036041ef02.jpg	"Mr. REST" Mike Amundsen on APIs, Microservices, HTTP and more	\N	a92a98a8-3d87-48a0-9038-15036041ef02
115	2019-08-29 04:26:33	Hi Spring fans! In this week's episode I talk to Spring Cloud Data Flow legend Ilayaperumal Gopinathan ("Illaya") about his journey to open-source, batch processing and messaging, integration, and Spring Cloud Data Flow, and so much more. Enjoy!\n\n* Illaya on Twitter: ilayaperumalg\n* http://Dataflow.Spring.io	\N	2020-02-03 19:00:53.409	\N	https://starbuxman.podbean.com/mf/play/fscddc/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.mp3	https://mcdn.podbean.com/mf/web/um2vsa/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.jpg	edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.mp3	s3://podcast-output-bucket/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.mp3	edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.jpg	s3://podcast-input-bucket/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136/edeb6cb9-294c-41f6-8c4f-7f89e2ad9136.jpg	Spring Cloud Data Flow legend Ilayaperumal Gopinathan	\N	edeb6cb9-294c-41f6-8c4f-7f89e2ad9136
121	2019-06-21 00:19:07	Hi Spring fans! This week Josh Long (@starbuxman) speaks to @IBM's Pratik Patel (@prpatel) about function-as-a-service, Spring Cloud Function, Spring, @Java and @Devnexus	\N	2020-02-03 19:03:25.595	\N	https://starbuxman.podbean.com/mf/play/ng4e2s/b852db47-14eb-4188-bbfc-9a16f54c8996.mp3	https://mcdn.podbean.com/mf/web/sibdm3/b852db47-14eb-4188-bbfc-9a16f54c8996.jpg	b852db47-14eb-4188-bbfc-9a16f54c8996.mp3	s3://podcast-output-bucket/b852db47-14eb-4188-bbfc-9a16f54c8996/b852db47-14eb-4188-bbfc-9a16f54c8996.mp3	b852db47-14eb-4188-bbfc-9a16f54c8996.jpg	s3://podcast-input-bucket/b852db47-14eb-4188-bbfc-9a16f54c8996/b852db47-14eb-4188-bbfc-9a16f54c8996.jpg	IBM's Pratik Patel on function-as-a-service, Spring Cloud Function, Spring, Java and Devnexus	\N	b852db47-14eb-4188-bbfc-9a16f54c8996
142	2019-11-15 01:44:33	Hi, Spring fans! This week Josh Long (@starbuxman) talks to [RedHat / IBM's Sébastien Blanc (@sebi2706) about OAuth, KeyCloak, RivieraDev, the French Riviera, and more.\n\n* Sébastien on Twitter: http://twitter.com/Sebi2706\n* KeyCloak: https://www.keycloak.org/\n* Sébastien's legendary conference, RivieraDev: https://twitter.com/RivieraDEV	\N	2020-02-03 19:14:56.043	\N	https://starbuxman.podbean.com/mf/play/n7i7k2/1d189c9e-5679-4b8f-821d-1bad2a8cd501.mp3	https://mcdn.podbean.com/mf/web/weepre/1d189c9e-5679-4b8f-821d-1bad2a8cd501.jpg	1d189c9e-5679-4b8f-821d-1bad2a8cd501.mp3	s3://podcast-output-bucket/1d189c9e-5679-4b8f-821d-1bad2a8cd501/1d189c9e-5679-4b8f-821d-1bad2a8cd501.mp3	1d189c9e-5679-4b8f-821d-1bad2a8cd501.jpg	s3://podcast-input-bucket/1d189c9e-5679-4b8f-821d-1bad2a8cd501/1d189c9e-5679-4b8f-821d-1bad2a8cd501.jpg	RedHat / IBM's Sébastien Blanc on OAuth, KeyCloak, the French riviera, and more	\N	1d189c9e-5679-4b8f-821d-1bad2a8cd501
205	2019-04-18 17:00:04	Hi Spring fans! Welcome to another installment of a Bootiful Podcast. In this episode, recorded in lovely Johannesburg, South Africa for the SpringOne Tour event, I'm joined by my buddy and one of the original cloud natives, Matt Stine!\n\n\nMatt's twitter: http://twitter.com/mstine	\N	2020-02-03 19:51:55.175	\N	https://starbuxman.podbean.com/mf/play/98d9xn/155d863c-5dd5-4431-b0ae-300417d7805e.mp3	https://mcdn.podbean.com/mf/web/unmew7/155d863c-5dd5-4431-b0ae-300417d7805e.jpg	155d863c-5dd5-4431-b0ae-300417d7805e.mp3	s3://podcast-output-bucket/155d863c-5dd5-4431-b0ae-300417d7805e/155d863c-5dd5-4431-b0ae-300417d7805e.mp3	155d863c-5dd5-4431-b0ae-300417d7805e.jpg	s3://podcast-input-bucket/155d863c-5dd5-4431-b0ae-300417d7805e/155d863c-5dd5-4431-b0ae-300417d7805e.jpg	Pivotal Field CTO and OG Cloud Native Matt Stine on Architecture	\N	155d863c-5dd5-4431-b0ae-300417d7805e
208	2019-08-23 12:51:07	Hi Spring fans and welcome to another installment of a Bootiful Podcast! This week I had the pleasure of talking with Ryan Knight and with the two people with whom I am copresenting at SpringOne Platform 2019, James Ward and Matt Raible.\n\n* James Ward on Twitter: @_JamesWard \n* Matt Raible on Twitter: @mraible \n* Ryan Knight on Twitter: @knight_cloud	\N	2020-02-03 19:52:45.298	\N	https://starbuxman.podbean.com/mf/play/q763rq/df2f53a6-0d32-4302-9d1b-0e49622f2e8e.mp3	https://mcdn.podbean.com/mf/web/wryxum/df2f53a6-0d32-4302-9d1b-0e49622f2e8e.jpg	df2f53a6-0d32-4302-9d1b-0e49622f2e8e.mp3	s3://podcast-output-bucket/df2f53a6-0d32-4302-9d1b-0e49622f2e8e/df2f53a6-0d32-4302-9d1b-0e49622f2e8e.mp3	df2f53a6-0d32-4302-9d1b-0e49622f2e8e.jpg	s3://podcast-input-bucket/df2f53a6-0d32-4302-9d1b-0e49622f2e8e/df2f53a6-0d32-4302-9d1b-0e49622f2e8e.jpg	James Ward, Matt Raible, and Ryan Knight	\N	df2f53a6-0d32-4302-9d1b-0e49622f2e8e
214	2019-05-16 21:47:05	HI Spring fans! In this installment Josh Long (@starbuxman) talks to Nicolas Frankel (@nicolas_frankel) about integration testing, blogging, Kotlin, application security, living on the French/Swiss border, blogging consistently, and much more. It's an interview with one of my favorite voices in the community.\n\nNicolas on Twitter: http://twitter.com/nicolas_frankel\nNicolas' epic blog: https://blog.frankel.ch/	\N	2020-02-03 19:54:28.472	\N	https://starbuxman.podbean.com/mf/play/c62afp/974acc14-5396-4122-8f07-765352c7e558.mp3	https://mcdn.podbean.com/mf/web/ytv8sf/974acc14-5396-4122-8f07-765352c7e558.jpg	974acc14-5396-4122-8f07-765352c7e558.mp3	s3://podcast-output-bucket/974acc14-5396-4122-8f07-765352c7e558/974acc14-5396-4122-8f07-765352c7e558.mp3	974acc14-5396-4122-8f07-765352c7e558.jpg	s3://podcast-input-bucket/974acc14-5396-4122-8f07-765352c7e558/974acc14-5396-4122-8f07-765352c7e558.jpg	Nicolas Frankel on application security, integration testing, Kotlin and more	\N	974acc14-5396-4122-8f07-765352c7e558
211	2020-01-30 14:50:45	Hi, Spring fans! In this episode, Josh Long (@starbuxman) talks to "The Phoenix Project" and "The Unicorn Project" author Gene Kim (@RealGeneKim) about DevOps, his experience of the industry, IT organizations and a MILLION TRILLION other things. I'd listen to this one first!	\N	2020-02-03 19:53:31.853	\N	https://starbuxman.podbean.com/mf/play/nuchw2/4bf03a77-495d-4e58-9ef1-c4583b400681.mp3	https://mcdn.podbean.com/mf/web/w4k9cy/4bf03a77-495d-4e58-9ef1-c4583b400681.jpg	4bf03a77-495d-4e58-9ef1-c4583b400681.mp3	s3://podcast-output-bucket/4bf03a77-495d-4e58-9ef1-c4583b400681/4bf03a77-495d-4e58-9ef1-c4583b400681.mp3	4bf03a77-495d-4e58-9ef1-c4583b400681.jpg	s3://podcast-input-bucket/4bf03a77-495d-4e58-9ef1-c4583b400681/4bf03a77-495d-4e58-9ef1-c4583b400681.jpg	"The Phoenix Project" author Gene Kim	\N	4bf03a77-495d-4e58-9ef1-c4583b400681
181	2019-03-14 16:00:18	Hi Spring fans! Welcome to another installment of a Bootiful Podcast! This week @starbuxman talks to Joe Grandja who, not coincidentally, just celebrated his third anniversary working on the Spring team!  Joe has been instrumental in building Spring Security 5.x and its OAuth client and resource-server support. \n\nJoe's team page: https://spring.io/team/pivotal-joe-grandja \nJoe on Twitter: https://twitter.com/joe_grandja	\N	2020-02-03 19:46:41.518	\N	https://starbuxman.podbean.com/mf/play/fcp7xu/13d87c27-cba4-46b4-b978-9b472353992c.mp3	https://mcdn.podbean.com/mf/web/6c5rzf/13d87c27-cba4-46b4-b978-9b472353992c.jpg	13d87c27-cba4-46b4-b978-9b472353992c.mp3	s3://podcast-output-bucket/13d87c27-cba4-46b4-b978-9b472353992c/13d87c27-cba4-46b4-b978-9b472353992c.mp3	13d87c27-cba4-46b4-b978-9b472353992c.jpg	s3://podcast-input-bucket/13d87c27-cba4-46b4-b978-9b472353992c/13d87c27-cba4-46b4-b978-9b472353992c.jpg	Joe Grandja on Spring Security 5's OAuth Support	\N	13d87c27-cba4-46b4-b978-9b472353992c
187	2019-01-16 23:26:22	In this episode I talk to my friend and Google Cloud Developer Advocate Ray Tsang on his Twitter handle, technology (Kubernetes, Spring), the Pivotal and Google collaborations, our collaborations, Spring Cloud, Taiwan, Southern California and NYC, and a ton more. \n\nRay Tsang\nhttp://twitter.com/Saturnism	\N	2020-02-03 19:48:16.548	\N	https://starbuxman.podbean.com/mf/play/agyvsg/15a96291-9267-476d-b743-60d1cab2f6c6.mp3	https://mcdn.podbean.com/mf/web/c5xczf/15a96291-9267-476d-b743-60d1cab2f6c6.jpg	15a96291-9267-476d-b743-60d1cab2f6c6.mp3	s3://podcast-output-bucket/15a96291-9267-476d-b743-60d1cab2f6c6/15a96291-9267-476d-b743-60d1cab2f6c6.mp3	15a96291-9267-476d-b743-60d1cab2f6c6.jpg	s3://podcast-input-bucket/15a96291-9267-476d-b743-60d1cab2f6c6/15a96291-9267-476d-b743-60d1cab2f6c6.jpg	Google Developer Advocate Ray Tsang	\N	15a96291-9267-476d-b743-60d1cab2f6c6
235	2019-11-21 23:12:22	Hi, Spring fans! In this installment, Josh Long talks to Spring Security engineer Ria Stein. Ria is a new, but impactful, engineer on the Spring Security team working on things like Josh's beloved lambda DSL.\n\n* Eleftheria Stein-Kousathana's page on the Spring team roster: https://spring.io/team/eleftherias	\N	2020-02-03 19:59:50.731	\N	https://starbuxman.podbean.com/mf/play/g6bg4x/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.mp3	https://mcdn.podbean.com/mf/web/cped4h/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.jpg	a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.mp3	s3://podcast-output-bucket/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.mp3	a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.jpg	s3://podcast-input-bucket/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5/a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5.jpg	Spring Security engineer Ria Stein	\N	a9c1eb1a-8efd-4bae-97b1-7b24c4cf9ca5
232	2019-11-28 22:59:22	Hi, Spring fans! In today's episode Josh Long (@starbuxman) talks to Spring Tools lead Martin Lippert (@martinlippert) about his time at Pivotal, and on the Spring team, his work on Spring Tools, and his work on language servers that now serve as the foundational integration for Spring users using Microsoft's Visual Studio Code, emacs and Atom, among other things.\n\nThanks, dear listener, and Happy Thanksgiving!\n\n* Spring Tools http://spring.io/tools\n* Martin Lippert's profile page http://spring.io/team/mlippert\n* the Wikipedia description for Thanksgiving https://en.wikipedia.org/wiki/Thanksgiving	\N	2020-02-03 19:58:32.278	\N	https://starbuxman.podbean.com/mf/play/kg24mc/2b956f1a-9407-4556-a19d-03a0ec68c076.mp3	https://mcdn.podbean.com/mf/web/27tfry/2b956f1a-9407-4556-a19d-03a0ec68c076.jpg	2b956f1a-9407-4556-a19d-03a0ec68c076.mp3	s3://podcast-output-bucket/2b956f1a-9407-4556-a19d-03a0ec68c076/2b956f1a-9407-4556-a19d-03a0ec68c076.mp3	2b956f1a-9407-4556-a19d-03a0ec68c076.jpg	s3://podcast-input-bucket/2b956f1a-9407-4556-a19d-03a0ec68c076/2b956f1a-9407-4556-a19d-03a0ec68c076.jpg	Spring Tools lead Martin Lippert	\N	2b956f1a-9407-4556-a19d-03a0ec68c076
238	2019-07-26 00:00:03	Hi, Spring fans! In this installment, Josh Long (@starbuxman) talks to former Spring Data lead, creator of Spring HATEOAS, vocal hypermedia advocate and musician Oliver Drotbohm (@odrotbohm) on Spring Data, HATEOAS, Hypermedia, and more.\n\n* Oliver on Twitter: @odrotbohm	\N	2020-02-03 20:01:05.978	\N	https://starbuxman.podbean.com/mf/play/ta628e/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.mp3	https://mcdn.podbean.com/mf/web/fjapmy/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.jpg	f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.mp3	s3://podcast-output-bucket/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.mp3	f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.jpg	s3://podcast-input-bucket/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b/f96eaaa5-3beb-4bc4-b21b-2d70980ff96b.jpg	Spring team legend Oliver Drotbohm on Spring Data, HATEOAS, Hypermedia, and more	\N	f96eaaa5-3beb-4bc4-b21b-2d70980ff96b
157	2020-01-03 00:21:35	Hi, Spring fans! In this episode, Josh Long (@starbuxman) talks to the one, the only, the inimitable, the amazing, my hero, the good Dr. Dave Syer (@david_syer), Spring Framework committer, former Spring Batch lead, former Spring Security OAuth lead, co-founder of both Spring Boot and Spring Cloud, etc. Statistically, if you're using Spring today, you're probably using code he wrote. \n\n* Dave on Github: https://github.com/dsyer \n* Dave on Twitter: http://twitter.com/david_syer	\N	2020-02-03 19:34:36.519	\N	https://starbuxman.podbean.com/mf/play/dhv5cq/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.mp3	https://mcdn.podbean.com/mf/web/76k85c/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.jpg	3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.mp3	s3://podcast-output-bucket/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.mp3	3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.jpg	s3://podcast-input-bucket/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a/3d0c5700-8e81-4220-a9b2-9ebc7a29b88a.jpg	The Good Dr. Dave Syer	\N	3d0c5700-8e81-4220-a9b2-9ebc7a29b88a
241	2019-09-26 23:29:37	Hi Spring fans! In this installment, Josh Long (@starbuxman) talks to  fellow Java Champion, industry legend, New Delhi JUG leader, author of several books on Java and Java certification, teacher, and @Jetbrains Developer Advocate Mala Gupta (@eMalaGupta) about @Java, learning new features in Java, and more.	\N	2020-02-03 20:02:12.148	\N	https://starbuxman.podbean.com/mf/play/d3hz37/7d5cb1e4-1c74-4474-b80c-329ad504e5cd.mp3	https://mcdn.podbean.com/mf/web/wj7ftw/7d5cb1e4-1c74-4474-b80c-329ad504e5cd.jpg	7d5cb1e4-1c74-4474-b80c-329ad504e5cd.mp3	s3://podcast-output-bucket/7d5cb1e4-1c74-4474-b80c-329ad504e5cd/7d5cb1e4-1c74-4474-b80c-329ad504e5cd.mp3	7d5cb1e4-1c74-4474-b80c-329ad504e5cd.jpg	s3://podcast-input-bucket/7d5cb1e4-1c74-4474-b80c-329ad504e5cd/7d5cb1e4-1c74-4474-b80c-329ad504e5cd.jpg	Java Champion and Jetbrains Developer Advocate Mala Gupta	\N	7d5cb1e4-1c74-4474-b80c-329ad504e5cd
220	2019-05-03 02:54:04	Hi Spring fans! In this installment Josh Long talks to Spring Cloud engineeer Olga Maciaszek-Sharma about joining the Sping team, testing, consumer driven contracts and consumer driven contract testing, and so much more. \n\nOlga's Twitter: http://twitter.com/olga_maciaszek	\N	2020-02-03 19:55:44.231	\N	https://starbuxman.podbean.com/mf/play/5z8fk3/91847c03-82f4-4575-8801-8a7c74976313.mp3	https://mcdn.podbean.com/mf/web/ecew65/91847c03-82f4-4575-8801-8a7c74976313.jpg	91847c03-82f4-4575-8801-8a7c74976313.mp3	s3://podcast-output-bucket/91847c03-82f4-4575-8801-8a7c74976313/91847c03-82f4-4575-8801-8a7c74976313.mp3	91847c03-82f4-4575-8801-8a7c74976313.jpg	s3://podcast-input-bucket/91847c03-82f4-4575-8801-8a7c74976313/91847c03-82f4-4575-8801-8a7c74976313.jpg	Spring Cloud Engineer Olga Maciaszek-Sharma	\N	91847c03-82f4-4575-8801-8a7c74976313
223	2019-12-20 03:37:04	Hi, Spring fans! In this episode, I talk to Reactor teammate Simon Baslé about Nantes, France; DevFest Nantes;  Project Reactor operators, and so much more.\n\n* Simon Baslé on Twitter: http://twitter.com/SimonBasle\n* Project Reactor: http://ProjectReactor.io	\N	2020-02-03 19:56:47.329	\N	https://starbuxman.podbean.com/mf/play/3sm4ks/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.mp3	https://mcdn.podbean.com/mf/web/7r4mxp/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.jpg	c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.mp3	s3://podcast-output-bucket/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.mp3	c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.jpg	s3://podcast-input-bucket/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd/c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd.jpg	Reactor team Simon Baslé	\N	c19fc45e-16b4-4d7f-b87c-8d5e23ac7cfd
169	2019-04-04 03:07:19	Hi Spring fans! In this week's episode Josh talks to Microsoft's Kylie Liang and Theresa Nguyen about the Microsoft Java and Spring integrations, the Java ecosystem, open-source, and more. \n\nKylie (the right most person in the photo) on Twitter: https://twitter.com/liangkylie\n\nTheresa (the left most person in the photo) on Twitter: http://twitter.com/RockClimberT\n\nJosh on Twitter: http://twitter.com/starbuxman\n\nThe "Spring Tips" screencast introducing the Spring and Microsoft Azure integration: https://www.youtube.com/watch?v=jRgZe7kWDnU	\N	2020-02-03 19:36:58.824	\N	https://starbuxman.podbean.com/mf/play/zg32r4/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.mp3	https://mcdn.podbean.com/mf/web/zfrhcq/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.jpg	05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.mp3	s3://podcast-output-bucket/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.mp3	05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.jpg	s3://podcast-input-bucket/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d/05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d.jpg	Kylie Liang and Theresa Nguyen on Microsoft's Java and Spring integrations	\N	05b4ae01-52ce-4e19-a3d3-0bdf286f7b3d
244	2019-02-21 16:31:36	Hi Spring fans! This week I'm excited to welcome Sreee Tummidi, a senior product manager working at the intersection of application security and platform at Pivotal. We talked about security, Spring Security OAuth, OAuth, OIDC and OIDC Connect, SAML, and of course the Cloud Foundry UAA, and tons more.\n\nhttp://twitter.com/sreetummidi \nhttps://github.com/cloudfoundry/uaa	\N	2020-02-03 20:02:39.49	\N	https://starbuxman.podbean.com/mf/play/vrhaar/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.mp3	https://mcdn.podbean.com/mf/web/88c4ci/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.jpg	bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.mp3	s3://podcast-output-bucket/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.mp3	bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.jpg	s3://podcast-input-bucket/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875/bbbbfbc4-fe9b-4f0c-ab4f-10279d739875.jpg	Pivotal Application Platform Security Senior Manager Sree Tummidi	\N	bbbbfbc4-fe9b-4f0c-ab4f-10279d739875
247	2019-04-25 17:51:46	Hi Spring fans! In this episode we talk to Spring Batch and Spring Cloud Task lead Michael Minella about all things task and batch processing with Spring, South Africa, and so much more. \n\nMichael Minella on Twitter: http://twitter.com/michaelminella	\N	2020-02-03 20:03:19.222	\N	https://starbuxman.podbean.com/mf/play/8j3b4f/564af652-f099-4d4d-9930-85c725567dea.mp3	https://mcdn.podbean.com/mf/web/ehfqg7/564af652-f099-4d4d-9930-85c725567dea.jpg	564af652-f099-4d4d-9930-85c725567dea.mp3	s3://podcast-output-bucket/564af652-f099-4d4d-9930-85c725567dea/564af652-f099-4d4d-9930-85c725567dea.mp3	564af652-f099-4d4d-9930-85c725567dea.jpg	s3://podcast-input-bucket/564af652-f099-4d4d-9930-85c725567dea/564af652-f099-4d4d-9930-85c725567dea.jpg	Spring Batch and Spring Cloud Task lead Michael Minella	\N	564af652-f099-4d4d-9930-85c725567dea
250	2020-01-09 22:50:10	Hi, Spring fans! In this installment, Josh Long (@starbuxman) talks to Pivotal Labs Sydney director David Julia (@DavidJulia) about applied agile, testing strategy, architecture and more.	\N	2020-02-03 20:04:09.524	\N	https://starbuxman.podbean.com/mf/play/d3febh/b7a9786d-fdef-419a-8da7-5475a90b4631.mp3	https://mcdn.podbean.com/mf/web/j3758t/b7a9786d-fdef-419a-8da7-5475a90b4631.jpg	b7a9786d-fdef-419a-8da7-5475a90b4631.mp3	s3://podcast-output-bucket/b7a9786d-fdef-419a-8da7-5475a90b4631/b7a9786d-fdef-419a-8da7-5475a90b4631.mp3	b7a9786d-fdef-419a-8da7-5475a90b4631.jpg	s3://podcast-input-bucket/b7a9786d-fdef-419a-8da7-5475a90b4631/b7a9786d-fdef-419a-8da7-5475a90b4631.jpg	Pivotal Labs Sydney director David Julia	\N	b7a9786d-fdef-419a-8da7-5475a90b4631
253	2019-06-06 19:57:58	Hi Spring fans! In this installment Josh interviews Spring Cloud lead Spencer Gibb about open-source, Brazil, microservices, Spring, his journey to the Spring team, and more. \n\nTwitter:   http://Twittter.com/SpencerBGibb	\N	2020-02-03 20:05:20.669	\N	https://starbuxman.podbean.com/mf/play/v6tnq7/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.mp3	https://mcdn.podbean.com/mf/web/z7fjfy/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.jpg	9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.mp3	s3://podcast-output-bucket/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.mp3	9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.jpg	s3://podcast-input-bucket/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb/9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb.jpg	Spring Cloud lead Spencer Gibb	\N	9d421c4d-bf5b-4ed4-96cf-b8e1413f7dfb
256	2019-06-13 18:24:08	Hi Spring fans! In this installment Josh Long (@starbuxman) talks to Pivotal SVP Ian Andrews about Pivotal, Cloud Foundry, why he hasn't fired me yet, exciting new product announcements, frequent flyers, and more. \n\nIan on Twitter: http://twitter.com/IanAndrewsDC	\N	2020-02-03 20:06:45.56	\N	https://starbuxman.podbean.com/mf/play/gfv28r/b6aaf914-7ea8-4292-a79c-e5587e9407da.mp3	https://mcdn.podbean.com/mf/web/utw8yr/b6aaf914-7ea8-4292-a79c-e5587e9407da.jpg	b6aaf914-7ea8-4292-a79c-e5587e9407da.mp3	s3://podcast-output-bucket/b6aaf914-7ea8-4292-a79c-e5587e9407da/b6aaf914-7ea8-4292-a79c-e5587e9407da.mp3	b6aaf914-7ea8-4292-a79c-e5587e9407da.jpg	s3://podcast-input-bucket/b6aaf914-7ea8-4292-a79c-e5587e9407da/b6aaf914-7ea8-4292-a79c-e5587e9407da.jpg	Pivotal SVP Ian Andrews on our customers, new announcements, Kubernetes, and more	\N	b6aaf914-7ea8-4292-a79c-e5587e9407da
262	2019-10-24 12:52:43	Hi, Spring fans! In this installment, Josh Long (@starbuxman) talks to Apache Tomcat, Netty and Spring Framework contributor Violeta Georgieva (@violeta_g_g).\n\n* Violeta on [Twitter (@violeta_g_g): http://twitter.com/violeta_g_g \n* Violeta and Spencer Gibb at SpringOne Platform 2019:  https://springoneplatform.io/2017/speakers/violeta-georgieva\n* Benefits of Reactive Programming with Reactor and Spring Boot 2:  https://content.pivotal.io/slides/benefits-of-reactive-programming-with-reactor-and-spring-boot-2-violeta-georgieva\n* Project Reactor: http://projectReactor.io	\N	2020-02-03 20:07:39.425	\N	https://starbuxman.podbean.com/mf/play/hgpyi8/aa3da822-e1c0-4e22-b794-a54c249e2319.mp3	https://mcdn.podbean.com/mf/web/ssjge2/aa3da822-e1c0-4e22-b794-a54c249e2319.jpg	aa3da822-e1c0-4e22-b794-a54c249e2319.mp3	s3://podcast-output-bucket/aa3da822-e1c0-4e22-b794-a54c249e2319/aa3da822-e1c0-4e22-b794-a54c249e2319.mp3	aa3da822-e1c0-4e22-b794-a54c249e2319.jpg	s3://podcast-input-bucket/aa3da822-e1c0-4e22-b794-a54c249e2319/aa3da822-e1c0-4e22-b794-a54c249e2319.jpg	Apache Tomcat, Netty and Spring Framework contributor Violeta Georgieva	\N	aa3da822-e1c0-4e22-b794-a54c249e2319
184	2019-08-15 21:17:23	Hi, Spring fans! In this installment, Josh Long (@starbuxman) talks to Spring Boot and Spring Framework engineer Brian Clozel (@bclozel) about all the new features - RSocket support, performance improvements and more -  in Spring Framework 5.2 and Spring Boot 2.2.\n\n* Brian on Twitter: @bclozel \n* Spring Boot on Twitter: @SpringBoot \n* the place to get started with all things Spring: start.Spring.io	\N	2020-02-03 19:47:41.935	\N	https://starbuxman.podbean.com/mf/play/zvy7bq/e9d5a15b-fabf-4d7b-8852-907d2d313307.mp3	https://mcdn.podbean.com/mf/web/7b79aq/e9d5a15b-fabf-4d7b-8852-907d2d313307.jpg	e9d5a15b-fabf-4d7b-8852-907d2d313307.mp3	s3://podcast-output-bucket/e9d5a15b-fabf-4d7b-8852-907d2d313307/e9d5a15b-fabf-4d7b-8852-907d2d313307.mp3	e9d5a15b-fabf-4d7b-8852-907d2d313307.jpg	s3://podcast-input-bucket/e9d5a15b-fabf-4d7b-8852-907d2d313307/e9d5a15b-fabf-4d7b-8852-907d2d313307.jpg	Spring teammate Brian Clozel on new features in Spring 5.2 and Spring Boot 2.2	\N	e9d5a15b-fabf-4d7b-8852-907d2d313307
190	2019-05-09 08:52:53	Hi Spring fans! In today's installment Josh Long (@starbuxman) sits down with Jetbrain's Roman Elizarov (@relizarov). Roman works on the Kotlin team and, among other things, focuses on asynchronous programming with things like coroutines. This interview was a very detailed dive into the opportunities for asynchronous programming for Spring developers using Kotlin, especially in light of the new coroutine support coming in Spring Framework 5.2.  \n\nTwitter: Roman Elizarov (@relizarov)\nA great blog by Sebastien Deleuze on our new support: https://spring.io/blog/2019/04/12/going-reactive-with-spring-coroutines-and-kotlin-flow	\N	2020-02-03 19:49:17.374	\N	https://starbuxman.podbean.com/mf/play/52kzvs/71ba05ed-7a4a-44b3-b20f-028a35185484.mp3	https://mcdn.podbean.com/mf/web/q6eeu2/71ba05ed-7a4a-44b3-b20f-028a35185484.jpg	71ba05ed-7a4a-44b3-b20f-028a35185484.mp3	s3://podcast-output-bucket/71ba05ed-7a4a-44b3-b20f-028a35185484/71ba05ed-7a4a-44b3-b20f-028a35185484.mp3	71ba05ed-7a4a-44b3-b20f-028a35185484.jpg	s3://podcast-input-bucket/71ba05ed-7a4a-44b3-b20f-028a35185484/71ba05ed-7a4a-44b3-b20f-028a35185484.jpg	Kotlin team engineer Roman Elisarov	\N	71ba05ed-7a4a-44b3-b20f-028a35185484
202	2019-01-25 01:07:56	In this installment of the pod we talk to Madhura Bhave, an engineer on the Spring Boot team who has improved the project in big ways - working on things like security, actuator, OAuth and more - since she moved from her epic run on the Cloud Foundry and UAA teams. We recorded this interview in August of 2018. \n\nTwitter: http://twitter.com/madhurabhave23\nTwitter: http://twitter.com/SpringBoot	\N	2020-02-03 19:51:04.602	\N	https://starbuxman.podbean.com/mf/play/wbsnjb/31e0f731-398d-43d9-bacb-f2c7b578c1f7.mp3	https://mcdn.podbean.com/mf/web/n9paux/31e0f731-398d-43d9-bacb-f2c7b578c1f7.jpg	31e0f731-398d-43d9-bacb-f2c7b578c1f7.mp3	s3://podcast-output-bucket/31e0f731-398d-43d9-bacb-f2c7b578c1f7/31e0f731-398d-43d9-bacb-f2c7b578c1f7.mp3	31e0f731-398d-43d9-bacb-f2c7b578c1f7.jpg	s3://podcast-input-bucket/31e0f731-398d-43d9-bacb-f2c7b578c1f7/31e0f731-398d-43d9-bacb-f2c7b578c1f7.jpg	Spring Boot engineer Madhura Bhave	\N	31e0f731-398d-43d9-bacb-f2c7b578c1f7
217	2019-02-28 03:58:03	Hi Spring fans! This week I'm excited to sit down and talk with mr. Reactive himself, Reactor project lead Stéphane Maldini. In this interview we talk about the history of the reactive programming for Spring, the Reactor project's evolution over time, from then to now and looking forward.\n\nhttps://projectreactor.io/\nhttp://twitter.com/smaldini	\N	2020-02-03 19:55:06.971	\N	https://starbuxman.podbean.com/mf/play/k459cd/863c6399-c65d-4a60-ba24-327ac3db4c44.mp3	https://mcdn.podbean.com/mf/web/ssu4mn/863c6399-c65d-4a60-ba24-327ac3db4c44.jpg	863c6399-c65d-4a60-ba24-327ac3db4c44.mp3	s3://podcast-output-bucket/863c6399-c65d-4a60-ba24-327ac3db4c44/863c6399-c65d-4a60-ba24-327ac3db4c44.mp3	863c6399-c65d-4a60-ba24-327ac3db4c44.jpg	s3://podcast-input-bucket/863c6399-c65d-4a60-ba24-327ac3db4c44/863c6399-c65d-4a60-ba24-327ac3db4c44.jpg	Reactor project lead Stéphane Maldini	\N	863c6399-c65d-4a60-ba24-327ac3db4c44
265	2019-01-31 18:21:03	In this installment we talk to Oleg Zhurakousky, lead of the Spring Cloud Stream project, an application integration and messaging wonk, and a prolific contributor to Spring Integration. Oleg also has the dubious honor of being one of my oldest friends on the Spring team - poor guy! \n\nTwitter: twitter.com/z_oleg\nTwitter: twitter.com/SpringCloud	\N	2020-02-03 20:08:05.946	\N	https://starbuxman.podbean.com/mf/play/7tqmjx/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.mp3	https://mcdn.podbean.com/mf/web/ae6eph/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.jpg	520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.mp3	s3://podcast-output-bucket/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.mp3	520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.jpg	s3://podcast-input-bucket/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0/520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0.jpg	Spring Cloud Stream lead Oleg Zhurakousky	\N	520f6c5d-25f1-4d59-8ad3-3d02c63e0bd0
271	2019-10-10 18:54:41	Hi, Spring fans! In this SpringOne Platform 2019 episode, Josh Long (@starbuxman) interviews Spring mad scientist Andy Clement (@ andy_clement) on AspectJ, SpEL, Eclipse, the new Graal native image feature, being an Iron-Man triathlete, and more. \n\n* Andy Clement on Twitter: http://twitter.com/andy_clement \n* the Spring Expression Language: https://github.com/spring-projects/spring-framework/tree/master/spring-expression\n* AspectJ: https://en.wikipedia.org/wiki/AspectJ\n* the Graal native image feature: https://github.com/spring-projects-experimental/spring-graal-native	\N	2020-02-03 20:35:09.526	\N	https://starbuxman.podbean.com/mf/play/8kef5n/f40131bf-1501-4e3d-9ff3-6324f206e26d.mp3	https://mcdn.podbean.com/mf/web/8bthb4/f40131bf-1501-4e3d-9ff3-6324f206e26d.jpg	f40131bf-1501-4e3d-9ff3-6324f206e26d.mp3	s3://podcast-output-bucket/f40131bf-1501-4e3d-9ff3-6324f206e26d/f40131bf-1501-4e3d-9ff3-6324f206e26d.mp3	f40131bf-1501-4e3d-9ff3-6324f206e26d.jpg	s3://podcast-input-bucket/f40131bf-1501-4e3d-9ff3-6324f206e26d/f40131bf-1501-4e3d-9ff3-6324f206e26d.jpg	Spring mad scientist Andy Clement on AspectJ, SpEL, Eclipse, Graal and more	\N	f40131bf-1501-4e3d-9ff3-6324f206e26d
274	2019-12-05 15:27:47	Hi, Spring fans! This week Josh Long (@starbuxman) talks to Pivotal's Katrina Bakas about the Pivotal HealthWatch product, Kubernetes, Cloud Foundry and so much more.\n\n* Katrina's Medium blog https://medium.com/@kvbakas	\N	2020-02-03 20:36:01.366	\N	https://starbuxman.podbean.com/mf/play/v5j5ej/2545ebeb-6949-4bdb-9f07-12e8463b7f58.mp3	https://mcdn.podbean.com/mf/web/srgm37/2545ebeb-6949-4bdb-9f07-12e8463b7f58.jpg	2545ebeb-6949-4bdb-9f07-12e8463b7f58.mp3	s3://podcast-output-bucket/2545ebeb-6949-4bdb-9f07-12e8463b7f58/2545ebeb-6949-4bdb-9f07-12e8463b7f58.mp3	2545ebeb-6949-4bdb-9f07-12e8463b7f58.jpg	s3://podcast-input-bucket/2545ebeb-6949-4bdb-9f07-12e8463b7f58/2545ebeb-6949-4bdb-9f07-12e8463b7f58.jpg	Pivotal's Katrina Bakas on Pivotal Healthwatch, Kubernetes, Cloud Foundry and more	\N	2545ebeb-6949-4bdb-9f07-12e8463b7f58
277	2019-09-19 10:01:52	Hi Spring fans! In this installment, Josh Long (@starbuxman) talks to Manning's The Java Module System author Nicolai Parlog (@nipafx) about Java modularity. \n\n* Nicolai Parlog on Twitter: @nipfax \n* NIcolai's new book: https://www.manning.com/books/the-java-module-system	\N	2020-02-03 20:38:03.302	\N	https://starbuxman.podbean.com/mf/play/hudax7/5734a058-2bc9-4930-acc4-61bb730edf40.mp3	https://mcdn.podbean.com/mf/web/wjy3p6/5734a058-2bc9-4930-acc4-61bb730edf40.jpg	5734a058-2bc9-4930-acc4-61bb730edf40.mp3	s3://podcast-output-bucket/5734a058-2bc9-4930-acc4-61bb730edf40/5734a058-2bc9-4930-acc4-61bb730edf40.mp3	5734a058-2bc9-4930-acc4-61bb730edf40.jpg	s3://podcast-input-bucket/5734a058-2bc9-4930-acc4-61bb730edf40/5734a058-2bc9-4930-acc4-61bb730edf40.jpg	Nicolai Parlog on Java modularity	\N	5734a058-2bc9-4930-acc4-61bb730edf40
280	2019-12-12 23:00:41	Hi, Spring fans. I really wanted to publish an episode this week. But my father, Clark "Bud" Long, passed away yesterday, Wednesday, December 11th, 2019, at 5:45 pm / 17:45. \n\nI'm having a hard time mustering the usual joy I feel when I publish this podcast. So, I will publish another interview next week. I've got more than a dozen already record and ready for the publishing. But this week, I want to talk, if not bawl my eyes out, a little about my dad. \n\nThanks for indulging me.	\N	2020-02-03 20:38:08.01	\N	https://starbuxman.podbean.com/mf/play/yrgced/4677643c-a921-4fef-a30f-64c813d7e8ca.mp3	https://mcdn.podbean.com/mf/web/43dztt/4677643c-a921-4fef-a30f-64c813d7e8ca.jpg	4677643c-a921-4fef-a30f-64c813d7e8ca.mp3	s3://podcast-output-bucket/4677643c-a921-4fef-a30f-64c813d7e8ca/4677643c-a921-4fef-a30f-64c813d7e8ca.mp3	4677643c-a921-4fef-a30f-64c813d7e8ca.jpg	s3://podcast-input-bucket/4677643c-a921-4fef-a30f-64c813d7e8ca/4677643c-a921-4fef-a30f-64c813d7e8ca.jpg	I need to talk about my father, Clark "Bud" Long, who just passed away	\N	4677643c-a921-4fef-a30f-64c813d7e8ca
283	2020-02-07 06:50:18.87	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/Starbuxman) talks to [Oleg Šelajev  (@shelajev)](http://twitter.com/shelajev) about ZeroTurnaround, GraalVM, the vJUG and so much more. \n\n * [The GraalVM project](https://www.graalvm.org/)\n * [The Virtual JUG](http://virtualjug.org)\n * [The vJUG slack](https://virtualjug.slack.com/join/shared_invite/enQtNDg5ODYwOTY0ODA0LTY1YjQyNzA5MTI3YjkyY2JjMGY1Yjg4NWMxZGZlNzhkMThkMTQwYzJmMGE4YzJhZjE0NjU3NjFhM2Q2Njk0MWU)\n * [Oleg Šelajev on Twitter](http://twitter.com/shelajev)\n * [JRebel](https://www.jrebel.com/) from ZeroTurnaround	\N	2020-02-07 06:52:48.175	\N	https://bootifulpodcast.podbean.com/mf/play/ucqhy6/5eb141fd-fcbe-4962-840d-f82c6f582a90.mp3	https://mcdn.podbean.com/mf/web/gw2tv7/5eb141fd-fcbe-4962-840d-f82c6f582a90.jpg	5eb141fd-fcbe-4962-840d-f82c6f582a90.mp3	s3://podcast-output-bucket/5eb141fd-fcbe-4962-840d-f82c6f582a90/5eb141fd-fcbe-4962-840d-f82c6f582a90.mp3	oleg-selajev.jpg	s3://podcast-input-bucket/5eb141fd-fcbe-4962-840d-f82c6f582a90/oleg-selajev.jpg	Oleg Šelajev on ZeroTurnaround, GraalVM, the vJUG and so much more	\N	5eb141fd-fcbe-4962-840d-f82c6f582a90
303	2020-03-12 23:41:30.509	Hi, Spring fans! In this installment we talk to John Hawley (@warty9), a Linux kernel hacker, an open-source enthusiast and someone who's able to answer questions about open-source at VMWare.  \n\n* The [Spring Live registration page](https://connect.tanzu.vmware.com/Spring_Live_Q221.html)\n* My blog announcing [Spring Live](https://spring.io/blog/2020/03/11/register-now-for-spring-live-an-interactive-virtual-24-hour-long-conference-for-you-spring-fans)\n* [John Hawley (@warty9)](https://twitter.com/warty9)\n* [Spring Tips: Java 14 (Can Your Java Do This?)](https://www.youtube.com/watch?v=mr-7kGy8Yao)\n* [the VMWare Open-Source Blog](https://blogs.vmware.com/opensource/)	\N	2020-03-12 23:43:18.546	\N	https://bootifulpodcast.podbean.com/mf/play/yn64cf/7c73e1a6-47a2-4d11-8be2-0aa763053b9a.mp3	https://mcdn.podbean.com/mf/web/924vbq/7c73e1a6-47a2-4d11-8be2-0aa763053b9a.jpg	7c73e1a6-47a2-4d11-8be2-0aa763053b9a.mp3	s3://podcast-output-bucket/7c73e1a6-47a2-4d11-8be2-0aa763053b9a/7c73e1a6-47a2-4d11-8be2-0aa763053b9a.mp3	john-550x550.jpg	s3://podcast-input-bucket/7c73e1a6-47a2-4d11-8be2-0aa763053b9a/john-550x550.jpg	John Hawley on OSS at VMWare, Python, Security, and more. Plus: Announcing Spring Live!	\N	7c73e1a6-47a2-4d11-8be2-0aa763053b9a
323	2020-04-17 02:44:43.96	Hi, Spring fans! In today's installment, Josh Long (@starbuxman) talks to Jetbrains developer advocacy head, "Talking Kotlin" podcast host, and Kotlin rockstar Hadi Hariri (@hhariri) about all things Kotlin, ecosystem, Jetbrains, and more.	\N	2020-04-17 02:46:11.89	\N	https://bootifulpodcast.podbean.com/mf/play/zq6d2m/98e8d404-ff07-42ed-9100-cc3c5c20eef5.mp3	https://mcdn.podbean.com/mf/web/49ws68/98e8d404-ff07-42ed-9100-cc3c5c20eef5.jpg	98e8d404-ff07-42ed-9100-cc3c5c20eef5.mp3	s3://podcast-output-bucket/98e8d404-ff07-42ed-9100-cc3c5c20eef5/98e8d404-ff07-42ed-9100-cc3c5c20eef5.mp3	hadi.jpg	s3://podcast-input-bucket/98e8d404-ff07-42ed-9100-cc3c5c20eef5/hadi.jpg	Jetbrains developer advocacy head and Kotlin rockstar Hadi Hariri	\N	98e8d404-ff07-42ed-9100-cc3c5c20eef5
287	2020-02-13 23:21:07.47	Hi, Spring fans! In today's episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to community member and Spring Session teammate [Vedran Pavic (@vedran_pavic)](http://twitter.com/vedran_pavic).\n\n* [Vedran on Github](https://github.com/vpavic)\n* [Vedran on Twitter (@vedran_pavic)](https://twitter.com/vedran_pavic)\n* [Spring Session](https://spring.io/projects/spring-session)	\N	2020-02-13 23:22:46.956	\N	https://bootifulpodcast.podbean.com/mf/play/abbhve/d1dc9637-bb9d-483c-93d3-e989db4cfff7.mp3	https://mcdn.podbean.com/mf/web/jinhd7/d1dc9637-bb9d-483c-93d3-e989db4cfff7.jpg	d1dc9637-bb9d-483c-93d3-e989db4cfff7.mp3	s3://podcast-output-bucket/d1dc9637-bb9d-483c-93d3-e989db4cfff7/d1dc9637-bb9d-483c-93d3-e989db4cfff7.mp3	photo.jpg	s3://podcast-input-bucket/d1dc9637-bb9d-483c-93d3-e989db4cfff7/photo.jpg	Vedran Pavic on Spring Session, Croatia, and so much more	\N	d1dc9637-bb9d-483c-93d3-e989db4cfff7
327	2020-04-24 01:08:38.119	Hi, Spring fans! In this episode  [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Linux kernel hacker and Linux Real Time patch founder Steve Rostedt about observing the Linux kernel and on what it sees when it looks at our busy Java and Spring applications. \n\n* Steve is on IRC on #LINUX-RT on OFT \n* LWN.net	\N	2020-04-24 01:10:49.688	\N	https://bootifulpodcast.podbean.com/mf/play/gaxcjk/16c8789f-5562-4062-b88a-61770e2af9db.mp3	https://mcdn.podbean.com/mf/web/g4wtyp/16c8789f-5562-4062-b88a-61770e2af9db.jpg	16c8789f-5562-4062-b88a-61770e2af9db.mp3	s3://podcast-output-bucket/16c8789f-5562-4062-b88a-61770e2af9db/16c8789f-5562-4062-b88a-61770e2af9db.mp3	SteveRostedt-sm.jpg	s3://podcast-input-bucket/16c8789f-5562-4062-b88a-61770e2af9db/SteveRostedt-sm.jpg	Linux Kernel hacker and Real Time patch founder Steve Rostedt on how the kernel sees our busy Spring applications	\N	16c8789f-5562-4062-b88a-61770e2af9db
331	2020-05-01 02:28:43.615	Hi, Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to the founder of - among other things - Feign, JCloud, and Spring Cloud Sleuth  - [Adrian Cole (@adrianfcole)](https://twitter.com/adrianfcole) about distributed tracing, Zipkin, and more.	\N	2020-05-01 02:30:51.753	\N	https://bootifulpodcast.podbean.com/mf/play/ijrku5/ee343a8d-368e-4711-8f9c-4b571fa7a8e4.mp3	https://mcdn.podbean.com/mf/web/f48cfc/ee343a8d-368e-4711-8f9c-4b571fa7a8e4.jpg	ee343a8d-368e-4711-8f9c-4b571fa7a8e4.mp3	s3://podcast-output-bucket/ee343a8d-368e-4711-8f9c-4b571fa7a8e4/ee343a8d-368e-4711-8f9c-4b571fa7a8e4.mp3	adrianfcole.jpg	s3://podcast-input-bucket/ee343a8d-368e-4711-8f9c-4b571fa7a8e4/adrianfcole.jpg	Adrian Cole, founder or co-founder of Feign, JClouds, and Spring Cloud Sleuth and major contributor to OpenZipkin	\N	ee343a8d-368e-4711-8f9c-4b571fa7a8e4
291	2020-02-21 06:40:31.481	Hi, Spring fans! In this installment Josh Long (@starbuxman) talks to friends -   Mercy Ma (马昕曦), Andy Shi (施孜海), and Jim Fang (方剑) -  from Alibaba. These engineers work on Spring Cloud Alibaba, some of the open source infrastructure coming out of Alibaba designed to support Spring applications running at Alibaba, and more. \n\n * [The Reactive Foundation](https://Reactive.Foundation)\n * [My Reactive Spring webinar series](https://content.pivotal.io/webinars/feb-20-introduction-to-reactive-spring-part-one-webinar?utm_source=twitter&utm_medium=social)\n * [Apache RocketMQ](https://rocketmq.apache.org/)\n * [Spring Cloud for Alibaba](https://spring.io/projects/spring-cloud-alibaba)\n * My Spring Tips video [introducing some of Spring Cloud Alibaba](https://spring.io/blog/2018/12/26/spring-tips-bootiful-alibaba)\n * [Aliyun](https://aliyun.com/)	\N	2020-02-21 06:42:41.196	\N	https://bootifulpodcast.podbean.com/mf/play/v9ddv5/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6.mp3	https://mcdn.podbean.com/mf/web/e5fs58/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6.jpg	fee894b7-62e5-48b0-9bd1-12dd84e3e5e6.mp3	s3://podcast-output-bucket/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6.mp3	podcast-cover.jpg	s3://podcast-input-bucket/fee894b7-62e5-48b0-9bd1-12dd84e3e5e6/podcast-cover.jpg	Building China Scale Infrastructure at Alibaba with Spring Cloud, RSocket, and more	\N	fee894b7-62e5-48b0-9bd1-12dd84e3e5e6
371	2020-07-10 00:06:43.201	Hi Spring fans! Welcome to another installment of  a Bootiful Podcast! In this installment [Josh Long](http://twitter.com/starbuxman) talks about the week that was and talks to the amazing Spring Data JDBC cofounder [Jens Schauder](https://twitter.com/jensschauder) about JPA, JDBC and domain driven design.	\N	2020-07-10 00:08:41.278	\N	https://bootifulpodcast.podbean.com/mf/play/vuceyv/a0f59cfb-d9e7-405b-8f5e-0c34894332b1.mp3	https://mcdn.podbean.com/mf/web/qqg99u/a0f59cfb-d9e7-405b-8f5e-0c34894332b1.jpg	a0f59cfb-d9e7-405b-8f5e-0c34894332b1.mp3	s3://podcast-output-bucket/a0f59cfb-d9e7-405b-8f5e-0c34894332b1/a0f59cfb-d9e7-405b-8f5e-0c34894332b1.mp3	jens-schauder.jpg	s3://podcast-input-bucket/a0f59cfb-d9e7-405b-8f5e-0c34894332b1/jens-schauder.jpg	Spring Data JDBC co-founder on JDBC, JPA and domain driven design	\N	a0f59cfb-d9e7-405b-8f5e-0c34894332b1
295	2020-02-28 04:31:26.295	Hi, Spring fans! Welcome to another installment of A Bootiful Podcast! In today's installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Spring Cloud teammember lead [Marcin Grzejszczak](http://twitter.com/MGrzejszczak).\n\n * [Spring Cloud Contract](https://spring.io/projects/spring-cloud-contract)\n * [Spring Cloud Sleuth](https://spring.io/projects/spring-cloud-sleuth)\n * [Marcin on Twitter](http://twitter.com/MGrzejszczak)	\N	2020-02-28 04:33:38.416	\N	https://bootifulpodcast.podbean.com/mf/play/xp2jd9/ed5d9a39-7ca5-477d-a743-3cb74ebc866f.mp3	https://mcdn.podbean.com/mf/web/gyksp3/ed5d9a39-7ca5-477d-a743-3cb74ebc866f.jpg	ed5d9a39-7ca5-477d-a743-3cb74ebc866f.mp3	s3://podcast-output-bucket/ed5d9a39-7ca5-477d-a743-3cb74ebc866f/ed5d9a39-7ca5-477d-a743-3cb74ebc866f.mp3	profile.jpg	s3://podcast-input-bucket/ed5d9a39-7ca5-477d-a743-3cb74ebc866f/profile.jpg	Spring Cloud Contract lead Marcin Grzejszczak on Spring Cloud Contract, Spring Cloud Sleuth, Continuous Integration and more	\N	ed5d9a39-7ca5-477d-a743-3cb74ebc866f
311	2020-03-27 02:21:03.28	Hi Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to fellow Java Champion, Oracle Groundbreaker, and Apache Groovy, Testcontainers, and Reactor committer [Sergei Egorov (@bsideup)](http://twitter.com/bsideup).	\N	2020-03-27 02:23:42.262	\N	https://bootifulpodcast.podbean.com/mf/play/rnvspb/0bfe08cd-3443-4f7e-9d62-5da50408621c.mp3	https://mcdn.podbean.com/mf/web/u4wjwz/0bfe08cd-3443-4f7e-9d62-5da50408621c.jpg	0bfe08cd-3443-4f7e-9d62-5da50408621c.mp3	s3://podcast-output-bucket/0bfe08cd-3443-4f7e-9d62-5da50408621c/0bfe08cd-3443-4f7e-9d62-5da50408621c.mp3	sergei.jpg	s3://podcast-input-bucket/0bfe08cd-3443-4f7e-9d62-5da50408621c/sergei.jpg	Apache Groovy, Testcontainers, and Reactor committer Sergei Egorov	\N	0bfe08cd-3443-4f7e-9d62-5da50408621c
299	2020-03-06 04:25:54.265	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](https://twitter.com/starbuxman) talks with [Sergi Almar (@sergiAlmar) ](https://twitter.com/SergiAlmar) about organizing one of the best JVM community shows in the business, Barcelona's [Spring I/O](https://springio.net/), being a trainer, and so much more.	\N	2020-03-06 04:27:41.018	\N	https://bootifulpodcast.podbean.com/mf/play/eving9/456c2f06-502f-41ca-a8c9-4430849066c3.mp3	https://mcdn.podbean.com/mf/web/tvyuye/456c2f06-502f-41ca-a8c9-4430849066c3.jpg	456c2f06-502f-41ca-a8c9-4430849066c3.mp3	s3://podcast-output-bucket/456c2f06-502f-41ca-a8c9-4430849066c3/456c2f06-502f-41ca-a8c9-4430849066c3.mp3	sergi-squared.jpg	s3://podcast-input-bucket/456c2f06-502f-41ca-a8c9-4430849066c3/sergi-squared.jpg	Spring I/O organizer and Spring trainer extraordinairre Sergi Almar 	\N	456c2f06-502f-41ca-a8c9-4430849066c3
307	2020-03-20 06:23:34.88	Hi, Spring fans! In this installment, Josh Long (@starbuxman) talks to the inimitable, smile-inducing and hope-renewing Glenn Renfro about Spring Cloud Data Flow, Spring Cloud Task and so much more.\n\n* [Glenn Renfro (@cppwfs)](http://twitter.com/cppwfs)\n* [Spring Live](https://connect.tanzu.vmware.com/Spring_Live.html) and click "Join this Session"	\N	2020-03-20 06:25:34.655	\N	https://bootifulpodcast.podbean.com/mf/play/er6x7r/f2533aba-2850-410c-aeec-2f8f3833f075.mp3	https://mcdn.podbean.com/mf/web/4hkutp/f2533aba-2850-410c-aeec-2f8f3833f075.jpg	f2533aba-2850-410c-aeec-2f8f3833f075.mp3	s3://podcast-output-bucket/f2533aba-2850-410c-aeec-2f8f3833f075/f2533aba-2850-410c-aeec-2f8f3833f075.mp3	glen-2.jpg	s3://podcast-input-bucket/f2533aba-2850-410c-aeec-2f8f3833f075/glen-2.jpg	The Smile-Inducing and Brilliant Glenn Renfro	\N	f2533aba-2850-410c-aeec-2f8f3833f075
315	2020-04-03 02:52:56.127	Hi, Spring fans! In this installment Josh Long (@starbuxman) talks to fellow cloud native at [VMWare (@VMWare)](http://twitter.com/vmware) and [Kubernetes (@KubernetesIO)](http://twitter.com/KubernetesIO) co-creator [Joe Beda (@jbeda)](http://twitter.com/jbeda)	\N	2020-04-03 02:54:44.033	\N	https://bootifulpodcast.podbean.com/mf/play/ninvrk/faf00426-0b5d-4a0d-912a-20504ae6f694.mp3	https://mcdn.podbean.com/mf/web/6bame2/faf00426-0b5d-4a0d-912a-20504ae6f694.jpg	faf00426-0b5d-4a0d-912a-20504ae6f694.mp3	s3://podcast-output-bucket/faf00426-0b5d-4a0d-912a-20504ae6f694/faf00426-0b5d-4a0d-912a-20504ae6f694.mp3	joe-beda.jpg	s3://podcast-input-bucket/faf00426-0b5d-4a0d-912a-20504ae6f694/joe-beda.jpg	Kubernetes co-creator Joe Beda 	\N	faf00426-0b5d-4a0d-912a-20504ae6f694
319	2020-04-10 02:18:26.67	Hi, Spring fans! In this episode we talk to Kushagra Thapar who is a senior software engineer at Microsoft working on the world-class, and world-wide Azure CosmosDB. \n\n* [Kushagra's LinkedIn](https://www.linkedin.com/in/kushagrathapar) \n* [The Spring Initializr](http://start.spring.io)\n* [Azure CosmosDB](https://azure.microsoft.com/en-us/services/cosmos-db/)\n* [Azure Spring Cloud](https://azure.microsoft.com/en-us/services/spring-cloud/)\n* [Spring Data CosmosDB](https://github.com/microsoft/spring-data-cosmosdb)	\N	2020-04-10 02:19:53.501	\N	https://bootifulpodcast.podbean.com/mf/play/42crfu/e4fa038c-8a13-4c1d-acb6-734f5f543f13.mp3	https://mcdn.podbean.com/mf/web/izbvep/e4fa038c-8a13-4c1d-acb6-734f5f543f13.jpg	e4fa038c-8a13-4c1d-acb6-734f5f543f13.mp3	s3://podcast-output-bucket/e4fa038c-8a13-4c1d-acb6-734f5f543f13/e4fa038c-8a13-4c1d-acb6-734f5f543f13.mp3	kushagra-thapar.jpg	s3://podcast-input-bucket/e4fa038c-8a13-4c1d-acb6-734f5f543f13/kushagra-thapar.jpg	Microsoft's Kushagra Thapar on Spring Data CosmosDB	\N	e4fa038c-8a13-4c1d-acb6-734f5f543f13
335	2020-05-07 22:50:11.289	Hi, Spring fans! This week I rant about push-button simple deployments and then talk to our friend and Spring and Java community member Eddú Meléndez about working in open-source, his journey to Spring and its community, his various contributions to Spring and more.	\N	2020-05-07 22:51:37.756	\N	https://bootifulpodcast.podbean.com/mf/play/86hdvt/7d323056-84e8-4026-a783-4704db38709d.mp3	https://mcdn.podbean.com/mf/web/1q2q2j/7d323056-84e8-4026-a783-4704db38709d.jpg	7d323056-84e8-4026-a783-4704db38709d.mp3	s3://podcast-output-bucket/7d323056-84e8-4026-a783-4704db38709d/7d323056-84e8-4026-a783-4704db38709d.mp3	eddu-photo.jpg	s3://podcast-input-bucket/7d323056-84e8-4026-a783-4704db38709d/eddu-photo.jpg	Spring and Java community member Eddú Meléndez about working in open-source, his journey to Spring and its community, contributing to Spring and more.	\N	7d323056-84e8-4026-a783-4704db38709d
347	2020-05-28 23:06:55.785	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Dr. Malini Bhandaru about EdgeX and the opportunities for developers in the IoT space.	\N	2020-05-28 23:08:13.766	\N	https://bootifulpodcast.podbean.com/mf/play/e7x9rr/60026531-40a7-4e6b-a404-7bc033172af9.mp3	https://mcdn.podbean.com/mf/web/sc6axi/60026531-40a7-4e6b-a404-7bc033172af9.jpg	60026531-40a7-4e6b-a404-7bc033172af9.mp3	s3://podcast-output-bucket/60026531-40a7-4e6b-a404-7bc033172af9/60026531-40a7-4e6b-a404-7bc033172af9.mp3	dr_bhandaru.jpg	s3://podcast-input-bucket/60026531-40a7-4e6b-a404-7bc033172af9/dr_bhandaru.jpg	A Bootiful Podcast: Dr. Malini Bhandaru on EdgeX and the opportunities for developers in the IoT space	\N	60026531-40a7-4e6b-a404-7bc033172af9
339	2020-05-14 22:15:25.551	Hi, Spring fans! In this episode Josh Long (@starbuxman) talks to industry legend VMWare COO Sanjay Poonen (@spoonen).	\N	2020-05-14 22:17:37.334	\N	https://bootifulpodcast.podbean.com/mf/play/gxu69s/b2bbe730-2e31-46d1-a391-1a6270211de2.mp3	https://mcdn.podbean.com/mf/web/hdmwlj/b2bbe730-2e31-46d1-a391-1a6270211de2.jpg	b2bbe730-2e31-46d1-a391-1a6270211de2.mp3	s3://podcast-output-bucket/b2bbe730-2e31-46d1-a391-1a6270211de2/b2bbe730-2e31-46d1-a391-1a6270211de2.mp3	sanjay-poonen.jpg	s3://podcast-input-bucket/b2bbe730-2e31-46d1-a391-1a6270211de2/sanjay-poonen.jpg	VMWare COO Sanjay Poonen	\N	b2bbe730-2e31-46d1-a391-1a6270211de2
359	2020-06-19 06:39:32.608	Hi Spring fans! In this installment Josh Long (@starbuxman) talks to Nisha Kumar and Rose Judge who work on the Linux Foundation's project Tern. \n\n* [Tern from the Linux Foundation](https://www.linuxfoundation.org/blog/2019/12/tern-1-0-0-is-generally-available/)\n* [Shift Left testing](https://en.wikipedia.org/wiki/Shift-left_testing)\n* [SPDX](https://spdx.org/licenses/)\n* [A Maven plugin supporting SPDX](https://github.com/spdx/spdx-maven-plugin)	\N	2020-06-19 06:42:40.131	\N	https://bootifulpodcast.podbean.com/mf/play/or85l8/49689040-28d8-4434-afa4-7f41d22b9c37.mp3	https://mcdn.podbean.com/mf/web/i6cp7t/49689040-28d8-4434-afa4-7f41d22b9c37.jpg	49689040-28d8-4434-afa4-7f41d22b9c37.mp3	s3://podcast-output-bucket/49689040-28d8-4434-afa4-7f41d22b9c37/49689040-28d8-4434-afa4-7f41d22b9c37.mp3	tern-logo.jpg	s3://podcast-input-bucket/49689040-28d8-4434-afa4-7f41d22b9c37/tern-logo.jpg	Nisha Kumar and Rose Judge on the Linux Foundation's Tern	\N	49689040-28d8-4434-afa4-7f41d22b9c37
343	2020-05-21 22:55:39.947	Hi Spring fans! In today's installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to [Kohsuke Kawaguchi (@kohsukekawa)](http://twitter.com/kohsukekawa) who needs no introduction - one of the original contributors to JAXB, COM4J, and a host of all sorts of other projects, and is the founder [and CEO of Launchable](https://launchableinc.com/). Oh, did I mention he also created [Jenkins](https://www.jenkins.io/), the most popular CI server ever?	\N	2020-05-21 22:57:14.896	\N	https://bootifulpodcast.podbean.com/mf/play/7gm4x8/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e.mp3	https://mcdn.podbean.com/mf/web/2b0pu5/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e.jpg	6c26eeff-ac5d-4b69-ab05-c351d12e6c5e.mp3	s3://podcast-output-bucket/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e.mp3	kohsuke.jpg	s3://podcast-input-bucket/6c26eeff-ac5d-4b69-ab05-c351d12e6c5e/kohsuke.jpg	Jenkins founder and Launchable founder Kohsuke Kawaguchi	\N	6c26eeff-ac5d-4b69-ab05-c351d12e6c5e
355	2020-06-11 21:22:32.874	Hi, Spring fans! Welcome to another installment of a Bootiful Podcast. In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Kubernetes guru and colleague [Paul Czarkowski (@pczarkowski)](http://twitter.com/pczarkowski) about Austin, TX BBQ, Kubernetes and so much more.	\N	2020-06-11 21:24:37.742	\N	https://bootifulpodcast.podbean.com/mf/play/hlsjy6/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df.mp3	https://mcdn.podbean.com/mf/web/m6y0qa/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df.jpg	64c3b8ef-2aa2-4f91-bc93-7e7be75c85df.mp3	s3://podcast-output-bucket/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df.mp3	paul.jpg	s3://podcast-input-bucket/64c3b8ef-2aa2-4f91-bc93-7e7be75c85df/paul.jpg	Kubernetes guru Paul Czarkowski	\N	64c3b8ef-2aa2-4f91-bc93-7e7be75c85df
351	2020-06-05 01:55:05.9	Hi Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to [Tim Pepper (@pythomit)](http://twitter.com/pithomit) from VMware's Open Source Technology Center about Kubernetes and his role on the Kubernetes Release SIG.	\N	2020-06-05 01:56:32.073	\N	https://bootifulpodcast.podbean.com/mf/play/1gsptu/85dc9285-ba68-4180-aec2-52cccc140655.mp3	https://mcdn.podbean.com/mf/web/fe25yd/85dc9285-ba68-4180-aec2-52cccc140655.jpg	85dc9285-ba68-4180-aec2-52cccc140655.mp3	s3://podcast-output-bucket/85dc9285-ba68-4180-aec2-52cccc140655/85dc9285-ba68-4180-aec2-52cccc140655.mp3	tim-pepper.jpg	s3://podcast-input-bucket/85dc9285-ba68-4180-aec2-52cccc140655/tim-pepper.jpg	Kubernetes contributor and Kubernetes Release SIG Chair Tim Pepper	\N	85dc9285-ba68-4180-aec2-52cccc140655
363	2020-06-25 22:02:25.149	Hi Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Tanzu Wavefront co-founder and VMware Principal Engineer [Clement Pang (@panghy)](https://twitter.com/panghy).	\N	2020-06-25 22:04:28.307	\N	https://bootifulpodcast.podbean.com/mf/play/nrsto8/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7.mp3	https://mcdn.podbean.com/mf/web/eh3zk6/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7.jpg	4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7.mp3	s3://podcast-output-bucket/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7.mp3	clement-pang.jpg	s3://podcast-input-bucket/4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7/clement-pang.jpg	VMware Principal Engineer and Tanzu Wavefront co-founder Clement Pang	\N	4b743f6c-fdf6-4d0f-9bcc-fb47537fc0e7
367	2020-07-03 01:40:23.93	Hi Spring fans! In this installment Josh Long (@starbuxman) talks to Dr. Yordan Karadzhov about instrumenting and visualizing the Linux Kernel, and understanding what's happening from the perspective of the platform, containers, and cloud-native Spring applications.	\N	2020-07-03 01:41:30.697	\N	https://bootifulpodcast.podbean.com/mf/play/1lkv59/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab.mp3	https://mcdn.podbean.com/mf/web/4oto7u/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab.jpg	c1b8b860-8e1a-4b16-bfc2-9db88b7754ab.mp3	s3://podcast-output-bucket/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab.mp3	YordanKaradzhov.jpg	s3://podcast-input-bucket/c1b8b860-8e1a-4b16-bfc2-9db88b7754ab/YordanKaradzhov.jpg	Dr. Yordan Karadzhov on instrumenting and visualizing the Linux Kernel	\N	c1b8b860-8e1a-4b16-bfc2-9db88b7754ab
375	2020-07-17 05:00:33.579	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Intuit's [Katie Levy (@klevy110)](http://twitter.com/) about how Intuit uses Spring Boot, Kotlin, Android and more to help tens of millions of users every year with their taxes.	\N	2020-07-17 05:01:57.929	\N	https://bootifulpodcast.podbean.com/mf/play/2m3il5/70c31ba4-f424-43a3-bbec-6f891aee6610.mp3	https://mcdn.podbean.com/mf/web/p38fxj/70c31ba4-f424-43a3-bbec-6f891aee6610.jpg	70c31ba4-f424-43a3-bbec-6f891aee6610.mp3	s3://podcast-output-bucket/70c31ba4-f424-43a3-bbec-6f891aee6610/70c31ba4-f424-43a3-bbec-6f891aee6610.mp3	katie-levy.jpg	s3://podcast-input-bucket/70c31ba4-f424-43a3-bbec-6f891aee6610/katie-levy.jpg	Intuit's Katie Levy on Spring Boot, Kotlin, Android and more 	\N	70c31ba4-f424-43a3-bbec-6f891aee6610
379	2020-07-24 09:28:00.729	Hi, Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Spring Data lead [Mark Paluch (@mp911de)](http://twitter.com/mp911de) about all things reactive and data: R2DBC, transactions, etc.	\N	2020-07-24 09:29:41.468	\N	https://bootifulpodcast.podbean.com/mf/play/cou5yb/b564a312-5a03-4f5d-928f-cb27d0047e3c.mp3	https://mcdn.podbean.com/mf/web/6ldivc/b564a312-5a03-4f5d-928f-cb27d0047e3c.jpg	b564a312-5a03-4f5d-928f-cb27d0047e3c.mp3	s3://podcast-output-bucket/b564a312-5a03-4f5d-928f-cb27d0047e3c/b564a312-5a03-4f5d-928f-cb27d0047e3c.mp3	mark-paluch.jpg	s3://podcast-input-bucket/b564a312-5a03-4f5d-928f-cb27d0047e3c/mark-paluch.jpg	Spring Data lead Mark Paluch	\N	b564a312-5a03-4f5d-928f-cb27d0047e3c
383	2020-07-30 23:43:44.981	Hi Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks about yaks, the implicit tension in systems design, and then talks with [Josh Lock (@hi_joshuagl)](http://twitter.com/hi_joshuagl) about supply chain security, Docker trust, TUF, and more.	\N	2020-07-30 23:45:36.001	\N	https://bootifulpodcast.podbean.com/mf/play/0xo0p1/db632a7a-10d6-4027-873f-3b5874a90703.mp3	https://mcdn.podbean.com/mf/web/04ul7v/db632a7a-10d6-4027-873f-3b5874a90703.jpg	db632a7a-10d6-4027-873f-3b5874a90703.mp3	s3://podcast-output-bucket/db632a7a-10d6-4027-873f-3b5874a90703/db632a7a-10d6-4027-873f-3b5874a90703.mp3	josh-lock.jpg	s3://podcast-input-bucket/db632a7a-10d6-4027-873f-3b5874a90703/josh-lock.jpg	Josh Lock on supply chain security, Docker trust, TUF, and more 	\N	db632a7a-10d6-4027-873f-3b5874a90703
395	2020-08-21 02:26:32.138	Hi Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Google Cloud's [Elena Felder (@hellata)](http://twitter.com/hellata) about building Reactor/Spring-based integrations for Google Cloud technologies like Google Cloud Spanner.	\N	2020-08-21 02:28:03.745	\N	https://bootifulpodcast.podbean.com/mf/play/8px0iu/97942784-2299-42f4-b647-9e896ac6debf.mp3	https://mcdn.podbean.com/mf/web/rk9fi3/97942784-2299-42f4-b647-9e896ac6debf.jpg	97942784-2299-42f4-b647-9e896ac6debf.mp3	s3://podcast-output-bucket/97942784-2299-42f4-b647-9e896ac6debf/97942784-2299-42f4-b647-9e896ac6debf.mp3	profile_photo_400x400.jpg	s3://podcast-input-bucket/97942784-2299-42f4-b647-9e896ac6debf/profile_photo_400x400.jpg	Google Cloud's Elena Felder on Google Cloud, Spanner, and Reactor-based integrations	\N	97942784-2299-42f4-b647-9e896ac6debf
399	2020-08-27 22:52:23.067	Hi Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) looks at the week that was and then talks to Spring team members [Soby Chacko (@sobychacko)](https://twitter.com/sobychacko) and [Dave Turanski (@dturanski)](https://twitter.com/dturanski) about messaging in Spring, Spring Cloud, Spring Integration, Spring Cloud Stream, Spring Cloud Data Flow, Spring Cloud Stream App Starters.\n\n* register [for SpringOne 2020! It's free (and virtual) ](http://SpringOne.io)\n* follow me [on Twitch (javajoshlong)](https://www.twitch.tv/javajoshlong)	\N	2020-08-27 22:54:47.565	\N	https://bootifulpodcast.podbean.com/mf/play/afoy9m/241d560b-0f20-455f-b8ea-551c6d949ba1.mp3	https://mcdn.podbean.com/mf/web/8ek23p/241d560b-0f20-455f-b8ea-551c6d949ba1.jpg	241d560b-0f20-455f-b8ea-551c6d949ba1.mp3	s3://podcast-output-bucket/241d560b-0f20-455f-b8ea-551c6d949ba1/241d560b-0f20-455f-b8ea-551c6d949ba1.mp3	cover.jpg	s3://podcast-input-bucket/241d560b-0f20-455f-b8ea-551c6d949ba1/cover.jpg	Soby Chacko and Dave Turanski on Messaging in Spring, Spring Cloud Stream App Starters and More 	\N	241d560b-0f20-455f-b8ea-551c6d949ba1
411	2020-09-17 21:51:09.553	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Lightbend CTO [Jonas Bonér (@jboner)](http://twitter.com/jboner) about his epic, aspect-oriented, distributed and reactive work.	\N	2020-09-17 21:53:15.749	\N	https://bootifulpodcast.podbean.com/mf/play/njy0el/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69.mp3	https://mcdn.podbean.com/mf/web/b01dqx/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69.jpg	45acdf3e-e8bd-4e66-bc8d-62dd5b092b69.mp3	s3://podcast-output-bucket/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69.mp3	jonas.jpg	s3://podcast-input-bucket/45acdf3e-e8bd-4e66-bc8d-62dd5b092b69/jonas.jpg	Lightbend CTO Jonas Bonér on his epic, aspect-oriented, distributed, reactive work 	\N	45acdf3e-e8bd-4e66-bc8d-62dd5b092b69
403	2020-09-04 12:33:55.47	Hi, Spring fans! Welcome to another installment of a Bootiful Podcast! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks about the massive, virtual SpringOne 2020 event (tens of thousands of people in attendance!), his just completed book "Reactive Spring," and then talks to Microsoft's [Jonathan Giles (@jonathangiles) ](https://twitter.com/jonathangiles).	\N	2020-09-04 12:35:47.553	\N	https://bootifulpodcast.podbean.com/mf/play/74s8sw/64ba7927-685d-429c-a4a4-135425fa6cac.mp3	https://mcdn.podbean.com/mf/web/8xodry/64ba7927-685d-429c-a4a4-135425fa6cac.jpg	64ba7927-685d-429c-a4a4-135425fa6cac.mp3	s3://podcast-output-bucket/64ba7927-685d-429c-a4a4-135425fa6cac/64ba7927-685d-429c-a4a4-135425fa6cac.mp3	jonathan-giles.jpg	s3://podcast-input-bucket/64ba7927-685d-429c-a4a4-135425fa6cac/jonathan-giles.jpg	SpringOne 2020, Azure Spring Cloud and fellow Java Champion and Microsoft Java architect Jonathan Giles	\N	64ba7927-685d-429c-a4a4-135425fa6cac
387	2020-08-07 02:47:19.46	Hi Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks about ten years on the Spring team, reactive support and RSocket support in Spring Integration, his upcoming appearances at SpringOne and his [upcoming YOW! workshop on _Cloud Native Java_](https://www.eventbrite.com.au/e/yow-workshop-2020-cloud-native-java-aug-14-18-2020-tickets-114222161560?aff=social), and then talks to JFrog's [Baruch Sadogursky (@jbaruch)](http://twitter.com/jbaruch) about continuous delivery, DevOps, Java artifact management Artifactory, and more.	\N	2020-08-07 02:48:40.075	\N	https://bootifulpodcast.podbean.com/mf/play/3aecne/30740b6f-7781-4c17-b4d2-f7a2536ab245.mp3	https://mcdn.podbean.com/mf/web/m954fl/30740b6f-7781-4c17-b4d2-f7a2536ab245.jpg	30740b6f-7781-4c17-b4d2-f7a2536ab245.mp3	s3://podcast-output-bucket/30740b6f-7781-4c17-b4d2-f7a2536ab245/30740b6f-7781-4c17-b4d2-f7a2536ab245.mp3	baruch.jpg	s3://podcast-input-bucket/30740b6f-7781-4c17-b4d2-f7a2536ab245/baruch.jpg	10 Years on the Spring team and JFrog's Baruch Sag	\N	30740b6f-7781-4c17-b4d2-f7a2536ab245
391	2020-08-14 06:05:45.808	Hi, Spring fans! In this installment [Josh  (@starbuxman)](http://twitter.com/starbuxman) has RSocket on the brain with his latest talk, RSocket Revolution, the new RSocket chapter in his book _Reactive Spring_, and the work he's doing on Spring Retrosocket, a declarative Feign-like RSocket client. Then, Josh talks to Spring ecosystem luminary [Maciej Walkowiak  (@maciejwalkowiak)](http://twitter.com/maciejwalkowiak) about what he's doing at the helm of Spring Cloud AWS.\n\n* [Spring Cloud AWS](http://github.com/spring-cloud/spring-cloud-aws)\n* Maciej's recent video on getting started with [Spring Cloud AWS](https://www.youtube.com/watch?v=Ts2a-YdN6vI) on his excellent YouTube channel Spring Academy\n* Josh's book [_Reactive Spring_](http://ReactiveSpring.io) has been updated with a new whopping 70+ page chapter on RSocket\n* Josh's [_The RSocket Revolution_](https://www.youtube.com/watch?v=ipVfRdl5SP0&t=1s) talk\n* [Spring Retrosocket](http://github.com/spring-projects-experimental) - a declarative client for RSocket à la Feign or Retrofit	\N	2020-08-14 06:07:36.789	\N	https://bootifulpodcast.podbean.com/mf/play/66rejw/95f7ed9e-11b6-4b80-aca6-733921b073d2.mp3	https://mcdn.podbean.com/mf/web/spm5k6/95f7ed9e-11b6-4b80-aca6-733921b073d2.jpg	95f7ed9e-11b6-4b80-aca6-733921b073d2.mp3	s3://podcast-output-bucket/95f7ed9e-11b6-4b80-aca6-733921b073d2/95f7ed9e-11b6-4b80-aca6-733921b073d2.mp3	img.jpg	s3://podcast-input-bucket/95f7ed9e-11b6-4b80-aca6-733921b073d2/img.jpg	RSocket everywhere and Spring luminary Maciej Walkowiak on Spring Cloud AWS	\N	95f7ed9e-11b6-4b80-aca6-733921b073d2
407	2020-09-10 22:57:31.404	Hi, Spring fans! In this installment of a _Bootiful Podcast_, [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks about the week that was, his new book "Reactive Spring," and then talks to one of the most senior engineers on the Spring team and a longtime contributor to all things web and reactive - [Rossen Stoyanchev (@rstoya08)](http://twitter.com/rstoya08).	\N	2020-09-10 22:59:41.543	\N	https://bootifulpodcast.podbean.com/mf/play/v54r5q/83ae4357-fb6c-404d-8acf-0788b79f0c71.mp3	https://mcdn.podbean.com/mf/web/xoya5e/83ae4357-fb6c-404d-8acf-0788b79f0c71.jpg	83ae4357-fb6c-404d-8acf-0788b79f0c71.mp3	s3://podcast-output-bucket/83ae4357-fb6c-404d-8acf-0788b79f0c71/83ae4357-fb6c-404d-8acf-0788b79f0c71.mp3	rossen.jpg	s3://podcast-input-bucket/83ae4357-fb6c-404d-8acf-0788b79f0c71/rossen.jpg	Legendary Spring contributor Rossen Stoyanchev on all things web, reactive and RSocket 	\N	83ae4357-fb6c-404d-8acf-0788b79f0c71
415	2020-09-24 22:49:28.002	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks about the wide world of webdevelopment with CSS, Figma, AdobeXD and more, and then talks to Sentry CTO [David Cramer (@zeeg)](https://twitter.com/zeeg) about easy error capture and analysis with Sentry and Spring.\n\n* Want to see the worldwide flurry of activity as errors make their way to Sentry? [Check this out](https://live.sentry.io)	\N	2020-09-24 22:50:58.831	\N	https://bootifulpodcast.podbean.com/mf/play/ljad51/53a8a31e-f454-482a-a7ec-1db83c509918.mp3	https://mcdn.podbean.com/mf/web/up2pcl/53a8a31e-f454-482a-a7ec-1db83c509918.jpg	53a8a31e-f454-482a-a7ec-1db83c509918.mp3	s3://podcast-output-bucket/53a8a31e-f454-482a-a7ec-1db83c509918/53a8a31e-f454-482a-a7ec-1db83c509918.mp3	david-cramerx400.jpg	s3://podcast-input-bucket/53a8a31e-f454-482a-a7ec-1db83c509918/david-cramerx400.jpg	Sentry CTO David Cramer on Automated Error Capture and Analysis	\N	53a8a31e-f454-482a-a7ec-1db83c509918
419	2020-10-02 00:32:16.484	Hi, Spring fans! Welcome to another installment of _A Bootiful Podcast_. In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to longtime Spring Framework engineer  and team "bass player" [Arjen Poutsma (@poutsma)](http://twitter.com/poutsma)	\N	2020-10-02 00:34:20.418	\N	https://bootifulpodcast.podbean.com/mf/play/43p624/d8b01a23-a4d1-479d-85f6-52d0485dc6c2.mp3	https://mcdn.podbean.com/mf/web/2d9ppz/d8b01a23-a4d1-479d-85f6-52d0485dc6c2.jpg	d8b01a23-a4d1-479d-85f6-52d0485dc6c2.mp3	s3://podcast-output-bucket/d8b01a23-a4d1-479d-85f6-52d0485dc6c2/d8b01a23-a4d1-479d-85f6-52d0485dc6c2.mp3	arjen.jpg	s3://podcast-input-bucket/d8b01a23-a4d1-479d-85f6-52d0485dc6c2/arjen.jpg	Longtime Spring Framework engineer  Arjen Poutsma on Spring's web support, Scala, API Design, Reactive programming and more	\N	d8b01a23-a4d1-479d-85f6-52d0485dc6c2
423	2020-10-08 21:04:26.125	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to Reactor team engineer, fellow Java Champion, and conference organizer [Audrey Neveu (@Audrey_Neveu)](http://twitter.com/Audrey_Neveu)	\N	2020-10-08 21:05:42.354	\N	https://bootifulpodcast.podbean.com/mf/play/okmmof/fce25c42-1439-42d5-a3d1-4a97ee3fab57.mp3	https://mcdn.podbean.com/mf/web/zlgjgl/fce25c42-1439-42d5-a3d1-4a97ee3fab57.jpg	fce25c42-1439-42d5-a3d1-4a97ee3fab57.mp3	s3://podcast-output-bucket/fce25c42-1439-42d5-a3d1-4a97ee3fab57/fce25c42-1439-42d5-a3d1-4a97ee3fab57.mp3	audrey.jpg	s3://podcast-input-bucket/fce25c42-1439-42d5-a3d1-4a97ee3fab57/audrey.jpg	 Reactor team engineer, fellow Java Champion, and conference organizer Audrey Neveu	\N	fce25c42-1439-42d5-a3d1-4a97ee3fab57
427	2020-10-15 20:17:33.48	Hi, Spring fans! In this episode [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks about all the wonderful shows he's been at, the epic new support for Kubernetes-ready native images in Spring Boot 2.3 and Spring Boot 2.4, and then he talks to DataStax's own [Patrick McFadin (@PatrickMcFadin)](http://twitter.com/PatrickMcFadin), a legend in the JVM and Cassandra communities, and an all around amiable gent.	\N	2020-10-15 20:19:24.646	\N	https://bootifulpodcast.podbean.com/mf/play/jmm284/053f0141-2910-4fef-9e4a-08c939506874.mp3	https://mcdn.podbean.com/mf/web/myoe73/053f0141-2910-4fef-9e4a-08c939506874.jpg	053f0141-2910-4fef-9e4a-08c939506874.mp3	s3://podcast-output-bucket/053f0141-2910-4fef-9e4a-08c939506874/053f0141-2910-4fef-9e4a-08c939506874.mp3	patrick.jpg	s3://podcast-input-bucket/053f0141-2910-4fef-9e4a-08c939506874/patrick.jpg	DataStax's Patrick McFadin on DataStax Astra, Cassandra, Cassandra data modeling patterns, and more	\N	053f0141-2910-4fef-9e4a-08c939506874
431	2020-10-22 20:44:51.345	Hi, Spring fans! In this installment [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to [Optic (@UseOptic)](http://twitter.com/UseOptic) CEO [Aidan Cunniffe (@aidandcunniffe)](http://twitter.com/UseOptic)	\N	2020-10-22 20:46:04.525	\N	https://bootifulpodcast.podbean.com/mf/play/navsih/43544e66-3307-4e8c-817e-8afa92622ae5.mp3	https://mcdn.podbean.com/mf/web/exw4al/43544e66-3307-4e8c-817e-8afa92622ae5.jpg	43544e66-3307-4e8c-817e-8afa92622ae5.mp3	s3://podcast-output-bucket/43544e66-3307-4e8c-817e-8afa92622ae5/43544e66-3307-4e8c-817e-8afa92622ae5.mp3	aidan.jpg	s3://podcast-input-bucket/43544e66-3307-4e8c-817e-8afa92622ae5/aidan.jpg	Optic CEO Aidan Cunniffe on OpenAPI, contract testing, and so much more 	\N	43544e66-3307-4e8c-817e-8afa92622ae5
435	2020-10-29 23:39:34.7	Hi Spring fans! This week, [Josh Long (@starbuxman)](http://twitter.com/starbuxman) talks to legendary Spring Test Framework lead and JUnit contributor [Sam Brannen (@sam_brannen)](http://twitter.com/sam_brannen)	\N	2020-10-29 23:41:05.934	\N	https://bootifulpodcast.podbean.com/mf/play/plylig/a07248d7-4aa3-4e90-bb45-0c90ab8671f3.mp3	https://mcdn.podbean.com/mf/web/dvbn0g/a07248d7-4aa3-4e90-bb45-0c90ab8671f3.jpg	a07248d7-4aa3-4e90-bb45-0c90ab8671f3.mp3	s3://podcast-output-bucket/a07248d7-4aa3-4e90-bb45-0c90ab8671f3/a07248d7-4aa3-4e90-bb45-0c90ab8671f3.mp3	sam.jpg	s3://podcast-input-bucket/a07248d7-4aa3-4e90-bb45-0c90ab8671f3/sam.jpg	Spring Test Framework lead Sam Brannen 	\N	a07248d7-4aa3-4e90-bb45-0c90ab8671f3
439	2020-11-05 23:40:31.964	Hi, Spring fans! In this episode Josh talks to Spring legend [Thomas Risberg (@trisberg)](http://twitter.com/trisberg).	\N	2020-11-05 23:42:07.254	\N	https://mcdn.podbean.com/mf/web/n6hejf/dc4a4262-a7e2-4af0-879d-328a57fd86b4.mp3	https://mcdn.podbean.com/mf/web/102mui/dc4a4262-a7e2-4af0-879d-328a57fd86b4.jpg	dc4a4262-a7e2-4af0-879d-328a57fd86b4.mp3	s3://podcast-output-bucket/dc4a4262-a7e2-4af0-879d-328a57fd86b4/dc4a4262-a7e2-4af0-879d-328a57fd86b4.mp3	trisberg_bw_400x400.jpg	s3://podcast-input-bucket/dc4a4262-a7e2-4af0-879d-328a57fd86b4/trisberg_bw_400x400.jpg	Spring legend Thomas Risberg on JDBC, Spring Cloud Data Flow, Kubernetes and so much more	\N	dc4a4262-a7e2-4af0-879d-328a57fd86b4
\.


--
-- Data for Name: podcast_link; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.podcast_link (podcast_id, link_id) FROM stdin;
\.


--
-- Data for Name: podcast_media; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.podcast_media (podcast_id, media_id) FROM stdin;
97	98
97	99
100	101
100	102
103	104
103	105
106	107
106	108
109	110
109	111
112	113
112	114
115	116
115	117
118	119
118	120
121	122
121	123
124	125
124	126
130	131
130	132
133	134
133	135
136	137
136	138
139	140
139	141
142	143
142	144
145	146
145	147
148	149
148	150
151	152
151	153
154	155
154	156
157	158
157	159
163	164
163	165
166	167
166	168
169	170
169	171
172	173
172	174
175	176
175	177
178	179
178	180
181	182
181	183
184	185
184	186
187	188
187	189
190	191
190	192
196	197
196	198
199	200
199	201
202	203
202	204
205	206
205	207
208	209
208	210
211	212
211	213
214	215
214	216
217	218
217	219
220	221
220	222
223	224
223	225
229	230
229	231
232	233
232	234
235	236
235	237
238	239
238	240
241	242
241	243
244	245
244	246
247	248
247	249
250	251
250	252
253	254
253	255
256	257
256	258
262	263
262	264
265	266
265	267
268	269
268	270
271	272
271	273
274	275
274	276
277	278
277	279
280	281
280	282
283	284
283	285
283	286
287	288
287	289
287	290
291	292
291	293
291	294
295	296
295	297
295	298
299	300
299	301
299	302
303	304
303	305
303	306
307	308
307	309
307	310
311	312
311	313
311	314
315	316
315	317
315	318
319	320
319	321
319	322
323	324
323	325
323	326
327	328
327	329
327	330
331	332
331	333
331	334
335	336
335	337
335	338
339	340
339	341
339	342
343	344
343	345
343	346
347	348
347	349
347	350
351	352
351	353
351	354
355	356
355	357
355	358
359	360
359	361
359	362
363	364
363	365
363	366
367	368
367	369
367	370
371	372
371	373
371	374
375	376
375	377
375	378
379	380
379	381
379	382
383	384
383	385
383	386
387	388
387	389
387	390
391	392
391	393
391	394
395	396
395	397
395	398
399	400
399	401
399	402
403	404
403	405
403	406
407	408
407	409
407	410
411	412
411	413
411	414
415	416
415	417
415	418
419	420
419	421
419	422
423	424
423	425
423	426
427	428
427	429
427	430
431	432
431	433
431	434
435	436
435	437
435	438
439	440
439	441
439	442
\.


--
-- Data for Name: redo; Type: TABLE DATA; Schema: public; Owner: lxfohtek
--

COPY public.redo (uid, id, title, s3_photo_file_name, s3_audio_file_name) FROM stdin;
4a0ea3d8-5aa2-4661-9e40-9e5067d11e23	160	Spring mad scientist Andy Clement on AspectJ, SpEL, Eclipse, Graal and more	\N	\N
20006b8c-2ccf-4d89-8f27-32be78d03a30	127	Codota's Dror Weiss	\N	\N
1e075121-2180-46da-9c24-899e4079cef3	193	Pivotal's Katrina Bakas on Pivotal Healthwatch, Kubernetes, Cloud Foundry and more	\N	\N
c73ffe17-2918-4e82-9dfb-fcc018e234cc	226	Nicolai Parlog on Java modularity	\N	\N
c0ca372f-8be0-4eb7-b706-a62b3b31c126	259	I need to talk about my father, Clark "Bud" Long, who just passed away	\N	\N
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: lxfohtek
--

SELECT pg_catalog.setval('public.hibernate_sequence', 442, true);


--
-- Name: link link_pkey; Type: CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT link_pkey PRIMARY KEY (id);


--
-- Name: mappings mappings_uid_json_guid_key; Type: CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.mappings
    ADD CONSTRAINT mappings_uid_json_guid_key UNIQUE (uid, json_guid);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: podcast podcast_pkey; Type: CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.podcast
    ADD CONSTRAINT podcast_pkey PRIMARY KEY (id);


--
-- Name: podcast uk8frquitpn703785lejukgdb1f; Type: CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.podcast
    ADD CONSTRAINT uk8frquitpn703785lejukgdb1f UNIQUE (uid);


--
-- Name: podcast_link fk2vu3w8tjdo0qb3vkpeydcc3w0; Type: FK CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.podcast_link
    ADD CONSTRAINT fk2vu3w8tjdo0qb3vkpeydcc3w0 FOREIGN KEY (link_id) REFERENCES public.link(id);


--
-- Name: podcast_media fk8g18uypwfolj3nu8jew7vj6ex; Type: FK CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.podcast_media
    ADD CONSTRAINT fk8g18uypwfolj3nu8jew7vj6ex FOREIGN KEY (media_id) REFERENCES public.media(id);


--
-- Name: podcast_media fkep89648nfax8u5t7cjle9bh77; Type: FK CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.podcast_media
    ADD CONSTRAINT fkep89648nfax8u5t7cjle9bh77 FOREIGN KEY (podcast_id) REFERENCES public.podcast(id);


--
-- Name: podcast_link fkllcnm8ch4ses0kchqayiylv9c; Type: FK CONSTRAINT; Schema: public; Owner: lxfohtek
--

ALTER TABLE ONLY public.podcast_link
    ADD CONSTRAINT fkllcnm8ch4ses0kchqayiylv9c FOREIGN KEY (podcast_id) REFERENCES public.podcast(id);


--
-- PostgreSQL database dump complete
--

