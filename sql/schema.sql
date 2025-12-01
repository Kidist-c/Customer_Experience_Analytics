--
-- PostgreSQL database dump
--

\restrict JFGsmhXLjsb20zQDP7mrx86XtAqLNFNaY4tAHmP6hrbdKeVCCKmIJp2Sr4A3ySm

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2025-12-01 15:41:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 16435)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16410)
-- Name: bank; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bank (
    bank_id integer NOT NULL,
    bank_name character varying(255),
    app_name character varying(255)
);


ALTER TABLE public.bank OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16409)
-- Name: bank_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bank_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bank_bank_id_seq OWNER TO postgres;

--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 220
-- Name: bank_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bank_bank_id_seq OWNED BY public.bank.bank_id;


--
-- TOC entry 222 (class 1259 OID 16475)
-- Name: review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.review (
    review_id uuid NOT NULL,
    bank_id integer,
    review text,
    rating numeric,
    date date,
    sentiment_label text,
    sentiment_score numeric,
    source text
);


ALTER TABLE public.review OWNER TO postgres;

--
-- TOC entry 4851 (class 2604 OID 16413)
-- Name: bank bank_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank ALTER COLUMN bank_id SET DEFAULT nextval('public.bank_bank_id_seq'::regclass);


--
-- TOC entry 5004 (class 0 OID 16410)
-- Dependencies: 221
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bank (bank_id, bank_name, app_name) FROM stdin;
1	Commercial Bank of Ethiopia	CBE Birr
2	Bank of Abyssinia	Amole
3	Dashen Bank	DAS Mobile Wallet
\.


--
-- TOC entry 5005 (class 0 OID 16475)
-- Dependencies: 222
-- Data for Name: review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.review (review_id, bank_id, review, rating, date, sentiment_label, sentiment_score, source) FROM stdin;
5112423d-e618-44ba-ba49-62677cb76cd6	1	This application is very important and advantage for transfer of money and finance in the coutry and foriegn country.	5	2025-11-28	POSITIVE	0.998467981815338	Google Play Store
bcb34681-1dd4-4781-b400-4393bb10b1d9	1	why didn't work this app?	1	2025-11-28	NEGATIVE	0.9991324543952942	Google Play Store
c69f051a-00f8-4144-8423-b7ebcd328d2d	1	The app makes our life easier. Thank you CBE!	5	2025-11-28	POSITIVE	0.9996963739395142	Google Play Store
f8002d06-b5c5-4ed1-9d51-a9a379304cf8	1	the most advanced app. but how to stay safe?	5	2025-11-27	NEGATIVE	0.9565096497535706	Google Play Store
81000db5-aa51-467e-826c-fc96160e96a8	1	Good application	4	2025-11-27	POSITIVE	0.999854564666748	Google Play Store
3d88a334-958c-4717-9f97-c5d46359e054	1	It is nice app	5	2025-11-26	POSITIVE	0.9998478889465332	Google Play Store
99d376ea-4824-4af9-a093-27360acc3a5c	1	best	5	2025-11-26	POSITIVE	0.9997941851615906	Google Play Store
f1861daf-a1ed-407a-9e7c-295edbb3877d	1	good app	5	2025-11-26	POSITIVE	0.9998493194580078	Google Play Store
fd178fb7-7026-4d02-98a0-5c86c3bd56f5	1	it suddenly asked me to enter the verification key I received. and it (*get your verification key from the nearest CBE Branch*) Now I'm in Australia, what do you expect me to do???! There is no nearest or furthermost cbe Branch!! SO FRUSTRATING! How can I manage my bank account now????	1	2025-11-25	NEGATIVE	0.9993435740470886	Google Play Store
571c66c6-fd18-437b-b8e5-8c443e9db2df	1	nice app...	5	2025-11-25	POSITIVE	0.9997116923332214	Google Play Store
7b5b3f8c-a0f4-4a15-973a-ff5971ad15fb	1	very good banking service and fast service	5	2025-11-25	POSITIVE	0.9998499155044556	Google Play Store
3a75b79a-002f-4fc2-b6f0-dd8d187e8663	1	thanks blc this app help me to use all time	5	2025-11-24	POSITIVE	0.997163951396942	Google Play Store
6518498e-441c-407d-b546-35a12a98645a	1	good	5	2025-11-24	POSITIVE	0.999816119670868	Google Play Store
f2f0cff2-6181-4a3a-926f-5b3491ca4cf8	1	why we can't send money to other people telebirr wallets??	1	2025-11-24	NEGATIVE	0.9984826445579528	Google Play Store
ad9f4094-ff79-4353-a8b0-d00cfba75ed5	1	wow	5	2025-11-23	POSITIVE	0.999592125415802	Google Play Store
07a6da77-35b8-4ea4-8138-90770842ff0e	1	good	5	2025-11-23	POSITIVE	0.999816119670868	Google Play Store
cd144ce6-efeb-41c2-8247-e57a64bb0181	1	nice	5	2025-11-23	POSITIVE	0.9998552799224854	Google Play Store
8d4577a0-0e73-4113-9479-5764db25dcb7	1	you are the reason why i got ye chogara himem	1	2025-11-22	NEGATIVE	0.9818922877311708	Google Play Store
f077c10c-a958-4812-a779-1077c52fbf45	1	it is so smart app i recommend it for everyone	5	2025-11-22	POSITIVE	0.9998483657836914	Google Play Store
efddfaa5-0542-45ef-80ae-8183cf70bdb0	1	excellent	5	2025-11-22	POSITIVE	0.9998434782028198	Google Play Store
3a277a8e-a6b2-4dac-adb4-8fb592d1c859	1	good	5	2025-11-22	POSITIVE	0.999816119670868	Google Play Store
83111490-271d-4491-9b82-8d8ddf3afb26	1	absolutely right	5	2025-11-22	POSITIVE	0.9998525381088256	Google Play Store
f2bad133-c6ea-4fd5-bc97-1e3fbba1c2c9	1	good app	5	2025-11-22	POSITIVE	0.9998493194580078	Google Play Store
6e1b6127-57b8-44a9-ab08-cdf7e0782c7d	1	mid application it's so annoying	3	2025-11-21	NEGATIVE	0.9997883439064026	Google Play Store
d4184dff-ee60-4895-846f-13872d75735a	1	I used morethan one year	4	2025-11-20	NEGATIVE	0.9802079796791076	Google Play Store
afc51143-03ed-4129-b47b-fd1eaad21b07	1	It's great app,I love this app	5	2025-11-20	POSITIVE	0.9998750686645508	Google Play Store
ad11fbc9-52cc-48f3-adc4-d348a5194089	1	Nice	5	2025-11-20	POSITIVE	0.9998552799224854	Google Play Store
942e6ee2-44c6-45f8-b978-01e9b62d001f	1	suckkkks	1	2025-11-20	NEGATIVE	0.9737535119056702	Google Play Store
9b9850c0-7914-49c8-a51c-7265775accfe	1	not allowing to transfer and showing current statement updates.	1	2025-11-20	NEGATIVE	0.9991471767425536	Google Play Store
9094dfc5-ed8d-4ab9-8605-0f5681a5ee8e	1	I love you this app	5	2025-11-19	POSITIVE	0.9998642206192015	Google Play Store
3c30aa12-7f92-49c8-8986-69ed8b81f79f	1	fast and convenient app, thanks for your dedication as a bank to provide good options to your cuatomers.	1	2025-11-19	POSITIVE	0.9993645548820496	Google Play Store
48d2b2a8-40ea-47bc-b524-322d0d7bf7e4	1	make life easy	5	2025-11-19	POSITIVE	0.999527096748352	Google Play Store
b9b4ccbb-9d0b-4d61-b7b5-90f5d83b3838	1	securr	5	2025-11-19	NEGATIVE	0.989194393157959	Google Play Store
b81fb6db-71c3-4009-9324-fe187120823c	1	My most optional bank	5	2025-11-18	POSITIVE	0.7555280327796936	Google Play Store
370d336c-0c66-4ea8-a043-d044d4560101	1	5 star	5	2025-11-17	POSITIVE	0.9964116215705872	Google Play Store
9b4043ef-a80d-4e57-bbad-1b2784dc4c45	1	it is fantastic app.	5	2025-11-16	POSITIVE	0.9998733997344972	Google Play Store
c384e116-009b-4ff7-85fc-5d0f10f68cda	1	excellent	5	2025-11-16	POSITIVE	0.9998434782028198	Google Play Store
3f06e0e7-cb06-42f1-b61c-2bd59d7713af	1	sifen	5	2025-11-16	NEGATIVE	0.8473547101020813	Google Play Store
58bd2807-7583-4142-bd14-75e98e1dcda3	1	Ok	3	2025-11-16	POSITIVE	0.9997851252555848	Google Play Store
a18b512c-7431-4903-9cc3-1002cf449cff	1	Like	5	2025-11-13	POSITIVE	0.9910564422607422	Google Play Store
7bdc58ea-d854-4b9c-9748-642bada48ecd	1	Nice and very useful app i like it!	5	2025-11-13	POSITIVE	0.999858856201172	Google Play Store
dde272da-1847-40d2-98c4-dcb5e19e7eac	1	good	5	2025-11-13	POSITIVE	0.999816119670868	Google Play Store
96f98a42-ec49-4dbf-b37d-216f6770a700	1	Good	5	2025-11-13	POSITIVE	0.999816119670868	Google Play Store
490c7067-5296-4df0-902e-67a6707a1506	1	Good	5	2025-11-13	POSITIVE	0.999816119670868	Google Play Store
1315ef77-540f-4b87-9b6a-7868f1a343e0	1	smart app	4	2025-11-13	POSITIVE	0.999789297580719	Google Play Store
82c43412-9579-4b3c-b17e-702aef388e16	1	good App	5	2025-11-13	POSITIVE	0.9998493194580078	Google Play Store
34d6492b-f6e7-42ed-851a-348ab215c36a	1	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	2025-11-12	NEGATIVE	0.992516815662384	Google Play Store
cd12a5ee-2573-44e9-81ea-de8118bb8fa2	1	ok	5	2025-11-12	POSITIVE	0.9997851252555848	Google Play Store
b4a45bdc-60cc-4355-92f7-9291f8c59ee5	1	cbe is my choice	4	2025-11-11	POSITIVE	0.9987378716468812	Google Play Store
f7a289b4-7031-4d28-abb6-8b292f52241e	1	Awesome	5	2025-11-11	POSITIVE	0.9998682737350464	Google Play Store
60963970-3671-488b-8810-3b3edaddf571	1	I am not able to transfer. The app is not responding	1	2025-11-11	NEGATIVE	0.999775230884552	Google Play Store
e9c4773a-03ec-4623-9c97-32370e43cc66	1	Very convenient App	5	2025-11-11	POSITIVE	0.994573414325714	Google Play Store
8b783bea-df08-43e8-915f-c459fb841a11	1	excellent but sometimes can not connect	5	2025-11-11	NEGATIVE	0.9832204580307008	Google Play Store
5623e102-0f25-4444-96f2-9e4f96e6994b	1	good app	5	2025-11-11	POSITIVE	0.9998493194580078	Google Play Store
8c0c3699-3b4d-4b4c-bf9b-cf6f34d7e617	1	wow apk	5	2025-11-11	POSITIVE	0.9992477893829346	Google Play Store
95c51b5c-93b3-40dc-b10d-7ea07b503570	1	best 100 %	5	2025-11-11	POSITIVE	0.9998010993003844	Google Play Store
57e7e490-7e00-49b4-85ce-02df5c180255	1	bad app	1	2025-11-10	NEGATIVE	0.9997212290763856	Google Play Store
511966b6-2575-4189-b96d-62b0af2bb5ba	1	best app	5	2025-11-10	POSITIVE	0.999686598777771	Google Play Store
4a33e0ac-be2f-4da7-a573-5b66581b15d9	1	wow	5	2025-11-10	POSITIVE	0.999592125415802	Google Play Store
6cc81f72-bf2d-4406-bd58-d2b16058b713	1	nice app	5	2025-11-10	POSITIVE	0.9998061060905457	Google Play Store
19466a41-ca52-4cb0-a343-a6db9296cef7	1	bad app	4	2025-11-10	NEGATIVE	0.9997212290763856	Google Play Store
6e59b9f4-f3f4-4481-8cea-cf0e7d58e220	1	the app constantly glitches and won't stop loading despite having a decent connection and a cleared cache. telebirr is way better	1	2025-11-10	POSITIVE	0.8869744539260864	Google Play Store
ef00529e-94ab-4df9-a7e0-2bee0d213f49	1	I can't access it properly I think it needs update	1	2025-11-10	NEGATIVE	0.9996213912963868	Google Play Store
8a6f01b8-04dd-4c38-9148-1e46f828cc3d	1	good	4	2025-11-10	POSITIVE	0.999816119670868	Google Play Store
f23eb6ac-a9fb-4df1-95c3-9441fb34d0dd	1	not Refresh	2	2025-11-10	NEGATIVE	0.999051868915558	Google Play Store
22a15e60-01d4-4c7d-8405-fc4daf00de55	1	your statement is not used as wanted	1	2025-11-10	NEGATIVE	0.99908447265625	Google Play Store
3f27b2bb-4631-41e2-acb5-beaab2285532	1	good very good	5	2025-11-10	POSITIVE	0.9998477697372437	Google Play Store
e83b2d32-a305-4408-9c87-40f05b650185	1	this is absolute trash why because it's not Woking most time the servers are down even though I'm using 4g data Internet they steal not working they use to work with out even data package now it's trash can't even send money	1	2025-11-09	NEGATIVE	0.9997031092643738	Google Play Store
a39b1093-9058-4d1e-a200-7347cb946677	1	good app	5	2025-11-09	POSITIVE	0.9998493194580078	Google Play Store
be813f1d-5060-452f-be52-f2b39fceff63	1	Good !	5	2025-11-09	POSITIVE	0.9998268485069276	Google Play Store
65e917f9-f327-427f-bc75-a7ec2ec45687	1	i like it	5	2025-11-08	POSITIVE	0.99985933303833	Google Play Store
3f4797ed-7cfa-494f-b83d-3ac99d0d8416	1	Very nice app	5	2025-11-08	POSITIVE	0.9998562335968018	Google Play Store
e12a96bf-137e-4fcb-9b10-5933a6b8dedd	1	the app is not functional this week.	4	2025-11-08	NEGATIVE	0.9996664524078368	Google Play Store
a2e6c530-2dc1-4b30-b1f7-3530676a59a3	1	good	5	2025-11-07	POSITIVE	0.999816119670868	Google Play Store
631f58bb-d098-4fe1-8fe5-a3abc2dd6407	1	very updated bank	5	2025-11-06	POSITIVE	0.999656081199646	Google Play Store
d1284a04-7811-4902-a678-d9d14aece75f	1	tankyu	5	2025-11-06	POSITIVE	0.840437114238739	Google Play Store
3ee7c37d-fd2c-4ddc-892b-98efdc690700	1	nice	5	2025-11-06	POSITIVE	0.9998552799224854	Google Play Store
1851fb0d-c940-4c97-a338-7b1a9a8ef553	1	Numbers 2 and 3 don't write during pin verification.	5	2025-11-06	NEGATIVE	0.986690640449524	Google Play Store
b6fa2156-34bf-44c3-a426-99521f790a04	1	once it is uninstalled, you need to visit a nearby bank. you go there and they ask you to have a new sim card which hasn't been used before. so you should buy a new sim card and you go back to them with a new sim card, when you reach there service provider says authentication pin is not arrive, the system is not working come back tomorrow.	1	2025-11-06	NEGATIVE	0.9989122152328492	Google Play Store
b5a68eed-026c-4f6f-aba9-9a7490d9466f	1	loved it	5	2025-11-05	POSITIVE	0.9998797178268432	Google Play Store
468dd43c-8489-4032-8356-b0f924ed9177	1	Ok	1	2025-11-05	POSITIVE	0.9997851252555848	Google Play Store
2446e1d4-37e7-4e7f-b182-bb862c9ac26c	1	this app is not working on my phone	5	2025-11-03	NEGATIVE	0.9996734857559204	Google Play Store
398ac276-dd9c-4eb7-8edb-0ce30a96ab22	1	CBE needs to show transaction fees before the transaction is confirmed and not after. This is a big issue as fees are no longer insignificant.	3	2025-11-03	NEGATIVE	0.964024305343628	Google Play Store
ee4d489f-04f2-428c-80bf-e795c79582fe	1	After the recent updates, I am unable to download a receipt. I can't see the names of account holders I've previously transacted with. Very important. Please fix it asap.	1	2025-11-03	NEGATIVE	0.9985938668251038	Google Play Store
ad025898-2642-44d9-81ea-916fde8f4a44	1	nice	5	2025-11-03	POSITIVE	0.9998552799224854	Google Play Store
dabc6ff9-8f83-422b-add0-463dcdfa4dba	1	mobile banking broblem	5	2025-11-01	NEGATIVE	0.9918060302734376	Google Play Store
182fcbaf-4ada-4f02-9f46-5c9b795e9c92	1	good job	5	2025-11-01	POSITIVE	0.999835729598999	Google Play Store
b5eb945c-5712-48fa-9de9-b1817c6fa1b8	1	good	3	2025-11-01	POSITIVE	0.999816119670868	Google Play Store
f4d2d316-2fb6-4e53-b3e0-90ccc05938f5	1	it is a good and clear apps to use	4	2025-11-01	POSITIVE	0.9998574256896972	Google Play Store
a6910eb7-f2dc-4cdb-badc-65becc5513f1	1	I love this app b/c every option in the app very clear and supportive.	5	2025-10-31	POSITIVE	0.9998561143875122	Google Play Store
0ed12f63-db54-423b-b9f8-093754cf0d05	1	niiceh	5	2025-10-30	POSITIVE	0.8779534101486206	Google Play Store
1702ee84-35c4-40fe-9971-9870d47d21f8	1	the app is good but their is no dark mode you have to add it	3	2025-10-30	POSITIVE	0.9965399503707886	Google Play Store
e90e8464-1394-4ff6-a978-4868c10d4d2a	1	abdulakim abrahim elemoo	5	2025-10-29	POSITIVE	0.9634568691253662	Google Play Store
3910dba1-f9d9-4ed9-831f-ed8c179dbfe1	1	good app	5	2025-10-29	POSITIVE	0.9998493194580078	Google Play Store
e7f8cad9-e352-4406-8ff1-799a8cdee3ef	1	strong	5	2025-10-29	POSITIVE	0.999862551689148	Google Play Store
7390e5aa-2f26-4ef8-aaec-ad6c80e8fc8e	1	good	5	2025-10-29	POSITIVE	0.999816119670868	Google Play Store
ee043207-5d2f-45ce-9f03-06d35d585e8b	1	best	5	2025-10-28	POSITIVE	0.9997941851615906	Google Play Store
c3145a5d-590e-4a19-912a-5dd5a269933b	1	Abebaw Zenebe	5	2025-10-28	NEGATIVE	0.5422855019569397	Google Play Store
8733a99d-1c50-4428-a170-6d4c3b2e18d3	1	good I love it keep it up but if we had a new update that will be fire Soo good	5	2025-10-28	POSITIVE	0.9990962743759156	Google Play Store
a47dd458-e3b5-4df5-b205-e9b3499a11cb	1	good	5	2025-10-28	POSITIVE	0.999816119670868	Google Play Store
b228fe65-8247-46e0-9f6f-dfc4d8ca189b	1	Cbe	5	2025-10-27	POSITIVE	0.9966009855270386	Google Play Store
ef880514-7bf7-4b43-8dd1-0ca8f32d2012	1	Active and granted system	5	2025-10-27	POSITIVE	0.998322069644928	Google Play Store
575075bc-9c06-41d4-901f-cda4028e0dc7	1	fast app	4	2025-10-27	POSITIVE	0.9983617663383484	Google Play Store
49288360-34e9-43f0-be9c-c2480f4dc9ac	1	Galaxy A10s	3	2025-10-27	POSITIVE	0.8983982801437378	Google Play Store
4553e023-8faa-4e78-a30f-8dcdca419ec5	1	the best apps	5	2025-10-27	POSITIVE	0.9998617172241212	Google Play Store
4422aa17-0e87-4a90-8388-5065e2b37503	1	arif app new	5	2025-10-26	NEGATIVE	0.5203990340232849	Google Play Store
a0070771-ae98-4f0c-8846-090f2357281f	1	laga Bari biranch	5	2025-10-26	NEGATIVE	0.9922856092453004	Google Play Store
5c031dab-9c2f-4e80-ba06-5e49ae4a9821	1	I would like to suggest you improve the time out as it takes the money and doesn't return it back until the next day.	3	2025-10-26	NEGATIVE	0.9949775338172911	Google Play Store
01989925-f978-4d2c-91c6-ebd374cd2a1a	1	Attractive	5	2025-10-26	POSITIVE	0.9998689889907836	Google Play Store
ef786a30-7bc0-4a73-a7df-a3a545c7f665	1	mite	5	2025-10-24	NEGATIVE	0.996557116508484	Google Play Store
b3efa927-2c89-48de-8292-19e0e6a68ec3	1	useful	5	2025-10-24	POSITIVE	0.9997634291648864	Google Play Store
d95fd5b5-8b53-445a-9e31-d79f60aa65d5	1	nice	4	2025-10-24	POSITIVE	0.9998552799224854	Google Play Store
8de78143-c7c6-4f2a-95dc-a7cfde43d506	1	not good, not bad!	3	2025-10-23	NEGATIVE	0.9981550574302672	Google Play Store
5f41b0ec-1dd2-4ca7-b339-02827ac8666e	1	very good	5	2025-10-23	POSITIVE	0.9998520612716676	Google Play Store
56c5835a-b561-4f8c-ab37-6330ca97faea	1	good job	5	2025-10-23	POSITIVE	0.999835729598999	Google Play Store
b72300fc-ef3d-4145-9bb6-47ce6183506c	1	imp	5	2025-10-22	NEGATIVE	0.9978600144386292	Google Play Store
3dc9000e-9725-4423-9a14-6cbb88462843	1	super fast app	5	2025-10-21	POSITIVE	0.9976546168327332	Google Play Store
c5821075-ea3f-4428-ae01-f95e8367dc70	1	good app	4	2025-10-20	POSITIVE	0.9998493194580078	Google Play Store
b1bb3882-599d-4cf4-96bc-8835454ff207	1	useful	5	2025-10-20	POSITIVE	0.9997634291648864	Google Play Store
3ec71abd-b47c-4863-8964-50e6b4906b18	1	cbe	4	2025-10-19	POSITIVE	0.9966009855270386	Google Play Store
2cc116ae-e341-4066-bfb9-f430f1535601	1	it says "ti is work any more in your device" what can i do??	1	2025-10-18	NEGATIVE	0.9991005659103394	Google Play Store
ac209bf8-4257-405d-877e-aa90875c00a7	1	blah blah blah	5	2025-10-18	NEGATIVE	0.997789978981018	Google Play Store
703f1558-8575-4a75-be24-11d43573ba4c	1	good	5	2025-10-18	POSITIVE	0.999816119670868	Google Play Store
4fe8694d-eb8f-4959-b2e8-f4501b5b961f	1	best	5	2025-10-17	POSITIVE	0.9997941851615906	Google Play Store
c50f1ce4-5aad-46a1-8e43-eb2ac3ea39fd	1	CBE no.1	5	2025-10-17	POSITIVE	0.9968194961547852	Google Play Store
4d5e0051-01e0-40d6-b338-8de3c99bb424	1	good	5	2025-10-17	POSITIVE	0.999816119670868	Google Play Store
3941e3dd-e3b1-4d8b-93cd-816ce3e3b0b4	1	good	5	2025-10-17	POSITIVE	0.999816119670868	Google Play Store
d38d8b3c-ea51-4a79-8300-450d0270fb3d	1	it's not work correctly when it's needed sometimes, but it works sometimes though	2	2025-10-17	POSITIVE	0.996988832950592	Google Play Store
0d6f2b91-6c64-4226-9260-0a13a22ab3bd	1	its easy to use and more secured than the previous one. i love it and appreciate commercial bank of ethiopia for every time update.	5	2025-10-17	POSITIVE	0.999740183353424	Google Play Store
a83bb204-ff79-401f-afee-6490508d3d3a	1	gooof	5	2025-10-16	NEGATIVE	0.996545135974884	Google Play Store
b6b20563-1305-4c44-90f4-a5b726bc9c61	1	Suddenly the cbe application I was using stopped working and called callcenter, I was told it's because it expired and I should vist any branch to fix it. So I went to CBE Silassie branch.After filling a form they gave me, I sat down and waited until they finish fixing 2 customer's case who arrived before me. But then when it was my turn ppl who came after me with same mobile banking and even Atm card cases were finishing up and leaving I had to get back to my work so I left.with no service.why?	1	2025-10-16	NEGATIVE	0.9996702671051024	Google Play Store
a25928af-597f-4962-98d3-a9bbff522dcb	1	Best app	5	2025-10-16	POSITIVE	0.999686598777771	Google Play Store
9a08e3e2-01d2-483b-8beb-691d875a45e9	1	best	5	2025-10-15	POSITIVE	0.9997941851615906	Google Play Store
a9c3fc33-c501-4013-8572-33b72111f679	1	still not perfect like before	1	2025-10-15	NEGATIVE	0.9995744824409484	Google Play Store
598f9bab-e0ec-49fe-b694-aeba6a24b04a	1	APPLIED	1	2025-10-15	POSITIVE	0.998971939086914	Google Play Store
349736cb-a766-4978-8add-8c915a05be3a	1	10 years ago	4	2025-10-15	POSITIVE	0.906000316143036	Google Play Store
426a91e8-fb8b-446e-a47a-32d4c74003fb	1	Asefa Obsa	5	2025-10-15	NEGATIVE	0.9988316893577576	Google Play Store
ef72e904-1f23-4477-82da-f84bda533d9a	1	best app	4	2025-10-15	POSITIVE	0.999686598777771	Google Play Store
21d5cd5a-a147-4925-905d-5e90558b103e	1	it's good app	5	2025-10-14	POSITIVE	0.9998689889907836	Google Play Store
2915c398-4205-4f4e-ae06-3e25d24b089b	1	very slow	1	2025-10-14	NEGATIVE	0.9997065663337708	Google Play Store
cecede31-b593-4107-a76b-54a40476f863	1	berhan deriba wami	4	2025-10-14	POSITIVE	0.755569577217102	Google Play Store
0a77398d-ebbd-43f8-a928-1de26be137d5	1	good	5	2025-10-14	POSITIVE	0.999816119670868	Google Play Store
95c8c18c-f4aa-456a-87d7-4a71e40ebf3c	1	mahamad Usman	5	2025-10-14	POSITIVE	0.9890894293785096	Google Play Store
1b751e18-ceb3-44fd-8659-acb07aab10b9	1	Erako	5	2025-10-14	POSITIVE	0.997822403907776	Google Play Store
f4dcd64a-ea98-4983-94de-cca8b9edc4d1	1	opne	5	2025-10-13	NEGATIVE	0.7972499132156372	Google Play Store
19d9e046-0f7a-457c-9cff-1ef73b1f7d13	1	mehommd nuri	5	2025-10-13	POSITIVE	0.9508017301559448	Google Play Store
4bd8a096-f82b-40f3-a828-b096eb830a97	1	Best	5	2025-10-13	POSITIVE	0.9997941851615906	Google Play Store
62ca961e-d859-4ede-ac8d-8baab9f8af87	1	good	5	2025-10-13	POSITIVE	0.999816119670868	Google Play Store
9a3f4238-e04d-480b-861b-6fe0135ac487	1	providing very secure service.	5	2025-10-12	POSITIVE	0.9993906021118164	Google Play Store
e1c41e8d-925e-450d-ab6b-ce7e90b6469d	1	good	5	2025-10-12	POSITIVE	0.999816119670868	Google Play Store
23c7bd6b-c237-4581-92c8-15fcf14cbf16	1	RIYAD Mohammed Abaoli 92 527 2567	5	2025-10-12	POSITIVE	0.9531126022338868	Google Play Store
cf44dcab-2f7d-45a0-a1d5-9d9dd85121aa	1	it doesn't show bank statement and no options to see transactions for the past months.	2	2025-10-12	NEGATIVE	0.9994134902954102	Google Play Store
9af535dc-d362-49d3-8ece-90d66fd2f879	1	Mamma Husen	2	2025-10-11	POSITIVE	0.9694636464118958	Google Play Store
54924bcd-4e5d-4b89-b3ba-31e6d7b19084	1	ok	5	2025-10-11	POSITIVE	0.9997851252555848	Google Play Store
4eedb003-2dca-4470-a9d0-c2b6c3ec41ea	1	3 stars because I can't see all my transaction history apart from the recents and a refresh button has been removed from the Recents activity. The app should allow clients to view all of the transactions not just recents.	3	2025-10-11	NEGATIVE	0.9932369589805604	Google Play Store
eccbcf2d-2f20-4200-913a-979fe6bc8a86	1	good	5	2025-10-11	POSITIVE	0.999816119670868	Google Play Store
5a8105d2-37c0-4b90-b775-70929dbcd793	1	exceptional application from others bank	5	2025-10-10	POSITIVE	0.9996663331985474	Google Play Store
9c02c8ba-3634-4363-b888-e60ce895ba7a	1	it is very nice. but i have a serious suggestion when you send to other cbe birr customer, it does not show the name of the recipient befor it actually send the money. please improve this	4	2025-10-10	NEGATIVE	0.9849932193756104	Google Play Store
defda1bc-55e3-47de-9962-0e3ca63aa416	1	really good app	5	2025-10-10	POSITIVE	0.9998643398284912	Google Play Store
8aa39394-5499-421c-b9a8-5f31d2890271	1	smart bank CBE	5	2025-10-10	POSITIVE	0.9971417784690856	Google Play Store
5bdca892-8530-4730-aaae-f11feaa20925	1	Ali urgesa11	3	2025-10-10	NEGATIVE	0.9212200045585632	Google Play Store
8382e883-613c-4404-85ca-4d5179345d19	1	it's good	5	2025-10-10	POSITIVE	0.9998360872268676	Google Play Store
bffd6050-4f53-4ce4-90d4-614ddb4f2d59	1	Good apps	5	2025-10-10	POSITIVE	0.9998608827590942	Google Play Store
9a23c1f5-b873-4b23-99af-9e04bc6d82a0	1	good	5	2025-10-10	POSITIVE	0.999816119670868	Google Play Store
d5e8cf6e-d5bc-4a04-960f-db0ba7e47c78	1	good	5	2025-10-09	POSITIVE	0.999816119670868	Google Play Store
b9ce0e59-87ab-48e8-ba48-6774beac5430	1	best app i ever seen	5	2025-10-09	POSITIVE	0.999450147151947	Google Play Store
4048acf3-a39c-4fa6-9adc-dc9d550bac84	1	it's game changing in financial system	4	2025-10-09	POSITIVE	0.9973504543304444	Google Play Store
a5ce6f6b-2390-45f6-9551-205818e01125	1	will good updating	5	2025-10-09	POSITIVE	0.9998600482940674	Google Play Store
4c079db5-2c17-468e-979c-fc1d9173b7ea	1	service charge , vat, fee everything here is not yours they wanna take what you have, everything is not fair	1	2025-10-09	NEGATIVE	0.9994321465492249	Google Play Store
ad5ea4f1-47f8-4ae1-928c-6fece7daaed1	1	why removing screenshot feature why?	2	2025-10-09	NEGATIVE	0.9981147050857544	Google Play Store
e0d24942-f1ad-4b2d-9c1d-a3d0f26e7b1f	1	very good application! thank you all who participate!	5	2025-10-09	POSITIVE	0.99987530708313	Google Play Store
c9e0e2f6-6903-4148-929a-97ae808a475d	1	application bank commercial Ethiopia I am very happy to be able to appear in a great job on a pleasant job	5	2025-10-08	POSITIVE	0.9998462200164796	Google Play Store
cd04e8f2-6382-4154-9383-a9a68ccec318	1	user compatible app!	5	2025-10-08	POSITIVE	0.9933547973632812	Google Play Store
8b466649-63ed-4f72-b0c0-132add6b6c95	1	I am trying to access this app on my Android phone, but sometimes doesn't work. so kindly try to improve it.	3	2025-10-08	NEGATIVE	0.9972966313362122	Google Play Store
809c46d2-730e-446a-9061-2a45e978ad9d	2	good jop	5	2025-11-27	POSITIVE	0.9998409748077391	Google Play Store
f28a3a3c-eb94-4aab-88d2-89bcecebcc7b	2	bad exprience...it is so crushed	1	2025-11-27	NEGATIVE	0.9998053908348083	Google Play Store
7ef21cf6-d226-4370-ab96-01c909dbc58d	2	very good	5	2025-11-25	POSITIVE	0.9998520612716676	Google Play Store
896ee9aa-a483-4b1f-b73c-0a26c4b54790	2	most of the time is not working properly	1	2025-11-25	NEGATIVE	0.9997636675834656	Google Play Store
15c3586b-e672-48db-b3c0-09508375763f	2	good service	5	2025-11-25	POSITIVE	0.9998499155044556	Google Play Store
6f7113d8-180e-4f3d-83d9-fbe55f9edd69	2	not use for me	3	2025-11-24	NEGATIVE	0.9953739047050476	Google Play Store
d36fbdcb-b57e-4384-8e5b-ae549e25b33e	2	It keeps notifying me to disable developer options and quiet while I'm not enabled. always bring another type of problem with new updates.	1	2025-11-22	NEGATIVE	0.9968326687812804	Google Play Store
2d630116-152e-4dbb-bb7a-d7f93bbafbc5	2	waw	5	2025-11-21	NEGATIVE	0.7346174120903015	Google Play Store
b9fa948b-07bc-41f5-9e49-5e612b9a9db6	2	the lag is unbelievable when you need it the most this suks	1	2025-11-19	NEGATIVE	0.9983174800872804	Google Play Store
c198f602-e9fb-4b61-ad3a-8efe42269b8d	2	I cant belive I could find the worst bank app ever .yet very simple to fix the problem and the company just ignored it. no body can do business with this kind of app.	1	2025-11-19	NEGATIVE	0.999693751335144	Google Play Store
afad642f-39c4-4db0-adbf-5fbe7143f960	2	it is a good app	5	2025-11-18	POSITIVE	0.9998643398284912	Google Play Store
9fb5fdaa-6172-43c1-ba46-2fcdfcd84c13	2	it is not working at all	1	2025-11-16	NEGATIVE	0.9997811913490297	Google Play Store
0ed79d57-a54c-4541-9df0-67e1e8c72be3	2	when trying to activate the app it keeps on loading on the security questions page. It has been two days	1	2025-11-13	NEGATIVE	0.9952510595321656	Google Play Store
f38caf5b-4580-4a9f-819f-f4cd3d789176	2	fast and simple	5	2025-11-11	POSITIVE	0.9997392296791076	Google Play Store
6a7a5c64-4056-404d-b37e-60bf1d6ee90a	2	best of best	5	2025-11-11	POSITIVE	0.9997496008872986	Google Play Store
9f9ace0f-c63b-4482-a159-12c2bcd357ae	2	Worest Banking App Ever I seen. Fake App Bad Better to Leave	1	2025-11-11	NEGATIVE	0.9993888139724731	Google Play Store
52b82149-19da-40cd-b8ce-a86e0b2c789c	2	good	4	2025-11-10	POSITIVE	0.999816119670868	Google Play Store
c6661ae9-95ab-4a2d-be7b-ad93bb48f278	2	I would like to share feedback regarding the application. It frequently experiences disruptions and does not function properly, often freezing or failing to load. This issue is affecting workflow and efficiency. Kindly review and address this problem to ensure smoother performance.	1	2025-11-08	NEGATIVE	0.9947029948234558	Google Play Store
493dc1a0-1d88-4d43-93ab-9b3c9d7426d9	2	Meet you genuine.App I tried is not functional.Helping.welldoingwith BOA Ethiopia .fastandrelevant.morconnecting Digitalyworld.Digitalyworld. thanks.	5	2025-11-08	NEGATIVE	0.8848845362663269	Google Play Store
61a85d6e-8111-4add-9c9a-ebf8a25b2bca	2	best app	5	2025-11-08	POSITIVE	0.999686598777771	Google Play Store
33b76ccc-05cf-445d-84a6-a5e516bac406	2	Best app	5	2025-11-08	POSITIVE	0.999686598777771	Google Play Store
aa74e8f9-67d1-486a-a601-761ce0c79a4e	2	Barely works, it always fails to connect	1	2025-11-07	NEGATIVE	0.9997532963752748	Google Play Store
6308cb59-e418-4559-80e1-b53d44ce7c9a	2	my fav app	5	2025-11-07	POSITIVE	0.9846561551094056	Google Play Store
8fa4d905-fcd5-4124-8745-0014e9e746cf	2	this app launch time is so long also has dozen bugs in addition it's has been long time get update	1	2025-11-05	NEGATIVE	0.9977949857711792	Google Play Store
6b603751-56ea-4108-95f6-a26ee49a7bdf	2	very nice	5	2025-11-04	POSITIVE	0.9998563528060912	Google Play Store
e7e0dd5b-59ee-4ed8-abe8-821ed28c1a6f	2	Your application is very irritating to use, some functionality doesn't even work like on the card management. You need to do better than this and it good idea to reference other banking applications.	3	2025-11-04	NEGATIVE	0.9985816478729248	Google Play Store
df1f28f7-9a40-4a51-83bb-7e2fb7bc932c	2	I like	5	2025-11-02	POSITIVE	0.9998149275779724	Google Play Store
a2d5bdf0-ff92-408b-be55-a4bfa7b61fbc	2	i m sorry but it doesn't work for my android it is too slow but other bank are very fast please update	1	2025-10-31	NEGATIVE	0.9083429574966432	Google Play Store
8312e6d0-3b41-4061-b83f-54f6fcb4317a	2	the worst app ever,	1	2025-10-31	NEGATIVE	0.9997932314872742	Google Play Store
ee7fb8e2-bcde-4ae5-8ac5-49450e57dd5c	2	better	5	2025-10-29	POSITIVE	0.999264657497406	Google Play Store
924bdf3b-0b78-4402-9aaf-d1cbc39cc6af	2	I kindly request that Bank of abyssinia address issues with its mobile app. It is very slow, has numerous problems, and frequently experiences downtime. The user experience is also poor. Thank you.	1	2025-10-29	NEGATIVE	0.99928218126297	Google Play Store
426191d1-9b6d-4582-aeae-55633c041d3e	2	this app can't open? what is problem? please solve my problem?	1	2025-10-28	NEGATIVE	0.9996218681335448	Google Play Store
f787c8fe-c207-4c5a-8156-e8cfa0f6652d	2	kiyaa makonn	5	2025-10-28	POSITIVE	0.7175929546356201	Google Play Store
1f73f73b-a5e4-4114-a45d-992a360ebb87	2	very very lazy app	1	2025-10-27	NEGATIVE	0.9996856451034546	Google Play Store
b9b28cc3-4563-4f09-938c-b1adcc27bbf3	2	telebirr remittance	5	2025-10-24	NEGATIVE	0.979961097240448	Google Play Store
df5cd433-7f0e-4e13-ae07-4200db1965c0	2	its good	5	2025-10-23	POSITIVE	0.9998385906219482	Google Play Store
9917233c-933c-444f-b986-e97d3fe0f682	2	the worst app in my financial experience.	1	2025-10-22	NEGATIVE	0.9997914433479308	Google Play Store
29295b2c-ebe8-4dfe-9cd3-c3a5806b810b	2	good for mb appliciation	5	2025-10-21	POSITIVE	0.9943337440490724	Google Play Store
c9162816-c2cd-478c-ab34-9569f63d3711	2	the worst bank ever. slow don't accept dual sim. they are very stupid and greedy	1	2025-10-20	NEGATIVE	0.9997623562812804	Google Play Store
1776b9e9-95d8-4811-bb94-61d28a7c19d1	2	try to easy network	4	2025-10-17	NEGATIVE	0.9987332224845886	Google Play Store
d81ca31a-2ecd-4f0a-aab7-0a6f02da0696	2	hussen hassen umer	5	2025-10-17	POSITIVE	0.868121325969696	Google Play Store
6725eae9-b141-4a7c-abcd-90125d0fa3bd	2	The app is not suitable and lacks a good UI design. As a large bank, you must update your app with a professional UI that is fast and appropriate.	2	2025-10-16	NEGATIVE	0.9988431930541992	Google Play Store
cdc789cd-c2e6-415e-906f-0bde3fa850b1	2	an exceptional banking app.	5	2025-10-16	POSITIVE	0.9997233748435974	Google Play Store
da8f72ca-3f4b-41f6-937e-c626b8240c8b	2	alhamdulilah	5	2025-10-11	POSITIVE	0.8558266162872314	Google Play Store
8b37e090-01ff-4f7c-bfdc-3e781996d2a9	2	poor	5	2025-10-11	NEGATIVE	0.9997912049293518	Google Play Store
32133348-ecd7-47e0-9e98-7f1702419599	2	Best of best	5	2025-10-09	POSITIVE	0.9997496008872986	Google Play Store
68b7a597-8133-4584-9c3f-1e26fa21184e	2	from the last week updates the app is not working Please check the problems	1	2025-10-09	NEGATIVE	0.9996919631958008	Google Play Store
546df11c-e603-4f04-963e-ae1cd2be9561	2	It's always crushing	1	2025-10-08	NEGATIVE	0.999380588531494	Google Play Store
147dc910-f84e-4950-9cd0-a6ce1ca0b070	2	office branches have to improve their services please	4	2025-10-07	POSITIVE	0.6649640798568726	Google Play Store
7345b274-906c-4bfc-b37d-8131020ad13e	2	Why does it keep crashing? I can't even use this. BOA should do better. You have many customers and how to deal with this. I can't send money now.	1	2025-10-06	NEGATIVE	0.9988381266593932	Google Play Store
4587385c-78c9-4310-b8aa-da0bce565a91	2	it needs a timely update	5	2025-10-03	NEGATIVE	0.9983032941818236	Google Play Store
1310296e-3850-494f-83bc-936ea27684ab	2	It does not show the name of the person who sent the money to request a receipt. This has become very difficult for us. When different people transfer the same amount to me from different banks, it is very difficult to identify the account or the name of the sender.	3	2025-10-02	NEGATIVE	0.9997054934501648	Google Play Store
00dddad5-915e-4fc1-9166-b5d7ce59ad88	2	Like	5	2025-10-02	POSITIVE	0.9910564422607422	Google Play Store
baad5c11-63e6-4b64-9006-c4cb1481036d	2	I can't type my otp on it.	1	2025-10-02	NEGATIVE	0.9990899562835692	Google Play Store
7481b511-72a1-4592-8087-c029fc656e67	2	most of bank apps in Ethiopia are linked with ethiopian phone number, I live in US permanently so when I open BoA account, I told them where I live and to link it with email address instead of phone # as ethio phone number is not working where I live, unfortunetly my fear appeared and now when I change my phone device, it send the code to the ethio number which is not with me now. so please when u develop bank apps consider the diaspora community to use ur apps	1	2025-10-01	NEGATIVE	0.997710943222046	Google Play Store
e3e7b9d3-10a9-443b-89b9-34160443c78a	2	jaajja	4	2025-09-30	NEGATIVE	0.9872855544090272	Google Play Store
b768c25c-bc3a-4d57-8c45-97e489546662	2	I love this bank the best experience ever.	5	2025-09-28	POSITIVE	0.9998602867126464	Google Play Store
c90fb60a-ea63-47f0-aa65-fcb41b6534e1	2	Nothing has been improved, it doesn't work like the previous version.	1	2025-09-26	NEGATIVE	0.9997023940086364	Google Play Store
82e245b0-2790-45ce-a1a3-1aa9a0afaa95	2	easy and fast	5	2025-09-24	POSITIVE	0.9995583891868592	Google Play Store
d849294b-9d5d-4026-96ec-6dd20968fa57	2	Great	5	2025-09-20	POSITIVE	0.9998630285263062	Google Play Store
eecf4f77-29ed-40cd-a228-b325ee459350	2	mobile banking	5	2025-09-20	POSITIVE	0.9076533913612366	Google Play Store
4c7e9031-a452-48ce-b5fd-4b5a0940b553	2	very good	5	2025-09-19	POSITIVE	0.9998520612716676	Google Play Store
a05681a9-b69a-48b6-92c5-79a7d916bd61	2	need alot of connection, chooses device, very lug even when there is connection	1	2025-09-17	NEGATIVE	0.9918755292892456	Google Play Store
7cedd008-b817-442b-9da0-76ea15713450	2	On my ios it's perfect but on android it barley works and don't transfer and after a while it crushed and totally stopped working. Please fix the issue my beloved bank of abyssinia.	1	2025-09-15	NEGATIVE	0.9964402318000792	Google Play Store
14d8c41d-2533-40c1-97f2-7df99a3d3a44	2	since the last update i can open the app crashes a lot and omg its being very slow opening and loading	2	2025-09-15	NEGATIVE	0.999541401863098	Google Play Store
3c11bafa-cf87-41c0-ba29-714ab4cd69a5	2	none	5	2025-09-15	NEGATIVE	0.985345721244812	Google Play Store
9832f735-8230-4dd6-8aad-2f743e2792b1	2	good	2	2025-09-13	POSITIVE	0.999816119670868	Google Play Store
814a08ab-8eb9-4aa6-ae64-341f62b5ae47	2	good	5	2025-09-12	POSITIVE	0.999816119670868	Google Play Store
4bf673d6-7d6f-431c-8844-a6c7eb4c65d3	2	very good app i ever used	5	2025-09-12	POSITIVE	0.9998385906219482	Google Play Store
dfad5025-20f7-4556-bdaf-294785947fa3	2	its nice app especially the transaction limit is extended but We face that BoA m.banking app doesn't respond at the activation stage strictly at SMSNG mobile phone. please try this to make safe.	4	2025-09-12	NEGATIVE	0.9979867935180664	Google Play Store
4b92ba94-d858-4fcb-a2ae-45fc41c1fa26	2	zedo	5	2025-09-11	POSITIVE	0.994045615196228	Google Play Store
a56b1202-a6db-405b-aba1-586a16bc417d	2	please open my mobile app	5	2025-09-10	POSITIVE	0.9873003363609314	Google Play Store
d876a31d-e463-4340-a67e-9a950e182865	2	it doesn't open	1	2025-09-10	NEGATIVE	0.9997527003288268	Google Play Store
a31076d0-b574-405f-8495-675485f16a71	2	Very Good	5	2025-09-09	POSITIVE	0.9998520612716676	Google Play Store
88632aa1-f7db-4599-aa99-9b51523534e8	2	masha alla	5	2025-09-08	NEGATIVE	0.9514626860618592	Google Play Store
dc3c97a2-0fe6-4a49-a2d3-9cc949380a0d	2	Best banking transaction application in Ethiopia !	5	2025-09-05	POSITIVE	0.9996905326843262	Google Play Store
613dff98-be45-4f37-8feb-01e382393e26	2	tamaam kamal	1	2025-09-04	POSITIVE	0.991887390613556	Google Play Store
45e502bd-bd62-4895-b534-d75b2dae7c75	2	goof	4	2025-09-01	NEGATIVE	0.9975278973579408	Google Play Store
0e665f33-628c-4799-a991-53cf66b89ed0	2	absiniya banki	5	2025-08-30	NEGATIVE	0.90830397605896	Google Play Store
3e8a43b7-e4a5-4ba0-850e-332a7dad3a24	2	has issue after installation and i think it doesn't work with tecno common 30	1	2025-08-26	NEGATIVE	0.9996929168701172	Google Play Store
abb3b6f4-ed3d-4013-b997-0efb664037a5	2	One of the best in this business	5	2025-08-25	POSITIVE	0.999869465827942	Google Play Store
8a5e1510-bc3f-4f70-8915-f79a839f041e	2	Excellent	5	2025-08-21	POSITIVE	0.9998434782028198	Google Play Store
bc8bfdb0-596e-4ed3-a07d-c3ac71061fee	2	unlimited experience	5	2025-08-18	POSITIVE	0.9997161030769348	Google Play Store
ec30627f-c9a0-48f6-8fd2-38fcae3ab112	2	as bank, u should at least hire someone good at their job bc this a joke nowadays I can't even log in or even transfer without it crashing if u fix the app I will update this review I am counting on u boa update: so they atleast fixed it but as suggestion can u put password when in final step of sending money it will feel more secure that way	4	2025-08-17	NEGATIVE	0.999123990535736	Google Play Store
656865bb-7ee3-4fef-9f23-b6728b2b6ab9	2	very nice mobile banking app my favourite	5	2025-08-16	POSITIVE	0.9997608065605164	Google Play Store
ac500ef1-8d40-4c19-b862-c5f47b165e97	2	it almost never boots up!!! and even if it did, it crashes immediately	1	2025-08-15	NEGATIVE	0.9977737069129944	Google Play Store
e080468a-5b05-476e-9275-923d859a7b98	2	best apps	5	2025-08-15	POSITIVE	0.999784529209137	Google Play Store
cd3d7bda-43cf-46f8-bd12-065f026e2ba2	2	the worst app ever to exist in a bank history	1	2025-08-15	NEGATIVE	0.9997841715812684	Google Play Store
17d27fe8-201d-465e-900c-4510058bd581	2	thank you	5	2025-08-14	POSITIVE	0.9998352527618408	Google Play Store
161dbde7-f447-412e-abf3-8ae5e7ba5012	2	Best mobile app in the country	5	2025-08-14	POSITIVE	0.999710738658905	Google Play Store
17fac6e4-55d0-48dc-8fd1-e3908c6e6689	2	not fast	2	2025-08-13	NEGATIVE	0.9949790835380554	Google Play Store
bffe6663-e88f-4a08-97bc-e6ea6b2d8227	2	keeps freezing at the front page.	1	2025-08-10	NEGATIVE	0.9948282837867736	Google Play Store
6dd324c1-79ef-4935-9c87-ad0fd8fd1635	2	it is not working on redminote 11 pro+ pls fix it	1	2025-08-08	NEGATIVE	0.9996861219406128	Google Play Store
aefe5a77-71f4-4efa-92e6-b4a1b4a48e9e	2	abseniya bank app	5	2025-08-08	NEGATIVE	0.6962245106697083	Google Play Store
6e923bac-5ac7-4d3e-bd1c-137246d24a68	2	good	5	2025-08-05	POSITIVE	0.999816119670868	Google Play Store
e6ec7d3b-beb3-40ac-a615-9a0bae85e39d	2	yes goode app	5	2025-08-04	POSITIVE	0.9997490048408508	Google Play Store
b54ed906-d409-4107-9dba-3d91d4c04274	2	Great App	5	2025-08-03	POSITIVE	0.999821126461029	Google Play Store
a7eb5cbd-790a-4537-8278-ccaef158654b	2	1) Crashes repeatedly 2) Takes Century to Boot 3) Repeatedly requires Update which is very annoying. 4) It doesn't ask for Password for one step confirmation when transferring money. 5) Automatically stops music when the app is launched (it doesn't really matter just fyi) Overall this have to be the worst mobile banking app I have tried so far and should not be released with all these bugs & issues.	1	2025-08-02	NEGATIVE	0.999749481678009	Google Play Store
6df74cd0-b58b-472e-99f8-e437e64d98f3	2	The Worst Mobile Banking App.	1	2025-07-31	NEGATIVE	0.9997994303703308	Google Play Store
709cbab6-f362-486c-b2cf-212062b30dfa	2	giod	5	2025-07-31	POSITIVE	0.9893913269042968	Google Play Store
207adaf3-2705-486b-846e-1f95c4d7f049	2	best bank in ethiopia	5	2025-07-30	POSITIVE	0.999733030796051	Google Play Store
8edd9f83-57c8-4aaf-9c54-845d97e601aa	2	waqayyoo	5	2025-07-28	POSITIVE	0.5036855340003967	Google Play Store
5e5817ce-8960-4e99-9bae-3e9059357303	2	please is not working	2	2025-07-28	NEGATIVE	0.9997643828392028	Google Play Store
b27ee212-10ec-499b-b36d-ff667d7b7085	2	nothing when I need to install the Apk it say that re-up date	5	2025-07-25	NEGATIVE	0.9985933899879456	Google Play Store
94e809fb-94f8-4e0a-b3e8-1c4113c19f77	2	I can log in from any where	5	2025-07-23	NEGATIVE	0.9497752785682678	Google Play Store
a6c71862-00d9-491c-928d-f557a845da4a	2	no proplem	5	2025-07-20	NEGATIVE	0.991222620010376	Google Play Store
2b131440-f01a-468e-9314-095ae0b77601	2	excellent app	5	2025-07-18	POSITIVE	0.9998356103897096	Google Play Store
0f1bbc73-93dc-487e-a47c-bb737edb0322	2	good work	5	2025-07-16	POSITIVE	0.999841332435608	Google Play Store
66b8c002-46a8-4d54-aa18-2267d8bcb7fb	2	excellent	5	2025-07-15	POSITIVE	0.9998434782028198	Google Play Store
fc29df1f-0c69-40d6-a240-5b4e88ad84ae	2	Great BoA	5	2025-07-14	POSITIVE	0.9992689490318298	Google Play Store
60b6f839-529a-4017-a74b-76699322f85a	2	Good	5	2025-07-14	POSITIVE	0.999816119670868	Google Play Store
b820b761-9c71-47bb-9fba-566f18ea294a	2	Okay	4	2025-07-14	POSITIVE	0.9997709393501282	Google Play Store
f2774304-2650-4e10-8854-25fe8d6de09e	2	not working	1	2025-07-12	NEGATIVE	0.999777853488922	Google Play Store
fe2fcc2e-a065-4210-a48b-4ea4e93f383e	2	This App is Getting worse and worse with every update	2	2025-07-11	NEGATIVE	0.999568521976471	Google Play Store
21a65f6a-5808-4a77-a341-a0230b3a6687	2	nice	5	2025-07-10	POSITIVE	0.9998552799224854	Google Play Store
4d8220eb-b875-46f6-9012-5e914943630e	2	Best app	5	2025-07-08	POSITIVE	0.999686598777771	Google Play Store
aa23377c-3d61-4045-b061-96003d09d78b	2	meku	5	2025-07-07	POSITIVE	0.9421749114990234	Google Play Store
2b882b18-b832-42fa-8d2a-fb4a47ddf456	2	nice	4	2025-07-04	POSITIVE	0.9998552799224854	Google Play Store
285a819d-f45f-4f6f-a280-23588282f8b0	2	awasome app go a head	5	2025-07-04	NEGATIVE	0.998092234134674	Google Play Store
5caae1bf-1a44-4370-8c45-19b8c0481d65	2	it sucks as hell. it crashes most of the time and takes a long time to load .	1	2025-07-03	NEGATIVE	0.9994389414787292	Google Play Store
95520951-566d-4ddb-bf19-a9ecf5b6e35a	2	The App is nice and easy to use but after some time it crushed and said "Error check your device connectivity" please fix it	3	2025-07-03	NEGATIVE	0.9973018169403076	Google Play Store
d713bd24-8fc6-48e4-ad53-aeafeda8babc	2	Easy and very nice app to load more than the previouse but in recent time some loading problem detected.	5	2025-07-01	NEGATIVE	0.9851245284080504	Google Play Store
8892853d-eb65-4c97-a859-2e848289f1a2	2	wow	5	2025-07-01	POSITIVE	0.999592125415802	Google Play Store
7213dbd5-f192-45fd-96d1-3fc1db24759c	2	The worst MBA I have experienced, The app crush frequently and they take to long to fix the problem even more than a week.	1	2025-06-27	NEGATIVE	0.9996988773345948	Google Play Store
dd461228-95a6-4efc-afe3-a86fb7f26945	2	goof	5	2025-06-25	NEGATIVE	0.9975278973579408	Google Play Store
84ef704f-9293-4fcb-a0fc-8a8dafd2d9ed	2	good App fore me	5	2025-06-25	POSITIVE	0.9998444318771362	Google Play Store
8b9c0316-a505-4e36-b2c3-844d7b9d209d	2	very uninterested it's not working when the "developer mode on" i haven't off the developer options i preferred to uninstall your app .....	1	2025-06-24	NEGATIVE	0.9995253086090088	Google Play Store
b873c393-1bbb-4f8d-a640-d8434841943d	2	fantastic	5	2025-06-22	POSITIVE	0.9998743534088136	Google Play Store
f8b0d764-37b1-475e-bcda-03bd153eb20b	2	it's nice to use.	5	2025-06-21	POSITIVE	0.999835729598999	Google Play Store
e4976dd0-7be3-4353-b6bd-5df3eb322f61	2	app doesn't start	1	2025-06-21	NEGATIVE	0.9973676800727844	Google Play Store
2da4265c-ec1c-4460-a1d2-5e23b5539034	2	Excellent application	5	2025-06-18	POSITIVE	0.9998571872711182	Google Play Store
effbeeb2-b89d-43e6-96b0-8e1a78c1175a	2	its very bad app its very slow	1	2025-06-17	NEGATIVE	0.9998086094856262	Google Play Store
c2655979-af64-4649-aa42-af100716ede0	2	good	1	2025-06-15	POSITIVE	0.999816119670868	Google Play Store
01f2460e-00ec-4071-910a-31ff89aac75f	2	Good job!	5	2025-06-13	POSITIVE	0.9998481273651124	Google Play Store
45d80ec5-3db4-4b45-af64-095a9fd0c355	2	best financial app.	5	2025-06-12	POSITIVE	0.9997761845588684	Google Play Store
6ec1267b-af3c-4d2b-8715-181e7f4c6282	2	the worst app humans ever created	1	2025-06-09	NEGATIVE	0.9998008608818054	Google Play Store
937102c6-ae88-419c-994b-80e520faacb8	2	it's not working	3	2025-06-05	NEGATIVE	0.9997857213020324	Google Play Store
10e85f30-540d-4810-ba89-85a7e004480b	2	exceptional	5	2025-06-03	POSITIVE	0.9998514652252196	Google Play Store
d7f07898-4ba1-47b4-9e8c-a3cc10b1bf0f	2	BoA Mobile good bank	5	2025-06-02	POSITIVE	0.9984728693962096	Google Play Store
2ca9480b-ff5f-4b59-952c-5921db83dab2	2	this is worest app 24/7 loading	1	2025-06-01	NEGATIVE	0.993474304676056	Google Play Store
d9172c66-a605-4626-acc6-e1dbca0685cd	2	BoA system is confartable	5	2025-06-01	NEGATIVE	0.9980142116546632	Google Play Store
c3f2810d-cf99-4600-90ac-bef47adb9e7a	2	this app, for me , is a waste of time. It doesn't work . I can't even long in, and it really piss me off. FIX THE PROBLEM	1	2025-05-28	NEGATIVE	0.99980491399765	Google Play Store
512f8c2b-8fac-41cc-978a-b58e39a1ea5c	2	Good service.	3	2025-05-26	POSITIVE	0.9998533725738524	Google Play Store
76089146-b1c7-47f4-ab9f-44b6a1092225	2	the app crush frequently	1	2025-05-24	NEGATIVE	0.998525083065033	Google Play Store
9198a5bc-f914-4a18-ad44-d2b77094c02a	2	good	5	2025-05-22	POSITIVE	0.999816119670868	Google Play Store
e244700c-1210-4280-b60b-b75964c982df	2	You guys keeps getting worst	1	2025-05-22	NEGATIVE	0.9997075200080872	Google Play Store
b857156e-2647-4eee-a3f4-2eec417f721e	2	good	5	2025-05-22	POSITIVE	0.999816119670868	Google Play Store
86456197-428d-45e1-9c00-8dd85dcbb9e9	2	BoA	2	2025-05-20	NEGATIVE	0.7410539388656616	Google Play Store
fe22c72e-7fba-4ae7-9b4f-097bdb51cc61	2	good	5	2025-05-20	POSITIVE	0.999816119670868	Google Play Store
8ddf5c9f-f866-4817-ac5e-85c67bfa870e	2	but not opening on android	4	2025-05-19	NEGATIVE	0.9952228665351868	Google Play Store
f8bb86fb-594a-48ea-be1f-d08ea0882b8e	2	Worst App ever. Totally unreliable. And it didn't work at all for the last 4 months.	1	2025-05-18	NEGATIVE	0.9997984766960144	Google Play Store
190dccba-a7cf-4b2f-9b78-5bf8d3c280ae	2	amazing	5	2025-05-18	POSITIVE	0.999875545501709	Google Play Store
49377d51-ea44-483e-a596-3d5bed4b3f9a	2	excellent	5	2025-05-15	POSITIVE	0.9998434782028198	Google Play Store
b640cc87-df88-4b6b-9b9f-13fe0bdd5dfa	2	this app does no work on Samsung a51, it just gives a preview of the logo	1	2025-05-12	NEGATIVE	0.9992283582687378	Google Play Store
141af3a7-96be-4fe5-9490-4cb8dfbf711e	2	nice	5	2025-05-11	POSITIVE	0.9998552799224854	Google Play Store
301f6927-9395-4cda-bb77-041a36323875	2	i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn't able to solve this issue .	5	2025-05-10	NEGATIVE	0.9994921684265136	Google Play Store
9a02c524-0d8d-445e-97d4-d1f451b16d43	2	Best app	5	2025-05-09	POSITIVE	0.999686598777771	Google Play Store
62fa097e-3fd8-4522-a3a3-9b13f17f594d	2	This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work	1	2025-05-07	NEGATIVE	0.9989790916442872	Google Play Store
e4f9ad9a-576a-4bbe-a910-812fd1b7e08a	2	good	5	2025-05-06	POSITIVE	0.999816119670868	Google Play Store
586aecda-30fc-4daf-bca7-2d37573a5e4e	2	good	5	2025-05-03	POSITIVE	0.999816119670868	Google Play Store
0f3023a3-30af-479c-85e7-4165b2ce30c7	2	good	4	2025-04-30	POSITIVE	0.999816119670868	Google Play Store
aa6d112e-713e-46d9-90a5-6c32c1b1d7ef	2	good	4	2025-04-30	POSITIVE	0.999816119670868	Google Play Store
8571b294-c8c6-491b-99d3-52438a2b6dc6	2	wow	5	2025-04-28	POSITIVE	0.999592125415802	Google Play Store
dbd9dbf2-47ee-4103-8631-cd0ef79f4344	2	Bad app . it stuck when you open and noting WORKS.	1	2025-04-23	NEGATIVE	0.9995198249816896	Google Play Store
8a4d9c01-9e5a-4732-a8ab-9341930b30c8	2	the app isn't working after it asked me the password it starts loading, but it doesn't open	3	2025-04-21	NEGATIVE	0.9997255206108092	Google Play Store
e523c50a-6f8f-4653-ad4d-5122ef8ddb9a	2	Best	2	2025-04-20	POSITIVE	0.9997941851615906	Google Play Store
3271d45f-2900-41b6-878c-669ac563e60a	2	It keeps showing this pop up to turn off developer options even tho it's off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.	1	2025-04-19	NEGATIVE	0.999669909477234	Google Play Store
56788d9a-6194-40ce-b282-30c541eec4cf	2	yideg	1	2025-04-18	NEGATIVE	0.7675807476043701	Google Play Store
527633dc-326a-40d3-8f50-663f5a355aee	2	great boa	5	2025-04-10	POSITIVE	0.9992689490318298	Google Play Store
152c96b7-b5f2-4b29-9812-ff59d9464615	2	Best	5	2025-04-10	POSITIVE	0.9997941851615906	Google Play Store
497345df-10e9-402a-bb96-88e16f8a803d	2	boa of mobile backing	5	2025-04-09	NEGATIVE	0.980626106262207	Google Play Store
6474e6df-7925-4e06-a67b-944237843b02	2	nice	5	2025-04-09	POSITIVE	0.9998552799224854	Google Play Store
f68ed25c-79db-4a9c-85e7-aaccd1671555	2	faster bank of Abissinya	5	2025-04-08	POSITIVE	0.97221440076828	Google Play Store
94ef86ef-6437-4c31-96c5-efeb7f32829f	2	i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug	1	2025-04-08	NEGATIVE	0.9996716976165771	Google Play Store
3b48fff7-6b38-4099-9c7c-cabc1bbbd92b	2	it just doesn't work...so frustrating	1	2025-04-08	NEGATIVE	0.999774158000946	Google Play Store
157e868c-386f-4837-bb1f-1301dd194075	3	It Is An Amazing app	4	2025-11-28	POSITIVE	0.9998793601989746	Google Play Store
9504f5cc-7f16-4fe0-8ba5-f76eef162f8b	3	its fast and easy to communicate to the app and its available all area keep it up.i will make Happy for this application thank you dashen bank for your effort,commitment and dedication. i appricated your work.	5	2025-11-27	POSITIVE	0.999860405921936	Google Play Store
d29af33e-3f63-4b7e-9312-b63f7d2c6724	3	What do you care about my phone's settings? Who are you to tell me what to turn off and on? It is my phone after all. This *develoler option* thing will cost you a lot of users who are willing to leave the bank once and for all. Turn this thing off. 6 you fear this is a security issue fix your side not mine.	1	2025-11-25	NEGATIVE	0.9985862970352172	Google Play Store
9b84c588-bde5-46b7-930c-c638ca26212d	3	Exceptional Product.	5	2025-11-23	POSITIVE	0.9998724460601808	Google Play Store
3d668840-c868-4164-8efe-9295ef537613	3	very easy app	3	2025-11-23	POSITIVE	0.995521068572998	Google Play Store
51268efb-62a7-4121-9fc7-d0b377a32aab	3	bill payment options are limited in this app please add ethio telecom bill electric bill etc.. instead of adding nonsense in banking app	1	2025-11-18	NEGATIVE	0.9899314641952516	Google Play Store
dabda953-ac0a-476a-8791-c6a66deebc20	3	it's a really slow app, I'm not sure what the issue is. Even other bank transfers are not working	2	2025-11-18	NEGATIVE	0.9997981190681458	Google Play Store
20f428da-b44d-4d32-8ba6-6a7432a66028	3	always updating bad stability	1	2025-11-18	NEGATIVE	0.9964240193367004	Google Play Store
15bd455e-6fb5-4dc8-8068-cc051fcd5d79	3	it say's disable developer option, i disabled it but its not working still	1	2025-11-17	NEGATIVE	0.999519944190979	Google Play Store
b2fb954d-1f3b-4b0b-9ab2-7a6da576cf26	3	with the super app evry thing i need is just a tap away	5	2025-11-17	NEGATIVE	0.9930068254470824	Google Play Store
27acef09-1136-4d2f-9f5d-82c4a30abd2d	3	nice	5	2025-11-17	POSITIVE	0.9998552799224854	Google Play Store
8babe417-ec30-4ba1-a860-03150c5daf7c	3	eyita tips	1	2025-11-15	POSITIVE	0.9007537364959716	Google Play Store
ecafe965-6f57-4ef5-88ee-9ef8adca142d	3	clear and presize	5	2025-11-15	POSITIVE	0.9996238946914672	Google Play Store
02b493af-68e8-4109-95e9-38dfce50d742	3	smooth and easy!!!	5	2025-11-14	POSITIVE	0.9998213648796082	Google Play Store
b8b11ccd-acac-419e-8ffc-16c86972ffd9	3	I have had an amazing experience with this app;ot os convenient and easy to use	5	2025-11-14	POSITIVE	0.99716055393219	Google Play Store
35ecd30c-9d1c-40c7-90c0-592d9ea5d0bd	3	All in One Super App with smooth navigation, transaction and lifestyle services	5	2025-11-14	POSITIVE	0.9918859004974364	Google Play Store
dbd90565-cfa7-4a22-a297-b37face26e17	3	Very nice App.	5	2025-11-14	POSITIVE	0.9998617172241212	Google Play Store
a1d46fd6-d7a6-458a-b1a2-1b5679bd7c02	3	system failure transfer to others account	2	2025-11-14	NEGATIVE	0.9988131523132324	Google Play Store
53570f06-6252-49fc-9626-b9e88fe490a9	3	thank you	1	2025-11-13	POSITIVE	0.9998352527618408	Google Play Store
3ece3a7c-9557-45ae-8053-2bf5568f2861	3	Only the UI/UX is good, but it doesn't function properly. It's a shame that a leading tech bank has such an app. Amole is far better.	1	2025-11-13	NEGATIVE	0.9978633522987366	Google Play Store
292edafd-2214-4c68-a18e-744b5a0f3db4	3	excellent app. to use perfectlly to pay,transfer,tele airtime and so on.	5	2025-11-13	POSITIVE	0.9994845390319824	Google Play Store
3a8163db-3a24-4d28-bba2-58bb438391aa	3	wow dashen bank super app	5	2025-11-12	POSITIVE	0.9992703795433044	Google Play Store
6e114d46-b6cd-4ac4-9b39-611be7092468	3	Best Mobile Banking App in Ethiopia .	5	2025-11-11	POSITIVE	0.9997279047966005	Google Play Store
0564e4c4-c11e-4d31-b2d8-bdc5725ebb2c	3	very nice app I have ever seen	5	2025-11-11	POSITIVE	0.9998395442962646	Google Play Store
898109d7-385c-4fc9-b8a6-bd6e2a303a39	3	NASTY BANK . EVEN THE SUPPER APP IS NOT WORKING WELL. WHEN I AM CALLING THEM THEY ARE NOT RESPONSE . PLEASE DON'T USE THIS APP BECAUSE YOU WILL LOSS YOU TIME ;ENERGY AND EVERYTHING . HOPELESS Bank .	1	2025-11-11	NEGATIVE	0.9997878670692444	Google Play Store
d5e77822-77c3-4c94-b062-4c36c8b6e210	3	it's good but is not fast	5	2025-11-09	POSITIVE	0.9160582423210144	Google Play Store
ef42c724-ee02-45e6-8c6f-f0f4a8ab7fc6	3	your financial system must improved	4	2025-11-09	POSITIVE	0.7152249217033386	Google Play Store
1f2786d3-7b51-4467-95f2-fb7ef877469a	3	your service is too good	5	2025-11-09	POSITIVE	0.999098539352417	Google Play Store
09607d06-8ab3-45a4-bc8e-c824930c888a	3	good experience	5	2025-11-09	POSITIVE	0.9998599290847778	Google Play Store
4cdd9b19-e553-4afb-93c9-270d15315c28	3	ok	5	2025-11-08	POSITIVE	0.9997851252555848	Google Play Store
84e34f1c-ea3e-439c-8076-f8804fa9b556	3	wooow	5	2025-11-07	NEGATIVE	0.983917474746704	Google Play Store
c62e6956-30d4-4d76-8b01-26087c21de71	3	ok	5	2025-11-07	POSITIVE	0.9997851252555848	Google Play Store
25ea2324-c911-4710-b2f0-4f5115675cbe	3	Nice app	5	2025-11-07	POSITIVE	0.9998061060905457	Google Play Store
b1450711-16b6-4649-abcd-19bfc90d87d4	3	best	5	2025-11-07	POSITIVE	0.9997941851615906	Google Play Store
215de933-fc3e-45ce-9bd9-b7d6d113c8c3	3	easy to use, friendly	5	2025-11-07	POSITIVE	0.999752938747406	Google Play Store
f5360419-4441-4084-a1c2-eb9b07206b36	3	12yr more LC, UCP & ICC & loan	5	2025-11-06	NEGATIVE	0.9304075837135316	Google Play Store
80a217d4-a389-40ab-bd17-b6c164c76aaa	3	not attractive and friendly app. Check Awash, CBE apps	1	2025-11-06	NEGATIVE	0.9997969269752502	Google Play Store
b47d9d1d-7a70-4074-833d-2c1056dda3a0	3	amzing	5	2025-11-06	NEGATIVE	0.9989879727363586	Google Play Store
6865f69e-cc69-42db-941a-85cc16ce6bf8	3	betam kerfafa naw	1	2025-11-05	NEGATIVE	0.9936383366584778	Google Play Store
b91bcd0e-b1b1-42f1-acbb-9445f701adf3	3	exceptional	5	2025-11-05	POSITIVE	0.9998514652252196	Google Play Store
2e58305b-5b99-4fc5-b4f0-1be5623a0558	3	worst app ever	1	2025-11-05	NEGATIVE	0.9997803568840028	Google Play Store
6bf6ad8e-bd05-454f-ac8f-fc11c1aeedb5	3	Dashen, always two step ahead.	5	2025-11-05	POSITIVE	0.9996127486228944	Google Play Store
e2e4f955-c79a-4192-a71e-950a3fde3907	3	Please try to fix the barrier between other banks specially with "Commercial bank of Ethiopia"	3	2025-11-05	NEGATIVE	0.986888349056244	Google Play Store
703187ba-cd29-46c8-9bdf-bdfd54668e67	3	i am using	5	2025-11-05	POSITIVE	0.9937612414360046	Google Play Store
7bf9a8a8-2718-4a3b-85f0-3ac3b628ec84	3	It is a wonderful App developed by a local talent. It deserves an appreciation. It will continue to evolve with new exciting features.	5	2025-11-05	POSITIVE	0.9998525381088256	Google Play Store
e6ada560-df66-4170-b0cb-e04a65ead451	3	wonderful app	5	2025-11-05	POSITIVE	0.9998787641525269	Google Play Store
d18aa410-4dc1-4c26-8f7d-a866f5b498ba	3	i love the app it features are perfect, but it asks to update too many times to activate your need to visit a nearest branch and that takes time. other than that the app is great I like it	5	2025-11-05	POSITIVE	0.9031389951705932	Google Play Store
b23ea516-d92d-4e3b-88d4-d0bc679d23cb	3	go ahead	5	2025-11-05	POSITIVE	0.999769389629364	Google Play Store
d4d30d69-4b0a-4ad0-8430-7aa85f6467e6	3	its supper	5	2025-11-05	POSITIVE	0.9683655500411988	Google Play Store
e0bb7d0a-fe46-4423-b26d-c9ad4a40afc2	3	Good	5	2025-11-05	POSITIVE	0.999816119670868	Google Play Store
8eb02f5b-df9f-420c-b3b8-834820e32c3c	3	it's so boring	1	2025-11-05	NEGATIVE	0.9997939467430116	Google Play Store
ba74c62f-ad24-42ab-bbdf-b56a765ba124	3	Dashen Bank Super App is the latest version of online banking system that is the gift from Dashen bank for us Thanks to Dashen	5	2025-11-04	POSITIVE	0.9986799359321594	Google Play Store
8ffcaec9-4351-4cc7-973c-1d86365894f0	3	i rarely leave reviews, but this app truely deserves one.it's efficient ,secure , reliable and makes fanancial tasks effortless.definitely 5 stars for this exceptional app	5	2025-11-04	POSITIVE	0.9997314810752868	Google Play Store
360a6c12-d948-4ce0-aea6-267b8eaaa743	3	it has improved very much lately its working more and getting better but yet it is not fully fixed some time at night it doesn't work..i think the problem is it was launched too early.	3	2025-11-04	NEGATIVE	0.9994889497756958	Google Play Store
2abe9685-d09b-407a-9f01-1acdab932ded	3	Amazing	5	2025-11-03	POSITIVE	0.999875545501709	Google Play Store
b9c85a77-6315-4df3-844d-63d6e0fba45b	3	wow dashen bank	5	2025-11-03	POSITIVE	0.9995077848434448	Google Play Store
59498129-d37f-4693-a7e7-834300661621	3	I just updated my app to the latest version and I couldn't even see my balance, send money or do anything. It says service is unavailable and it will be fixed soon.	5	2025-11-01	NEGATIVE	0.9997263550758362	Google Play Store
2ccfdda8-3a7e-4c83-a336-837799716a01	3	it's too slow	1	2025-11-01	NEGATIVE	0.999787986278534	Google Play Store
9f025499-c17d-4452-bb71-3c2b7b1c4500	3	Before the recent update, this app was great. Now, the home page is cluttered with promotions and banners, which really hurts the experience. I think the app stopped being banking app and started only to promote b/c 95% of the app is only ads, also full of bugs	1	2025-11-01	NEGATIVE	0.99911230802536	Google Play Store
34e38910-0b27-4048-954e-82aa66d61c43	3	This might be the worst banking app I've ever used I dont know why kind of bug it is but suddenly the apps stops working it says "Temporarily unavailable" for a simple feature like viewing account balance and in person visit was no help it took them longer than 2 hours to fix it and even after that 2 weeks later the same problem just because of this I'm going to stop using the bank altogether which is a shame because it's a decent bank	1	2025-11-01	NEGATIVE	0.9994062185287476	Google Play Store
d099e425-3a97-47f7-b671-520b735f3b3d	3	Nice app	5	2025-11-01	POSITIVE	0.9998061060905457	Google Play Store
54ec2a20-6d4c-4934-8f43-95bcbfc419ae	3	The worst app ever. Extremely unreliable. Such a shame for a big bank.	1	2025-11-01	NEGATIVE	0.9998087286949158	Google Play Store
a2b10118-101d-4ee3-ad6f-61980614aa3b	3	app is too slow not opening fast	1	2025-10-31	NEGATIVE	0.999428689479828	Google Play Store
322b8846-bfa9-46cc-bd78-3764c23d0c37	3	good	5	2025-10-31	POSITIVE	0.999816119670868	Google Play Store
a0165d49-aca9-41e3-929f-ef67fccf3f56	3	it's seems to have some improvements, I don't know what's going on with this app sometimes get collapseed. This is not expected from Dashen bank, which is amongst from famous and greatest banks.	1	2025-10-30	NEGATIVE	0.9892114400863647	Google Play Store
3dff5082-039f-40a3-8d75-11dbf6ed6f44	3	very nise good	5	2025-10-30	POSITIVE	0.999859094619751	Google Play Store
8e7a821b-fa3e-4d69-aaed-7ef7e4bc9019	3	very interesting	5	2025-10-30	POSITIVE	0.999863862991333	Google Play Store
99b90e10-84e8-4a3d-b564-b6b1fc10698e	3	what your emplyees tell as about the app when they came to our store and what actually the app is different	1	2025-10-30	POSITIVE	0.9886024594306946	Google Play Store
e938df24-05ce-4d22-adcc-ae6d3a74d22a	3	Excellent promotion	5	2025-10-30	POSITIVE	0.9998637437820436	Google Play Store
1e3e6da6-3485-42a0-bad9-33ae040acb12	3	viry good	5	2025-10-30	POSITIVE	0.9997873902320862	Google Play Store
c68cdc01-a66b-40fe-a6b7-cbb1487156f4	3	The design is clean and modern, and everything works smoothly without bugs. I love how reliable the app is it makes banking so convenient.	5	2025-10-28	POSITIVE	0.9996851682662964	Google Play Store
be6dc291-6fb0-427b-8553-d735553e3313	3	A true banking super app! The Dashen Super App combines great design, security, and an impressive range of features. Highly recommended for anyone looking for a complete digital banking experience.	5	2025-10-28	POSITIVE	0.9998050332069396	Google Play Store
db4710e2-0fb3-459c-a3a5-69445d4cb270	3	This app makes my day-to-day payments so easy. Everything works perfectly, and it saves me a lot of time.	5	2025-10-28	POSITIVE	0.9997445940971376	Google Play Store
5b430dc9-06e5-4015-a4cb-7c671ff8ae9c	3	This app has replaced several others for me. It has everything I need in one place.	5	2025-10-28	POSITIVE	0.8051267266273499	Google Play Store
211b2b4d-826d-4192-9fa8-25d7e38c7666	3	Dashen superapp just keeps improving. The new theme options are beautiful, and the overall experience is faster and smoother than ever	5	2025-10-28	POSITIVE	0.9997761845588684	Google Play Store
3677b2d7-95ab-4c95-87af-ef1d3edb674e	3	I have been using this app for months and its easy to use and is user friendly thanks Dashen bank.	5	2025-10-28	POSITIVE	0.9983078241348268	Google Play Store
90d2468b-101a-4006-ae49-d07185b49594	3	Finally, banking made simple! Everything I need is in one super app. A true game changer for managing my finances on the go.	5	2025-10-28	POSITIVE	0.998018741607666	Google Play Store
5c592442-a2c0-4290-95d8-93a1362b4f10	3	I appreciate how secure this app feels. Every transaction comes with confirmation, and I always get alerts immediately.	5	2025-10-28	POSITIVE	0.9954238533973694	Google Play Store
8cd152ac-79ad-4248-8a85-574943011aa6	3	I love the new dark theme it gives the app modern feel n make it more comfortable to use	5	2025-10-28	POSITIVE	0.9994518160820008	Google Play Store
9188bb05-84eb-4c73-a234-31c0b5d503b7	3	This is amazing app, as it name ,truly supper.	5	2025-10-28	POSITIVE	0.9998388290405272	Google Play Store
0d789c56-bdf8-489e-8f96-c6508734fade	3	This is one of the most user friendly and impressive apps I have encountered in the banking sector	5	2025-10-28	POSITIVE	0.9997900128364564	Google Play Store
86b26648-6711-4439-a44d-55e9aa090353	3	Amazing UI and UX, the dark mode looks absolutely awesome!	5	2025-10-28	POSITIVE	0.9998499155044556	Google Play Store
9dd2a5b8-d258-4f07-b8ef-c95c4d1e3a23	3	Astonishing interface with ease of access and complete performance	5	2025-10-28	POSITIVE	0.9997556805610656	Google Play Store
99b53c3c-9074-448a-8dd4-4d0ecf85e835	3	stunning UI with reliable service!	5	2025-10-28	POSITIVE	0.9997430443763732	Google Play Store
74f35e55-6ee7-4d01-bc8a-e5b3c92a6b70	3	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	2025-10-27	POSITIVE	0.9995073080062866	Google Play Store
5cf2f96d-65d1-4c59-bc53-9ba932c4c57b	3	The UI is impressive, but adding an ATM withdrawal feature for cardless cash access would enhance functionality. This may require updates to the ATM system as well. Please consider this, dev team.	4	2025-10-22	POSITIVE	0.8331388235092163	Google Play Store
f7a77123-8426-440e-afa9-d3e7a0bcc8fd	3	convinent	5	2025-10-22	NEGATIVE	0.9798853993415833	Google Play Store
e1d422df-940c-4d01-ad57-d42f3cd1a650	3	Good	4	2025-10-21	POSITIVE	0.999816119670868	Google Play Store
dd62498b-d256-495f-8251-683626113991	3	it is Excellent April jest continue more abeaten.....	4	2025-10-19	POSITIVE	0.9983513355255128	Google Play Store
b5cdf35c-3557-4d24-b745-5fba84d615d9	3	I like it	5	2025-10-18	POSITIVE	0.99985933303833	Google Play Store
33904fae-7879-41ca-be3c-4404345cece6	3	abdrug bentahuuuu	3	2025-10-17	NEGATIVE	0.7569701075553894	Google Play Store
8921bc6d-74d6-4680-a63e-e57e70ea4b68	3	Best application	5	2025-10-14	POSITIVE	0.9998098015785216	Google Play Store
7426cf04-4823-4217-9cb9-1ba06be0f137	3	easy	5	2025-10-14	POSITIVE	0.9972309470176696	Google Play Store
ac57d562-3e2e-476a-a7fa-5433d1ed321e	3	lmo	5	2025-10-13	POSITIVE	0.9923747181892396	Google Play Store
e20159de-996c-4fc5-9474-e63518140932	3	meseret birara	5	2025-10-12	NEGATIVE	0.7238976955413818	Google Play Store
86f17281-1a7a-4ae7-be9f-c2130ab31b88	3	it doesn't let me open my account	1	2025-10-12	NEGATIVE	0.9643087983131408	Google Play Store
295d2079-821b-4b20-aaf4-736ba7cb2677	3	very good	1	2025-10-11	POSITIVE	0.9998520612716676	Google Play Store
78a694a1-8f38-4796-a4fc-0310a8c0a031	3	it is the best	5	2025-10-11	POSITIVE	0.9998602867126464	Google Play Store
71b44fde-a457-4a5d-bd21-cee994689ee2	3	nice and best	5	2025-10-11	POSITIVE	0.9998648166656494	Google Play Store
7d17e2b7-b9f7-4020-896d-43519468918f	3	good	5	2025-10-10	POSITIVE	0.999816119670868	Google Play Store
a4024312-1bfc-4942-bab2-89a8800248ff	3	Finish the app development fully before you give the final result. It's is very inconvenient and not that reliable at the moment.	1	2025-10-08	NEGATIVE	0.9998096823692322	Google Play Store
530dd237-64b5-4402-812f-39790e254ca7	3	hayelu Beranu Bashre	5	2025-10-07	POSITIVE	0.9403011202812196	Google Play Store
92c02ccf-dc16-4085-a570-ba0db7e1c8b2	3	good	5	2025-10-06	POSITIVE	0.999816119670868	Google Play Store
fded7d2d-d728-45d8-bbff-d921bb72b84c	3	@Shewangizaw L. As a heavy user of the app , the issue you raised around resetting pass pin concerned me and gave it a try and found it to be safe. Basically the app will do two things: verifies one using an otp and then requires an in-person visit to bank's physical branch for final verification after resetting the password. Therefore, safe to use! I wish "i"nformational tip was added around the reset button. Could not attach screenshot.	4	2025-10-06	NEGATIVE	0.9973627924919128	Google Play Store
dc05323e-52e8-456d-b11d-723ad497bb76	3	perfect	5	2025-10-06	POSITIVE	0.9998517036437988	Google Play Store
8a4c8a02-5cf7-48f5-a9c6-b9dc12a9bd4f	3	for dashen bankk it is best app so why your bank onlyu one one app for mobile banking that means superr app	5	2025-10-05	NEGATIVE	0.7281898856163025	Google Play Store
b8460ed9-6fc3-4641-8e95-169ed65ef8ee	3	wow	5	2025-10-05	POSITIVE	0.999592125415802	Google Play Store
57d4668e-fea7-4959-9bfa-94ef44056c71	3	tadesa melka tulluu	1	2025-10-05	NEGATIVE	0.9457598328590392	Google Play Store
98f164eb-f69b-4bd7-ad2d-defcfa2249a1	3	I can't open virtual account.I have been trying it for about 3 days still no resolve.	2	2025-10-04	NEGATIVE	0.9991094470024108	Google Play Store
4405edcc-29c2-4606-9119-32fd60425503	3	App is passive when compare to Amole it takes 3-5 seconds to open and i cannot refresh transactions what i did.	1	2025-10-04	NEGATIVE	0.9987977743148804	Google Play Store
29cefc71-17c5-4da9-b52d-14ea873c14fc	3	withdraw	1	2025-10-02	NEGATIVE	0.99894779920578	Google Play Store
fe52deb6-a04e-457e-a84a-4946e5c13f89	3	this app is outstanding	5	2025-10-02	POSITIVE	0.9998713731765748	Google Play Store
ca1bd0cc-d7e8-461f-89c9-f7493cb9c23d	3	totally bad	1	2025-10-01	NEGATIVE	0.9997747540473938	Google Play Store
8fcb61bb-c476-4963-9ce7-8520c21fdb32	3	I really appreciate but we can't use it if don't have balance or data access	2	2025-10-01	NEGATIVE	0.9886035919189452	Google Play Store
e7f1ebae-d2de-4e91-a920-92d2b5df4c3d	3	nice app	5	2025-10-01	POSITIVE	0.9998061060905457	Google Play Store
c7f14167-31f9-4fec-bf3e-5997616a9dfe	3	it fast service	5	2025-09-29	POSITIVE	0.999433696269989	Google Play Store
04461449-8fd8-4684-8b12-1bc3aee7f6f2	3	Good improvements after the Sep 25, 2025 update.	4	2025-09-29	POSITIVE	0.9994186162948608	Google Play Store
9a6e8134-27c5-45f1-8dae-6c6fb1827281	3	I have one issue though what if the mobile phone with the sim is stolen and have no pattern or pin. The app allows to reset the pin directly without 2FA like finger print just by sending sms. which is a big gap. It should be addressed I didn't expect but it does and no trust at all.	1	2025-09-29	NEGATIVE	0.9984353184700012	Google Play Store
f6eb5502-78e4-4092-8135-5f350dc7947c	3	Best	5	2025-09-28	POSITIVE	0.9997941851615906	Google Play Store
f42317c0-6835-47ab-8af9-1527e863d6c7	3	nice	5	2025-09-28	POSITIVE	0.9998552799224854	Google Play Store
148f9fa2-0406-42c0-a3ca-d4e80633c6c8	3	gooe	5	2025-09-28	NEGATIVE	0.9992986917495728	Google Play Store
639aedfd-a81c-49d8-8f52-53848d0f874a	3	nice app	5	2025-09-28	POSITIVE	0.9998061060905457	Google Play Store
a2779b7b-ad8d-420f-a4d4-d1e4ec4212d8	3	Dashen super app is the best all ethiopian banks keep it	5	2025-09-28	POSITIVE	0.9997637867927552	Google Play Store
8d1ad519-2698-4fcf-b4d5-bf45bf22cc37	3	cool app	5	2025-09-27	POSITIVE	0.999824583530426	Google Play Store
f70c861d-2247-481d-906f-86f608f595d6	3	nice	5	2025-09-27	POSITIVE	0.9998552799224854	Google Play Store
90dfd168-3d83-4e21-87ee-6500a304e586	3	App That makes cashless society in our century and Easy to use.	5	2025-09-27	POSITIVE	0.99612158536911	Google Play Store
24c09146-a504-429e-a1fe-9ffb57e044ad	3	tadass	1	2025-09-27	NEGATIVE	0.9969047904014589	Google Play Store
32f7f582-e0e2-4127-b460-8faa11fc3ba1	3	It is an amazing app and all in one	5	2025-09-27	POSITIVE	0.9998719692230223	Google Play Store
a508c79d-95b9-4133-a32b-095e1bf3c75c	3	i dont like it	1	2025-09-27	NEGATIVE	0.9909656047821044	Google Play Store
79e31cae-3560-497e-af19-327dd7ee607f	3	Dashen is the Future	5	2025-09-27	POSITIVE	0.9976993203163148	Google Play Store
e0b1cd75-ae0c-4424-aa2c-49c5c848c96a	3	excellent	5	2025-09-27	POSITIVE	0.9998434782028198	Google Play Store
811f3549-2ca4-43f3-b03a-f0aff42e4b37	3	its amazing app, visually stunning	5	2025-09-27	POSITIVE	0.9998769760131836	Google Play Store
08d88ef0-1304-4fb7-9cb4-97977dc02cf7	3	the best app from other dashen is unique its fast app ever i had in my life	5	2025-09-27	POSITIVE	0.9998315572738647	Google Play Store
0ad08d24-eefb-44bb-91c2-49266c0850ce	3	I love the new user interface	5	2025-09-27	POSITIVE	0.9998557567596436	Google Play Store
97806b54-1708-4b5c-a367-7cb034c107cd	3	ok	5	2025-09-26	POSITIVE	0.9997851252555848	Google Play Store
3323ffef-d180-4eb7-b358-7f00cb41d9fc	3	Appreciated, Always one step ahead!	5	2025-09-26	POSITIVE	0.9998669624328612	Google Play Store
264384ce-c57e-4c4b-ad15-434015cb7f49	3	The app stops working whenever there is an update unless you update the app. But it is better if it kept working on and updating should be optional.	3	2025-09-26	NEGATIVE	0.9990849494934082	Google Play Store
29207dce-824f-4d9c-9f01-040a65597a9e	3	This is the first time i have experienced this much cool app out of all the other mobile banking platforms, im genuinely happy to see this kind of app here, tnx	5	2025-09-26	POSITIVE	0.9997037053108216	Google Play Store
5e5900f0-cc81-40b6-a5ea-5dfd29d8b53c	3	it can't do without data or wifi	1	2025-09-26	NEGATIVE	0.8546763062477112	Google Play Store
2d3661c7-4b35-4a79-9428-5db3ad5109c7	3	The best UI banking app from all those I used, other Ethiopian banks I used have a really old UI. This is very neat and easy to use. Also so reliable.	5	2025-09-26	POSITIVE	0.9996398687362672	Google Play Store
097ae6ec-2562-45ae-9ee4-7276f48ba81b	3	So nice !	5	2025-09-26	POSITIVE	0.9998644590377808	Google Play Store
474cda36-39b1-4257-939a-0ec2255554d2	3	What's the problem with this app's that asking for updates on a daily basis?	1	2025-09-25	NEGATIVE	0.9996622800827026	Google Play Store
7373443b-6373-47cd-9c64-291b7e6e23da	3	good	3	2025-09-25	POSITIVE	0.999816119670868	Google Play Store
3a8dbeb7-0952-43ec-847e-bd418d51548e	3	Wow, I really loved the new UI/UX! Great job, Dashen Bank! You guys are the best mobile banking in Ethiopia.	5	2025-09-25	POSITIVE	0.9998483657836914	Google Play Store
2a02cd63-90c4-4590-a2f8-20c4c75ceb3e	3	one of the best app in Ethiopia .	5	2025-09-24	POSITIVE	0.999811589717865	Google Play Store
3cd71306-b6a6-448e-b4eb-1db85695e9a7	3	great app	5	2025-09-24	POSITIVE	0.999821126461029	Google Play Store
46d39a4d-52de-4a73-9146-654d971ffb71	3	it is good but some times says duplicate transaction why? and text	5	2025-09-23	NEGATIVE	0.9683175086975098	Google Play Store
c6f55a44-a8e1-4886-ba95-674a1124a5d5	3	good	5	2025-09-22	POSITIVE	0.999816119670868	Google Play Store
c97e45c3-0cfe-43f3-b55f-7529c0f38cd6	3	Good	4	2025-09-19	POSITIVE	0.999816119670868	Google Play Store
6cd59c87-dcb4-4bd7-9d02-76ca304d2172	3	safe and secure	3	2025-09-18	POSITIVE	0.9998433589935304	Google Play Store
70df55ba-42e4-4f41-be80-692d2b7a9e48	3	is not working right now with snmsung galaxy f15, please help me	1	2025-09-14	NEGATIVE	0.9993507266044616	Google Play Store
8618a1b3-d111-4962-93c1-92100cd710db	3	good	5	2025-09-14	POSITIVE	0.999816119670868	Google Play Store
e0770686-7f6d-4168-8b14-6d5a6084fd32	3	Your staffs are really hardworking but the app is not like your employees	3	2025-09-12	NEGATIVE	0.9945451021194458	Google Play Store
41373a3e-ab62-412b-9857-5c3e02115fdb	3	total	5	2025-09-11	POSITIVE	0.9983636736869812	Google Play Store
9ba01954-bb12-4df6-afaa-72a67a757e62	3	good	5	2025-09-10	POSITIVE	0.999816119670868	Google Play Store
95e30d8e-42d6-4595-b1b3-95186c1bcb8c	3	dashen super app is the best	5	2025-09-10	POSITIVE	0.9998204112052916	Google Play Store
8d28d679-b22a-4f59-9d90-a69f077f47d5	3	not werke	2	2025-09-09	NEGATIVE	0.9970670342445374	Google Play Store
a71c88cf-7021-4ba7-b000-46587677601f	3	what happened to dashen bank? this is by far the worst banking app. extremely slow when it works and is out of service all the time	1	2025-09-08	NEGATIVE	0.9998086094856262	Google Play Store
c301bf47-7446-4873-a515-514bb4be2ba3	3	simple and easy to use	5	2025-09-08	POSITIVE	0.9997318387031556	Google Play Store
16466231-7a4d-4683-90cf-ae171a9904e1	3	meke	4	2025-09-08	POSITIVE	0.9576797485351562	Google Play Store
bab597bd-52e5-42da-aa02-97cd368d8c0e	3	not a great app compared to the others ,It freezes randomly ,Takes a lot to load ,and a lot of errors while sending money ,I stopped using it	1	2025-09-07	NEGATIVE	0.9997312426567078	Google Play Store
6da6a076-6a01-4e58-b8aa-de2969a2a505	3	bad specialy at weekends	1	2025-09-07	NEGATIVE	0.999614953994751	Google Play Store
7e5f7745-10ac-412a-aef7-de5474b2e9fd	3	It is good apps but it needs strong network	5	2025-09-07	NEGATIVE	0.970344603061676	Google Play Store
0fdefc13-faf9-4f32-b5a3-1fed6de3231d	3	very slow	3	2025-09-07	NEGATIVE	0.9997065663337708	Google Play Store
c73641e9-3f90-408c-b7a0-245d95f38059	3	The app doesn't allow to switch between accounts. Why is it not possible to use two accounts on the same app even if the accounts have been opened at different branch?	2	2025-09-06	NEGATIVE	0.9970771074295044	Google Play Store
d61f7d9d-2a92-4fbb-9a72-950597e42414	3	lacag inaad amaahisan somalida maxaad ku diiden	5	2025-09-06	NEGATIVE	0.974568247795105	Google Play Store
3630822b-a561-49cd-ba3e-689548d61e5d	3	Dashin mobile banking is become worest app like others Ethiopian bank apps. Amole was the best app ever I used. It was so flexible & reliable to use. and the best app user can login with new device without go to bank physically.	1	2025-09-05	POSITIVE	0.9979987740516664	Google Play Store
0a5e77d2-0b8d-4777-8c63-de906861a90a	3	very slow and failed transaction multiple times, previous app was much better!!	2	2025-09-04	NEGATIVE	0.9980061650276184	Google Play Store
\.


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 220
-- Name: bank_bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_bank_id_seq', 3, true);


--
-- TOC entry 4853 (class 2606 OID 16418)
-- Name: bank bank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (bank_id);


--
-- TOC entry 4855 (class 2606 OID 16482)
-- Name: review review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (review_id);


-- Completed on 2025-12-01 15:41:54

--
-- PostgreSQL database dump complete
--

\unrestrict JFGsmhXLjsb20zQDP7mrx86XtAqLNFNaY4tAHmP6hrbdKeVCCKmIJp2Sr4A3ySm

