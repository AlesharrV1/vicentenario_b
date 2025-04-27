--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3 (Debian 14.3-1.pgdg110+1)
-- Dumped by pg_dump version 14.3 (Debian 14.3-1.pgdg110+1)

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
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
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
-- Data for Name: Punto_Historico; Type: TABLE DATA; Schema: public; Owner: udinova
--

COPY public."Punto_Historico" ("PuntoHist_ID", "Nombre", "Descripcion", "FechaCreacion", "Longitud", "Latitud", "Estado", "HorarioServicio", "CostoEntrada", "Ciudad", "Pais", "Localidad", "Visibilidad") FROM stdin;
267eb21a-00cf-4f95-8ab9-f582d52c3563	Parque Nacional Noel Kempff Mercado	Centro de conservación biológica	2023-06-15	-60.86667	-14.26667	1	08:00 - 16:00	50.00 Bs	Santa Cruz de la Sierra	Bolivia	Provincia Velasco	1
9134084d-ba18-4c1b-a158-0a2a22b360bd	Catedral Metropolitana Basílica Menor de San Lorenzo	Iglesia principal de Santa Cruz de la Sierra	2023-04-22	-63.181848	-17.783844	1	07:00 - 20:00	Gratis	Santa Cruz de la Sierra	Bolivia	Centro Histórico	1
ce961bcb-0c38-48e2-bb27-ff91cbe4f076	Jardín Botánico Municipal de Santa Cruz	Espacio natural con diversidad de flora	2023-03-18	-63.06583	-17.78051	1	08:00 - 17:00	15.00 Bs	Santa Cruz de la Sierra	Bolivia	Distrito 8	1
a40fda2a-f3da-41a7-aed3-8a758c25fb9b	Parque Regional Lomas de Arena	Área protegida con dunas de arena	2023-07-05	-63.1525	-17.95194444	1	09:00 - 16:00	20.00 Bs	Santa Cruz de la Sierra	Bolivia	Distrito 12	1
c3982674-48bd-4460-9fe9-2020a4b3f3e1	Plaza 24 de Septiembre	Plaza principal de Santa Cruz de la Sierra	2023-01-10	-63.1821256	-17.7833152	1	00:00 - 24:00	Gratis	Santa Cruz de la Sierra	Bolivia	Centro Histórico	1
3da933fb-eb77-431e-adc2-cea19937d81e	Museo de Arte Contemporáneo	Espacio dedicado al arte moderno y contemporáneo	2023-02-15	-63.17666	-17.78367	1	10:00 - 18:00	20.00 Bs	Santa Cruz de la Sierra	Bolivia	Calle Sucre, frente a la plaza	1
bba8f2fb-7c3c-4a7e-9811-69da109b89a6	Casa de la Cultura Raúl Otero Reiche	Centro cultural con diversas actividades artísticas	2023-03-20	-63.182896	-17.783323	1	08:30 - 12:30 / 15:00 - 19:00	5.00 Bs	Santa Cruz de la Sierra	Bolivia	Calle Independencia	1
bc872790-3ea9-4c90-ad28-6b77111cc00f	Parque Urbano Central	Espacio verde para recreación y esparcimiento	2023-04-05	-63.170444	-17.794139	1	06:00 - 22:00	Gratis	Santa Cruz de la Sierra	Bolivia	Av. Cañoto y Av. Roca y Coronado	1
\.


--
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
-- Name: hitos_historicos PK_34a2085680feff9078e6fc6b7ed; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public.hitos_historicos
    ADD CONSTRAINT "PK_34a2085680feff9078e6fc6b7ed" PRIMARY KEY (id_hito_historico);


--
-- Name: Punto_Historico PK_446de6c6ddbcb6788f08dfb7ee9; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public."Punto_Historico"
    ADD CONSTRAINT "PK_446de6c6ddbcb6788f08dfb7ee9" PRIMARY KEY ("PuntoHist_ID");


--
-- Name: historias PK_a1807d48d7509515f17afd37565; Type: CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public.historias
    ADD CONSTRAINT "PK_a1807d48d7509515f17afd37565" PRIMARY KEY (id_historia);


--
-- Name: hitos_historicos FK_b53b130624b4f14e7d0d006a6fd; Type: FK CONSTRAINT; Schema: public; Owner: udinova
--

ALTER TABLE ONLY public.hitos_historicos
    ADD CONSTRAINT "FK_b53b130624b4f14e7d0d006a6fd" FOREIGN KEY ("historiaIdHistoria") REFERENCES public.historias(id_historia) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

