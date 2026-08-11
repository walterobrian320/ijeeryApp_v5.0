--
-- PostgreSQL database dump
--

\restrict 1yTgbCO3hka70tszBQuyxbqzLhx8vmcEWr7r1fG5wZ9Dix7T6UsYXSroTMmZVcr

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.14

-- Started on 2026-08-11 13:13:52

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
-- TOC entry 215 (class 1259 OID 16399)
-- Name: event_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_logs (
    id_log timestamp with time zone DEFAULT clock_timestamp() NOT NULL,
    description text NOT NULL,
    "user" character varying(150),
    datetime timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.event_logs OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16406)
-- Name: logistique_bon_sortie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_bon_sortie (
    id integer NOT NULL,
    numero_bon character varying(40) NOT NULL,
    type_bon character varying(40) DEFAULT 'Sortie Matériel'::character varying,
    date_bon date DEFAULT CURRENT_DATE NOT NULL,
    demandeur character varying(80) NOT NULL,
    service character varying(80),
    responsable character varying(80),
    destination character varying(120),
    statut character varying(20) DEFAULT 'Brouillon'::character varying,
    observations text,
    vehicule_id integer,
    chauffeur character varying(80),
    created_at timestamp without time zone DEFAULT now(),
    CONSTRAINT logistique_bon_sortie_statut_check CHECK (((statut)::text = ANY (ARRAY[('Brouillon'::character varying)::text, ('Validé'::character varying)::text, ('Clôturé'::character varying)::text, ('Annulé'::character varying)::text])))
);


ALTER TABLE public.logistique_bon_sortie OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16416)
-- Name: logistique_bon_sortie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_bon_sortie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_bon_sortie_id_seq OWNER TO postgres;

--
-- TOC entry 5689 (class 0 OID 0)
-- Dependencies: 217
-- Name: logistique_bon_sortie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_bon_sortie_id_seq OWNED BY public.logistique_bon_sortie.id;


--
-- TOC entry 218 (class 1259 OID 16417)
-- Name: logistique_bon_sortie_ligne; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_bon_sortie_ligne (
    id integer NOT NULL,
    bon_id integer NOT NULL,
    designation character varying(120) NOT NULL,
    quantite numeric(10,3) DEFAULT 1,
    unite character varying(30) DEFAULT 'Unité'::character varying,
    observation text
);


ALTER TABLE public.logistique_bon_sortie_ligne OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16424)
-- Name: logistique_bon_sortie_ligne_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_bon_sortie_ligne_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_bon_sortie_ligne_id_seq OWNER TO postgres;

--
-- TOC entry 5690 (class 0 OID 0)
-- Dependencies: 219
-- Name: logistique_bon_sortie_ligne_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_bon_sortie_ligne_id_seq OWNED BY public.logistique_bon_sortie_ligne.id;


--
-- TOC entry 220 (class 1259 OID 16425)
-- Name: logistique_carburant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_carburant (
    id integer NOT NULL,
    vehicule_id integer,
    date_plein date DEFAULT CURRENT_DATE NOT NULL,
    litres numeric(8,2) NOT NULL,
    prix_litre numeric(8,2),
    montant_total numeric(12,2),
    km_au_plein numeric(10,1),
    type_carburant character varying(20) DEFAULT 'Diesel'::character varying,
    station character varying(80),
    ref_bon character varying(60),
    notes text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.logistique_carburant OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16433)
-- Name: logistique_carburant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_carburant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_carburant_id_seq OWNER TO postgres;

--
-- TOC entry 5691 (class 0 OID 0)
-- Dependencies: 221
-- Name: logistique_carburant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_carburant_id_seq OWNED BY public.logistique_carburant.id;


--
-- TOC entry 222 (class 1259 OID 16434)
-- Name: logistique_maintenance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_maintenance (
    id integer NOT NULL,
    vehicule_id integer,
    type_travaux character varying(80) NOT NULL,
    description text,
    garage character varying(80),
    date_entree date,
    date_sortie date,
    kilometrage numeric(10,1),
    cout_estime numeric(12,2),
    cout numeric(12,2),
    statut character varying(20) DEFAULT 'En attente'::character varying,
    pieces_utilisees text,
    prochain_km numeric(10,1),
    notes text,
    created_at timestamp without time zone DEFAULT now(),
    CONSTRAINT logistique_maintenance_statut_check CHECK (((statut)::text = ANY (ARRAY[('En attente'::character varying)::text, ('En cours'::character varying)::text, ('Terminé'::character varying)::text, ('Annulé'::character varying)::text])))
);


ALTER TABLE public.logistique_maintenance OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16442)
-- Name: logistique_maintenance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_maintenance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_maintenance_id_seq OWNER TO postgres;

--
-- TOC entry 5692 (class 0 OID 0)
-- Dependencies: 223
-- Name: logistique_maintenance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_maintenance_id_seq OWNED BY public.logistique_maintenance.id;


--
-- TOC entry 224 (class 1259 OID 16443)
-- Name: logistique_mission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_mission (
    id integer NOT NULL,
    vehicule_id integer,
    chauffeur character varying(80) NOT NULL,
    depart character varying(120) NOT NULL,
    destination character varying(120) NOT NULL,
    objet text,
    date_depart timestamp without time zone,
    date_retour timestamp without time zone,
    km_depart numeric(10,1),
    km_retour numeric(10,1),
    statut character varying(20) DEFAULT 'Planifié'::character varying,
    passagers character varying(120),
    notes text,
    created_at timestamp without time zone DEFAULT now(),
    CONSTRAINT logistique_mission_statut_check CHECK (((statut)::text = ANY (ARRAY[('Planifié'::character varying)::text, ('En cours'::character varying)::text, ('Terminé'::character varying)::text, ('Annulé'::character varying)::text])))
);


ALTER TABLE public.logistique_mission OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16451)
-- Name: logistique_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_mission_id_seq OWNER TO postgres;

--
-- TOC entry 5693 (class 0 OID 0)
-- Dependencies: 225
-- Name: logistique_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_mission_id_seq OWNED BY public.logistique_mission.id;


--
-- TOC entry 226 (class 1259 OID 16452)
-- Name: logistique_piece; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_piece (
    id integer NOT NULL,
    reference character varying(40) NOT NULL,
    designation character varying(120) NOT NULL,
    categorie character varying(40) DEFAULT 'Autre'::character varying,
    marque_vehicule character varying(60),
    fournisseur character varying(80),
    quantite integer DEFAULT 0,
    seuil_alerte integer DEFAULT 2,
    prix_unitaire numeric(12,2),
    emplacement character varying(80),
    notes text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.logistique_piece OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16462)
-- Name: logistique_piece_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_piece_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_piece_id_seq OWNER TO postgres;

--
-- TOC entry 5694 (class 0 OID 0)
-- Dependencies: 227
-- Name: logistique_piece_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_piece_id_seq OWNED BY public.logistique_piece.id;


--
-- TOC entry 228 (class 1259 OID 16463)
-- Name: logistique_piece_mouvement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_piece_mouvement (
    id integer NOT NULL,
    piece_id integer,
    type_mouvement character varying(10) NOT NULL,
    quantite integer NOT NULL,
    ref_document character varying(60),
    vehicule character varying(80),
    motif text,
    date_mouvement timestamp without time zone DEFAULT now(),
    created_at timestamp without time zone DEFAULT now(),
    CONSTRAINT logistique_piece_mouvement_quantite_check CHECK ((quantite > 0)),
    CONSTRAINT logistique_piece_mouvement_type_mouvement_check CHECK (((type_mouvement)::text = ANY (ARRAY[('Entrée'::character varying)::text, ('Sortie'::character varying)::text])))
);


ALTER TABLE public.logistique_piece_mouvement OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16472)
-- Name: logistique_piece_mouvement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_piece_mouvement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_piece_mouvement_id_seq OWNER TO postgres;

--
-- TOC entry 5695 (class 0 OID 0)
-- Dependencies: 229
-- Name: logistique_piece_mouvement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_piece_mouvement_id_seq OWNED BY public.logistique_piece_mouvement.id;


--
-- TOC entry 230 (class 1259 OID 16473)
-- Name: logistique_vehicule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_vehicule (
    id integer NOT NULL,
    immatriculation character varying(30) NOT NULL,
    marque character varying(60) NOT NULL,
    modele character varying(60),
    type_vehicule character varying(40) DEFAULT 'Voiture'::character varying,
    annee integer,
    couleur character varying(30),
    num_chassis character varying(60),
    num_moteur character varying(60),
    kilometrage numeric(10,1) DEFAULT 0,
    carburant character varying(20) DEFAULT 'Diesel'::character varying,
    date_mise_service date,
    statut character varying(30) DEFAULT 'Actif'::character varying,
    chauffeur character varying(80),
    notes text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.logistique_vehicule OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16484)
-- Name: logistique_vehicule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_vehicule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_vehicule_id_seq OWNER TO postgres;

--
-- TOC entry 5696 (class 0 OID 0)
-- Dependencies: 231
-- Name: logistique_vehicule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_vehicule_id_seq OWNED BY public.logistique_vehicule.id;


--
-- TOC entry 232 (class 1259 OID 16485)
-- Name: tb_absence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_absence (
    id integer NOT NULL,
    idpers integer,
    date timestamp without time zone,
    observation character varying(120),
    nbreheureabs double precision
);


ALTER TABLE public.tb_absence OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16488)
-- Name: tb_absence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_absence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_absence_id_seq OWNER TO postgres;

--
-- TOC entry 5697 (class 0 OID 0)
-- Dependencies: 233
-- Name: tb_absence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_absence_id_seq OWNED BY public.tb_absence.id;


--
-- TOC entry 234 (class 1259 OID 16489)
-- Name: tb_article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_article (
    idarticle integer NOT NULL,
    designation character varying(150),
    idca integer,
    alert integer,
    deleted integer DEFAULT 0,
    idmag integer,
    alertdepot double precision
);


ALTER TABLE public.tb_article OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16493)
-- Name: tb_article_idarticle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_article_idarticle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_article_idarticle_seq OWNER TO postgres;

--
-- TOC entry 5698 (class 0 OID 0)
-- Dependencies: 235
-- Name: tb_article_idarticle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_article_idarticle_seq OWNED BY public.tb_article.idarticle;


--
-- TOC entry 236 (class 1259 OID 16494)
-- Name: tb_autorisation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_autorisation (
    id integer NOT NULL,
    idfonction integer,
    idmenu integer
);


ALTER TABLE public.tb_autorisation OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16497)
-- Name: tb_autorisation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_autorisation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_autorisation_id_seq OWNER TO postgres;

--
-- TOC entry 5699 (class 0 OID 0)
-- Dependencies: 237
-- Name: tb_autorisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autorisation_id_seq OWNED BY public.tb_autorisation.id;


--
-- TOC entry 238 (class 1259 OID 16498)
-- Name: tb_autre_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_autre_infos (
    id integer NOT NULL,
    intitule character varying(250) DEFAULT ''::character varying,
    valeur character varying(1000) DEFAULT ''::character varying
);


ALTER TABLE public.tb_autre_infos OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16505)
-- Name: tb_autre_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_autre_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_autre_infos_id_seq OWNER TO postgres;

--
-- TOC entry 5700 (class 0 OID 0)
-- Dependencies: 239
-- Name: tb_autre_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autre_infos_id_seq OWNED BY public.tb_autre_infos.id;


--
-- TOC entry 240 (class 1259 OID 16506)
-- Name: tb_autrecreance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_autrecreance (
    id integer NOT NULL,
    idclient integer,
    dateregistre timestamp without time zone,
    numfact character varying(50),
    montant double precision,
    dateecheance date
);


ALTER TABLE public.tb_autrecreance OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16509)
-- Name: tb_autrecreance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_autrecreance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_autrecreance_id_seq OWNER TO postgres;

--
-- TOC entry 5701 (class 0 OID 0)
-- Dependencies: 241
-- Name: tb_autrecreance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autrecreance_id_seq OWNED BY public.tb_autrecreance.id;


--
-- TOC entry 242 (class 1259 OID 16510)
-- Name: tb_autredette; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_autredette (
    id integer NOT NULL,
    idfrs integer,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    numfact character varying(50),
    montant double precision,
    dateecheance date
);


ALTER TABLE public.tb_autredette OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16514)
-- Name: tb_autredette_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_autredette_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_autredette_id_seq OWNER TO postgres;

--
-- TOC entry 5702 (class 0 OID 0)
-- Dependencies: 243
-- Name: tb_autredette_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autredette_id_seq OWNED BY public.tb_autredette.id;


--
-- TOC entry 244 (class 1259 OID 16515)
-- Name: tb_avancepers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_avancepers (
    id integer NOT NULL,
    datepmt timestamp without time zone,
    refpmt character varying(50),
    mtpaye double precision,
    idtypeoperation integer,
    idpers integer,
    observation character varying(100),
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_avancepers OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16518)
-- Name: tb_avancepers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_avancepers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_avancepers_id_seq OWNER TO postgres;

--
-- TOC entry 5703 (class 0 OID 0)
-- Dependencies: 245
-- Name: tb_avancepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avancepers_id_seq OWNED BY public.tb_avancepers.id;


--
-- TOC entry 246 (class 1259 OID 16519)
-- Name: tb_avanceprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_avanceprof (
    id integer NOT NULL,
    refpmt character varying(50),
    idpers integer,
    mtpaye double precision,
    observation character varying(120),
    datepmt timestamp without time zone,
    etat integer,
    idtypeoperation integer,
    iduser integer
);


ALTER TABLE public.tb_avanceprof OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16522)
-- Name: tb_avanceprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_avanceprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_avanceprof_id_seq OWNER TO postgres;

--
-- TOC entry 5704 (class 0 OID 0)
-- Dependencies: 247
-- Name: tb_avanceprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avanceprof_id_seq OWNED BY public.tb_avanceprof.id;


--
-- TOC entry 248 (class 1259 OID 16523)
-- Name: tb_avancespecpers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_avancespecpers (
    id integer NOT NULL,
    idpers integer,
    refpmt character varying(50),
    mtpaye double precision,
    idtypeoperation integer,
    nbremboursement double precision,
    observation character varying(120),
    datepmt timestamp without time zone,
    id_banque integer,
    idmode integer,
    iduser integer
);


ALTER TABLE public.tb_avancespecpers OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16526)
-- Name: tb_avancespecpers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_avancespecpers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_avancespecpers_id_seq OWNER TO postgres;

--
-- TOC entry 5705 (class 0 OID 0)
-- Dependencies: 249
-- Name: tb_avancespecpers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avancespecpers_id_seq OWNED BY public.tb_avancespecpers.id;


--
-- TOC entry 250 (class 1259 OID 16527)
-- Name: tb_avoir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_avoir (
    id integer NOT NULL,
    refavoir character varying(50),
    idclient integer,
    iduser integer,
    mtavoir double precision,
    idmode integer,
    observation character varying(150),
    dateregistre timestamp without time zone,
    deleted integer DEFAULT 0,
    dateavoir timestamp without time zone
);


ALTER TABLE public.tb_avoir OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16531)
-- Name: tb_avoir_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_avoir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_avoir_id_seq OWNER TO postgres;

--
-- TOC entry 5706 (class 0 OID 0)
-- Dependencies: 251
-- Name: tb_avoir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avoir_id_seq OWNED BY public.tb_avoir.id;


--
-- TOC entry 252 (class 1259 OID 16532)
-- Name: tb_avoirdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_avoirdetail (
    id integer NOT NULL,
    idmag integer,
    idarticle integer,
    idunite integer,
    qtavoir double precision,
    prixunit double precision,
    deleted integer DEFAULT 0,
    idavoir integer
);


ALTER TABLE public.tb_avoirdetail OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16536)
-- Name: tb_avoirdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_avoirdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_avoirdetail_id_seq OWNER TO postgres;

--
-- TOC entry 5707 (class 0 OID 0)
-- Dependencies: 253
-- Name: tb_avoirdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avoirdetail_id_seq OWNED BY public.tb_avoirdetail.id;


--
-- TOC entry 254 (class 1259 OID 16537)
-- Name: tb_banque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_banque (
    id_banque integer NOT NULL,
    nombanque character varying(75),
    adresse character varying(120),
    numcompte integer,
    iduser integer
);


ALTER TABLE public.tb_banque OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 16540)
-- Name: tb_banque_id_banque_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_banque_id_banque_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_banque_id_banque_seq OWNER TO postgres;

--
-- TOC entry 5708 (class 0 OID 0)
-- Dependencies: 255
-- Name: tb_banque_id_banque_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_banque_id_banque_seq OWNED BY public.tb_banque.id_banque;


--
-- TOC entry 256 (class 1259 OID 16541)
-- Name: tb_baseliste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_baseliste (
    id integer NOT NULL,
    nombase character varying(75),
    designationbase character varying(75),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_baseliste OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 16545)
-- Name: tb_baseliste_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_baseliste_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_baseliste_id_seq OWNER TO postgres;

--
-- TOC entry 5709 (class 0 OID 0)
-- Dependencies: 257
-- Name: tb_baseliste_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_baseliste_id_seq OWNED BY public.tb_baseliste.id;


--
-- TOC entry 258 (class 1259 OID 16546)
-- Name: tb_categoriearticle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoriearticle (
    idca integer NOT NULL,
    designationcat character varying(150),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_categoriearticle OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 16550)
-- Name: tb_categoriearticle_idca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_categoriearticle_idca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_categoriearticle_idca_seq OWNER TO postgres;

--
-- TOC entry 5710 (class 0 OID 0)
-- Dependencies: 259
-- Name: tb_categoriearticle_idca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoriearticle_idca_seq OWNED BY public.tb_categoriearticle.idca;


--
-- TOC entry 260 (class 1259 OID 16551)
-- Name: tb_categoriecompte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoriecompte (
    idcc integer NOT NULL,
    categoriecompte character varying(100)
);


ALTER TABLE public.tb_categoriecompte OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 16554)
-- Name: tb_categoriecompte_idcc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_categoriecompte_idcc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_categoriecompte_idcc_seq OWNER TO postgres;

--
-- TOC entry 5711 (class 0 OID 0)
-- Dependencies: 261
-- Name: tb_categoriecompte_idcc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoriecompte_idcc_seq OWNED BY public.tb_categoriecompte.idcc;


--
-- TOC entry 262 (class 1259 OID 16555)
-- Name: tb_categoriepersonnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoriepersonnel (
    idcategorie integer NOT NULL,
    titre character varying(120) NOT NULL,
    description text,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_categoriepersonnel OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 16562)
-- Name: tb_categoriepersonnel_idcategorie_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_categoriepersonnel_idcategorie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_categoriepersonnel_idcategorie_seq OWNER TO postgres;

--
-- TOC entry 5712 (class 0 OID 0)
-- Dependencies: 263
-- Name: tb_categoriepersonnel_idcategorie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoriepersonnel_idcategorie_seq OWNED BY public.tb_categoriepersonnel.idcategorie;


--
-- TOC entry 264 (class 1259 OID 16563)
-- Name: tb_changement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_changement (
    idchg integer NOT NULL,
    refchg character varying(20) NOT NULL,
    datechg timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    iduser integer NOT NULL,
    note text
);


ALTER TABLE public.tb_changement OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 16569)
-- Name: tb_changement_idchg_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_changement_idchg_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_changement_idchg_seq OWNER TO postgres;

--
-- TOC entry 5713 (class 0 OID 0)
-- Dependencies: 265
-- Name: tb_changement_idchg_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_changement_idchg_seq OWNED BY public.tb_changement.idchg;


--
-- TOC entry 266 (class 1259 OID 16570)
-- Name: tb_chat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_chat (
    id integer NOT NULL,
    id_expediteur integer NOT NULL,
    id_destinataire integer NOT NULL,
    message text NOT NULL,
    date_envoi timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    lu integer DEFAULT 0
);


ALTER TABLE public.tb_chat OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 16577)
-- Name: tb_chat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_chat_id_seq OWNER TO postgres;

--
-- TOC entry 5714 (class 0 OID 0)
-- Dependencies: 267
-- Name: tb_chat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_chat_id_seq OWNED BY public.tb_chat.id;


--
-- TOC entry 268 (class 1259 OID 16578)
-- Name: tb_client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_client (
    idclient integer NOT NULL,
    nomcli character varying(100),
    contactcli character varying(50),
    adressecli character varying(150),
    nifcli character varying(20),
    statcli character varying(20),
    cifcli character varying(20),
    credit double precision,
    idtypeclient integer,
    dateregistre timestamp without time zone,
    blocked integer DEFAULT 0,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_client OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 16583)
-- Name: tb_client_idclient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_client_idclient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_client_idclient_seq OWNER TO postgres;

--
-- TOC entry 5715 (class 0 OID 0)
-- Dependencies: 269
-- Name: tb_client_idclient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_client_idclient_seq OWNED BY public.tb_client.idclient;


--
-- TOC entry 270 (class 1259 OID 16584)
-- Name: tb_codeautorisation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_codeautorisation (
    id integer NOT NULL,
    code character varying(10),
    iduser integer,
    deleted integer DEFAULT 0,
    username character varying(50)
);


ALTER TABLE public.tb_codeautorisation OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 16588)
-- Name: tb_codeautorisation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_codeautorisation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_codeautorisation_id_seq OWNER TO postgres;

--
-- TOC entry 5716 (class 0 OID 0)
-- Dependencies: 271
-- Name: tb_codeautorisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_codeautorisation_id_seq OWNED BY public.tb_codeautorisation.id;


--
-- TOC entry 272 (class 1259 OID 16589)
-- Name: tb_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_commande (
    idcom integer NOT NULL,
    refcom character varying(50),
    datecom timestamp without time zone,
    iduser integer,
    idfrs integer,
    descriptioncom character varying(150),
    deleted integer DEFAULT 0,
    datemodif timestamp without time zone,
    totcmd double precision,
    idtransportuer integer
);


ALTER TABLE public.tb_commande OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 16593)
-- Name: tb_commande_idcom_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_commande_idcom_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_commande_idcom_seq OWNER TO postgres;

--
-- TOC entry 5717 (class 0 OID 0)
-- Dependencies: 273
-- Name: tb_commande_idcom_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_commande_idcom_seq OWNED BY public.tb_commande.idcom;


--
-- TOC entry 274 (class 1259 OID 16594)
-- Name: tb_commandedetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_commandedetail (
    id integer NOT NULL,
    idcom integer,
    idarticle integer,
    idunite integer,
    qtcmd double precision,
    qtlivre double precision,
    punitcmd double precision,
    typemouvement integer,
    total double precision,
    dateperemption date,
    idfrs integer,
    montant_charge double precision DEFAULT 0
);


ALTER TABLE public.tb_commandedetail OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 16598)
-- Name: tb_commandedetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_commandedetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_commandedetail_id_seq OWNER TO postgres;

--
-- TOC entry 5718 (class 0 OID 0)
-- Dependencies: 275
-- Name: tb_commandedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_commandedetail_id_seq OWNED BY public.tb_commandedetail.id;


--
-- TOC entry 276 (class 1259 OID 16599)
-- Name: tb_configdb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_configdb (
    id integer NOT NULL,
    dbname character varying(50),
    username character varying(50),
    password character varying(100),
    host character varying(100),
    port integer
);


ALTER TABLE public.tb_configdb OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 16602)
-- Name: tb_configdb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_configdb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_configdb_id_seq OWNER TO postgres;

--
-- TOC entry 5719 (class 0 OID 0)
-- Dependencies: 277
-- Name: tb_configdb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_configdb_id_seq OWNED BY public.tb_configdb.id;


--
-- TOC entry 278 (class 1259 OID 16603)
-- Name: tb_consommationinterne; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_consommationinterne (
    id integer NOT NULL,
    refconsommation character varying(50) NOT NULL,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    observation text,
    iduser integer NOT NULL,
    valeur_totale numeric(15,2) DEFAULT 0
);


ALTER TABLE public.tb_consommationinterne OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 16610)
-- Name: tb_consommationinterne_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_consommationinterne_details (
    id integer NOT NULL,
    idconsommation integer NOT NULL,
    idarticle integer NOT NULL,
    idunite integer NOT NULL,
    idmag integer NOT NULL,
    qtconsomme numeric(10,2) NOT NULL,
    prixunit numeric(12,2) NOT NULL,
    observation text,
    montant_total numeric(15,2) GENERATED ALWAYS AS ((qtconsomme * prixunit)) STORED
);


ALTER TABLE public.tb_consommationinterne_details OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 16616)
-- Name: tb_consommationinterne_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_consommationinterne_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_consommationinterne_details_id_seq OWNER TO postgres;

--
-- TOC entry 5720 (class 0 OID 0)
-- Dependencies: 280
-- Name: tb_consommationinterne_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_consommationinterne_details_id_seq OWNED BY public.tb_consommationinterne_details.id;


--
-- TOC entry 281 (class 1259 OID 16617)
-- Name: tb_consommationinterne_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_consommationinterne_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_consommationinterne_id_seq OWNER TO postgres;

--
-- TOC entry 5721 (class 0 OID 0)
-- Dependencies: 281
-- Name: tb_consommationinterne_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_consommationinterne_id_seq OWNED BY public.tb_consommationinterne.id;


--
-- TOC entry 282 (class 1259 OID 16618)
-- Name: tb_decaissement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_decaissement (
    id integer NOT NULL,
    refpmt character varying(50),
    idcc integer,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 2,
    datepmt timestamp without time zone,
    idpaiment integer,
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_decaissement OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 16622)
-- Name: tb_decaissement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_decaissement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_decaissement_id_seq OWNER TO postgres;

--
-- TOC entry 5722 (class 0 OID 0)
-- Dependencies: 283
-- Name: tb_decaissement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_decaissement_id_seq OWNED BY public.tb_decaissement.id;


--
-- TOC entry 284 (class 1259 OID 16623)
-- Name: tb_decaissementbq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_decaissementbq (
    id integer NOT NULL,
    refpmt character varying(50),
    idcc integer,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 2,
    datepmt timestamp without time zone,
    idpaiment integer,
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_decaissementbq OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 16627)
-- Name: tb_decaissementbq_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_decaissementbq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_decaissementbq_id_seq OWNER TO postgres;

--
-- TOC entry 5723 (class 0 OID 0)
-- Dependencies: 285
-- Name: tb_decaissementbq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_decaissementbq_id_seq OWNED BY public.tb_decaissementbq.id;


--
-- TOC entry 286 (class 1259 OID 16628)
-- Name: tb_detailchange_entree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_detailchange_entree (
    iddetail integer NOT NULL,
    idchg integer NOT NULL,
    idarticle integer NOT NULL,
    idunite integer NOT NULL,
    idmagasin integer NOT NULL,
    quantite_entree numeric(10,2) NOT NULL
);


ALTER TABLE public.tb_detailchange_entree OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 16631)
-- Name: tb_detailchange_entree_iddetail_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_detailchange_entree_iddetail_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_detailchange_entree_iddetail_seq OWNER TO postgres;

--
-- TOC entry 5724 (class 0 OID 0)
-- Dependencies: 287
-- Name: tb_detailchange_entree_iddetail_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_detailchange_entree_iddetail_seq OWNED BY public.tb_detailchange_entree.iddetail;


--
-- TOC entry 288 (class 1259 OID 16632)
-- Name: tb_detailchange_sortie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_detailchange_sortie (
    iddetail integer NOT NULL,
    idchg integer NOT NULL,
    idarticle integer NOT NULL,
    idunite integer NOT NULL,
    idmagasin integer NOT NULL,
    quantite_sortie numeric(10,2) NOT NULL
);


ALTER TABLE public.tb_detailchange_sortie OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 16635)
-- Name: tb_detailchange_sortie_iddetail_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_detailchange_sortie_iddetail_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_detailchange_sortie_iddetail_seq OWNER TO postgres;

--
-- TOC entry 5725 (class 0 OID 0)
-- Dependencies: 289
-- Name: tb_detailchange_sortie_iddetail_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_detailchange_sortie_iddetail_seq OWNED BY public.tb_detailchange_sortie.iddetail;


--
-- TOC entry 290 (class 1259 OID 16636)
-- Name: tb_encaissement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_encaissement (
    id integer NOT NULL,
    refpmt character varying(50),
    idcc integer,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 1,
    datepmt timestamp without time zone,
    idpaiment integer,
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_encaissement OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 16640)
-- Name: tb_encaissement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_encaissement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_encaissement_id_seq OWNER TO postgres;

--
-- TOC entry 5726 (class 0 OID 0)
-- Dependencies: 291
-- Name: tb_encaissement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_encaissement_id_seq OWNED BY public.tb_encaissement.id;


--
-- TOC entry 292 (class 1259 OID 16641)
-- Name: tb_encaissementbq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_encaissementbq (
    id integer NOT NULL,
    refpmt character varying(50),
    idcc integer,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 1,
    datepmt timestamp without time zone,
    idpaiment integer,
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_encaissementbq OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 16645)
-- Name: tb_encaissementbq_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_encaissementbq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_encaissementbq_id_seq OWNER TO postgres;

--
-- TOC entry 5727 (class 0 OID 0)
-- Dependencies: 293
-- Name: tb_encaissementbq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_encaissementbq_id_seq OWNED BY public.tb_encaissementbq.id;


--
-- TOC entry 294 (class 1259 OID 16646)
-- Name: tb_entree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_entree (
    id integer NOT NULL,
    refentree character varying(50),
    iduser integer,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    description character varying(150),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_entree OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 16651)
-- Name: tb_entree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_entree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_entree_id_seq OWNER TO postgres;

--
-- TOC entry 5728 (class 0 OID 0)
-- Dependencies: 295
-- Name: tb_entree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_entree_id_seq OWNED BY public.tb_entree.id;


--
-- TOC entry 296 (class 1259 OID 16652)
-- Name: tb_entreedetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_entreedetail (
    id integer NOT NULL,
    idmag integer,
    idarticle integer,
    idunite integer,
    qtentree double precision,
    typemouvement integer DEFAULT 1,
    deleted integer DEFAULT 0,
    identree integer,
    motif character varying(250)
);


ALTER TABLE public.tb_entreedetail OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 16657)
-- Name: tb_entreedetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_entreedetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_entreedetail_id_seq OWNER TO postgres;

--
-- TOC entry 5729 (class 0 OID 0)
-- Dependencies: 297
-- Name: tb_entreedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_entreedetail_id_seq OWNED BY public.tb_entreedetail.id;


--
-- TOC entry 298 (class 1259 OID 16658)
-- Name: tb_evenement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_evenement (
    id integer NOT NULL,
    date timestamp without time zone,
    evenements character varying(200)
);


ALTER TABLE public.tb_evenement OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 16661)
-- Name: tb_evenement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_evenement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_evenement_id_seq OWNER TO postgres;

--
-- TOC entry 5730 (class 0 OID 0)
-- Dependencies: 299
-- Name: tb_evenement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_evenement_id_seq OWNED BY public.tb_evenement.id;


--
-- TOC entry 395 (class 1259 OID 17308)
-- Name: tb_facture_sequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_facture_sequence (
    annee integer NOT NULL,
    dernier_numero integer DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.tb_facture_sequence OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 16662)
-- Name: tb_facturecli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_facturecli (
    idfact integer NOT NULL,
    reffact character varying(50),
    refvente character varying(50),
    idmod integer,
    idclient integer,
    iduser integer,
    mtpaye double precision,
    dateregistre timestamp without time zone
);


ALTER TABLE public.tb_facturecli OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 16665)
-- Name: tb_facturecli_idfact_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_facturecli_idfact_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_facturecli_idfact_seq OWNER TO postgres;

--
-- TOC entry 5731 (class 0 OID 0)
-- Dependencies: 301
-- Name: tb_facturecli_idfact_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_facturecli_idfact_seq OWNED BY public.tb_facturecli.idfact;


--
-- TOC entry 302 (class 1259 OID 16666)
-- Name: tb_fonction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_fonction (
    idfonction integer NOT NULL,
    designationfonction character varying(50),
    dateregistre timestamp without time zone,
    idautorisation integer,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_fonction OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 16670)
-- Name: tb_fonction_idfonction_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_fonction_idfonction_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_fonction_idfonction_seq OWNER TO postgres;

--
-- TOC entry 5732 (class 0 OID 0)
-- Dependencies: 303
-- Name: tb_fonction_idfonction_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_fonction_idfonction_seq OWNED BY public.tb_fonction.idfonction;


--
-- TOC entry 304 (class 1259 OID 16671)
-- Name: tb_fournisseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_fournisseur (
    idfrs integer NOT NULL,
    nomfrs character varying(150),
    contactfrs character varying(50),
    adressefrs character varying(150),
    niffrs character varying(20),
    statfrs character varying(20),
    ciffrs character varying(20),
    dateregistre timestamp without time zone,
    deleted integer DEFAULT 0,
    nombanque character varying(50),
    comptebancaire character varying(50),
    adressebanque character varying(75)
);


ALTER TABLE public.tb_fournisseur OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 16677)
-- Name: tb_fournisseur_idfrs_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_fournisseur_idfrs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_fournisseur_idfrs_seq OWNER TO postgres;

--
-- TOC entry 5733 (class 0 OID 0)
-- Dependencies: 305
-- Name: tb_fournisseur_idfrs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_fournisseur_idfrs_seq OWNED BY public.tb_fournisseur.idfrs;


--
-- TOC entry 306 (class 1259 OID 16678)
-- Name: tb_infosociete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_infosociete (
    id integer NOT NULL,
    nomsociete character varying(100),
    adressesociete character varying(150),
    contactsociete character varying(50),
    villesociete character varying(100),
    nifsociete character varying(50),
    statsociete character varying(50),
    cifsociete character varying(50),
    ambleme character varying(200),
    autre character varying(100)
);


ALTER TABLE public.tb_infosociete OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 16683)
-- Name: tb_infosociete_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_infosociete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_infosociete_id_seq OWNER TO postgres;

--
-- TOC entry 5734 (class 0 OID 0)
-- Dependencies: 307
-- Name: tb_infosociete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_infosociete_id_seq OWNED BY public.tb_infosociete.id;


--
-- TOC entry 308 (class 1259 OID 16684)
-- Name: tb_inventaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_inventaire (
    id integer NOT NULL,
    qtinventaire double precision,
    observation character varying(100),
    date timestamp without time zone,
    iduser integer,
    idmag integer,
    codearticle character varying(50),
    prix double precision
);


ALTER TABLE public.tb_inventaire OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 16687)
-- Name: tb_inventaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_inventaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_inventaire_id_seq OWNER TO postgres;

--
-- TOC entry 5735 (class 0 OID 0)
-- Dependencies: 309
-- Name: tb_inventaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_inventaire_id_seq OWNED BY public.tb_inventaire.id;


--
-- TOC entry 310 (class 1259 OID 16688)
-- Name: tb_inventaire_temporaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_inventaire_temporaire (
    id integer NOT NULL,
    date_creation timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    date_mise_ajour timestamp without time zone,
    idarticle integer NOT NULL,
    idunite integer NOT NULL,
    idmagasin integer NOT NULL,
    qte_corrige numeric(12,3) NOT NULL,
    iduser integer NOT NULL,
    iduserverificateur integer,
    statut character varying(20) DEFAULT 'Non vérifié'::character varying,
    deleted integer DEFAULT 0,
    observation character varying(255),
    qt_stock double precision
);


ALTER TABLE public.tb_inventaire_temporaire OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 16694)
-- Name: tb_inventaire_temporaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_inventaire_temporaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_inventaire_temporaire_id_seq OWNER TO postgres;

--
-- TOC entry 5736 (class 0 OID 0)
-- Dependencies: 311
-- Name: tb_inventaire_temporaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_inventaire_temporaire_id_seq OWNED BY public.tb_inventaire_temporaire.id;


--
-- TOC entry 312 (class 1259 OID 16695)
-- Name: tb_livraisoncli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_livraisoncli (
    idlivcli integer NOT NULL,
    reflivcli character varying(50),
    refvente character varying(50),
    idmag integer,
    idarticle integer,
    idunite integer,
    qtlivrecli double precision,
    dateregistre timestamp without time zone,
    iduser integer,
    qtvente double precision,
    idclient integer,
    idtransporteur integer,
    description_livraison character varying(250)
);


ALTER TABLE public.tb_livraisoncli OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 16698)
-- Name: tb_livraisoncli_attente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_livraisoncli_attente (
    id integer NOT NULL,
    refvente character varying(50),
    idarticle integer,
    idunite integer,
    idmag integer,
    idclient integer,
    qt_a_livrer double precision,
    qt_bl double precision DEFAULT 0,
    statut character varying(20) DEFAULT 'EN_ATTENTE'::character varying,
    dateregistre timestamp without time zone,
    iduser integer
);


ALTER TABLE public.tb_livraisoncli_attente OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 16703)
-- Name: tb_livraisoncli_attente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_livraisoncli_attente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_livraisoncli_attente_id_seq OWNER TO postgres;

--
-- TOC entry 5737 (class 0 OID 0)
-- Dependencies: 314
-- Name: tb_livraisoncli_attente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_livraisoncli_attente_id_seq OWNED BY public.tb_livraisoncli_attente.id;


--
-- TOC entry 315 (class 1259 OID 16704)
-- Name: tb_livraisoncli_idlivcli_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_livraisoncli_idlivcli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_livraisoncli_idlivcli_seq OWNER TO postgres;

--
-- TOC entry 5738 (class 0 OID 0)
-- Dependencies: 315
-- Name: tb_livraisoncli_idlivcli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_livraisoncli_idlivcli_seq OWNED BY public.tb_livraisoncli.idlivcli;


--
-- TOC entry 316 (class 1259 OID 16705)
-- Name: tb_livraisonfrs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_livraisonfrs (
    idlivfrs integer NOT NULL,
    reflivfrs character varying(50),
    idcom integer,
    idarticle integer,
    idunite integer,
    qtlivrefrs double precision,
    dateregistre timestamp without time zone,
    typemouvement integer,
    idmag integer,
    iduser integer,
    factfrs character varying(50),
    datepaiement date,
    dateperemption date,
    deleted integer DEFAULT 0,
    a_payer integer DEFAULT 0
);


ALTER TABLE public.tb_livraisonfrs OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 16710)
-- Name: tb_livraisonfrs_idlivfrs_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_livraisonfrs_idlivfrs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_livraisonfrs_idlivfrs_seq OWNER TO postgres;

--
-- TOC entry 5739 (class 0 OID 0)
-- Dependencies: 317
-- Name: tb_livraisonfrs_idlivfrs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_livraisonfrs_idlivfrs_seq OWNED BY public.tb_livraisonfrs.idlivfrs;


--
-- TOC entry 318 (class 1259 OID 16711)
-- Name: tb_log_evenements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_log_evenements (
    id_log timestamp with time zone DEFAULT clock_timestamp() NOT NULL,
    description text NOT NULL,
    "user" character varying(150),
    datetime timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.tb_log_evenements OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 16718)
-- Name: tb_log_stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_log_stock (
    id integer NOT NULL,
    idarticle integer,
    idmag integer,
    ancien_stock double precision,
    nouveau_stock double precision,
    date_action timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    iduser integer,
    type_action character varying(50) DEFAULT 'INVENTAIRE'::character varying,
    codearticle character varying(50)
);


ALTER TABLE public.tb_log_stock OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 16723)
-- Name: tb_log_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_log_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_log_stock_id_seq OWNER TO postgres;

--
-- TOC entry 5740 (class 0 OID 0)
-- Dependencies: 320
-- Name: tb_log_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_log_stock_id_seq OWNED BY public.tb_log_stock.id;


--
-- TOC entry 321 (class 1259 OID 16724)
-- Name: tb_lot_peremption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_lot_peremption (
    id integer NOT NULL,
    id_article integer,
    id_unite integer,
    quantite numeric,
    date_peremption date,
    priorite integer,
    date_entree date,
    type_source character varying(20),
    id_source integer,
    id_split integer,
    date_creation timestamp without time zone DEFAULT now(),
    note text,
    deleted integer DEFAULT 0,
    idmag integer
);


ALTER TABLE public.tb_lot_peremption OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 16731)
-- Name: tb_lot_peremption_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_lot_peremption_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_lot_peremption_id_seq OWNER TO postgres;

--
-- TOC entry 5741 (class 0 OID 0)
-- Dependencies: 322
-- Name: tb_lot_peremption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_lot_peremption_id_seq OWNED BY public.tb_lot_peremption.id;


--
-- TOC entry 323 (class 1259 OID 16732)
-- Name: tb_magasin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_magasin (
    idmag integer NOT NULL,
    designationmag character varying(50),
    adressemag character varying(50),
    livraison integer,
    deleted integer DEFAULT 0,
    livraison_auto_client smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.tb_magasin OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 16737)
-- Name: tb_magasin_idmag_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_magasin_idmag_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_magasin_idmag_seq OWNER TO postgres;

--
-- TOC entry 5742 (class 0 OID 0)
-- Dependencies: 324
-- Name: tb_magasin_idmag_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_magasin_idmag_seq OWNED BY public.tb_magasin.idmag;


--
-- TOC entry 325 (class 1259 OID 16738)
-- Name: tb_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_menu (
    id integer NOT NULL,
    designationmenu character varying(100),
    page character varying(50)
);


ALTER TABLE public.tb_menu OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 16741)
-- Name: tb_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_menu_id_seq OWNER TO postgres;

--
-- TOC entry 5743 (class 0 OID 0)
-- Dependencies: 326
-- Name: tb_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_menu_id_seq OWNED BY public.tb_menu.id;


--
-- TOC entry 327 (class 1259 OID 16742)
-- Name: tb_modepaiement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_modepaiement (
    idmode integer NOT NULL,
    modedepaiement character varying(50)
);


ALTER TABLE public.tb_modepaiement OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 16745)
-- Name: tb_modepaiement_idmode_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_modepaiement_idmode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_modepaiement_idmode_seq OWNER TO postgres;

--
-- TOC entry 5744 (class 0 OID 0)
-- Dependencies: 328
-- Name: tb_modepaiement_idmode_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_modepaiement_idmode_seq OWNED BY public.tb_modepaiement.idmode;


--
-- TOC entry 329 (class 1259 OID 16746)
-- Name: tb_paiement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_paiement (
    idpaiement integer NOT NULL,
    paiement character varying(25)
);


ALTER TABLE public.tb_paiement OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 16749)
-- Name: tb_paiement_idpaiement_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_paiement_idpaiement_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_paiement_idpaiement_seq OWNER TO postgres;

--
-- TOC entry 5745 (class 0 OID 0)
-- Dependencies: 330
-- Name: tb_paiement_idpaiement_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_paiement_idpaiement_seq OWNED BY public.tb_paiement.idpaiement;


--
-- TOC entry 331 (class 1259 OID 16750)
-- Name: tb_param_commande_frs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_param_commande_frs (
    id smallint DEFAULT 1 NOT NULL,
    idfrs_defaut integer,
    CONSTRAINT tb_param_commande_frs_singleton CHECK ((id = 1))
);


ALTER TABLE public.tb_param_commande_frs OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 16755)
-- Name: tb_param_livraison_client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_param_livraison_client (
    id smallint DEFAULT 1 NOT NULL,
    idtransporteur_defaut integer,
    transporteur_bl_auto smallint DEFAULT 0 NOT NULL,
    CONSTRAINT tb_param_livraison_client_singleton CHECK ((id = 1))
);


ALTER TABLE public.tb_param_livraison_client OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 16761)
-- Name: tb_peremption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_peremption (
    id integer NOT NULL,
    idcom integer,
    idarticle integer,
    idmag integer,
    dateper timestamp without time zone,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_peremption OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 16765)
-- Name: tb_peremption_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_peremption_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_peremption_id_seq OWNER TO postgres;

--
-- TOC entry 5746 (class 0 OID 0)
-- Dependencies: 334
-- Name: tb_peremption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_peremption_id_seq OWNED BY public.tb_peremption.id;


--
-- TOC entry 335 (class 1259 OID 16766)
-- Name: tb_personnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_personnel (
    id integer NOT NULL,
    nom character varying(50),
    prenom character varying(50),
    datenaissance date,
    adresse character varying(100),
    cin character varying(20),
    contact character varying(50),
    idfonction integer,
    matricule character varying(12),
    sexe character varying(15),
    deleted integer DEFAULT 0,
    idposte integer
);


ALTER TABLE public.tb_personnel OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 16770)
-- Name: tb_personnel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_personnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_personnel_id_seq OWNER TO postgres;

--
-- TOC entry 5747 (class 0 OID 0)
-- Dependencies: 336
-- Name: tb_personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_personnel_id_seq OWNED BY public.tb_personnel.id;


--
-- TOC entry 337 (class 1259 OID 16771)
-- Name: tb_pmtavoir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pmtavoir (
    id integer NOT NULL,
    datepmt timestamp without time zone,
    mtpaye double precision,
    refvente character varying(50),
    refavoir character varying(50),
    observation character varying(150),
    idtypeoperation integer DEFAULT 1,
    refpmt character varying(100),
    idtypepmt integer DEFAULT 1,
    deleted integer DEFAULT 0,
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_pmtavoir OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 16777)
-- Name: tb_pmtavoir_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pmtavoir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pmtavoir_id_seq OWNER TO postgres;

--
-- TOC entry 5748 (class 0 OID 0)
-- Dependencies: 338
-- Name: tb_pmtavoir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtavoir_id_seq OWNED BY public.tb_pmtavoir.id;


--
-- TOC entry 339 (class 1259 OID 16778)
-- Name: tb_pmtcom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pmtcom (
    id integer NOT NULL,
    datepmt timestamp without time zone,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 2,
    idfrs integer,
    refcom character varying(50),
    idmode integer,
    idpaiment integer,
    factfrs character varying(50),
    refpmt character varying(100),
    id_banque integer,
    iduser integer
);


ALTER TABLE public.tb_pmtcom OWNER TO postgres;

--
-- TOC entry 340 (class 1259 OID 16782)
-- Name: tb_pmtcom_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pmtcom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pmtcom_id_seq OWNER TO postgres;

--
-- TOC entry 5749 (class 0 OID 0)
-- Dependencies: 340
-- Name: tb_pmtcom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtcom_id_seq OWNED BY public.tb_pmtcom.id;


--
-- TOC entry 341 (class 1259 OID 16783)
-- Name: tb_pmtcredit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pmtcredit (
    id integer NOT NULL,
    datepmt timestamp without time zone,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 1,
    idclient integer,
    refvente character varying(50),
    idmode integer,
    idpaiment integer,
    refpmt character varying(50),
    id_banque integer,
    iduser integer
);


ALTER TABLE public.tb_pmtcredit OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 16787)
-- Name: tb_pmtcredit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pmtcredit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pmtcredit_id_seq OWNER TO postgres;

--
-- TOC entry 5750 (class 0 OID 0)
-- Dependencies: 342
-- Name: tb_pmtcredit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtcredit_id_seq OWNED BY public.tb_pmtcredit.id;


--
-- TOC entry 343 (class 1259 OID 16788)
-- Name: tb_pmtfacture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pmtfacture (
    id integer NOT NULL,
    datepmt timestamp without time zone,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 1,
    refpmt character varying(100),
    deleted integer DEFAULT 0,
    refvente character varying(50),
    idclient integer,
    idmode integer,
    id_banque integer,
    iduser integer,
    dateecheance date
);


ALTER TABLE public.tb_pmtfacture OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 16793)
-- Name: tb_pmtfacture_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pmtfacture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pmtfacture_id_seq OWNER TO postgres;

--
-- TOC entry 5751 (class 0 OID 0)
-- Dependencies: 344
-- Name: tb_pmtfacture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtfacture_id_seq OWNED BY public.tb_pmtfacture.id;


--
-- TOC entry 345 (class 1259 OID 16794)
-- Name: tb_pmtsalaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pmtsalaire (
    id integer NOT NULL,
    datepmt date,
    refpmt character varying(50),
    mtpaye double precision,
    idtypeoperation integer DEFAULT 2,
    idpers integer,
    observation character varying(100),
    id_banque integer,
    idmode integer DEFAULT 1,
    iduser integer
);


ALTER TABLE public.tb_pmtsalaire OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 16799)
-- Name: tb_pmtsalaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pmtsalaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pmtsalaire_id_seq OWNER TO postgres;

--
-- TOC entry 5752 (class 0 OID 0)
-- Dependencies: 346
-- Name: tb_pmtsalaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtsalaire_id_seq OWNED BY public.tb_pmtsalaire.id;


--
-- TOC entry 347 (class 1259 OID 16800)
-- Name: tb_postepersonnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_postepersonnel (
    idposte integer NOT NULL,
    idcategorie integer,
    titre character varying(120) NOT NULL,
    description text,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_postepersonnel OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 16807)
-- Name: tb_postepersonnel_idposte_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_postepersonnel_idposte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_postepersonnel_idposte_seq OWNER TO postgres;

--
-- TOC entry 5753 (class 0 OID 0)
-- Dependencies: 348
-- Name: tb_postepersonnel_idposte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_postepersonnel_idposte_seq OWNED BY public.tb_postepersonnel.idposte;


--
-- TOC entry 349 (class 1259 OID 16808)
-- Name: tb_presencepers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_presencepers (
    id integer NOT NULL,
    idpers integer,
    nbheure double precision,
    date timestamp without time zone
);


ALTER TABLE public.tb_presencepers OWNER TO postgres;

--
-- TOC entry 350 (class 1259 OID 16811)
-- Name: tb_presencepers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_presencepers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_presencepers_id_seq OWNER TO postgres;

--
-- TOC entry 5754 (class 0 OID 0)
-- Dependencies: 350
-- Name: tb_presencepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_presencepers_id_seq OWNED BY public.tb_presencepers.id;


--
-- TOC entry 351 (class 1259 OID 16812)
-- Name: tb_prix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_prix (
    id integer NOT NULL,
    idarticle integer,
    idunite integer,
    prix double precision,
    dateregistre timestamp without time zone,
    iduser integer,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_prix OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 16816)
-- Name: tb_prix_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_prix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_prix_id_seq OWNER TO postgres;

--
-- TOC entry 5755 (class 0 OID 0)
-- Dependencies: 352
-- Name: tb_prix_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_prix_id_seq OWNED BY public.tb_prix.id;


--
-- TOC entry 353 (class 1259 OID 16817)
-- Name: tb_proforma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_proforma (
    idprof integer NOT NULL,
    refprof character varying(50),
    idclient integer,
    iduser integer,
    mtprof double precision,
    observation character varying(150),
    dateprof timestamp without time zone,
    deleted integer DEFAULT 0,
    datemodif timestamp without time zone,
    statut character varying(50),
    datefacturation timestamp without time zone
);


ALTER TABLE public.tb_proforma OWNER TO postgres;

--
-- TOC entry 354 (class 1259 OID 16821)
-- Name: tb_proforma_idprof_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_proforma_idprof_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_proforma_idprof_seq OWNER TO postgres;

--
-- TOC entry 5756 (class 0 OID 0)
-- Dependencies: 354
-- Name: tb_proforma_idprof_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_proforma_idprof_seq OWNED BY public.tb_proforma.idprof;


--
-- TOC entry 355 (class 1259 OID 16822)
-- Name: tb_proformadetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_proformadetail (
    id integer NOT NULL,
    idprof integer,
    idmag integer,
    idarticle integer,
    idunite integer,
    qtprof double precision,
    prixunit double precision,
    qtlivprof double precision,
    total double precision
);


ALTER TABLE public.tb_proformadetail OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 16825)
-- Name: tb_proformadetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_proformadetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_proformadetail_id_seq OWNER TO postgres;

--
-- TOC entry 5757 (class 0 OID 0)
-- Dependencies: 356
-- Name: tb_proformadetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_proformadetail_id_seq OWNED BY public.tb_proformadetail.id;


--
-- TOC entry 357 (class 1259 OID 16826)
-- Name: tb_salairebasepers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_salairebasepers (
    id integer NOT NULL,
    idpers integer,
    montant double precision,
    date timestamp without time zone
);


ALTER TABLE public.tb_salairebasepers OWNER TO postgres;

--
-- TOC entry 358 (class 1259 OID 16829)
-- Name: tb_salairebasepers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_salairebasepers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_salairebasepers_id_seq OWNER TO postgres;

--
-- TOC entry 5758 (class 0 OID 0)
-- Dependencies: 358
-- Name: tb_salairebasepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_salairebasepers_id_seq OWNED BY public.tb_salairebasepers.id;


--
-- TOC entry 359 (class 1259 OID 16830)
-- Name: tb_save_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_save_history (
    id integer NOT NULL,
    datetime timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    libelle character varying(255) NOT NULL,
    appareil character varying(200),
    description text,
    taille_mo numeric(14,2),
    utilisateur character varying(150)
);


ALTER TABLE public.tb_save_history OWNER TO postgres;

--
-- TOC entry 360 (class 1259 OID 16836)
-- Name: tb_save_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_save_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_save_history_id_seq OWNER TO postgres;

--
-- TOC entry 5759 (class 0 OID 0)
-- Dependencies: 360
-- Name: tb_save_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_save_history_id_seq OWNED BY public.tb_save_history.id;


--
-- TOC entry 361 (class 1259 OID 16837)
-- Name: tb_sortie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_sortie (
    id integer NOT NULL,
    refsortie character varying(50),
    iduser integer,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    description character varying(150),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_sortie OWNER TO postgres;

--
-- TOC entry 362 (class 1259 OID 16842)
-- Name: tb_sortie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_sortie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_sortie_id_seq OWNER TO postgres;

--
-- TOC entry 5760 (class 0 OID 0)
-- Dependencies: 362
-- Name: tb_sortie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_sortie_id_seq OWNED BY public.tb_sortie.id;


--
-- TOC entry 363 (class 1259 OID 16843)
-- Name: tb_sortiedetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_sortiedetail (
    id integer NOT NULL,
    idmag integer,
    idarticle integer,
    idunite integer,
    qtsortie double precision,
    typemouvement integer DEFAULT 2,
    deleted integer DEFAULT 0,
    idsortie integer,
    motif character varying(250)
);


ALTER TABLE public.tb_sortiedetail OWNER TO postgres;

--
-- TOC entry 364 (class 1259 OID 16848)
-- Name: tb_sortiedetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_sortiedetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_sortiedetail_id_seq OWNER TO postgres;

--
-- TOC entry 5761 (class 0 OID 0)
-- Dependencies: 364
-- Name: tb_sortiedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_sortiedetail_id_seq OWNED BY public.tb_sortiedetail.id;


--
-- TOC entry 365 (class 1259 OID 16849)
-- Name: tb_stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_stock (
    id integer NOT NULL,
    idmag integer,
    qtstock double precision,
    qtalert double precision,
    deleted integer DEFAULT 0,
    codearticle character varying(50)
);


ALTER TABLE public.tb_stock OWNER TO postgres;

--
-- TOC entry 366 (class 1259 OID 16853)
-- Name: tb_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_stock_id_seq OWNER TO postgres;

--
-- TOC entry 5762 (class 0 OID 0)
-- Dependencies: 366
-- Name: tb_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_stock_id_seq OWNED BY public.tb_stock.id;


--
-- TOC entry 367 (class 1259 OID 16854)
-- Name: tb_suivipresence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_suivipresence (
    idpresence integer NOT NULL,
    datepresence date NOT NULL,
    idpersonnel integer NOT NULL,
    matin character varying(15) DEFAULT 'en_attente'::character varying,
    apresmidi character varying(15) DEFAULT 'en_attente'::character varying,
    observation character varying(255),
    deleted integer DEFAULT 0,
    dateregistre timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.tb_suivipresence OWNER TO postgres;

--
-- TOC entry 368 (class 1259 OID 16861)
-- Name: tb_suivipresence_idpresence_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_suivipresence_idpresence_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_suivipresence_idpresence_seq OWNER TO postgres;

--
-- TOC entry 5763 (class 0 OID 0)
-- Dependencies: 368
-- Name: tb_suivipresence_idpresence_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_suivipresence_idpresence_seq OWNED BY public.tb_suivipresence.idpresence;


--
-- TOC entry 369 (class 1259 OID 16862)
-- Name: tb_tauxhoraire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_tauxhoraire (
    id integer NOT NULL,
    tauxhoraire double precision,
    idpers integer,
    dateregistre timestamp without time zone
);


ALTER TABLE public.tb_tauxhoraire OWNER TO postgres;

--
-- TOC entry 370 (class 1259 OID 16865)
-- Name: tb_tauxhoraire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_tauxhoraire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_tauxhoraire_id_seq OWNER TO postgres;

--
-- TOC entry 5764 (class 0 OID 0)
-- Dependencies: 370
-- Name: tb_tauxhoraire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_tauxhoraire_id_seq OWNED BY public.tb_tauxhoraire.id;


--
-- TOC entry 371 (class 1259 OID 16866)
-- Name: tb_transfert; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_transfert (
    idtransfert integer NOT NULL,
    reftransfert character varying(50),
    iduser integer,
    idmagsortie integer,
    idmagentree integer,
    dateregistre timestamp without time zone,
    description character varying(150),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_transfert OWNER TO postgres;

--
-- TOC entry 372 (class 1259 OID 16870)
-- Name: tb_transfert_idtransfert_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_transfert_idtransfert_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_transfert_idtransfert_seq OWNER TO postgres;

--
-- TOC entry 5765 (class 0 OID 0)
-- Dependencies: 372
-- Name: tb_transfert_idtransfert_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfert_idtransfert_seq OWNED BY public.tb_transfert.idtransfert;


--
-- TOC entry 373 (class 1259 OID 16871)
-- Name: tb_transfertbanque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_transfertbanque (
    id integer NOT NULL,
    datepmt date,
    refpmt character varying(50),
    mtpaye double precision,
    idtypeoperation integer,
    observation character varying(100),
    id_banque integer,
    idmode integer,
    iduser integer
);


ALTER TABLE public.tb_transfertbanque OWNER TO postgres;

--
-- TOC entry 374 (class 1259 OID 16874)
-- Name: tb_transfertbanque_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_transfertbanque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_transfertbanque_id_seq OWNER TO postgres;

--
-- TOC entry 5766 (class 0 OID 0)
-- Dependencies: 374
-- Name: tb_transfertbanque_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfertbanque_id_seq OWNED BY public.tb_transfertbanque.id;


--
-- TOC entry 375 (class 1259 OID 16875)
-- Name: tb_transfertcaisse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_transfertcaisse (
    id integer NOT NULL,
    datepmt date,
    refpmt character varying(50),
    mtpaye double precision,
    idtypeoperation integer,
    observation character varying(100),
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_transfertcaisse OWNER TO postgres;

--
-- TOC entry 376 (class 1259 OID 16878)
-- Name: tb_transfertcaisse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_transfertcaisse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_transfertcaisse_id_seq OWNER TO postgres;

--
-- TOC entry 5767 (class 0 OID 0)
-- Dependencies: 376
-- Name: tb_transfertcaisse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfertcaisse_id_seq OWNED BY public.tb_transfertcaisse.id;


--
-- TOC entry 377 (class 1259 OID 16879)
-- Name: tb_transfertdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_transfertdetail (
    id integer NOT NULL,
    idarticle integer,
    idunite integer,
    qttransfertsortie double precision,
    qttransfertentree double precision,
    deleted integer DEFAULT 0,
    idtransfert integer,
    idmagsortie integer,
    idmagentree integer,
    qttransfert double precision,
    description character varying(250)
);


ALTER TABLE public.tb_transfertdetail OWNER TO postgres;

--
-- TOC entry 378 (class 1259 OID 16883)
-- Name: tb_transfertdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_transfertdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_transfertdetail_id_seq OWNER TO postgres;

--
-- TOC entry 5768 (class 0 OID 0)
-- Dependencies: 378
-- Name: tb_transfertdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfertdetail_id_seq OWNED BY public.tb_transfertdetail.id;


--
-- TOC entry 379 (class 1259 OID 16884)
-- Name: tb_transporteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_transporteur (
    idtransporteur integer NOT NULL,
    nom character varying(150),
    contact character varying(100),
    adresse character varying(200),
    montant double precision,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_transporteur OWNER TO postgres;

--
-- TOC entry 380 (class 1259 OID 16888)
-- Name: tb_transporteur_idtransporteur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_transporteur_idtransporteur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_transporteur_idtransporteur_seq OWNER TO postgres;

--
-- TOC entry 5769 (class 0 OID 0)
-- Dependencies: 380
-- Name: tb_transporteur_idtransporteur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transporteur_idtransporteur_seq OWNED BY public.tb_transporteur.idtransporteur;


--
-- TOC entry 381 (class 1259 OID 16889)
-- Name: tb_typeclient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_typeclient (
    idtypeclient integer NOT NULL,
    designationtypeclient character varying(25)
);


ALTER TABLE public.tb_typeclient OWNER TO postgres;

--
-- TOC entry 382 (class 1259 OID 16892)
-- Name: tb_typeclient_idtypeclient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_typeclient_idtypeclient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_typeclient_idtypeclient_seq OWNER TO postgres;

--
-- TOC entry 5770 (class 0 OID 0)
-- Dependencies: 382
-- Name: tb_typeclient_idtypeclient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_typeclient_idtypeclient_seq OWNED BY public.tb_typeclient.idtypeclient;


--
-- TOC entry 383 (class 1259 OID 16893)
-- Name: tb_typeoperation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_typeoperation (
    idtypeoperation integer NOT NULL,
    typeoperation character varying(3)
);


ALTER TABLE public.tb_typeoperation OWNER TO postgres;

--
-- TOC entry 384 (class 1259 OID 16896)
-- Name: tb_typeoperation_idtypeoperation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_typeoperation_idtypeoperation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_typeoperation_idtypeoperation_seq OWNER TO postgres;

--
-- TOC entry 5771 (class 0 OID 0)
-- Dependencies: 384
-- Name: tb_typeoperation_idtypeoperation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_typeoperation_idtypeoperation_seq OWNED BY public.tb_typeoperation.idtypeoperation;


--
-- TOC entry 385 (class 1259 OID 16897)
-- Name: tb_typepmt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_typepmt (
    idtypepmt integer NOT NULL,
    typepmt character varying(50),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_typepmt OWNER TO postgres;

--
-- TOC entry 386 (class 1259 OID 16901)
-- Name: tb_typepmt_idtypepmt_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_typepmt_idtypepmt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_typepmt_idtypepmt_seq OWNER TO postgres;

--
-- TOC entry 5772 (class 0 OID 0)
-- Dependencies: 386
-- Name: tb_typepmt_idtypepmt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_typepmt_idtypepmt_seq OWNED BY public.tb_typepmt.idtypepmt;


--
-- TOC entry 387 (class 1259 OID 16902)
-- Name: tb_unite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_unite (
    idunite integer NOT NULL,
    codearticle character varying(20),
    idarticle integer,
    designationunite character varying(50),
    niveau integer,
    qtunite double precision,
    poids double precision,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_unite OWNER TO postgres;

--
-- TOC entry 388 (class 1259 OID 16906)
-- Name: tb_unite_idunite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_unite_idunite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_unite_idunite_seq OWNER TO postgres;

--
-- TOC entry 5773 (class 0 OID 0)
-- Dependencies: 388
-- Name: tb_unite_idunite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_unite_idunite_seq OWNED BY public.tb_unite.idunite;


--
-- TOC entry 389 (class 1259 OID 16907)
-- Name: tb_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_users (
    iduser integer NOT NULL,
    nomuser character varying(50),
    prenomuser character varying(50),
    adresseuser character varying(100),
    contactuser character varying(50),
    username character varying(50),
    password character varying(50),
    idfonction integer,
    idmag integer,
    active integer,
    dateregistre timestamp without time zone,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_users OWNER TO postgres;

--
-- TOC entry 390 (class 1259 OID 16911)
-- Name: tb_users_iduser_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_users_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_users_iduser_seq OWNER TO postgres;

--
-- TOC entry 5774 (class 0 OID 0)
-- Dependencies: 390
-- Name: tb_users_iduser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_users_iduser_seq OWNED BY public.tb_users.iduser;


--
-- TOC entry 391 (class 1259 OID 16912)
-- Name: tb_vente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_vente (
    id integer NOT NULL,
    refvente character varying(50),
    idclient integer,
    iduser integer,
    totmtvente double precision,
    dateregistre timestamp without time zone,
    deleted integer DEFAULT 0,
    description character varying(150),
    dateupdate timestamp without time zone,
    idmag integer,
    idmode integer,
    statut character varying(20) DEFAULT 'EN_ATTENTE'::character varying
);


ALTER TABLE public.tb_vente OWNER TO postgres;

--
-- TOC entry 392 (class 1259 OID 16917)
-- Name: tb_vente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_vente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_vente_id_seq OWNER TO postgres;

--
-- TOC entry 5775 (class 0 OID 0)
-- Dependencies: 392
-- Name: tb_vente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_vente_id_seq OWNED BY public.tb_vente.id;


--
-- TOC entry 393 (class 1259 OID 16918)
-- Name: tb_ventedetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_ventedetail (
    id integer NOT NULL,
    idmag integer,
    idarticle integer,
    idunite integer,
    qtvente double precision,
    prixunit double precision,
    deleted integer DEFAULT 0,
    idvente integer,
    remise numeric
);


ALTER TABLE public.tb_ventedetail OWNER TO postgres;

--
-- TOC entry 394 (class 1259 OID 16924)
-- Name: tb_ventedetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_ventedetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_ventedetail_id_seq OWNER TO postgres;

--
-- TOC entry 5776 (class 0 OID 0)
-- Dependencies: 394
-- Name: tb_ventedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_ventedetail_id_seq OWNED BY public.tb_ventedetail.id;


--
-- TOC entry 5091 (class 2604 OID 16925)
-- Name: logistique_bon_sortie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie ALTER COLUMN id SET DEFAULT nextval('public.logistique_bon_sortie_id_seq'::regclass);


--
-- TOC entry 5096 (class 2604 OID 16926)
-- Name: logistique_bon_sortie_ligne id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie_ligne ALTER COLUMN id SET DEFAULT nextval('public.logistique_bon_sortie_ligne_id_seq'::regclass);


--
-- TOC entry 5099 (class 2604 OID 16927)
-- Name: logistique_carburant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_carburant ALTER COLUMN id SET DEFAULT nextval('public.logistique_carburant_id_seq'::regclass);


--
-- TOC entry 5103 (class 2604 OID 16928)
-- Name: logistique_maintenance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_maintenance ALTER COLUMN id SET DEFAULT nextval('public.logistique_maintenance_id_seq'::regclass);


--
-- TOC entry 5106 (class 2604 OID 16929)
-- Name: logistique_mission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_mission ALTER COLUMN id SET DEFAULT nextval('public.logistique_mission_id_seq'::regclass);


--
-- TOC entry 5109 (class 2604 OID 16930)
-- Name: logistique_piece id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece ALTER COLUMN id SET DEFAULT nextval('public.logistique_piece_id_seq'::regclass);


--
-- TOC entry 5115 (class 2604 OID 16931)
-- Name: logistique_piece_mouvement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece_mouvement ALTER COLUMN id SET DEFAULT nextval('public.logistique_piece_mouvement_id_seq'::regclass);


--
-- TOC entry 5118 (class 2604 OID 16932)
-- Name: logistique_vehicule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_vehicule ALTER COLUMN id SET DEFAULT nextval('public.logistique_vehicule_id_seq'::regclass);


--
-- TOC entry 5125 (class 2604 OID 16933)
-- Name: tb_absence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_absence ALTER COLUMN id SET DEFAULT nextval('public.tb_absence_id_seq'::regclass);


--
-- TOC entry 5126 (class 2604 OID 16934)
-- Name: tb_article idarticle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_article ALTER COLUMN idarticle SET DEFAULT nextval('public.tb_article_idarticle_seq'::regclass);


--
-- TOC entry 5128 (class 2604 OID 16935)
-- Name: tb_autorisation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autorisation ALTER COLUMN id SET DEFAULT nextval('public.tb_autorisation_id_seq'::regclass);


--
-- TOC entry 5129 (class 2604 OID 16936)
-- Name: tb_autre_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autre_infos ALTER COLUMN id SET DEFAULT nextval('public.tb_autre_infos_id_seq'::regclass);


--
-- TOC entry 5132 (class 2604 OID 16937)
-- Name: tb_autrecreance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autrecreance ALTER COLUMN id SET DEFAULT nextval('public.tb_autrecreance_id_seq'::regclass);


--
-- TOC entry 5133 (class 2604 OID 16938)
-- Name: tb_autredette id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autredette ALTER COLUMN id SET DEFAULT nextval('public.tb_autredette_id_seq'::regclass);


--
-- TOC entry 5135 (class 2604 OID 16939)
-- Name: tb_avancepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancepers ALTER COLUMN id SET DEFAULT nextval('public.tb_avancepers_id_seq'::regclass);


--
-- TOC entry 5136 (class 2604 OID 16940)
-- Name: tb_avanceprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avanceprof ALTER COLUMN id SET DEFAULT nextval('public.tb_avanceprof_id_seq'::regclass);


--
-- TOC entry 5137 (class 2604 OID 16941)
-- Name: tb_avancespecpers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancespecpers ALTER COLUMN id SET DEFAULT nextval('public.tb_avancespecpers_id_seq'::regclass);


--
-- TOC entry 5138 (class 2604 OID 16942)
-- Name: tb_avoir id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoir ALTER COLUMN id SET DEFAULT nextval('public.tb_avoir_id_seq'::regclass);


--
-- TOC entry 5140 (class 2604 OID 16943)
-- Name: tb_avoirdetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoirdetail ALTER COLUMN id SET DEFAULT nextval('public.tb_avoirdetail_id_seq'::regclass);


--
-- TOC entry 5142 (class 2604 OID 16944)
-- Name: tb_banque id_banque; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banque ALTER COLUMN id_banque SET DEFAULT nextval('public.tb_banque_id_banque_seq'::regclass);


--
-- TOC entry 5143 (class 2604 OID 16945)
-- Name: tb_baseliste id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_baseliste ALTER COLUMN id SET DEFAULT nextval('public.tb_baseliste_id_seq'::regclass);


--
-- TOC entry 5145 (class 2604 OID 16946)
-- Name: tb_categoriearticle idca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriearticle ALTER COLUMN idca SET DEFAULT nextval('public.tb_categoriearticle_idca_seq'::regclass);


--
-- TOC entry 5147 (class 2604 OID 16947)
-- Name: tb_categoriecompte idcc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriecompte ALTER COLUMN idcc SET DEFAULT nextval('public.tb_categoriecompte_idcc_seq'::regclass);


--
-- TOC entry 5148 (class 2604 OID 16948)
-- Name: tb_categoriepersonnel idcategorie; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriepersonnel ALTER COLUMN idcategorie SET DEFAULT nextval('public.tb_categoriepersonnel_idcategorie_seq'::regclass);


--
-- TOC entry 5151 (class 2604 OID 16949)
-- Name: tb_changement idchg; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_changement ALTER COLUMN idchg SET DEFAULT nextval('public.tb_changement_idchg_seq'::regclass);


--
-- TOC entry 5153 (class 2604 OID 16950)
-- Name: tb_chat id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat ALTER COLUMN id SET DEFAULT nextval('public.tb_chat_id_seq'::regclass);


--
-- TOC entry 5156 (class 2604 OID 16951)
-- Name: tb_client idclient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_client ALTER COLUMN idclient SET DEFAULT nextval('public.tb_client_idclient_seq'::regclass);


--
-- TOC entry 5159 (class 2604 OID 16952)
-- Name: tb_codeautorisation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_codeautorisation ALTER COLUMN id SET DEFAULT nextval('public.tb_codeautorisation_id_seq'::regclass);


--
-- TOC entry 5161 (class 2604 OID 16953)
-- Name: tb_commande idcom; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commande ALTER COLUMN idcom SET DEFAULT nextval('public.tb_commande_idcom_seq'::regclass);


--
-- TOC entry 5163 (class 2604 OID 16954)
-- Name: tb_commandedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commandedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_commandedetail_id_seq'::regclass);


--
-- TOC entry 5165 (class 2604 OID 16955)
-- Name: tb_configdb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_configdb ALTER COLUMN id SET DEFAULT nextval('public.tb_configdb_id_seq'::regclass);


--
-- TOC entry 5166 (class 2604 OID 16956)
-- Name: tb_consommationinterne id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne ALTER COLUMN id SET DEFAULT nextval('public.tb_consommationinterne_id_seq'::regclass);


--
-- TOC entry 5169 (class 2604 OID 16957)
-- Name: tb_consommationinterne_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne_details ALTER COLUMN id SET DEFAULT nextval('public.tb_consommationinterne_details_id_seq'::regclass);


--
-- TOC entry 5171 (class 2604 OID 16958)
-- Name: tb_decaissement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissement ALTER COLUMN id SET DEFAULT nextval('public.tb_decaissement_id_seq'::regclass);


--
-- TOC entry 5173 (class 2604 OID 16959)
-- Name: tb_decaissementbq id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissementbq ALTER COLUMN id SET DEFAULT nextval('public.tb_decaissementbq_id_seq'::regclass);


--
-- TOC entry 5175 (class 2604 OID 16960)
-- Name: tb_detailchange_entree iddetail; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_entree ALTER COLUMN iddetail SET DEFAULT nextval('public.tb_detailchange_entree_iddetail_seq'::regclass);


--
-- TOC entry 5176 (class 2604 OID 16961)
-- Name: tb_detailchange_sortie iddetail; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_sortie ALTER COLUMN iddetail SET DEFAULT nextval('public.tb_detailchange_sortie_iddetail_seq'::regclass);


--
-- TOC entry 5177 (class 2604 OID 16962)
-- Name: tb_encaissement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissement ALTER COLUMN id SET DEFAULT nextval('public.tb_encaissement_id_seq'::regclass);


--
-- TOC entry 5179 (class 2604 OID 16963)
-- Name: tb_encaissementbq id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissementbq ALTER COLUMN id SET DEFAULT nextval('public.tb_encaissementbq_id_seq'::regclass);


--
-- TOC entry 5181 (class 2604 OID 16964)
-- Name: tb_entree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entree ALTER COLUMN id SET DEFAULT nextval('public.tb_entree_id_seq'::regclass);


--
-- TOC entry 5184 (class 2604 OID 16965)
-- Name: tb_entreedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entreedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_entreedetail_id_seq'::regclass);


--
-- TOC entry 5187 (class 2604 OID 16966)
-- Name: tb_evenement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evenement ALTER COLUMN id SET DEFAULT nextval('public.tb_evenement_id_seq'::regclass);


--
-- TOC entry 5188 (class 2604 OID 16967)
-- Name: tb_facturecli idfact; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_facturecli ALTER COLUMN idfact SET DEFAULT nextval('public.tb_facturecli_idfact_seq'::regclass);


--
-- TOC entry 5189 (class 2604 OID 16968)
-- Name: tb_fonction idfonction; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fonction ALTER COLUMN idfonction SET DEFAULT nextval('public.tb_fonction_idfonction_seq'::regclass);


--
-- TOC entry 5191 (class 2604 OID 16969)
-- Name: tb_fournisseur idfrs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fournisseur ALTER COLUMN idfrs SET DEFAULT nextval('public.tb_fournisseur_idfrs_seq'::regclass);


--
-- TOC entry 5193 (class 2604 OID 16970)
-- Name: tb_infosociete id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_infosociete ALTER COLUMN id SET DEFAULT nextval('public.tb_infosociete_id_seq'::regclass);


--
-- TOC entry 5194 (class 2604 OID 16971)
-- Name: tb_inventaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire ALTER COLUMN id SET DEFAULT nextval('public.tb_inventaire_id_seq'::regclass);


--
-- TOC entry 5195 (class 2604 OID 16972)
-- Name: tb_inventaire_temporaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire_temporaire ALTER COLUMN id SET DEFAULT nextval('public.tb_inventaire_temporaire_id_seq'::regclass);


--
-- TOC entry 5199 (class 2604 OID 16973)
-- Name: tb_livraisoncli idlivcli; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli ALTER COLUMN idlivcli SET DEFAULT nextval('public.tb_livraisoncli_idlivcli_seq'::regclass);


--
-- TOC entry 5200 (class 2604 OID 16974)
-- Name: tb_livraisoncli_attente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli_attente ALTER COLUMN id SET DEFAULT nextval('public.tb_livraisoncli_attente_id_seq'::regclass);


--
-- TOC entry 5203 (class 2604 OID 16975)
-- Name: tb_livraisonfrs idlivfrs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisonfrs ALTER COLUMN idlivfrs SET DEFAULT nextval('public.tb_livraisonfrs_idlivfrs_seq'::regclass);


--
-- TOC entry 5208 (class 2604 OID 16976)
-- Name: tb_log_stock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_log_stock ALTER COLUMN id SET DEFAULT nextval('public.tb_log_stock_id_seq'::regclass);


--
-- TOC entry 5211 (class 2604 OID 16977)
-- Name: tb_lot_peremption id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_lot_peremption ALTER COLUMN id SET DEFAULT nextval('public.tb_lot_peremption_id_seq'::regclass);


--
-- TOC entry 5214 (class 2604 OID 16978)
-- Name: tb_magasin idmag; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_magasin ALTER COLUMN idmag SET DEFAULT nextval('public.tb_magasin_idmag_seq'::regclass);


--
-- TOC entry 5217 (class 2604 OID 16979)
-- Name: tb_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_menu ALTER COLUMN id SET DEFAULT nextval('public.tb_menu_id_seq'::regclass);


--
-- TOC entry 5218 (class 2604 OID 16980)
-- Name: tb_modepaiement idmode; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_modepaiement ALTER COLUMN idmode SET DEFAULT nextval('public.tb_modepaiement_idmode_seq'::regclass);


--
-- TOC entry 5219 (class 2604 OID 16981)
-- Name: tb_paiement idpaiement; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_paiement ALTER COLUMN idpaiement SET DEFAULT nextval('public.tb_paiement_idpaiement_seq'::regclass);


--
-- TOC entry 5223 (class 2604 OID 16982)
-- Name: tb_peremption id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_peremption ALTER COLUMN id SET DEFAULT nextval('public.tb_peremption_id_seq'::regclass);


--
-- TOC entry 5225 (class 2604 OID 16983)
-- Name: tb_personnel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_personnel ALTER COLUMN id SET DEFAULT nextval('public.tb_personnel_id_seq'::regclass);


--
-- TOC entry 5227 (class 2604 OID 16984)
-- Name: tb_pmtavoir id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtavoir ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtavoir_id_seq'::regclass);


--
-- TOC entry 5231 (class 2604 OID 16985)
-- Name: tb_pmtcom id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcom ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtcom_id_seq'::regclass);


--
-- TOC entry 5233 (class 2604 OID 16986)
-- Name: tb_pmtcredit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcredit ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtcredit_id_seq'::regclass);


--
-- TOC entry 5235 (class 2604 OID 16987)
-- Name: tb_pmtfacture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtfacture ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtfacture_id_seq'::regclass);


--
-- TOC entry 5238 (class 2604 OID 16988)
-- Name: tb_pmtsalaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtsalaire ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtsalaire_id_seq'::regclass);


--
-- TOC entry 5241 (class 2604 OID 16989)
-- Name: tb_postepersonnel idposte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postepersonnel ALTER COLUMN idposte SET DEFAULT nextval('public.tb_postepersonnel_idposte_seq'::regclass);


--
-- TOC entry 5244 (class 2604 OID 16990)
-- Name: tb_presencepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presencepers ALTER COLUMN id SET DEFAULT nextval('public.tb_presencepers_id_seq'::regclass);


--
-- TOC entry 5245 (class 2604 OID 16991)
-- Name: tb_prix id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_prix ALTER COLUMN id SET DEFAULT nextval('public.tb_prix_id_seq'::regclass);


--
-- TOC entry 5247 (class 2604 OID 16992)
-- Name: tb_proforma idprof; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proforma ALTER COLUMN idprof SET DEFAULT nextval('public.tb_proforma_idprof_seq'::regclass);


--
-- TOC entry 5249 (class 2604 OID 16993)
-- Name: tb_proformadetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proformadetail ALTER COLUMN id SET DEFAULT nextval('public.tb_proformadetail_id_seq'::regclass);


--
-- TOC entry 5250 (class 2604 OID 16994)
-- Name: tb_salairebasepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_salairebasepers ALTER COLUMN id SET DEFAULT nextval('public.tb_salairebasepers_id_seq'::regclass);


--
-- TOC entry 5251 (class 2604 OID 16995)
-- Name: tb_save_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_save_history ALTER COLUMN id SET DEFAULT nextval('public.tb_save_history_id_seq'::regclass);


--
-- TOC entry 5253 (class 2604 OID 16996)
-- Name: tb_sortie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortie ALTER COLUMN id SET DEFAULT nextval('public.tb_sortie_id_seq'::regclass);


--
-- TOC entry 5256 (class 2604 OID 16997)
-- Name: tb_sortiedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortiedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_sortiedetail_id_seq'::regclass);


--
-- TOC entry 5259 (class 2604 OID 16998)
-- Name: tb_stock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_stock ALTER COLUMN id SET DEFAULT nextval('public.tb_stock_id_seq'::regclass);


--
-- TOC entry 5261 (class 2604 OID 16999)
-- Name: tb_suivipresence idpresence; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_suivipresence ALTER COLUMN idpresence SET DEFAULT nextval('public.tb_suivipresence_idpresence_seq'::regclass);


--
-- TOC entry 5266 (class 2604 OID 17000)
-- Name: tb_tauxhoraire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_tauxhoraire ALTER COLUMN id SET DEFAULT nextval('public.tb_tauxhoraire_id_seq'::regclass);


--
-- TOC entry 5267 (class 2604 OID 17001)
-- Name: tb_transfert idtransfert; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfert ALTER COLUMN idtransfert SET DEFAULT nextval('public.tb_transfert_idtransfert_seq'::regclass);


--
-- TOC entry 5269 (class 2604 OID 17002)
-- Name: tb_transfertbanque id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertbanque ALTER COLUMN id SET DEFAULT nextval('public.tb_transfertbanque_id_seq'::regclass);


--
-- TOC entry 5270 (class 2604 OID 17003)
-- Name: tb_transfertcaisse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertcaisse ALTER COLUMN id SET DEFAULT nextval('public.tb_transfertcaisse_id_seq'::regclass);


--
-- TOC entry 5271 (class 2604 OID 17004)
-- Name: tb_transfertdetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertdetail ALTER COLUMN id SET DEFAULT nextval('public.tb_transfertdetail_id_seq'::regclass);


--
-- TOC entry 5273 (class 2604 OID 17005)
-- Name: tb_transporteur idtransporteur; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transporteur ALTER COLUMN idtransporteur SET DEFAULT nextval('public.tb_transporteur_idtransporteur_seq'::regclass);


--
-- TOC entry 5275 (class 2604 OID 17006)
-- Name: tb_typeclient idtypeclient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeclient ALTER COLUMN idtypeclient SET DEFAULT nextval('public.tb_typeclient_idtypeclient_seq'::regclass);


--
-- TOC entry 5276 (class 2604 OID 17007)
-- Name: tb_typeoperation idtypeoperation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeoperation ALTER COLUMN idtypeoperation SET DEFAULT nextval('public.tb_typeoperation_idtypeoperation_seq'::regclass);


--
-- TOC entry 5277 (class 2604 OID 17008)
-- Name: tb_typepmt idtypepmt; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typepmt ALTER COLUMN idtypepmt SET DEFAULT nextval('public.tb_typepmt_idtypepmt_seq'::regclass);


--
-- TOC entry 5279 (class 2604 OID 17009)
-- Name: tb_unite idunite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_unite ALTER COLUMN idunite SET DEFAULT nextval('public.tb_unite_idunite_seq'::regclass);


--
-- TOC entry 5281 (class 2604 OID 17010)
-- Name: tb_users iduser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users ALTER COLUMN iduser SET DEFAULT nextval('public.tb_users_iduser_seq'::regclass);


--
-- TOC entry 5283 (class 2604 OID 17011)
-- Name: tb_vente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vente ALTER COLUMN id SET DEFAULT nextval('public.tb_vente_id_seq'::regclass);


--
-- TOC entry 5286 (class 2604 OID 17012)
-- Name: tb_ventedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_ventedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_ventedetail_id_seq'::regclass);


--
-- TOC entry 5298 (class 2606 OID 17014)
-- Name: event_logs event_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_logs
    ADD CONSTRAINT event_logs_pkey PRIMARY KEY (id_log);


--
-- TOC entry 5308 (class 2606 OID 17016)
-- Name: logistique_bon_sortie_ligne logistique_bon_sortie_ligne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie_ligne
    ADD CONSTRAINT logistique_bon_sortie_ligne_pkey PRIMARY KEY (id);


--
-- TOC entry 5303 (class 2606 OID 17018)
-- Name: logistique_bon_sortie logistique_bon_sortie_numero_bon_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie
    ADD CONSTRAINT logistique_bon_sortie_numero_bon_key UNIQUE (numero_bon);


--
-- TOC entry 5305 (class 2606 OID 17020)
-- Name: logistique_bon_sortie logistique_bon_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie
    ADD CONSTRAINT logistique_bon_sortie_pkey PRIMARY KEY (id);


--
-- TOC entry 5312 (class 2606 OID 17022)
-- Name: logistique_carburant logistique_carburant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_carburant
    ADD CONSTRAINT logistique_carburant_pkey PRIMARY KEY (id);


--
-- TOC entry 5317 (class 2606 OID 17024)
-- Name: logistique_maintenance logistique_maintenance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_maintenance
    ADD CONSTRAINT logistique_maintenance_pkey PRIMARY KEY (id);


--
-- TOC entry 5322 (class 2606 OID 17026)
-- Name: logistique_mission logistique_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_mission
    ADD CONSTRAINT logistique_mission_pkey PRIMARY KEY (id);


--
-- TOC entry 5331 (class 2606 OID 17028)
-- Name: logistique_piece_mouvement logistique_piece_mouvement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece_mouvement
    ADD CONSTRAINT logistique_piece_mouvement_pkey PRIMARY KEY (id);


--
-- TOC entry 5326 (class 2606 OID 17030)
-- Name: logistique_piece logistique_piece_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece
    ADD CONSTRAINT logistique_piece_pkey PRIMARY KEY (id);


--
-- TOC entry 5328 (class 2606 OID 17032)
-- Name: logistique_piece logistique_piece_reference_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece
    ADD CONSTRAINT logistique_piece_reference_key UNIQUE (reference);


--
-- TOC entry 5335 (class 2606 OID 17034)
-- Name: logistique_vehicule logistique_vehicule_immatriculation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_vehicule
    ADD CONSTRAINT logistique_vehicule_immatriculation_key UNIQUE (immatriculation);


--
-- TOC entry 5337 (class 2606 OID 17036)
-- Name: logistique_vehicule logistique_vehicule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_vehicule
    ADD CONSTRAINT logistique_vehicule_pkey PRIMARY KEY (id);


--
-- TOC entry 5339 (class 2606 OID 17038)
-- Name: tb_absence tb_absence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_absence
    ADD CONSTRAINT tb_absence_pkey PRIMARY KEY (id);


--
-- TOC entry 5341 (class 2606 OID 17040)
-- Name: tb_article tb_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_article
    ADD CONSTRAINT tb_article_pkey PRIMARY KEY (idarticle);


--
-- TOC entry 5343 (class 2606 OID 17042)
-- Name: tb_autorisation tb_autorisation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autorisation
    ADD CONSTRAINT tb_autorisation_pkey PRIMARY KEY (id);


--
-- TOC entry 5345 (class 2606 OID 17044)
-- Name: tb_autre_infos tb_autre_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autre_infos
    ADD CONSTRAINT tb_autre_infos_pkey PRIMARY KEY (id);


--
-- TOC entry 5347 (class 2606 OID 17046)
-- Name: tb_autrecreance tb_autrecreance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autrecreance
    ADD CONSTRAINT tb_autrecreance_pkey PRIMARY KEY (id);


--
-- TOC entry 5349 (class 2606 OID 17048)
-- Name: tb_autredette tb_autredette_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autredette
    ADD CONSTRAINT tb_autredette_pkey PRIMARY KEY (id);


--
-- TOC entry 5351 (class 2606 OID 17050)
-- Name: tb_avancepers tb_avancepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancepers
    ADD CONSTRAINT tb_avancepers_pkey PRIMARY KEY (id);


--
-- TOC entry 5353 (class 2606 OID 17052)
-- Name: tb_avanceprof tb_avanceprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avanceprof
    ADD CONSTRAINT tb_avanceprof_pkey PRIMARY KEY (id);


--
-- TOC entry 5355 (class 2606 OID 17054)
-- Name: tb_avancespecpers tb_avancespecpers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancespecpers
    ADD CONSTRAINT tb_avancespecpers_pkey PRIMARY KEY (id);


--
-- TOC entry 5357 (class 2606 OID 17056)
-- Name: tb_avoir tb_avoir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoir
    ADD CONSTRAINT tb_avoir_pkey PRIMARY KEY (id);


--
-- TOC entry 5359 (class 2606 OID 17058)
-- Name: tb_avoirdetail tb_avoirdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoirdetail
    ADD CONSTRAINT tb_avoirdetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5361 (class 2606 OID 17060)
-- Name: tb_banque tb_banque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banque
    ADD CONSTRAINT tb_banque_pkey PRIMARY KEY (id_banque);


--
-- TOC entry 5363 (class 2606 OID 17062)
-- Name: tb_baseliste tb_baseliste_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_baseliste
    ADD CONSTRAINT tb_baseliste_pkey PRIMARY KEY (id);


--
-- TOC entry 5365 (class 2606 OID 17064)
-- Name: tb_categoriearticle tb_categoriearticle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriearticle
    ADD CONSTRAINT tb_categoriearticle_pkey PRIMARY KEY (idca);


--
-- TOC entry 5367 (class 2606 OID 17066)
-- Name: tb_categoriecompte tb_categoriecompte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriecompte
    ADD CONSTRAINT tb_categoriecompte_pkey PRIMARY KEY (idcc);


--
-- TOC entry 5369 (class 2606 OID 17068)
-- Name: tb_categoriepersonnel tb_categoriepersonnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriepersonnel
    ADD CONSTRAINT tb_categoriepersonnel_pkey PRIMARY KEY (idcategorie);


--
-- TOC entry 5374 (class 2606 OID 17070)
-- Name: tb_changement tb_changement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_changement
    ADD CONSTRAINT tb_changement_pkey PRIMARY KEY (idchg);


--
-- TOC entry 5376 (class 2606 OID 17072)
-- Name: tb_changement tb_changement_refchg_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_changement
    ADD CONSTRAINT tb_changement_refchg_key UNIQUE (refchg);


--
-- TOC entry 5378 (class 2606 OID 17074)
-- Name: tb_chat tb_chat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat
    ADD CONSTRAINT tb_chat_pkey PRIMARY KEY (id);


--
-- TOC entry 5380 (class 2606 OID 17076)
-- Name: tb_client tb_client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_client
    ADD CONSTRAINT tb_client_pkey PRIMARY KEY (idclient);


--
-- TOC entry 5382 (class 2606 OID 17078)
-- Name: tb_codeautorisation tb_codeautorisation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_codeautorisation
    ADD CONSTRAINT tb_codeautorisation_pkey PRIMARY KEY (id);


--
-- TOC entry 5384 (class 2606 OID 17080)
-- Name: tb_commande tb_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commande
    ADD CONSTRAINT tb_commande_pkey PRIMARY KEY (idcom);


--
-- TOC entry 5386 (class 2606 OID 17082)
-- Name: tb_commandedetail tb_commandedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commandedetail
    ADD CONSTRAINT tb_commandedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5388 (class 2606 OID 17084)
-- Name: tb_configdb tb_configdb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_configdb
    ADD CONSTRAINT tb_configdb_pkey PRIMARY KEY (id);


--
-- TOC entry 5394 (class 2606 OID 17086)
-- Name: tb_consommationinterne_details tb_consommationinterne_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne_details
    ADD CONSTRAINT tb_consommationinterne_details_pkey PRIMARY KEY (id);


--
-- TOC entry 5390 (class 2606 OID 17088)
-- Name: tb_consommationinterne tb_consommationinterne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne
    ADD CONSTRAINT tb_consommationinterne_pkey PRIMARY KEY (id);


--
-- TOC entry 5392 (class 2606 OID 17090)
-- Name: tb_consommationinterne tb_consommationinterne_refconsommation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne
    ADD CONSTRAINT tb_consommationinterne_refconsommation_key UNIQUE (refconsommation);


--
-- TOC entry 5396 (class 2606 OID 17092)
-- Name: tb_decaissement tb_decaissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissement
    ADD CONSTRAINT tb_decaissement_pkey PRIMARY KEY (id);


--
-- TOC entry 5398 (class 2606 OID 17094)
-- Name: tb_decaissementbq tb_decaissementbq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissementbq
    ADD CONSTRAINT tb_decaissementbq_pkey PRIMARY KEY (id);


--
-- TOC entry 5402 (class 2606 OID 17096)
-- Name: tb_detailchange_entree tb_detailchange_entree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_entree
    ADD CONSTRAINT tb_detailchange_entree_pkey PRIMARY KEY (iddetail);


--
-- TOC entry 5406 (class 2606 OID 17098)
-- Name: tb_detailchange_sortie tb_detailchange_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_sortie
    ADD CONSTRAINT tb_detailchange_sortie_pkey PRIMARY KEY (iddetail);


--
-- TOC entry 5408 (class 2606 OID 17100)
-- Name: tb_encaissement tb_encaissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissement
    ADD CONSTRAINT tb_encaissement_pkey PRIMARY KEY (id);


--
-- TOC entry 5410 (class 2606 OID 17102)
-- Name: tb_encaissementbq tb_encaissementbq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissementbq
    ADD CONSTRAINT tb_encaissementbq_pkey PRIMARY KEY (id);


--
-- TOC entry 5412 (class 2606 OID 17104)
-- Name: tb_entree tb_entree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entree
    ADD CONSTRAINT tb_entree_pkey PRIMARY KEY (id);


--
-- TOC entry 5414 (class 2606 OID 17106)
-- Name: tb_entreedetail tb_entreedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entreedetail
    ADD CONSTRAINT tb_entreedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5416 (class 2606 OID 17108)
-- Name: tb_evenement tb_evenement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evenement
    ADD CONSTRAINT tb_evenement_pkey PRIMARY KEY (id);


--
-- TOC entry 5527 (class 2606 OID 17314)
-- Name: tb_facture_sequence tb_facture_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_facture_sequence
    ADD CONSTRAINT tb_facture_sequence_pkey PRIMARY KEY (annee);


--
-- TOC entry 5418 (class 2606 OID 17110)
-- Name: tb_facturecli tb_facturecli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_facturecli
    ADD CONSTRAINT tb_facturecli_pkey PRIMARY KEY (idfact);


--
-- TOC entry 5420 (class 2606 OID 17112)
-- Name: tb_fonction tb_fonction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fonction
    ADD CONSTRAINT tb_fonction_pkey PRIMARY KEY (idfonction);


--
-- TOC entry 5422 (class 2606 OID 17114)
-- Name: tb_fournisseur tb_fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fournisseur
    ADD CONSTRAINT tb_fournisseur_pkey PRIMARY KEY (idfrs);


--
-- TOC entry 5424 (class 2606 OID 17116)
-- Name: tb_infosociete tb_infosociete_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_infosociete
    ADD CONSTRAINT tb_infosociete_pkey PRIMARY KEY (id);


--
-- TOC entry 5426 (class 2606 OID 17118)
-- Name: tb_inventaire tb_inventaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire
    ADD CONSTRAINT tb_inventaire_pkey PRIMARY KEY (id);


--
-- TOC entry 5429 (class 2606 OID 17120)
-- Name: tb_inventaire_temporaire tb_inventaire_temporaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire_temporaire
    ADD CONSTRAINT tb_inventaire_temporaire_pkey PRIMARY KEY (id);


--
-- TOC entry 5435 (class 2606 OID 17122)
-- Name: tb_livraisoncli_attente tb_livraisoncli_attente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli_attente
    ADD CONSTRAINT tb_livraisoncli_attente_pkey PRIMARY KEY (id);


--
-- TOC entry 5431 (class 2606 OID 17124)
-- Name: tb_livraisoncli tb_livraisoncli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli
    ADD CONSTRAINT tb_livraisoncli_pkey PRIMARY KEY (idlivcli);


--
-- TOC entry 5437 (class 2606 OID 17126)
-- Name: tb_livraisonfrs tb_livraisonfrs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisonfrs
    ADD CONSTRAINT tb_livraisonfrs_pkey PRIMARY KEY (idlivfrs);


--
-- TOC entry 5441 (class 2606 OID 17128)
-- Name: tb_log_evenements tb_log_evenements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_log_evenements
    ADD CONSTRAINT tb_log_evenements_pkey PRIMARY KEY (id_log);


--
-- TOC entry 5443 (class 2606 OID 17130)
-- Name: tb_log_stock tb_log_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_log_stock
    ADD CONSTRAINT tb_log_stock_pkey PRIMARY KEY (id);


--
-- TOC entry 5445 (class 2606 OID 17132)
-- Name: tb_lot_peremption tb_lot_peremption_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_lot_peremption
    ADD CONSTRAINT tb_lot_peremption_pkey PRIMARY KEY (id);


--
-- TOC entry 5447 (class 2606 OID 17134)
-- Name: tb_magasin tb_magasin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_magasin
    ADD CONSTRAINT tb_magasin_pkey PRIMARY KEY (idmag);


--
-- TOC entry 5449 (class 2606 OID 17136)
-- Name: tb_menu tb_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_menu
    ADD CONSTRAINT tb_menu_pkey PRIMARY KEY (id);


--
-- TOC entry 5451 (class 2606 OID 17138)
-- Name: tb_modepaiement tb_modepaiement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_modepaiement
    ADD CONSTRAINT tb_modepaiement_pkey PRIMARY KEY (idmode);


--
-- TOC entry 5453 (class 2606 OID 17140)
-- Name: tb_paiement tb_paiement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_paiement
    ADD CONSTRAINT tb_paiement_pkey PRIMARY KEY (idpaiement);


--
-- TOC entry 5455 (class 2606 OID 17142)
-- Name: tb_param_commande_frs tb_param_commande_frs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_commande_frs
    ADD CONSTRAINT tb_param_commande_frs_pkey PRIMARY KEY (id);


--
-- TOC entry 5457 (class 2606 OID 17144)
-- Name: tb_param_livraison_client tb_param_livraison_client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_livraison_client
    ADD CONSTRAINT tb_param_livraison_client_pkey PRIMARY KEY (id);


--
-- TOC entry 5459 (class 2606 OID 17146)
-- Name: tb_peremption tb_peremption_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_peremption
    ADD CONSTRAINT tb_peremption_pkey PRIMARY KEY (id);


--
-- TOC entry 5461 (class 2606 OID 17148)
-- Name: tb_personnel tb_personnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_personnel
    ADD CONSTRAINT tb_personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 5463 (class 2606 OID 17150)
-- Name: tb_pmtavoir tb_pmtavoir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtavoir
    ADD CONSTRAINT tb_pmtavoir_pkey PRIMARY KEY (id);


--
-- TOC entry 5465 (class 2606 OID 17152)
-- Name: tb_pmtcom tb_pmtcom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcom
    ADD CONSTRAINT tb_pmtcom_pkey PRIMARY KEY (id);


--
-- TOC entry 5467 (class 2606 OID 17154)
-- Name: tb_pmtcredit tb_pmtcredit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcredit
    ADD CONSTRAINT tb_pmtcredit_pkey PRIMARY KEY (id);


--
-- TOC entry 5470 (class 2606 OID 17156)
-- Name: tb_pmtfacture tb_pmtfacture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtfacture
    ADD CONSTRAINT tb_pmtfacture_pkey PRIMARY KEY (id);


--
-- TOC entry 5472 (class 2606 OID 17158)
-- Name: tb_pmtsalaire tb_pmtsalaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtsalaire
    ADD CONSTRAINT tb_pmtsalaire_pkey PRIMARY KEY (id);


--
-- TOC entry 5474 (class 2606 OID 17160)
-- Name: tb_postepersonnel tb_postepersonnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postepersonnel
    ADD CONSTRAINT tb_postepersonnel_pkey PRIMARY KEY (idposte);


--
-- TOC entry 5476 (class 2606 OID 17162)
-- Name: tb_presencepers tb_presencepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presencepers
    ADD CONSTRAINT tb_presencepers_pkey PRIMARY KEY (id);


--
-- TOC entry 5478 (class 2606 OID 17164)
-- Name: tb_prix tb_prix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_prix
    ADD CONSTRAINT tb_prix_pkey PRIMARY KEY (id);


--
-- TOC entry 5480 (class 2606 OID 17166)
-- Name: tb_proforma tb_proforma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proforma
    ADD CONSTRAINT tb_proforma_pkey PRIMARY KEY (idprof);


--
-- TOC entry 5482 (class 2606 OID 17168)
-- Name: tb_proformadetail tb_proformadetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proformadetail
    ADD CONSTRAINT tb_proformadetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5484 (class 2606 OID 17170)
-- Name: tb_salairebasepers tb_salairebasepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_salairebasepers
    ADD CONSTRAINT tb_salairebasepers_pkey PRIMARY KEY (id);


--
-- TOC entry 5488 (class 2606 OID 17172)
-- Name: tb_save_history tb_save_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_save_history
    ADD CONSTRAINT tb_save_history_pkey PRIMARY KEY (id);


--
-- TOC entry 5490 (class 2606 OID 17174)
-- Name: tb_sortie tb_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortie
    ADD CONSTRAINT tb_sortie_pkey PRIMARY KEY (id);


--
-- TOC entry 5492 (class 2606 OID 17176)
-- Name: tb_sortiedetail tb_sortiedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortiedetail
    ADD CONSTRAINT tb_sortiedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5494 (class 2606 OID 17178)
-- Name: tb_stock tb_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_stock
    ADD CONSTRAINT tb_stock_pkey PRIMARY KEY (id);


--
-- TOC entry 5497 (class 2606 OID 17180)
-- Name: tb_suivipresence tb_suivipresence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_suivipresence
    ADD CONSTRAINT tb_suivipresence_pkey PRIMARY KEY (idpresence);


--
-- TOC entry 5499 (class 2606 OID 17182)
-- Name: tb_tauxhoraire tb_tauxhoraire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_tauxhoraire
    ADD CONSTRAINT tb_tauxhoraire_pkey PRIMARY KEY (id);


--
-- TOC entry 5501 (class 2606 OID 17184)
-- Name: tb_transfert tb_transfert_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfert
    ADD CONSTRAINT tb_transfert_pkey PRIMARY KEY (idtransfert);


--
-- TOC entry 5503 (class 2606 OID 17186)
-- Name: tb_transfertbanque tb_transfertbanque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertbanque
    ADD CONSTRAINT tb_transfertbanque_pkey PRIMARY KEY (id);


--
-- TOC entry 5505 (class 2606 OID 17188)
-- Name: tb_transfertcaisse tb_transfertcaisse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertcaisse
    ADD CONSTRAINT tb_transfertcaisse_pkey PRIMARY KEY (id);


--
-- TOC entry 5507 (class 2606 OID 17190)
-- Name: tb_transfertdetail tb_transfertdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertdetail
    ADD CONSTRAINT tb_transfertdetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5509 (class 2606 OID 17192)
-- Name: tb_transporteur tb_transporteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transporteur
    ADD CONSTRAINT tb_transporteur_pkey PRIMARY KEY (idtransporteur);


--
-- TOC entry 5511 (class 2606 OID 17194)
-- Name: tb_typeclient tb_typeclient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeclient
    ADD CONSTRAINT tb_typeclient_pkey PRIMARY KEY (idtypeclient);


--
-- TOC entry 5513 (class 2606 OID 17196)
-- Name: tb_typeoperation tb_typeoperation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeoperation
    ADD CONSTRAINT tb_typeoperation_pkey PRIMARY KEY (idtypeoperation);


--
-- TOC entry 5515 (class 2606 OID 17198)
-- Name: tb_typepmt tb_typepmt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typepmt
    ADD CONSTRAINT tb_typepmt_pkey PRIMARY KEY (idtypepmt);


--
-- TOC entry 5517 (class 2606 OID 17200)
-- Name: tb_unite tb_unite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_unite
    ADD CONSTRAINT tb_unite_pkey PRIMARY KEY (idunite);


--
-- TOC entry 5519 (class 2606 OID 17202)
-- Name: tb_users tb_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (iduser);


--
-- TOC entry 5522 (class 2606 OID 17204)
-- Name: tb_vente tb_vente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vente
    ADD CONSTRAINT tb_vente_pkey PRIMARY KEY (id);


--
-- TOC entry 5525 (class 2606 OID 17206)
-- Name: tb_ventedetail tb_ventedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_ventedetail
    ADD CONSTRAINT tb_ventedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5299 (class 1259 OID 17207)
-- Name: idx_bon_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bon_date ON public.logistique_bon_sortie USING btree (date_bon);


--
-- TOC entry 5300 (class 1259 OID 17208)
-- Name: idx_bon_numero; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bon_numero ON public.logistique_bon_sortie USING btree (numero_bon);


--
-- TOC entry 5301 (class 1259 OID 17209)
-- Name: idx_bon_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bon_statut ON public.logistique_bon_sortie USING btree (statut);


--
-- TOC entry 5309 (class 1259 OID 17210)
-- Name: idx_carburant_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_carburant_date ON public.logistique_carburant USING btree (date_plein);


--
-- TOC entry 5310 (class 1259 OID 17211)
-- Name: idx_carburant_veh; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_carburant_veh ON public.logistique_carburant USING btree (vehicule_id);


--
-- TOC entry 5370 (class 1259 OID 17212)
-- Name: idx_changement_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changement_date ON public.tb_changement USING btree (datechg);


--
-- TOC entry 5371 (class 1259 OID 17213)
-- Name: idx_changement_refchg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changement_refchg ON public.tb_changement USING btree (refchg);


--
-- TOC entry 5372 (class 1259 OID 17214)
-- Name: idx_changement_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changement_user ON public.tb_changement USING btree (iduser);


--
-- TOC entry 5399 (class 1259 OID 17215)
-- Name: idx_detailchange_entree_article; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_entree_article ON public.tb_detailchange_entree USING btree (idarticle);


--
-- TOC entry 5400 (class 1259 OID 17216)
-- Name: idx_detailchange_entree_idchg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_entree_idchg ON public.tb_detailchange_entree USING btree (idchg);


--
-- TOC entry 5403 (class 1259 OID 17217)
-- Name: idx_detailchange_sortie_article; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_sortie_article ON public.tb_detailchange_sortie USING btree (idarticle);


--
-- TOC entry 5404 (class 1259 OID 17218)
-- Name: idx_detailchange_sortie_idchg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_sortie_idchg ON public.tb_detailchange_sortie USING btree (idchg);


--
-- TOC entry 5427 (class 1259 OID 17219)
-- Name: idx_inv_temp_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_inv_temp_date ON public.tb_inventaire_temporaire USING btree (date_creation);


--
-- TOC entry 5306 (class 1259 OID 17220)
-- Name: idx_ligne_bon; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ligne_bon ON public.logistique_bon_sortie_ligne USING btree (bon_id);


--
-- TOC entry 5432 (class 1259 OID 17221)
-- Name: idx_livcli_attente_refvente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_livcli_attente_refvente ON public.tb_livraisoncli_attente USING btree (refvente);


--
-- TOC entry 5433 (class 1259 OID 17222)
-- Name: idx_livcli_attente_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_livcli_attente_statut ON public.tb_livraisoncli_attente USING btree (statut);


--
-- TOC entry 5313 (class 1259 OID 17223)
-- Name: idx_maintenance_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_maintenance_date ON public.logistique_maintenance USING btree (date_entree);


--
-- TOC entry 5314 (class 1259 OID 17224)
-- Name: idx_maintenance_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_maintenance_statut ON public.logistique_maintenance USING btree (statut);


--
-- TOC entry 5315 (class 1259 OID 17225)
-- Name: idx_maintenance_vehicule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_maintenance_vehicule ON public.logistique_maintenance USING btree (vehicule_id);


--
-- TOC entry 5318 (class 1259 OID 17226)
-- Name: idx_mission_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mission_date ON public.logistique_mission USING btree (date_depart);


--
-- TOC entry 5319 (class 1259 OID 17227)
-- Name: idx_mission_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mission_statut ON public.logistique_mission USING btree (statut);


--
-- TOC entry 5320 (class 1259 OID 17228)
-- Name: idx_mission_vehicule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mission_vehicule ON public.logistique_mission USING btree (vehicule_id);


--
-- TOC entry 5329 (class 1259 OID 17229)
-- Name: idx_mvt_piece; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mvt_piece ON public.logistique_piece_mouvement USING btree (piece_id);


--
-- TOC entry 5323 (class 1259 OID 17230)
-- Name: idx_piece_quantite; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_piece_quantite ON public.logistique_piece USING btree (quantite);


--
-- TOC entry 5324 (class 1259 OID 17231)
-- Name: idx_piece_reference; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_piece_reference ON public.logistique_piece USING btree (reference);


--
-- TOC entry 5495 (class 1259 OID 17232)
-- Name: idx_suivipresence_date_personnel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_suivipresence_date_personnel ON public.tb_suivipresence USING btree (datepresence, idpersonnel);


--
-- TOC entry 5438 (class 1259 OID 17233)
-- Name: idx_tb_log_evenements_datetime; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_log_evenements_datetime ON public.tb_log_evenements USING btree (datetime DESC);


--
-- TOC entry 5439 (class 1259 OID 17234)
-- Name: idx_tb_log_evenements_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_log_evenements_user ON public.tb_log_evenements USING btree ("user");


--
-- TOC entry 5468 (class 1259 OID 17378)
-- Name: idx_tb_pmtfacture_refvente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_pmtfacture_refvente ON public.tb_pmtfacture USING btree (refvente);


--
-- TOC entry 5485 (class 1259 OID 17235)
-- Name: idx_tb_save_history_datetime; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_save_history_datetime ON public.tb_save_history USING btree (datetime DESC);


--
-- TOC entry 5486 (class 1259 OID 17236)
-- Name: idx_tb_save_history_utilisateur; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_save_history_utilisateur ON public.tb_save_history USING btree (utilisateur);


--
-- TOC entry 5520 (class 1259 OID 17380)
-- Name: idx_tb_vente_factureliste_filter; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_vente_factureliste_filter ON public.tb_vente USING btree (deleted, statut, dateregistre DESC, refvente DESC);


--
-- TOC entry 5523 (class 1259 OID 17379)
-- Name: idx_tb_ventedetail_idvente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_ventedetail_idvente ON public.tb_ventedetail USING btree (idvente);


--
-- TOC entry 5332 (class 1259 OID 17237)
-- Name: idx_vehicule_immat; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_vehicule_immat ON public.logistique_vehicule USING btree (immatriculation);


--
-- TOC entry 5333 (class 1259 OID 17238)
-- Name: idx_vehicule_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_vehicule_statut ON public.logistique_vehicule USING btree (statut);


--
-- TOC entry 5535 (class 2606 OID 17239)
-- Name: tb_chat fk_destinataire; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat
    ADD CONSTRAINT fk_destinataire FOREIGN KEY (id_destinataire) REFERENCES public.tb_users(iduser);


--
-- TOC entry 5536 (class 2606 OID 17244)
-- Name: tb_chat fk_expediteur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat
    ADD CONSTRAINT fk_expediteur FOREIGN KEY (id_expediteur) REFERENCES public.tb_users(iduser);


--
-- TOC entry 5529 (class 2606 OID 17249)
-- Name: logistique_bon_sortie_ligne logistique_bon_sortie_ligne_bon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie_ligne
    ADD CONSTRAINT logistique_bon_sortie_ligne_bon_id_fkey FOREIGN KEY (bon_id) REFERENCES public.logistique_bon_sortie(id) ON DELETE CASCADE;


--
-- TOC entry 5528 (class 2606 OID 17254)
-- Name: logistique_bon_sortie logistique_bon_sortie_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie
    ADD CONSTRAINT logistique_bon_sortie_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5530 (class 2606 OID 17259)
-- Name: logistique_carburant logistique_carburant_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_carburant
    ADD CONSTRAINT logistique_carburant_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5531 (class 2606 OID 17264)
-- Name: logistique_maintenance logistique_maintenance_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_maintenance
    ADD CONSTRAINT logistique_maintenance_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5532 (class 2606 OID 17269)
-- Name: logistique_mission logistique_mission_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_mission
    ADD CONSTRAINT logistique_mission_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5533 (class 2606 OID 17274)
-- Name: logistique_piece_mouvement logistique_piece_mouvement_piece_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece_mouvement
    ADD CONSTRAINT logistique_piece_mouvement_piece_id_fkey FOREIGN KEY (piece_id) REFERENCES public.logistique_piece(id) ON DELETE CASCADE;


--
-- TOC entry 5534 (class 2606 OID 17279)
-- Name: tb_avanceprof tb_avanceprof_idpers_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avanceprof
    ADD CONSTRAINT tb_avanceprof_idpers_fkey FOREIGN KEY (idpers) REFERENCES public.tb_personnel(id);


--
-- TOC entry 5537 (class 2606 OID 17284)
-- Name: tb_param_commande_frs tb_param_commande_frs_idfrs_defaut_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_commande_frs
    ADD CONSTRAINT tb_param_commande_frs_idfrs_defaut_fkey FOREIGN KEY (idfrs_defaut) REFERENCES public.tb_fournisseur(idfrs) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5538 (class 2606 OID 17289)
-- Name: tb_param_livraison_client tb_param_livraison_client_idtransporteur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_livraison_client
    ADD CONSTRAINT tb_param_livraison_client_idtransporteur_fkey FOREIGN KEY (idtransporteur_defaut) REFERENCES public.tb_transporteur(idtransporteur) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5539 (class 2606 OID 17294)
-- Name: tb_personnel tb_personnel_idposte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_personnel
    ADD CONSTRAINT tb_personnel_idposte_fkey FOREIGN KEY (idposte) REFERENCES public.tb_postepersonnel(idposte) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5540 (class 2606 OID 17299)
-- Name: tb_postepersonnel tb_postepersonnel_idcategorie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postepersonnel
    ADD CONSTRAINT tb_postepersonnel_idcategorie_fkey FOREIGN KEY (idcategorie) REFERENCES public.tb_categoriepersonnel(idcategorie) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2026-08-11 13:13:52

--
-- PostgreSQL database dump complete
--

\unrestrict 1yTgbCO3hka70tszBQuyxbqzLhx8vmcEWr7r1fG5wZ9Dix7T6UsYXSroTMmZVcr

