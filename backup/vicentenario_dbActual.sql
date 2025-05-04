--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3 (Debian 14.3-1.pgdg110+1)
-- Dumped by pg_dump version 14.3 (Debian 14.3-1.pgdg110+1)

-- Started on 2025-05-04 17:48:31 UTC

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
-- TOC entry 2 (class 3079 OID 16444)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 213 (class 1259 OID 16484)
-- Name: Imagen; Type: TABLE; Schema: public; Owner: udinova
--

CREATE TABLE public."Imagen" (
    "imagen_ID" uuid NOT NULL,
    "Estado" smallint NOT NULL,
    "URL" character varying NOT NULL,
    "Fecha_Subida" date NOT NULL,
    "Historia_ID" uuid,
    "PuntoHist_ID" uuid
);


ALTER TABLE public."Imagen" OWNER TO udinova;

--
-- TOC entry 210 (class 1259 OID 16455)
-- Name: Punto_Historico; Type: TABLE; Schema: public; Owner: udinova
--

CREATE TABLE public."Punto_Historico" (
    "PuntoHist_ID" uuid NOT NULL,
    "Nombre" character varying NOT NULL,
    "Descripcion" character varying,
    "FechaCreacion" date NOT NULL,
    "Longitud" character varying NOT NULL,
    "Latitud" character varying NOT NULL,
    "Estado" smallint NOT NULL,
    "HorarioServicio" character varying NOT NULL,
    "CostoEntrada" character varying NOT NULL,
    "Ciudad" character varying NOT NULL,
    "Pais" character varying NOT NULL,
    "Localidad" character varying NOT NULL,
    "Visibilidad" smallint NOT NULL
);


ALTER TABLE public."Punto_Historico" OWNER TO udinova;

--
-- TOC entry 211 (class 1259 OID 16460)
-- Name: historias; Type: TABLE; Schema: public; Owner: udinova
--

CREATE TABLE public.historias (
    id_historia uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    titulo character varying NOT NULL,
    descripcion character varying NOT NULL,
    estado boolean DEFAULT true NOT NULL
);


ALTER TABLE public.historias OWNER TO udinova;

--
-- TOC entry 212 (class 1259 OID 16467)
-- Name: hitos_historicos; Type: TABLE; Schema: public; Owner: udinova
--

CREATE TABLE public.hitos_historicos (
    id_hito_historico uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    titulo character varying NOT NULL,
    descripcion character varying NOT NULL,
    fecha character varying NOT NULL,
    "historiaIdHistoria" uuid
);


ALTER TABLE public.hitos_historicos OWNER TO udinova;

--
-- TOC entry 3345 (class 0 OID 16484)
-- Dependencies: 213
-- Data for Name: Imagen; Type: TABLE DATA; Schema: public; Owner: udinova
--

COPY public."Imagen" ("imagen_ID", "Estado", "URL", "Fecha_Subida", "Historia_ID", "PuntoHist_ID") FROM stdin;
f890d890-5ad8-4598-9a3c-ce4012e32586	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746218748/ijpbgtunmprphirkager.jpg	2025-05-02	9c08a940-c555-4dc8-8ce8-413cb52ceacf	\N
b1dc54c4-b5fa-416a-a7dd-1f232f630bc4	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746218855/rauqn9dgksfbaphpm0cz.jpg	2025-05-02	0a904d1d-660e-4f9e-8a22-76a14517e3cc	\N
17f85fb4-8b33-4208-aa7d-da1d5573b274	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746218877/qvo7vqgjzlafdyhvx3b2.jpg	2025-05-02	15ad6434-61ad-4169-a95d-bad5b7742766	\N
3abc8e40-71e6-4277-a08d-11d1a7b52ece	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746218926/uuiiinpepp6njy5l1uni.jpg	2025-05-02	b13f6dd7-4e2c-46a4-b543-a19991442e70	\N
85e45d8c-4172-446c-a7ae-1534dba1686a	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746218950/wlrs4m3cm534r4bw9qx7.jpg	2025-05-02	effc7b0c-cec3-44f6-a7f3-bc13805c03ff	\N
67c2af06-9741-4e97-b39e-de3fcc0fa512	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746370815/lmzhtjqvppfwurvz8hhr.jpg	2025-05-04	89a26a87-1f52-4a1c-bbc5-dd2909b6e861	\N
a54d90ad-4cec-4bff-b9c2-445d5f0df7f5	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746370851/wkagvvckuqfpyv8w1pig.jpg	2025-05-04	15b80a92-3460-4a1d-b6ea-edb1ed4e0fae	\N
1c1a4e35-d3be-456e-b67a-14b0da81a2b4	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746370917/hhtrymcn59hllixjpa0x.jpg	2025-05-04	69a67713-19be-419f-8bc7-b0a0851ef30f	\N
d5155fdf-1b12-4e36-8433-2ef21e207aad	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746370948/pligbba8thoxeh7ytijl.avif	2025-05-04	48bf65a7-d1da-4129-bacc-f3d7b4ab1629	\N
afadba36-9de8-468a-9673-d7be40e42272	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746371998/zydm20aeoala36bzlcbf.jpg	2025-05-04	5f025556-389c-40cc-af07-2e5e119e3de5	\N
fea36b09-860c-4248-b585-4678ebde9b78	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372021/a6simxodemcbajwwqbnl.jpg	2025-05-04	98d71cee-5a2b-45d1-b6fa-9877c18f3960	\N
bf935c22-8a09-41e7-b936-4d206003a34a	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372043/ovr0rlqsjl8wzkp6zlwz.jpg	2025-05-04	77e7898f-aeb2-4de4-9953-e6f65be39458	\N
ba75aef1-a5bf-481b-9f9a-ef4050860c8a	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372064/spre6uqhve8c1zdybcap.png	2025-05-04	98fcaaf2-f729-4e48-81df-9a14296ab060	\N
fd433202-20a6-47bc-9f1d-df0a752145bf	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372095/i1vd5kgserpbwf0mi3pi.jpg	2025-05-04	c7bda1a3-c26e-4922-82ab-5942a64efcbf	\N
a10c6228-a164-44dd-a497-473f86eb0359	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372122/ats45fygfanc1bgeb0ud.jpg	2025-05-04	68dbbc18-7d0d-4478-a606-05c2d6bd0aa2	\N
33228688-fce0-42de-9f7e-e2802ed8f836	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372156/ejoj7iiuqnenwcp0xyj0.jpg	2025-05-04	4f3d5be9-b375-4a4f-b250-6dce2f1a151a	\N
c16afa13-1de1-4435-a8f2-f1879d24d7df	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372190/nmbggzqwziqutcbhnbqd.jpg	2025-05-04	e1223283-a9a6-4ab2-a8fb-bcf5abdbaa4c	\N
ba4ce980-767d-46aa-9ec2-75cb73460b5c	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746372225/wcacpfyx92gaer9zfqpm.jpg	2025-05-04	53083e20-0d2a-40ee-b7f0-35275181e474	\N
9f07cdaf-cc30-4b42-b5ef-7917e0d59fb0	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378487/jaondkcy6iscqfdkgjqz.jpg	2025-05-04	\N	267eb21a-00cf-4f95-8ab9-f582d52c3563
8f45e604-0e0d-44db-89af-44a230718e9e	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378532/yn2flfvwooft29h7moit.jpg	2025-05-04	\N	9134084d-ba18-4c1b-a158-0a2a22b360bd
54a44abd-2871-4af2-a606-7eb05952be26	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378546/xqggwrf8jcm6lpnvpf5p.jpg	2025-05-04	\N	c3982674-48bd-4460-9fe9-2020a4b3f3e1
8c00a6b6-32f4-4d43-85e8-0c90452304a1	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378741/alebfvuhx27ypggi41cc.jpg	2025-05-04	\N	bc872790-3ea9-4c90-ad28-6b77111cc00f
8fc03d6e-7cfb-44e1-803c-9461be199797	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378793/poawwfzzzm9hj3y0rlst.jpg	2025-05-04	\N	b6e33e0e-bde6-42c1-8960-7d8b2af7a8f8
3303a9f0-bc9e-4196-9078-3b9f34be47e1	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378878/adxbc1tlghrmpovjqtla.jpg	2025-05-04	\N	ce961bcb-0c38-48e2-bb27-ff91cbe4f076
b20895fa-030f-4717-b2c4-94c8c1edc1f6	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746378974/xcs1pj6muy4axz8jgz3b.jpg	2025-05-04	\N	a40fda2a-f3da-41a7-aed3-8a758c25fb9b
0c93b9b1-600c-4005-856e-65f9be2733f3	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379040/qq53g2gfnrhotquhv4pl.jpg	2025-05-04	\N	3da933fb-eb77-431e-adc2-cea19937d81e
4de1dccd-a885-4d51-b325-16c3229cbcca	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379098/pmcpnxpbdokm5vdpgoaz.jpg	2025-05-04	\N	315e5141-e82b-4ed0-8784-c0f82ad34acf
cf17a499-70c6-4780-b377-95e461b4e620	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379211/ok4zgqbltq9wuemmqvp5.jpg	2025-05-04	\N	f1771800-7b62-498c-8eab-0af0001beec2
32eda022-dc00-4084-bbbf-ccb1be60f92b	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379247/atsotrh2kgrcw3cpdj47.jpg	2025-05-04	\N	99ed4c63-60c5-48bc-b03f-f5ebbc4af631
751ae55a-1589-4d75-a82b-f7a724774c11	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379386/doz57bsyxjowrdymqb3c.jpg	2025-05-04	\N	f0076d53-a129-49ec-9e5f-62255868cdc2
c8f1cd28-0205-4a8c-90ef-5ecec323ca5c	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379456/amwcwgahsy9icwqhkv5j.jpg	2025-05-04	\N	e13cbe84-b3a2-42e9-9999-3daf371e125f
91b0663f-028b-4048-bfc5-0cb2556405f4	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379513/u787zmxs362fknqbfzvz.jpg	2025-05-04	\N	1bcbf72c-e394-462f-a5df-dd2feb8263fd
9bca30e6-8e66-49c4-a07e-364d33de8abf	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379755/vs4b6mgu0bsvvbj7tkhb.jpg	2025-05-04	\N	5f4e1c74-0f21-4449-a905-7a6712da3996
5557ed70-3c6d-40ba-be5f-05dd6140b5ce	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379830/cgzfacwpbxnzmgyyxrb3.jpg	2025-05-04	\N	12ffdc59-399a-45a8-8301-2d4538b77bc4
f310ff66-5910-409d-bb3b-d2c51126f8df	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379888/xstej4bzlazuk9u73fbb.jpg	2025-05-04	\N	576ea1a7-3085-435d-975b-6e31a0660f73
d36bf235-a936-4ea3-918f-f9ff0307387d	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379960/rf7lpeuafgks8wiuwkyo.jpg	2025-05-04	\N	bba8f2fb-7c3c-4a7e-9811-69da109b89a6
766cbfd2-3dc4-4f6c-95b7-e4327af8855f	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746379995/lqdvnvrziyjgzqsdp69y.jpg	2025-05-04	\N	00f99c43-2a49-4d58-9655-81d6d1636123
681a6dc3-d3ce-4293-9a9e-527351d75c74	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746380033/kcccwvoptlvs29dyeouf.jpg	2025-05-04	\N	30363849-8a59-4966-b12f-b5905125301c
23721009-0d5f-4ad8-87f9-879fad607350	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746380104/js8cgq8phwygjz7wlurl.jpg	2025-05-04	\N	351372db-36c1-4925-a89c-e2ed9cc0abe9
ed79d852-699a-446a-aaa6-45e80526723b	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746380215/hve7zvvlxtt9jfbgyj80.jpg	2025-05-04	\N	c2bdaa99-3b35-4cb6-9c42-2f1497898a2c
2ca23e63-3492-4fa6-9344-14cf8bfb51a3	1	https://res.cloudinary.com/dve46ccsk/image/upload/v1746380349/appwruogsfvzffufyqnz.jpg	2025-05-04	\N	10e9dec7-e823-423e-8272-74b1456248f6
\.


--
-- TOC entry 3342 (class 0 OID 16455)
-- Dependencies: 210
-- Data for Name: Punto_Historico; Type: TABLE DATA; Schema: public; Owner: udinova
--

COPY public."Punto_Historico" ("PuntoHist_ID", "Nombre", "Descripcion", "FechaCreacion", "Longitud", "Latitud", "Estado", "HorarioServicio", "CostoEntrada", "Ciudad", "Pais", "Localidad", "Visibilidad") FROM stdin;
267eb21a-00cf-4f95-8ab9-f582d52c3563	Parque Nacional Noel Kempff Mercado	Centro de conservación biológica	2023-06-15	-60.86667	-14.26667	1	08:00 - 16:00	50.00 Bs	Santa Cruz de la Sierra	Bolivia	Provincia Velasco	1
9134084d-ba18-4c1b-a158-0a2a22b360bd	Catedral Metropolitana Basílica Menor de San Lorenzo	Iglesia principal de Santa Cruz de la Sierra	2023-04-22	-63.181848	-17.783844	1	07:00 - 20:00	Gratis	Santa Cruz de la Sierra	Bolivia	Centro Histórico	1
c3982674-48bd-4460-9fe9-2020a4b3f3e1	Plaza 24 de Septiembre	Plaza principal de Santa Cruz de la Sierra	2023-01-10	-63.1821256	-17.7833152	1	00:00 - 24:00	Gratis	Santa Cruz de la Sierra	Bolivia	Centro Histórico	1
bc872790-3ea9-4c90-ad28-6b77111cc00f	Parque Urbano Central	Espacio verde para recreación y esparcimiento	2023-04-05	-63.170444	-17.794139	1	06:00 - 22:00	Gratis	Santa Cruz de la Sierra	Bolivia	Av. Cañoto y Av. Roca y Coronado	1
b6e33e0e-bde6-42c1-8960-7d8b2af7a8f8	Biocentro Güembé	Reserva natural con piscinas, senderos ecológicos, aviario y mariposario.	1994-07-15	-63.245820	-17.768209	1	09:00 - 18:00	Bs. 50 (adultos), Bs. 30 (niños)	Santa Cruz de la Sierra	Bolivia	Norte	1
ce961bcb-0c38-48e2-bb27-ff91cbe4f076	Jardín Botánico Municipal de Santa Cruz	Espacio natural con diversidad de flora	2023-03-18	-63.070316	-17.764638	1	08:00 - 17:00	15.00 Bs	Santa Cruz de la Sierra	Bolivia	Distrito 8	1
a40fda2a-f3da-41a7-aed3-8a758c25fb9b	Parque Regional Lomas de Arena	Área protegida con dunas de arena	2023-07-05	-63.15862941782737	-17.940259	1	09:00 - 16:00	20.00 Bs	Santa Cruz de la Sierra	Bolivia	Distrito 12	1
3da933fb-eb77-431e-adc2-cea19937d81e	Museo de Arte Contemporáneo	Espacio dedicado al arte moderno y contemporáneo	2023-02-15	-63.176938386257355	-17.783492325150426	1	10:00 - 18:00	20.00 Bs	Santa Cruz de la Sierra	Bolivia	Calle Sucre, frente a la plaza	1
315e5141-e82b-4ed0-8784-c0f82ad34acf	Pueblo de Porongo	Pueblo tradicional con arquitectura colonial y festividades culturales.	1914-02-22	-63.30826231479916	-17.852585075528367	1	Abierto	Gratis	Porongo	Bolivia	Oeste	1
f1771800-7b62-498c-8eab-0af0001beec2	Zoológico Municipal de Santa Cruz	Hogar de diversas especies de animales bolivianos y de otras partes del mundo.	1979-09-23	-63.18305930825112	-17.75920927374275	1	09:00 - 17:00	Bs. 10 (adultos), Bs. 5 (niños)	Santa Cruz de la Sierra	Bolivia	Centro	1
99ed4c63-60c5-48bc-b03f-f5ebbc4af631	Manzana Uno Espacio Cultural	Centro cultural con exposiciones de arte, teatro y eventos.	1994-03-10	-63.182493039840445	-17.78414228865268	1	10:00 - 22:00 (varía según el evento)	Varía según el evento	Santa Cruz de la Sierra	Bolivia	Centro Histórico	1
f0076d53-a129-49ec-9e5f-62255868cdc2	Samaipata	Pueblo pintoresco conocido por su clima agradable y el sitio arqueológico El Fuerte.	1618-05-30	-63.873895419285724	-18.17463697137061	1	Abierto	Varía según la atracción	Samaipata	Bolivia	Cordillera	1
e13cbe84-b3a2-42e9-9999-3daf371e125f	El Fuerte de Samaipata	Impresionante sitio arqueológico preincaico tallado en roca.	1618-05-30	-63.81936825843487	-18.17833079661277	1	08:00 - 17:00	Bs. 50 (extranjeros), Bs. 30 (nacionales)	Samaipata	Bolivia	Cordillera	1
1bcbf72c-e394-462f-a5df-dd2feb8263fd	Cascadas de Jardín de las Delicias	Hermosas cascadas en un entorno natural exuberante cerca de Samaipata.	1517-01-01	-63.51319543021729	-17.86449561181718	1	08:00 - 18:00	Bs. 10	Samaipata	Bolivia	Cordillera	1
5f4e1c74-0f21-4449-a905-7a6712da3996	Parque Nacional Amboró	Vasta área protegida con una increíble diversidad de flora y fauna.	1973-07-14	-63.63227154335078	-17.81594261465098	1	Abierto	Varía según la zona y el tour	Buena Vista	Bolivia	Norte y Oeste	1
12ffdc59-399a-45a8-8301-2d4538b77bc4	Refugio de Vida Silvestre Los Volcanes	Área natural con senderos, cascadas y oportunidades para observar aves.	1996-04-19	-63.598303554553596	-18.105142258435748	1	08:00 - 17:00	Bs. 20	Buena Vista	Bolivia	Norte	1
576ea1a7-3085-435d-975b-6e31a0660f73	Aguas Calientes	Fuentes termales naturales con propiedades medicinales.	1916-01-01	-59.511942661209375	-18.455079788456278	1	08:00 - 18:00	Bs. 20	Montero	Bolivia	Norte	1
bba8f2fb-7c3c-4a7e-9811-69da109b89a6	Casa de la Cultura Raúl Otero Reiche	Centro cultural con diversas actividades artísticas	2023-03-20	-63.18269268059533	-17.783235908105937	1	08:30 - 12:30 / 15:00 - 19:00	5.00 Bs	Santa Cruz de la Sierra	Bolivia	Calle Independencia	1
00f99c43-2a49-4d58-9655-81d6d1636123	Misiones Jesuíticas de la Chiquitania (San Javier)	Una de las mejor conservadas misiones jesuíticas, Patrimonio de la Humanidad por la UNESCO.	1691-01-01	-62.504871769563486	-16.274424894473682	1	08:00 - 12:00, 14:00 - 18:00	Bs. 15	San Javier	Bolivia	Chiquitania	1
30363849-8a59-4966-b12f-b5905125301c	Misiones Jesuíticas de la Chiquitania (San Ignacio de Velasco)	Ciudad con una rica historia jesuítica y atractivos naturales cercanos.	1748-01-01	-60.960249061234585	-16.37357095484561	1	Abierto	Varía según la atracción	San Ignacio de Velasco	Bolivia	Chiquitania	1
351372db-36c1-4925-a89c-e2ed9cc0abe9	Misiones Jesuíticas de la Chiquitania (Concepción)	Otra impresionante misión jesuítica con una hermosa iglesia.	1699-01-01	-62.02354699979132	-16.135591789404078	1	08:00 - 12:00, 14:00 - 18:00	Bs. 15	Concepción	Bolivia	Chiquitania	1
c2bdaa99-3b35-4cb6-9c42-2f1497898a2c	Pueblo de Porongo	Pueblo tradicional con arquitectura colonial y festividades culturales.	1714-02-22	-63.30824226549918	-17.85259160437876	1	Abierto	Gratis	Porongo	Bolivia	Oeste	1
10e9dec7-e823-423e-8272-74b1456248f6	Pueblo de Cotoca	Pueblo conocido por su iglesia y festividades religiosas.	1799-12-15	-62.996175894603624	-17.754624040297198	1	Abierto	Gratis (iglesia)	Cotoca	Bolivia	Este	1
\.


--
-- TOC entry 3343 (class 0 OID 16460)
-- Dependencies: 211
-- Data for Name: historias; Type: TABLE DATA; Schema: public; Owner: udinova
--

COPY public.historias (id_historia, titulo, descripcion, estado) FROM stdin;
9c08a940-c555-4dc8-8ce8-413cb52ceacf	Fundación de Santa Cruz	La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.	t
0a904d1d-660e-4f9e-8a22-76a14517e3cc	Rebelión Afro-Indígena de 1809	Levantamiento de esclavos y pueblos indígenas contra las autoridades coloniales.	t
15ad6434-61ad-4169-a95d-bad5b7742766	Batalla de El Pari	Enfrentamiento crucial durante la guerra de independencia.	t
b13f6dd7-4e2c-46a4-b543-a19991442e70	Batalla de Santa Bárbara	Victoria patriota que consolidó la independencia en la región de Chiquitos.	t
effc7b0c-cec3-44f6-a7f3-bc13805c03ff	Independencia de Santa Cruz	Proclamación de la independencia de Santa Cruz de la Sierra.	t
89a26a87-1f52-4a1c-bbc5-dd2909b6e861	Reforma Agraria y Desarrollo Agroindustrial	Transformación del sector agrícola en Santa Cruz.	t
15b80a92-3460-4a1d-b6ea-edb1ed4e0fae	Autonomía Departamental	Movimiento por la autonomía de Santa Cruz.	t
69a67713-19be-419f-8bc7-b0a0851ef30f	Crecimiento Urbano y Modernización	Transformación de Santa Cruz en una metrópoli moderna.	t
48bf65a7-d1da-4129-bacc-f3d7b4ab1629	Fusión de Santa Cruz y San Lorenzo	Unificación de dos asentamientos que consolidaron la ciudad actual.	t
5f025556-389c-40cc-af07-2e5e119e3de5	Misiones Jesuitas en Chiquitos	Evangelización y desarrollo cultural en la región oriental.	t
98d71cee-5a2b-45d1-b6fa-9877c18f3960	Grito Libertario de 1810	Primer alzamiento contra el dominio español en Santa Cruz.	t
77e7898f-aeb2-4de4-9953-e6f65be39458	Guerra del Chaco	Conflicto bélico entre Bolivia y Paraguay que afectó a Santa Cruz.	t
98fcaaf2-f729-4e48-81df-9a14296ab060	Crecimiento Económico del Siglo XXI	Transformación de Santa Cruz en motor económico de Bolivia.	t
c7bda1a3-c26e-4922-82ab-5942a64efcbf	Movimiento Cívico por la Autonomía	Lucha por una mayor autonomía departamental en Santa Cruz.	t
68dbbc18-7d0d-4478-a606-05c2d6bd0aa2	Desarrollo del Parque Industrial Latinoamericano	Creación de un polo industrial en Santa Cruz.	t
4f3d5be9-b375-4a4f-b250-6dce2f1a151a	Crisis Ambiental y Quemas Forestales	Desafíos ecológicos enfrentados por Santa Cruz.	t
e1223283-a9a6-4ab2-a8fb-bcf5abdbaa4c	Pandemia de COVID-19	Impacto del coronavirus en Santa Cruz.	t
53083e20-0d2a-40ee-b7f0-35275181e474	Visita del Papa Francisco a Santa Cruz de la Sierra	La visita del Papa Francisco a Santa Cruz de la Sierra en julio de 2015 fue un evento de gran relevancia espiritual y social para la comunidad católica y la sociedad boliviana en general. Durante su estancia, el Pontífice participó en diversas actividades que dejaron una huella significativa en la historia reciente del país.	t
\.


--
-- TOC entry 3344 (class 0 OID 16467)
-- Dependencies: 212
-- Data for Name: hitos_historicos; Type: TABLE DATA; Schema: public; Owner: udinova
--

COPY public.hitos_historicos (id_hito_historico, titulo, descripcion, fecha, "historiaIdHistoria") FROM stdin;
4f563505-03e8-4475-959c-a5030da7ae76	Fundación de Santa Cruz	Fundación original en la región de Chiquitos.	1561-02-26	9c08a940-c555-4dc8-8ce8-413cb52ceacf
2d333291-2c27-41a1-8c0b-558f21c4265c	Traslado de la Ciudad	La ciudad fue trasladada cerca del río Piraí.	1595-01-01	9c08a940-c555-4dc8-8ce8-413cb52ceacf
065be3fc-5d87-410b-9c5e-4e08bb938973	Consolidación definitiva	Se establece definitivamente la ubicación actual.	1622-01-01	9c08a940-c555-4dc8-8ce8-413cb52ceacf
e97b44ea-06ad-4008-bee3-a9387880415e	Conspiración Descubierta	El 15 de agosto de 1809, las autoridades coloniales descubrieron una conspiración liderada por esclavos y pueblos indígenas que planeaban tomar el control de Santa Cruz de la Sierra. La rebelión fue motivada por las injusticias y abusos sufridos por estas comunidades.	1809-08-15	0a904d1d-660e-4f9e-8a22-76a14517e3cc
b770e5df-6933-482d-aada-6a3a8b37d5b6	Intento de Levantamiento	A pesar de la represión inicial, los rebeldes intentaron llevar a cabo su plan el 20 de agosto de 1809. Sin embargo, fueron enfrentados por las fuerzas coloniales, resultando en la captura y ejecución de varios líderes del movimiento.	1809-08-20	0a904d1d-660e-4f9e-8a22-76a14517e3cc
bc0ad2ef-79a4-4014-a051-37935a4d5721	Consecuencias de la Rebelión	La fallida rebelión llevó a un aumento en la represión por parte de las autoridades coloniales, intensificando el control sobre las comunidades afrodescendientes e indígenas. Este evento destacó las tensiones sociales y raciales en la región durante el periodo colonial.	1809-09-01	0a904d1d-660e-4f9e-8a22-76a14517e3cc
fbbe1bc0-f529-48f1-9ae0-337905049f56	Inicio de la Batalla	El 21 de noviembre de 1816, las fuerzas patriotas lideradas por Ignacio Warnes se enfrentaron a las tropas realistas en la Batalla de El Pari, cerca de Santa Cruz de la Sierra. Fue una de las batallas más sangrientas de la guerra de independencia.	1816-11-21	15ad6434-61ad-4169-a95d-bad5b7742766
8a176cd4-e901-46d0-96b8-e85b997ae0c6	Muerte de Ignacio Warnes	Durante la batalla, el líder patriota Ignacio Warnes fue mortalmente herido. Su muerte fue un golpe significativo para las fuerzas independentistas en la región.	1816-11-21	15ad6434-61ad-4169-a95d-bad5b7742766
7b7629b6-fc27-4a73-928e-3aa997141c20	Resultado de la Batalla	A pesar de la pérdida de Warnes, las fuerzas patriotas lograron infligir grandes bajas al ejército realista. La batalla es recordada por su brutalidad y por consolidar el espíritu de lucha por la independencia en Santa Cruz.	1816-11-21	15ad6434-61ad-4169-a95d-bad5b7742766
a2b73225-0036-4422-bc0a-0ae2d3ef5ca8	Campaña de Chiquitos	En 1815, Ignacio Warnes organizó una campaña militar en la región de Chiquitos para enfrentar a las fuerzas realistas que amenazaban la independencia de Santa Cruz.	1815-08-01	b13f6dd7-4e2c-46a4-b543-a19991442e70
4a73069d-26db-4bda-b9df-d19b7e20146f	Batalla de Santa Bárbara	El 7 de octubre de 1815, las fuerzas patriotas lideradas por Warnes derrotaron a las tropas realistas en la Batalla de Santa Bárbara, asegurando el control de la región y fortaleciendo la causa independentista.	1815-10-07	b13f6dd7-4e2c-46a4-b543-a19991442e70
d576ee66-0511-43e2-8714-42c6ce6c2362	Consolidación de la Independencia	La victoria en Santa Bárbara permitió a las fuerzas patriotas consolidar su control en el oriente boliviano, estableciendo un bastión clave para las operaciones futuras en la lucha por la independencia.	1815-10-08	b13f6dd7-4e2c-46a4-b543-a19991442e70
8adf2672-ad58-41ea-ad38-8e6a21f3c9fa	Proclamación de Independencia	El 14 de febrero de 1825, Santa Cruz de la Sierra proclamó su independencia del dominio español, uniéndose al movimiento independentista que culminaría con la creación de la República de Bolivia.	1825-02-14	effc7b0c-cec3-44f6-a7f3-bc13805c03ff
5b57f987-d949-49b5-982b-6fcc9ade179a	Participación en la Asamblea	Representantes de Santa Cruz participaron en la Asamblea Deliberante de 1825, contribuyendo a la redacción del acta de independencia y a la formación del nuevo estado boliviano.	1825-08-06	effc7b0c-cec3-44f6-a7f3-bc13805c03ff
99dfc39f-61ca-4e33-bd77-84cd4d53e580	Integración a Bolivia	Tras la independencia, Santa Cruz se integró plenamente a la República de Bolivia, desempeñando un papel crucial en el desarrollo económico y político del país.	1825-12-01	effc7b0c-cec3-44f6-a7f3-bc13805c03ff
98d15555-ff42-4fd8-81d2-63ac2066a12c	Implementación de la Reforma Agraria	En 1953, el gobierno boliviano implementó una reforma agraria que redistribuyó tierras y promovió el desarrollo agrícola en regiones como Santa Cruz, incentivando la producción y modernización del sector.	1953-08-02	89a26a87-1f52-4a1c-bbc5-dd2909b6e861
83bedd1e-3997-4124-a0c7-3fba0310f691	Expansión de la Frontera Agrícola	Durante las décadas siguientes, Santa Cruz experimentó una expansión significativa de su frontera agrícola, convirtiéndose en el principal productor de soya, maíz y otros cultivos en Bolivia.	1970-01-01	89a26a87-1f52-4a1c-bbc5-dd2909b6e861
1080dcbe-7944-4b47-804c-5f863960721a	Consolidación del Agroindustria	La región consolidó su posición como el motor agroindustrial del país, con inversiones en tecnología, infraestructura y exportaciones, contribuyendo significativamente al PIB nacional.	2000-01-01	89a26a87-1f52-4a1c-bbc5-dd2909b6e861
bf026ed7-7bb0-47bd-8fdc-988d21fb2c4f	Cabildo del Millón	El 15 de diciembre de 2006, se realizó una multitudinaria concentración en Santa Cruz de la Sierra, conocida como el 'Cabildo del Millón', donde se exigió la inclusión de la autonomía departamental en la nueva Constitución.	2006-12-15	15b80a92-3460-4a1d-b6ea-edb1ed4e0fae
4018cec5-491f-4544-8d3d-8f1e31c4e04e	Referéndum Autonómico	En 2008, Santa Cruz llevó a cabo un referéndum donde la mayoría de los votantes apoyaron la autonomía departamental, marcando un hito en la descentralización del poder en Bolivia.	2008-05-04	15b80a92-3460-4a1d-b6ea-edb1ed4e0fae
20a50fd4-080d-46fd-b6ad-ca2ff59ce8e3	Estatuto Autonómico	Posteriormente, se elaboró y aprobó el Estatuto Autonómico de Santa Cruz, estableciendo las bases legales y administrativas para el ejercicio de la autonomía en el departamento.	2010-01-01	15b80a92-3460-4a1d-b6ea-edb1ed4e0fae
4a2c4a64-6c86-483b-8f23-52128258ae9b	Planificación Urbana	A partir de la década de 1970, Santa Cruz adoptó un modelo de crecimiento basado en anillos concéntricos, facilitando la expansión ordenada de la ciudad y la integración de nuevas zonas urbanas.	1970-01-01	69a67713-19be-419f-8bc7-b0a0851ef30f
190603c0-8f7f-49b4-9e3e-4450081a82ab	Desarrollo de Infraestructura	Se realizaron importantes inversiones en infraestructura, incluyendo la construcción de avenidas, puentes y sistemas de transporte, mejorando la conectividad y calidad de vida en la ciudad.	1990-01-01	69a67713-19be-419f-8bc7-b0a0851ef30f
6b324784-c392-437d-b4b9-03a7e810035b	Propuesta de Fusión	En 1592, el gobernador Nuño de la Cueva propuso fusionar Santa Cruz de la Sierra y San Lorenzo para fortalecer la región. Esta iniciativa buscaba consolidar la población y mejorar la defensa contra ataques indígenas.	1592-01-01	48bf65a7-d1da-4129-bacc-f3d7b4ab1629
a1c45879-edf6-4903-9933-e6d9a1e89a27	Acuerdo entre Pobladores	Los habitantes de ambas ciudades acordaron la fusión tras consultas realizadas por el gobernador. Este consenso reflejaba el deseo común de unificar esfuerzos para el desarrollo regional.	1592-02-01	48bf65a7-d1da-4129-bacc-f3d7b4ab1629
365c1d47-45dc-4927-aefe-9cfd6dafd5f8	Establecimiento de la Nueva Ciudad	La fusión se concretó con el establecimiento de la nueva ciudad en la ubicación actual de Santa Cruz de la Sierra, marcando un hito en su historia urbana.	1592-03-01	48bf65a7-d1da-4129-bacc-f3d7b4ab1629
3a95877a-85ba-4824-b20a-e31fb0c4257e	Fundación de San Francisco Xavier	En 1691, los jesuitas fundaron San Francisco Xavier como parte de su misión evangelizadora en la región de Chiquitos, estableciendo un modelo de reducción que combinaba religión y cultura.	1691-01-01	5f025556-389c-40cc-af07-2e5e119e3de5
f13740c7-b2d0-4b06-ba2f-4fbae7eff5f0	Desarrollo de las Misiones	A lo largo del siglo XVIII, se establecieron varias misiones, incluyendo San Rafael y San José de Chiquitos, que se convirtieron en centros de arte, música y arquitectura barroca mestiza.	1700-01-01	5f025556-389c-40cc-af07-2e5e119e3de5
01002171-b08f-4767-a86c-9ebf20c58d78	Expulsión de los Jesuitas	En 1767, la expulsión de los jesuitas por orden del rey Carlos III puso fin a su influencia directa, pero las misiones continuaron siendo importantes centros culturales.	1767-07-01	5f025556-389c-40cc-af07-2e5e119e3de5
e9ea3df9-6957-452c-835b-b1c17c364f0a	Inspiración de Movimientos Previos	Los movimientos independentistas en otras regiones de América Latina inspiraron a los cruceños a buscar su propia libertad del dominio español.	1810-08-01	98d71cee-5a2b-45d1-b6fa-9877c18f3960
f1cc9ff5-d8dc-4902-b1ac-86f20482d9f7	Proclamación del Grito Libertario	El 24 de septiembre de 1810, los ciudadanos de Santa Cruz de la Sierra se levantaron contra las autoridades coloniales, marcando el inicio de su lucha por la independencia.	1810-09-24	98d71cee-5a2b-45d1-b6fa-9877c18f3960
f7b6e6a1-8b46-4b63-ba99-8a6c94bdb613	Formación de la Junta de Gobierno	Tras el alzamiento, se estableció una Junta de Gobierno local que asumió el control político y administrativo de la región.	1810-10-01	98d71cee-5a2b-45d1-b6fa-9877c18f3960
927768ec-5c94-4ed6-b6d1-d2f7ab5217b1	Inicio de la Guerra	En 1932, Bolivia y Paraguay entraron en conflicto por el control del Chaco Boreal, una región rica en recursos naturales.	1932-06-15	77e7898f-aeb2-4de4-9953-e6f65be39458
1c6cb071-2f3a-4bff-8708-b891d4b5e15f	Impacto en Santa Cruz	Santa Cruz de la Sierra sirvió como base logística y de reclutamiento para las tropas bolivianas, siendo clave en el esfuerzo bélico.	1933-01-01	77e7898f-aeb2-4de4-9953-e6f65be39458
23fbb4dc-3be6-4483-9357-a27eede681c1	Fin del Conflicto	La guerra concluyó en 1935 con un alto el fuego, dejando profundas secuelas en la sociedad boliviana y en la región cruceña.	1935-06-12	77e7898f-aeb2-4de4-9953-e6f65be39458
1be88ab9-ae53-42d9-81a5-a145df313d99	Expansión Agroindustrial	El auge de la agroindustria, especialmente en la producción de soya, convirtió a Santa Cruz en una potencia económica nacional.	2000-01-01	98fcaaf2-f729-4e48-81df-9a14296ab060
1f61f7fa-9dd2-437b-8afb-3083e2a45ae1	Desarrollo Urbano	La ciudad experimentó un crecimiento urbano acelerado, con la construcción de nuevas infraestructuras y zonas residenciales.	2010-01-01	98fcaaf2-f729-4e48-81df-9a14296ab060
a09b791b-c842-485b-8c08-b8ff6d787184	Atracción de Inversiones	Santa Cruz se consolidó como un destino atractivo para inversiones extranjeras, impulsando aún más su desarrollo económico.	2020-01-01	98fcaaf2-f729-4e48-81df-9a14296ab060
17dfabc4-962e-4dea-b1e0-26c87b4b2ac8	Inicio del Movimiento	En la década de 2000, surgió un movimiento cívico en Santa Cruz que demandaba mayor autonomía política y administrativa del gobierno central.	2004-01-01	c7bda1a3-c26e-4922-82ab-5942a64efcbf
b3356820-a520-4743-a5df-c1558cfdeba0	Referéndum Autonómico	En 2008, se realizó un referéndum en el que la mayoría de los votantes apoyó la autonomía departamental, aunque el gobierno central no reconoció los resultados.	2008-05-04	c7bda1a3-c26e-4922-82ab-5942a64efcbf
405b2364-3047-443c-992e-e6eafde70235	Estatuto Autonómico	A pesar de las tensiones, Santa Cruz logró establecer un estatuto autonómico que definía sus competencias y estructura de gobierno.	2010-01-01	c7bda1a3-c26e-4922-82ab-5942a64efcbf
66e0b5ae-b6ec-431c-83a6-3b7cbb7ec98d	Inauguración del Parque	En 2005, se inauguró el Parque Industrial Latinoamericano, destinado a albergar empresas manufactureras y de servicios.	2005-06-01	68dbbc18-7d0d-4478-a606-05c2d6bd0aa2
0a7bb425-1a7c-4e21-a055-de476e8ca340	Atracción de Empresas	El parque atrajo a numerosas empresas nacionales e internacionales, generando empleo y desarrollo económico en la región.	2010-01-01	68dbbc18-7d0d-4478-a606-05c2d6bd0aa2
b4e9b659-4306-4252-b3ae-5e5da2c5c0ec	Expansión y Modernización	En la última década, el parque ha experimentado una expansión significativa, incorporando tecnologías modernas y sostenibles.	2020-01-01	68dbbc18-7d0d-4478-a606-05c2d6bd0aa2
a8b5ec89-5572-464a-b091-666445c663a7	Incendios Forestales	En 2019, Santa Cruz sufrió una serie de incendios forestales que devastaron vastas áreas de bosques, afectando la biodiversidad y la salud pública.	2019-08-01	4f3d5be9-b375-4a4f-b250-6dce2f1a151a
92a9152c-f1c2-4adc-bd46-2cb0cec32ef4	Respuesta Ciudadana	La sociedad civil se movilizó para combatir los incendios y exigir políticas ambientales más estrictas.	2019-09-01	4f3d5be9-b375-4a4f-b250-6dce2f1a151a
ec82effb-7eb6-4e46-a43f-17ae1e3d9c87	Políticas de Reforestación	Se implementaron programas de reforestación y conservación para mitigar los daños y prevenir futuros desastres.	2020-01-01	4f3d5be9-b375-4a4f-b250-6dce2f1a151a
078163e7-2388-4dc2-b416-d18b86ce55fa	Primeros Casos	Santa Cruz reportó sus primeros casos de COVID-19 en marzo de 2020, convirtiéndose en uno de los epicentros de la pandemia en Bolivia.	2020-03-10	e1223283-a9a6-4ab2-a8fb-bcf5abdbaa4c
b1ceb83c-7d7c-4c80-ac5f-49369911b318	Colapso del Sistema de Salud	El sistema de salud enfrentó una crisis debido al aumento de casos, falta de insumos y personal médico.	2020-06-01	e1223283-a9a6-4ab2-a8fb-bcf5abdbaa4c
8d0c1e20-036e-4e34-94e6-a78cf1eda9db	Campañas de Vacunación	A partir de 2021, se implementaron campañas masivas de vacunación para controlar la propagación del virus.	2021-01-01	e1223283-a9a6-4ab2-a8fb-bcf5abdbaa4c
a66c2a4c-0d3f-47f0-bad6-e7c9d67d2aff	Llegada a Santa Cruz de la Sierra	El 8 de julio de 2015, el Papa Francisco arribó al Aeropuerto Internacional Viru Viru en Santa Cruz de la Sierra, siendo recibido por autoridades eclesiásticas y civiles. Su llegada marcó el inicio de una serie de eventos que congregaron a miles de fieles y ciudadanos.	2015-07-08	53083e20-0d2a-40ee-b7f0-35275181e474
07828d45-a901-4c3d-b908-93329e4453b4	Santa Misa en la Plaza de Cristo Redentor	El 9 de julio, el Papa Francisco celebró una multitudinaria misa en la Plaza de Cristo Redentor, donde dirigió un mensaje de esperanza y unidad a los asistentes. En su homilía, destacó la importancia de la solidaridad y el compromiso con los más necesitados.	2015-07-09	53083e20-0d2a-40ee-b7f0-35275181e474
8ec59929-80b9-44d2-93f1-b157101c8189	Encuentro con Movimientos Populares	Ese mismo día, el Pontífice participó en el II Encuentro Mundial de los Movimientos Populares, realizado en Santa Cruz. En su discurso, abordó temas como la justicia social, la dignidad humana y la necesidad de un cambio estructural que favorezca a los excluidos.	2015-07-09	53083e20-0d2a-40ee-b7f0-35275181e474
457aa58a-9b3e-4ee1-b680-d37ba4415c5d	Visita al Centro de Rehabilitación Palmasola	El 10 de julio, el Papa Francisco visitó el Centro de Rehabilitación Santa Cruz – Palmasola, donde compartió momentos de oración y reflexión con los internos. Su presencia llevó un mensaje de esperanza y reintegración para las personas privadas de libertad.	2015-07-10	53083e20-0d2a-40ee-b7f0-35275181e474
3273e268-9885-4c19-96d0-3b09b93c6182	Despedida y partida hacia Paraguay	Tras concluir su agenda en Bolivia, el Papa Francisco se despidió del pueblo boliviano en una ceremonia en el Aeropuerto Internacional Viru Viru, desde donde partió hacia Paraguay, continuando su gira por América Latina.	2015-07-10	53083e20-0d2a-40ee-b7f0-35275181e474
\.


--
-- TOC entry 3197 (class 2606 OID 16474)
-- Name: hitos_historicos PK_34a2085680feff9078e6fc6b7ed; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public.hitos_historicos
    ADD CONSTRAINT "PK_34a2085680feff9078e6fc6b7ed" PRIMARY KEY (id_hito_historico);


--
-- TOC entry 3193 (class 2606 OID 16476)
-- Name: Punto_Historico PK_446de6c6ddbcb6788f08dfb7ee9; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public."Punto_Historico"
    ADD CONSTRAINT "PK_446de6c6ddbcb6788f08dfb7ee9" PRIMARY KEY ("PuntoHist_ID");


--
-- TOC entry 3199 (class 2606 OID 16490)
-- Name: Imagen PK_5e2f8070e0f59a91c856f2c1bce; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public."Imagen"
    ADD CONSTRAINT "PK_5e2f8070e0f59a91c856f2c1bce" PRIMARY KEY ("imagen_ID");


--
-- TOC entry 3195 (class 2606 OID 16478)
-- Name: historias PK_a1807d48d7509515f17afd37565; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public.historias
    ADD CONSTRAINT "PK_a1807d48d7509515f17afd37565" PRIMARY KEY (id_historia);


--
-- TOC entry 3201 (class 2606 OID 16491)
-- Name: Imagen FK_01af59b8ed0dfd3dd8aa859ca9d; Type: FK CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public."Imagen"
    ADD CONSTRAINT "FK_01af59b8ed0dfd3dd8aa859ca9d" FOREIGN KEY ("Historia_ID") REFERENCES public.historias(id_historia);


--
-- TOC entry 3202 (class 2606 OID 16496)
-- Name: Imagen FK_601d1acf8a3bbc541d609f8bd35; Type: FK CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public."Imagen"
    ADD CONSTRAINT "FK_601d1acf8a3bbc541d609f8bd35" FOREIGN KEY ("PuntoHist_ID") REFERENCES public."Punto_Historico"("PuntoHist_ID");


--
-- TOC entry 3200 (class 2606 OID 16479)
-- Name: hitos_historicos FK_b53b130624b4f14e7d0d006a6fd; Type: FK CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public.hitos_historicos
    ADD CONSTRAINT "FK_b53b130624b4f14e7d0d006a6fd" FOREIGN KEY ("historiaIdHistoria") REFERENCES public.historias(id_historia) ON DELETE CASCADE;


-- Completed on 2025-05-04 17:48:31 UTC

--
-- PostgreSQL database dump complete
--

