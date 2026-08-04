--
-- PostgreSQL database dump
--

\restrict dGbpmZgGebNfDi017u0gdzc6XIUcDmPsL6vWA8DMusXfkgU3AOtrW9GtOi4Gj96

-- Dumped from database version 16.13
-- Dumped by pg_dump version 16.13

-- Started on 2026-08-04 10:16:36

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
-- TOC entry 215 (class 1259 OID 69859)
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
-- TOC entry 216 (class 1259 OID 69866)
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
-- TOC entry 217 (class 1259 OID 69876)
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
-- TOC entry 5825 (class 0 OID 0)
-- Dependencies: 217
-- Name: logistique_bon_sortie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_bon_sortie_id_seq OWNED BY public.logistique_bon_sortie.id;


--
-- TOC entry 218 (class 1259 OID 69877)
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
-- TOC entry 219 (class 1259 OID 69884)
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
-- TOC entry 5826 (class 0 OID 0)
-- Dependencies: 219
-- Name: logistique_bon_sortie_ligne_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_bon_sortie_ligne_id_seq OWNED BY public.logistique_bon_sortie_ligne.id;


--
-- TOC entry 220 (class 1259 OID 69885)
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
-- TOC entry 221 (class 1259 OID 69893)
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
-- TOC entry 5827 (class 0 OID 0)
-- Dependencies: 221
-- Name: logistique_carburant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_carburant_id_seq OWNED BY public.logistique_carburant.id;


--
-- TOC entry 222 (class 1259 OID 69894)
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
-- TOC entry 223 (class 1259 OID 69902)
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
-- TOC entry 5828 (class 0 OID 0)
-- Dependencies: 223
-- Name: logistique_maintenance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_maintenance_id_seq OWNED BY public.logistique_maintenance.id;


--
-- TOC entry 224 (class 1259 OID 69903)
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
-- TOC entry 225 (class 1259 OID 69911)
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
-- TOC entry 5829 (class 0 OID 0)
-- Dependencies: 225
-- Name: logistique_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_mission_id_seq OWNED BY public.logistique_mission.id;


--
-- TOC entry 226 (class 1259 OID 69912)
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
-- TOC entry 227 (class 1259 OID 69922)
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
-- TOC entry 5830 (class 0 OID 0)
-- Dependencies: 227
-- Name: logistique_piece_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_piece_id_seq OWNED BY public.logistique_piece.id;


--
-- TOC entry 228 (class 1259 OID 69923)
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
-- TOC entry 229 (class 1259 OID 69932)
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
-- TOC entry 5831 (class 0 OID 0)
-- Dependencies: 229
-- Name: logistique_piece_mouvement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_piece_mouvement_id_seq OWNED BY public.logistique_piece_mouvement.id;


--
-- TOC entry 230 (class 1259 OID 69933)
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
-- TOC entry 231 (class 1259 OID 69944)
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
-- TOC entry 5832 (class 0 OID 0)
-- Dependencies: 231
-- Name: logistique_vehicule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_vehicule_id_seq OWNED BY public.logistique_vehicule.id;


--
-- TOC entry 232 (class 1259 OID 69945)
-- Name: logistique_voyage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_voyage (
    id integer NOT NULL,
    numero_voyage character varying(20) NOT NULL,
    vehicule_id integer,
    type_vehicule character varying(40),
    date_creation date DEFAULT CURRENT_DATE NOT NULL,
    date_cloture date,
    statut character varying(20) DEFAULT 'Encours'::character varying NOT NULL,
    itineraire character varying(255),
    total_poids_tonnes numeric(14,3) DEFAULT 0 NOT NULL,
    observation text,
    iduser integer,
    deleted smallint DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.logistique_voyage OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 69956)
-- Name: logistique_voyage_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistique_voyage_detail (
    id integer NOT NULL,
    voyage_id integer NOT NULL,
    idfrs integer,
    idarticle integer NOT NULL,
    idunite integer NOT NULL,
    quantite numeric(14,2) DEFAULT 0 NOT NULL,
    poids_unitaire numeric(14,3) DEFAULT 0 NOT NULL,
    prix_unitaire numeric(14,2) DEFAULT 0 NOT NULL,
    poids_total numeric(14,2) DEFAULT 0 NOT NULL,
    prix_vente numeric(14,2) DEFAULT 0 NOT NULL,
    date_peremption date,
    destination character varying(50),
    num_facture character varying(50),
    num_camion character varying(20),
    chauffeur character varying(50),
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.logistique_voyage_detail OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 69965)
-- Name: logistique_voyage_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_voyage_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_voyage_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5833 (class 0 OID 0)
-- Dependencies: 234
-- Name: logistique_voyage_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_voyage_detail_id_seq OWNED BY public.logistique_voyage_detail.id;


--
-- TOC entry 235 (class 1259 OID 69966)
-- Name: logistique_voyage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistique_voyage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logistique_voyage_id_seq OWNER TO postgres;

--
-- TOC entry 5834 (class 0 OID 0)
-- Dependencies: 235
-- Name: logistique_voyage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistique_voyage_id_seq OWNED BY public.logistique_voyage.id;


--
-- TOC entry 236 (class 1259 OID 69967)
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
-- TOC entry 237 (class 1259 OID 69970)
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
-- TOC entry 5835 (class 0 OID 0)
-- Dependencies: 237
-- Name: tb_absence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_absence_id_seq OWNED BY public.tb_absence.id;


--
-- TOC entry 238 (class 1259 OID 69971)
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
-- TOC entry 239 (class 1259 OID 69975)
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
-- TOC entry 5836 (class 0 OID 0)
-- Dependencies: 239
-- Name: tb_article_idarticle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_article_idarticle_seq OWNED BY public.tb_article.idarticle;


--
-- TOC entry 240 (class 1259 OID 69976)
-- Name: tb_autorisation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_autorisation (
    id integer NOT NULL,
    idfonction integer,
    idmenu integer
);


ALTER TABLE public.tb_autorisation OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 69979)
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
-- TOC entry 5837 (class 0 OID 0)
-- Dependencies: 241
-- Name: tb_autorisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autorisation_id_seq OWNED BY public.tb_autorisation.id;


--
-- TOC entry 242 (class 1259 OID 69980)
-- Name: tb_autre_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_autre_infos (
    id integer NOT NULL,
    intitule character varying(250) DEFAULT ''::character varying,
    valeur character varying(1000) DEFAULT ''::character varying
);


ALTER TABLE public.tb_autre_infos OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 69987)
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
-- TOC entry 5838 (class 0 OID 0)
-- Dependencies: 243
-- Name: tb_autre_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autre_infos_id_seq OWNED BY public.tb_autre_infos.id;


--
-- TOC entry 244 (class 1259 OID 69988)
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
-- TOC entry 245 (class 1259 OID 69991)
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
-- TOC entry 5839 (class 0 OID 0)
-- Dependencies: 245
-- Name: tb_autrecreance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autrecreance_id_seq OWNED BY public.tb_autrecreance.id;


--
-- TOC entry 246 (class 1259 OID 69992)
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
-- TOC entry 247 (class 1259 OID 69996)
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
-- TOC entry 5840 (class 0 OID 0)
-- Dependencies: 247
-- Name: tb_autredette_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_autredette_id_seq OWNED BY public.tb_autredette.id;


--
-- TOC entry 248 (class 1259 OID 69997)
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
-- TOC entry 249 (class 1259 OID 70000)
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
-- TOC entry 5841 (class 0 OID 0)
-- Dependencies: 249
-- Name: tb_avancepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avancepers_id_seq OWNED BY public.tb_avancepers.id;


--
-- TOC entry 250 (class 1259 OID 70001)
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
-- TOC entry 251 (class 1259 OID 70004)
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
-- TOC entry 5842 (class 0 OID 0)
-- Dependencies: 251
-- Name: tb_avanceprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avanceprof_id_seq OWNED BY public.tb_avanceprof.id;


--
-- TOC entry 252 (class 1259 OID 70005)
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
-- TOC entry 253 (class 1259 OID 70008)
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
-- TOC entry 5843 (class 0 OID 0)
-- Dependencies: 253
-- Name: tb_avancespecpers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avancespecpers_id_seq OWNED BY public.tb_avancespecpers.id;


--
-- TOC entry 254 (class 1259 OID 70009)
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
-- TOC entry 255 (class 1259 OID 70013)
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
-- TOC entry 5844 (class 0 OID 0)
-- Dependencies: 255
-- Name: tb_avoir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avoir_id_seq OWNED BY public.tb_avoir.id;


--
-- TOC entry 256 (class 1259 OID 70014)
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
-- TOC entry 257 (class 1259 OID 70018)
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
-- TOC entry 5845 (class 0 OID 0)
-- Dependencies: 257
-- Name: tb_avoirdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_avoirdetail_id_seq OWNED BY public.tb_avoirdetail.id;


--
-- TOC entry 258 (class 1259 OID 70019)
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
-- TOC entry 259 (class 1259 OID 70022)
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
-- TOC entry 5846 (class 0 OID 0)
-- Dependencies: 259
-- Name: tb_banque_id_banque_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_banque_id_banque_seq OWNED BY public.tb_banque.id_banque;


--
-- TOC entry 260 (class 1259 OID 70023)
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
-- TOC entry 261 (class 1259 OID 70027)
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
-- TOC entry 5847 (class 0 OID 0)
-- Dependencies: 261
-- Name: tb_baseliste_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_baseliste_id_seq OWNED BY public.tb_baseliste.id;


--
-- TOC entry 262 (class 1259 OID 70028)
-- Name: tb_categoriearticle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoriearticle (
    idca integer NOT NULL,
    designationcat character varying(150),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_categoriearticle OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 70032)
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
-- TOC entry 5848 (class 0 OID 0)
-- Dependencies: 263
-- Name: tb_categoriearticle_idca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoriearticle_idca_seq OWNED BY public.tb_categoriearticle.idca;


--
-- TOC entry 264 (class 1259 OID 70033)
-- Name: tb_categoriecompte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoriecompte (
    idcc integer NOT NULL,
    categoriecompte character varying(100)
);


ALTER TABLE public.tb_categoriecompte OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 70036)
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
-- TOC entry 5849 (class 0 OID 0)
-- Dependencies: 265
-- Name: tb_categoriecompte_idcc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoriecompte_idcc_seq OWNED BY public.tb_categoriecompte.idcc;


--
-- TOC entry 266 (class 1259 OID 70037)
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
-- TOC entry 267 (class 1259 OID 70044)
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
-- TOC entry 5850 (class 0 OID 0)
-- Dependencies: 267
-- Name: tb_categoriepersonnel_idcategorie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoriepersonnel_idcategorie_seq OWNED BY public.tb_categoriepersonnel.idcategorie;


--
-- TOC entry 268 (class 1259 OID 70045)
-- Name: tb_changement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_changement (
    idchg integer NOT NULL,
    refchg character varying(20) NOT NULL,
    datechg timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    iduser integer NOT NULL,
    note text
);


ALTER TABLE public.tb_changement OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 70051)
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
-- TOC entry 5851 (class 0 OID 0)
-- Dependencies: 269
-- Name: tb_changement_idchg_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_changement_idchg_seq OWNED BY public.tb_changement.idchg;


--
-- TOC entry 270 (class 1259 OID 70052)
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
-- TOC entry 271 (class 1259 OID 70059)
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
-- TOC entry 5852 (class 0 OID 0)
-- Dependencies: 271
-- Name: tb_chat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_chat_id_seq OWNED BY public.tb_chat.id;


--
-- TOC entry 272 (class 1259 OID 70060)
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
    blocked integer,
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_client OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 70064)
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
-- TOC entry 5853 (class 0 OID 0)
-- Dependencies: 273
-- Name: tb_client_idclient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_client_idclient_seq OWNED BY public.tb_client.idclient;


--
-- TOC entry 274 (class 1259 OID 70065)
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
-- TOC entry 275 (class 1259 OID 70069)
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
-- TOC entry 5854 (class 0 OID 0)
-- Dependencies: 275
-- Name: tb_codeautorisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_codeautorisation_id_seq OWNED BY public.tb_codeautorisation.id;


--
-- TOC entry 276 (class 1259 OID 70070)
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
-- TOC entry 277 (class 1259 OID 70074)
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
-- TOC entry 5855 (class 0 OID 0)
-- Dependencies: 277
-- Name: tb_commande_idcom_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_commande_idcom_seq OWNED BY public.tb_commande.idcom;


--
-- TOC entry 278 (class 1259 OID 70075)
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
-- TOC entry 279 (class 1259 OID 70079)
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
-- TOC entry 5856 (class 0 OID 0)
-- Dependencies: 279
-- Name: tb_commandedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_commandedetail_id_seq OWNED BY public.tb_commandedetail.id;


--
-- TOC entry 280 (class 1259 OID 70080)
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
-- TOC entry 281 (class 1259 OID 70083)
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
-- TOC entry 5857 (class 0 OID 0)
-- Dependencies: 281
-- Name: tb_configdb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_configdb_id_seq OWNED BY public.tb_configdb.id;


--
-- TOC entry 282 (class 1259 OID 70084)
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
-- TOC entry 283 (class 1259 OID 70091)
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
    montant_total numeric(15,2) GENERATED ALWAYS AS ((qtconsomme * prixunit)) STORED,
    observation text
);


ALTER TABLE public.tb_consommationinterne_details OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 70097)
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
-- TOC entry 5858 (class 0 OID 0)
-- Dependencies: 284
-- Name: tb_consommationinterne_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_consommationinterne_details_id_seq OWNED BY public.tb_consommationinterne_details.id;


--
-- TOC entry 285 (class 1259 OID 70098)
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
-- TOC entry 5859 (class 0 OID 0)
-- Dependencies: 285
-- Name: tb_consommationinterne_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_consommationinterne_id_seq OWNED BY public.tb_consommationinterne.id;


--
-- TOC entry 286 (class 1259 OID 70099)
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
-- TOC entry 287 (class 1259 OID 70103)
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
-- TOC entry 5860 (class 0 OID 0)
-- Dependencies: 287
-- Name: tb_decaissement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_decaissement_id_seq OWNED BY public.tb_decaissement.id;


--
-- TOC entry 288 (class 1259 OID 70104)
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
-- TOC entry 289 (class 1259 OID 70108)
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
-- TOC entry 5861 (class 0 OID 0)
-- Dependencies: 289
-- Name: tb_decaissementbq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_decaissementbq_id_seq OWNED BY public.tb_decaissementbq.id;


--
-- TOC entry 290 (class 1259 OID 70109)
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
-- TOC entry 291 (class 1259 OID 70112)
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
-- TOC entry 5862 (class 0 OID 0)
-- Dependencies: 291
-- Name: tb_detailchange_entree_iddetail_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_detailchange_entree_iddetail_seq OWNED BY public.tb_detailchange_entree.iddetail;


--
-- TOC entry 292 (class 1259 OID 70113)
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
-- TOC entry 293 (class 1259 OID 70116)
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
-- TOC entry 5863 (class 0 OID 0)
-- Dependencies: 293
-- Name: tb_detailchange_sortie_iddetail_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_detailchange_sortie_iddetail_seq OWNED BY public.tb_detailchange_sortie.iddetail;


--
-- TOC entry 294 (class 1259 OID 70117)
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
-- TOC entry 295 (class 1259 OID 70121)
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
-- TOC entry 5864 (class 0 OID 0)
-- Dependencies: 295
-- Name: tb_encaissement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_encaissement_id_seq OWNED BY public.tb_encaissement.id;


--
-- TOC entry 296 (class 1259 OID 70122)
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
-- TOC entry 297 (class 1259 OID 70126)
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
-- TOC entry 5865 (class 0 OID 0)
-- Dependencies: 297
-- Name: tb_encaissementbq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_encaissementbq_id_seq OWNED BY public.tb_encaissementbq.id;


--
-- TOC entry 298 (class 1259 OID 70127)
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
-- TOC entry 299 (class 1259 OID 70132)
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
-- TOC entry 5866 (class 0 OID 0)
-- Dependencies: 299
-- Name: tb_entree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_entree_id_seq OWNED BY public.tb_entree.id;


--
-- TOC entry 300 (class 1259 OID 70133)
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
-- TOC entry 301 (class 1259 OID 70138)
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
-- TOC entry 5867 (class 0 OID 0)
-- Dependencies: 301
-- Name: tb_entreedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_entreedetail_id_seq OWNED BY public.tb_entreedetail.id;


--
-- TOC entry 302 (class 1259 OID 70139)
-- Name: tb_evenement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_evenement (
    id integer NOT NULL,
    date timestamp without time zone,
    evenements character varying(200)
);


ALTER TABLE public.tb_evenement OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 70142)
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
-- TOC entry 5868 (class 0 OID 0)
-- Dependencies: 303
-- Name: tb_evenement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_evenement_id_seq OWNED BY public.tb_evenement.id;


--
-- TOC entry 304 (class 1259 OID 70143)
-- Name: tb_facture_sequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_facture_sequence (
    annee integer NOT NULL,
    dernier_numero integer DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.tb_facture_sequence OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 70148)
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
-- TOC entry 306 (class 1259 OID 70151)
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
-- TOC entry 5869 (class 0 OID 0)
-- Dependencies: 306
-- Name: tb_facturecli_idfact_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_facturecli_idfact_seq OWNED BY public.tb_facturecli.idfact;


--
-- TOC entry 307 (class 1259 OID 70152)
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
-- TOC entry 308 (class 1259 OID 70156)
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
-- TOC entry 5870 (class 0 OID 0)
-- Dependencies: 308
-- Name: tb_fonction_idfonction_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_fonction_idfonction_seq OWNED BY public.tb_fonction.idfonction;


--
-- TOC entry 309 (class 1259 OID 70157)
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
-- TOC entry 310 (class 1259 OID 70163)
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
-- TOC entry 5871 (class 0 OID 0)
-- Dependencies: 310
-- Name: tb_fournisseur_idfrs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_fournisseur_idfrs_seq OWNED BY public.tb_fournisseur.idfrs;


--
-- TOC entry 311 (class 1259 OID 70164)
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
-- TOC entry 312 (class 1259 OID 70169)
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
-- TOC entry 5872 (class 0 OID 0)
-- Dependencies: 312
-- Name: tb_infosociete_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_infosociete_id_seq OWNED BY public.tb_infosociete.id;


--
-- TOC entry 313 (class 1259 OID 70170)
-- Name: tb_inventaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_inventaire (
    id integer NOT NULL,
    qtinventaire double precision,
    observation character varying(100),
    date timestamp without time zone,
    iduser integer,
    idmag integer,
    codearticle character varying(50)
);


ALTER TABLE public.tb_inventaire OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 70173)
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
-- TOC entry 5873 (class 0 OID 0)
-- Dependencies: 314
-- Name: tb_inventaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_inventaire_id_seq OWNED BY public.tb_inventaire.id;


--
-- TOC entry 315 (class 1259 OID 70174)
-- Name: tb_inventaire_temporaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_inventaire_temporaire (
    id integer NOT NULL,
    date_creation timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    date_mise_ajour timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
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
-- TOC entry 316 (class 1259 OID 70181)
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
-- TOC entry 5874 (class 0 OID 0)
-- Dependencies: 316
-- Name: tb_inventaire_temporaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_inventaire_temporaire_id_seq OWNED BY public.tb_inventaire_temporaire.id;


--
-- TOC entry 317 (class 1259 OID 70182)
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
-- TOC entry 318 (class 1259 OID 70185)
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
-- TOC entry 319 (class 1259 OID 70190)
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
-- TOC entry 5875 (class 0 OID 0)
-- Dependencies: 319
-- Name: tb_livraisoncli_attente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_livraisoncli_attente_id_seq OWNED BY public.tb_livraisoncli_attente.id;


--
-- TOC entry 320 (class 1259 OID 70191)
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
-- TOC entry 5876 (class 0 OID 0)
-- Dependencies: 320
-- Name: tb_livraisoncli_idlivcli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_livraisoncli_idlivcli_seq OWNED BY public.tb_livraisoncli.idlivcli;


--
-- TOC entry 321 (class 1259 OID 70192)
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
-- TOC entry 322 (class 1259 OID 70197)
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
-- TOC entry 5877 (class 0 OID 0)
-- Dependencies: 322
-- Name: tb_livraisonfrs_idlivfrs_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_livraisonfrs_idlivfrs_seq OWNED BY public.tb_livraisonfrs.idlivfrs;


--
-- TOC entry 323 (class 1259 OID 70198)
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
-- TOC entry 324 (class 1259 OID 70205)
-- Name: tb_log_stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_log_stock (
    id integer NOT NULL,
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
-- TOC entry 325 (class 1259 OID 70210)
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
-- TOC entry 5878 (class 0 OID 0)
-- Dependencies: 325
-- Name: tb_log_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_log_stock_id_seq OWNED BY public.tb_log_stock.id;


--
-- TOC entry 326 (class 1259 OID 70211)
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
-- TOC entry 327 (class 1259 OID 70218)
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
-- TOC entry 5879 (class 0 OID 0)
-- Dependencies: 327
-- Name: tb_lot_peremption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_lot_peremption_id_seq OWNED BY public.tb_lot_peremption.id;


--
-- TOC entry 328 (class 1259 OID 70219)
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
-- TOC entry 329 (class 1259 OID 70224)
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
-- TOC entry 5880 (class 0 OID 0)
-- Dependencies: 329
-- Name: tb_magasin_idmag_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_magasin_idmag_seq OWNED BY public.tb_magasin.idmag;


--
-- TOC entry 330 (class 1259 OID 70225)
-- Name: tb_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_menu (
    id integer NOT NULL,
    designationmenu character varying(100),
    page character varying(50)
);


ALTER TABLE public.tb_menu OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 70228)
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
-- TOC entry 5881 (class 0 OID 0)
-- Dependencies: 331
-- Name: tb_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_menu_id_seq OWNED BY public.tb_menu.id;


--
-- TOC entry 332 (class 1259 OID 70229)
-- Name: tb_modepaiement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_modepaiement (
    idmode integer NOT NULL,
    modedepaiement character varying(50)
);


ALTER TABLE public.tb_modepaiement OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 70232)
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
-- TOC entry 5882 (class 0 OID 0)
-- Dependencies: 333
-- Name: tb_modepaiement_idmode_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_modepaiement_idmode_seq OWNED BY public.tb_modepaiement.idmode;


--
-- TOC entry 334 (class 1259 OID 70233)
-- Name: tb_paiement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_paiement (
    idpaiement integer NOT NULL,
    paiement character varying(25)
);


ALTER TABLE public.tb_paiement OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 70236)
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
-- TOC entry 5883 (class 0 OID 0)
-- Dependencies: 335
-- Name: tb_paiement_idpaiement_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_paiement_idpaiement_seq OWNED BY public.tb_paiement.idpaiement;


--
-- TOC entry 336 (class 1259 OID 70237)
-- Name: tb_param_commande_frs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_param_commande_frs (
    id smallint DEFAULT 1 NOT NULL,
    idfrs_defaut integer,
    CONSTRAINT tb_param_commande_frs_singleton CHECK ((id = 1))
);


ALTER TABLE public.tb_param_commande_frs OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 70242)
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
-- TOC entry 338 (class 1259 OID 70248)
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
-- TOC entry 339 (class 1259 OID 70252)
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
-- TOC entry 5884 (class 0 OID 0)
-- Dependencies: 339
-- Name: tb_peremption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_peremption_id_seq OWNED BY public.tb_peremption.id;


--
-- TOC entry 340 (class 1259 OID 70253)
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
-- TOC entry 341 (class 1259 OID 70257)
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
-- TOC entry 5885 (class 0 OID 0)
-- Dependencies: 341
-- Name: tb_personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_personnel_id_seq OWNED BY public.tb_personnel.id;


--
-- TOC entry 342 (class 1259 OID 70258)
-- Name: tb_pmtavoir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pmtavoir (
    id integer NOT NULL,
    datepmt timestamp without time zone,
    mtpaye double precision,
    observation character varying(150),
    idtypeoperation integer DEFAULT 1,
    deleted integer,
    refvente character varying(50),
    refavoir character varying(50),
    id_banque integer,
    iduser integer,
    idmode integer
);


ALTER TABLE public.tb_pmtavoir OWNER TO postgres;

--
-- TOC entry 343 (class 1259 OID 70262)
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
-- TOC entry 5886 (class 0 OID 0)
-- Dependencies: 343
-- Name: tb_pmtavoir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtavoir_id_seq OWNED BY public.tb_pmtavoir.id;


--
-- TOC entry 344 (class 1259 OID 70263)
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
-- TOC entry 345 (class 1259 OID 70267)
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
-- TOC entry 5887 (class 0 OID 0)
-- Dependencies: 345
-- Name: tb_pmtcom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtcom_id_seq OWNED BY public.tb_pmtcom.id;


--
-- TOC entry 346 (class 1259 OID 70268)
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
-- TOC entry 347 (class 1259 OID 70272)
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
-- TOC entry 5888 (class 0 OID 0)
-- Dependencies: 347
-- Name: tb_pmtcredit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtcredit_id_seq OWNED BY public.tb_pmtcredit.id;


--
-- TOC entry 348 (class 1259 OID 70273)
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
-- TOC entry 349 (class 1259 OID 70278)
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
-- TOC entry 5889 (class 0 OID 0)
-- Dependencies: 349
-- Name: tb_pmtfacture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtfacture_id_seq OWNED BY public.tb_pmtfacture.id;


--
-- TOC entry 350 (class 1259 OID 70279)
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
-- TOC entry 351 (class 1259 OID 70284)
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
-- TOC entry 5890 (class 0 OID 0)
-- Dependencies: 351
-- Name: tb_pmtsalaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pmtsalaire_id_seq OWNED BY public.tb_pmtsalaire.id;


--
-- TOC entry 352 (class 1259 OID 70285)
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
-- TOC entry 353 (class 1259 OID 70292)
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
-- TOC entry 5891 (class 0 OID 0)
-- Dependencies: 353
-- Name: tb_postepersonnel_idposte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_postepersonnel_idposte_seq OWNED BY public.tb_postepersonnel.idposte;


--
-- TOC entry 354 (class 1259 OID 70293)
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
-- TOC entry 355 (class 1259 OID 70296)
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
-- TOC entry 5892 (class 0 OID 0)
-- Dependencies: 355
-- Name: tb_presencepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_presencepers_id_seq OWNED BY public.tb_presencepers.id;


--
-- TOC entry 356 (class 1259 OID 70297)
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
-- TOC entry 357 (class 1259 OID 70301)
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
-- TOC entry 5893 (class 0 OID 0)
-- Dependencies: 357
-- Name: tb_prix_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_prix_id_seq OWNED BY public.tb_prix.id;


--
-- TOC entry 358 (class 1259 OID 70302)
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
    deleted integer,
    datemodif timestamp without time zone,
    statut character varying(50),
    datefacturation timestamp without time zone
);


ALTER TABLE public.tb_proforma OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 70305)
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
-- TOC entry 5894 (class 0 OID 0)
-- Dependencies: 359
-- Name: tb_proforma_idprof_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_proforma_idprof_seq OWNED BY public.tb_proforma.idprof;


--
-- TOC entry 360 (class 1259 OID 70306)
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
-- TOC entry 361 (class 1259 OID 70309)
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
-- TOC entry 5895 (class 0 OID 0)
-- Dependencies: 361
-- Name: tb_proformadetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_proformadetail_id_seq OWNED BY public.tb_proformadetail.id;


--
-- TOC entry 362 (class 1259 OID 70310)
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
-- TOC entry 363 (class 1259 OID 70313)
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
-- TOC entry 5896 (class 0 OID 0)
-- Dependencies: 363
-- Name: tb_salairebasepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_salairebasepers_id_seq OWNED BY public.tb_salairebasepers.id;


--
-- TOC entry 364 (class 1259 OID 70314)
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
-- TOC entry 365 (class 1259 OID 70320)
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
-- TOC entry 5897 (class 0 OID 0)
-- Dependencies: 365
-- Name: tb_save_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_save_history_id_seq OWNED BY public.tb_save_history.id;


--
-- TOC entry 366 (class 1259 OID 70321)
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
-- TOC entry 367 (class 1259 OID 70326)
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
-- TOC entry 5898 (class 0 OID 0)
-- Dependencies: 367
-- Name: tb_sortie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_sortie_id_seq OWNED BY public.tb_sortie.id;


--
-- TOC entry 368 (class 1259 OID 70327)
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
-- TOC entry 369 (class 1259 OID 70332)
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
-- TOC entry 5899 (class 0 OID 0)
-- Dependencies: 369
-- Name: tb_sortiedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_sortiedetail_id_seq OWNED BY public.tb_sortiedetail.id;


--
-- TOC entry 370 (class 1259 OID 70333)
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
-- TOC entry 371 (class 1259 OID 70337)
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
-- TOC entry 5900 (class 0 OID 0)
-- Dependencies: 371
-- Name: tb_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_stock_id_seq OWNED BY public.tb_stock.id;


--
-- TOC entry 372 (class 1259 OID 70338)
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
-- TOC entry 373 (class 1259 OID 70345)
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
-- TOC entry 5901 (class 0 OID 0)
-- Dependencies: 373
-- Name: tb_suivipresence_idpresence_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_suivipresence_idpresence_seq OWNED BY public.tb_suivipresence.idpresence;


--
-- TOC entry 374 (class 1259 OID 70346)
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
-- TOC entry 375 (class 1259 OID 70349)
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
-- TOC entry 5902 (class 0 OID 0)
-- Dependencies: 375
-- Name: tb_tauxhoraire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_tauxhoraire_id_seq OWNED BY public.tb_tauxhoraire.id;


--
-- TOC entry 376 (class 1259 OID 70350)
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
-- TOC entry 377 (class 1259 OID 70354)
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
-- TOC entry 5903 (class 0 OID 0)
-- Dependencies: 377
-- Name: tb_transfert_idtransfert_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfert_idtransfert_seq OWNED BY public.tb_transfert.idtransfert;


--
-- TOC entry 378 (class 1259 OID 70355)
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
-- TOC entry 379 (class 1259 OID 70358)
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
-- TOC entry 5904 (class 0 OID 0)
-- Dependencies: 379
-- Name: tb_transfertbanque_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfertbanque_id_seq OWNED BY public.tb_transfertbanque.id;


--
-- TOC entry 380 (class 1259 OID 70359)
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
-- TOC entry 381 (class 1259 OID 70362)
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
-- TOC entry 5905 (class 0 OID 0)
-- Dependencies: 381
-- Name: tb_transfertcaisse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfertcaisse_id_seq OWNED BY public.tb_transfertcaisse.id;


--
-- TOC entry 382 (class 1259 OID 70363)
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
-- TOC entry 383 (class 1259 OID 70367)
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
-- TOC entry 5906 (class 0 OID 0)
-- Dependencies: 383
-- Name: tb_transfertdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_transfertdetail_id_seq OWNED BY public.tb_transfertdetail.id;


--
-- TOC entry 384 (class 1259 OID 70368)
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
-- TOC entry 385 (class 1259 OID 70369)
-- Name: tb_transporteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_transporteur (
    idtransporteur integer DEFAULT nextval('public.tb_transporteur_idtransporteur_seq'::regclass) NOT NULL,
    nom character varying(150) NOT NULL,
    contact character varying(100),
    adresse character varying(200),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_transporteur OWNER TO postgres;

--
-- TOC entry 386 (class 1259 OID 70374)
-- Name: tb_typeclient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_typeclient (
    idtypeclient integer NOT NULL,
    designationtypeclient character varying(25)
);


ALTER TABLE public.tb_typeclient OWNER TO postgres;

--
-- TOC entry 387 (class 1259 OID 70377)
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
-- TOC entry 5907 (class 0 OID 0)
-- Dependencies: 387
-- Name: tb_typeclient_idtypeclient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_typeclient_idtypeclient_seq OWNED BY public.tb_typeclient.idtypeclient;


--
-- TOC entry 388 (class 1259 OID 70378)
-- Name: tb_typeoperation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_typeoperation (
    idtypeoperation integer NOT NULL,
    typeoperation character varying(3)
);


ALTER TABLE public.tb_typeoperation OWNER TO postgres;

--
-- TOC entry 389 (class 1259 OID 70381)
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
-- TOC entry 5908 (class 0 OID 0)
-- Dependencies: 389
-- Name: tb_typeoperation_idtypeoperation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_typeoperation_idtypeoperation_seq OWNED BY public.tb_typeoperation.idtypeoperation;


--
-- TOC entry 390 (class 1259 OID 70382)
-- Name: tb_typepmt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_typepmt (
    idtypepmt integer NOT NULL,
    typepmt character varying(50),
    deleted integer DEFAULT 0
);


ALTER TABLE public.tb_typepmt OWNER TO postgres;

--
-- TOC entry 391 (class 1259 OID 70386)
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
-- TOC entry 5909 (class 0 OID 0)
-- Dependencies: 391
-- Name: tb_typepmt_idtypepmt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_typepmt_idtypepmt_seq OWNED BY public.tb_typepmt.idtypepmt;


--
-- TOC entry 392 (class 1259 OID 70387)
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
-- TOC entry 393 (class 1259 OID 70391)
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
-- TOC entry 5910 (class 0 OID 0)
-- Dependencies: 393
-- Name: tb_unite_idunite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_unite_idunite_seq OWNED BY public.tb_unite.idunite;


--
-- TOC entry 394 (class 1259 OID 70392)
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
-- TOC entry 395 (class 1259 OID 70396)
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
-- TOC entry 5911 (class 0 OID 0)
-- Dependencies: 395
-- Name: tb_users_iduser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_users_iduser_seq OWNED BY public.tb_users.iduser;


--
-- TOC entry 396 (class 1259 OID 70397)
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
-- TOC entry 397 (class 1259 OID 70402)
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
-- TOC entry 5912 (class 0 OID 0)
-- Dependencies: 397
-- Name: tb_vente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_vente_id_seq OWNED BY public.tb_vente.id;


--
-- TOC entry 398 (class 1259 OID 70403)
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
-- TOC entry 399 (class 1259 OID 70409)
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
-- TOC entry 5913 (class 0 OID 0)
-- Dependencies: 399
-- Name: tb_ventedetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_ventedetail_id_seq OWNED BY public.tb_ventedetail.id;


--
-- TOC entry 5202 (class 2604 OID 70410)
-- Name: logistique_bon_sortie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie ALTER COLUMN id SET DEFAULT nextval('public.logistique_bon_sortie_id_seq'::regclass);


--
-- TOC entry 5207 (class 2604 OID 70411)
-- Name: logistique_bon_sortie_ligne id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie_ligne ALTER COLUMN id SET DEFAULT nextval('public.logistique_bon_sortie_ligne_id_seq'::regclass);


--
-- TOC entry 5210 (class 2604 OID 70412)
-- Name: logistique_carburant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_carburant ALTER COLUMN id SET DEFAULT nextval('public.logistique_carburant_id_seq'::regclass);


--
-- TOC entry 5214 (class 2604 OID 70413)
-- Name: logistique_maintenance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_maintenance ALTER COLUMN id SET DEFAULT nextval('public.logistique_maintenance_id_seq'::regclass);


--
-- TOC entry 5217 (class 2604 OID 70414)
-- Name: logistique_mission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_mission ALTER COLUMN id SET DEFAULT nextval('public.logistique_mission_id_seq'::regclass);


--
-- TOC entry 5220 (class 2604 OID 70415)
-- Name: logistique_piece id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece ALTER COLUMN id SET DEFAULT nextval('public.logistique_piece_id_seq'::regclass);


--
-- TOC entry 5226 (class 2604 OID 70416)
-- Name: logistique_piece_mouvement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece_mouvement ALTER COLUMN id SET DEFAULT nextval('public.logistique_piece_mouvement_id_seq'::regclass);


--
-- TOC entry 5229 (class 2604 OID 70417)
-- Name: logistique_vehicule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_vehicule ALTER COLUMN id SET DEFAULT nextval('public.logistique_vehicule_id_seq'::regclass);


--
-- TOC entry 5236 (class 2604 OID 70418)
-- Name: logistique_voyage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage ALTER COLUMN id SET DEFAULT nextval('public.logistique_voyage_id_seq'::regclass);


--
-- TOC entry 5243 (class 2604 OID 70419)
-- Name: logistique_voyage_detail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage_detail ALTER COLUMN id SET DEFAULT nextval('public.logistique_voyage_detail_id_seq'::regclass);


--
-- TOC entry 5250 (class 2604 OID 70420)
-- Name: tb_absence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_absence ALTER COLUMN id SET DEFAULT nextval('public.tb_absence_id_seq'::regclass);


--
-- TOC entry 5251 (class 2604 OID 70421)
-- Name: tb_article idarticle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_article ALTER COLUMN idarticle SET DEFAULT nextval('public.tb_article_idarticle_seq'::regclass);


--
-- TOC entry 5253 (class 2604 OID 70422)
-- Name: tb_autorisation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autorisation ALTER COLUMN id SET DEFAULT nextval('public.tb_autorisation_id_seq'::regclass);


--
-- TOC entry 5254 (class 2604 OID 70423)
-- Name: tb_autre_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autre_infos ALTER COLUMN id SET DEFAULT nextval('public.tb_autre_infos_id_seq'::regclass);


--
-- TOC entry 5257 (class 2604 OID 70424)
-- Name: tb_autrecreance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autrecreance ALTER COLUMN id SET DEFAULT nextval('public.tb_autrecreance_id_seq'::regclass);


--
-- TOC entry 5258 (class 2604 OID 70425)
-- Name: tb_autredette id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autredette ALTER COLUMN id SET DEFAULT nextval('public.tb_autredette_id_seq'::regclass);


--
-- TOC entry 5260 (class 2604 OID 70426)
-- Name: tb_avancepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancepers ALTER COLUMN id SET DEFAULT nextval('public.tb_avancepers_id_seq'::regclass);


--
-- TOC entry 5261 (class 2604 OID 70427)
-- Name: tb_avanceprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avanceprof ALTER COLUMN id SET DEFAULT nextval('public.tb_avanceprof_id_seq'::regclass);


--
-- TOC entry 5262 (class 2604 OID 70428)
-- Name: tb_avancespecpers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancespecpers ALTER COLUMN id SET DEFAULT nextval('public.tb_avancespecpers_id_seq'::regclass);


--
-- TOC entry 5263 (class 2604 OID 70429)
-- Name: tb_avoir id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoir ALTER COLUMN id SET DEFAULT nextval('public.tb_avoir_id_seq'::regclass);


--
-- TOC entry 5265 (class 2604 OID 70430)
-- Name: tb_avoirdetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoirdetail ALTER COLUMN id SET DEFAULT nextval('public.tb_avoirdetail_id_seq'::regclass);


--
-- TOC entry 5267 (class 2604 OID 70431)
-- Name: tb_banque id_banque; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banque ALTER COLUMN id_banque SET DEFAULT nextval('public.tb_banque_id_banque_seq'::regclass);


--
-- TOC entry 5268 (class 2604 OID 70432)
-- Name: tb_baseliste id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_baseliste ALTER COLUMN id SET DEFAULT nextval('public.tb_baseliste_id_seq'::regclass);


--
-- TOC entry 5270 (class 2604 OID 70433)
-- Name: tb_categoriearticle idca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriearticle ALTER COLUMN idca SET DEFAULT nextval('public.tb_categoriearticle_idca_seq'::regclass);


--
-- TOC entry 5272 (class 2604 OID 70434)
-- Name: tb_categoriecompte idcc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriecompte ALTER COLUMN idcc SET DEFAULT nextval('public.tb_categoriecompte_idcc_seq'::regclass);


--
-- TOC entry 5273 (class 2604 OID 70435)
-- Name: tb_categoriepersonnel idcategorie; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriepersonnel ALTER COLUMN idcategorie SET DEFAULT nextval('public.tb_categoriepersonnel_idcategorie_seq'::regclass);


--
-- TOC entry 5276 (class 2604 OID 70436)
-- Name: tb_changement idchg; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_changement ALTER COLUMN idchg SET DEFAULT nextval('public.tb_changement_idchg_seq'::regclass);


--
-- TOC entry 5278 (class 2604 OID 70437)
-- Name: tb_chat id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat ALTER COLUMN id SET DEFAULT nextval('public.tb_chat_id_seq'::regclass);


--
-- TOC entry 5281 (class 2604 OID 70438)
-- Name: tb_client idclient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_client ALTER COLUMN idclient SET DEFAULT nextval('public.tb_client_idclient_seq'::regclass);


--
-- TOC entry 5283 (class 2604 OID 70439)
-- Name: tb_codeautorisation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_codeautorisation ALTER COLUMN id SET DEFAULT nextval('public.tb_codeautorisation_id_seq'::regclass);


--
-- TOC entry 5285 (class 2604 OID 70440)
-- Name: tb_commande idcom; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commande ALTER COLUMN idcom SET DEFAULT nextval('public.tb_commande_idcom_seq'::regclass);


--
-- TOC entry 5287 (class 2604 OID 70441)
-- Name: tb_commandedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commandedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_commandedetail_id_seq'::regclass);


--
-- TOC entry 5289 (class 2604 OID 70442)
-- Name: tb_configdb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_configdb ALTER COLUMN id SET DEFAULT nextval('public.tb_configdb_id_seq'::regclass);


--
-- TOC entry 5290 (class 2604 OID 70443)
-- Name: tb_consommationinterne id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne ALTER COLUMN id SET DEFAULT nextval('public.tb_consommationinterne_id_seq'::regclass);


--
-- TOC entry 5293 (class 2604 OID 70444)
-- Name: tb_consommationinterne_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne_details ALTER COLUMN id SET DEFAULT nextval('public.tb_consommationinterne_details_id_seq'::regclass);


--
-- TOC entry 5295 (class 2604 OID 70445)
-- Name: tb_decaissement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissement ALTER COLUMN id SET DEFAULT nextval('public.tb_decaissement_id_seq'::regclass);


--
-- TOC entry 5297 (class 2604 OID 70446)
-- Name: tb_decaissementbq id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissementbq ALTER COLUMN id SET DEFAULT nextval('public.tb_decaissementbq_id_seq'::regclass);


--
-- TOC entry 5299 (class 2604 OID 70447)
-- Name: tb_detailchange_entree iddetail; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_entree ALTER COLUMN iddetail SET DEFAULT nextval('public.tb_detailchange_entree_iddetail_seq'::regclass);


--
-- TOC entry 5300 (class 2604 OID 70448)
-- Name: tb_detailchange_sortie iddetail; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_sortie ALTER COLUMN iddetail SET DEFAULT nextval('public.tb_detailchange_sortie_iddetail_seq'::regclass);


--
-- TOC entry 5301 (class 2604 OID 70449)
-- Name: tb_encaissement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissement ALTER COLUMN id SET DEFAULT nextval('public.tb_encaissement_id_seq'::regclass);


--
-- TOC entry 5303 (class 2604 OID 70450)
-- Name: tb_encaissementbq id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissementbq ALTER COLUMN id SET DEFAULT nextval('public.tb_encaissementbq_id_seq'::regclass);


--
-- TOC entry 5305 (class 2604 OID 70451)
-- Name: tb_entree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entree ALTER COLUMN id SET DEFAULT nextval('public.tb_entree_id_seq'::regclass);


--
-- TOC entry 5308 (class 2604 OID 70452)
-- Name: tb_entreedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entreedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_entreedetail_id_seq'::regclass);


--
-- TOC entry 5311 (class 2604 OID 70453)
-- Name: tb_evenement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evenement ALTER COLUMN id SET DEFAULT nextval('public.tb_evenement_id_seq'::regclass);


--
-- TOC entry 5314 (class 2604 OID 70454)
-- Name: tb_facturecli idfact; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_facturecli ALTER COLUMN idfact SET DEFAULT nextval('public.tb_facturecli_idfact_seq'::regclass);


--
-- TOC entry 5315 (class 2604 OID 70455)
-- Name: tb_fonction idfonction; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fonction ALTER COLUMN idfonction SET DEFAULT nextval('public.tb_fonction_idfonction_seq'::regclass);


--
-- TOC entry 5317 (class 2604 OID 70456)
-- Name: tb_fournisseur idfrs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fournisseur ALTER COLUMN idfrs SET DEFAULT nextval('public.tb_fournisseur_idfrs_seq'::regclass);


--
-- TOC entry 5319 (class 2604 OID 70457)
-- Name: tb_infosociete id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_infosociete ALTER COLUMN id SET DEFAULT nextval('public.tb_infosociete_id_seq'::regclass);


--
-- TOC entry 5320 (class 2604 OID 70458)
-- Name: tb_inventaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire ALTER COLUMN id SET DEFAULT nextval('public.tb_inventaire_id_seq'::regclass);


--
-- TOC entry 5321 (class 2604 OID 70459)
-- Name: tb_inventaire_temporaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire_temporaire ALTER COLUMN id SET DEFAULT nextval('public.tb_inventaire_temporaire_id_seq'::regclass);


--
-- TOC entry 5326 (class 2604 OID 70460)
-- Name: tb_livraisoncli idlivcli; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli ALTER COLUMN idlivcli SET DEFAULT nextval('public.tb_livraisoncli_idlivcli_seq'::regclass);


--
-- TOC entry 5327 (class 2604 OID 70461)
-- Name: tb_livraisoncli_attente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli_attente ALTER COLUMN id SET DEFAULT nextval('public.tb_livraisoncli_attente_id_seq'::regclass);


--
-- TOC entry 5330 (class 2604 OID 70462)
-- Name: tb_livraisonfrs idlivfrs; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisonfrs ALTER COLUMN idlivfrs SET DEFAULT nextval('public.tb_livraisonfrs_idlivfrs_seq'::regclass);


--
-- TOC entry 5335 (class 2604 OID 70463)
-- Name: tb_log_stock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_log_stock ALTER COLUMN id SET DEFAULT nextval('public.tb_log_stock_id_seq'::regclass);


--
-- TOC entry 5338 (class 2604 OID 70464)
-- Name: tb_lot_peremption id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_lot_peremption ALTER COLUMN id SET DEFAULT nextval('public.tb_lot_peremption_id_seq'::regclass);


--
-- TOC entry 5341 (class 2604 OID 70465)
-- Name: tb_magasin idmag; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_magasin ALTER COLUMN idmag SET DEFAULT nextval('public.tb_magasin_idmag_seq'::regclass);


--
-- TOC entry 5344 (class 2604 OID 70466)
-- Name: tb_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_menu ALTER COLUMN id SET DEFAULT nextval('public.tb_menu_id_seq'::regclass);


--
-- TOC entry 5345 (class 2604 OID 70467)
-- Name: tb_modepaiement idmode; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_modepaiement ALTER COLUMN idmode SET DEFAULT nextval('public.tb_modepaiement_idmode_seq'::regclass);


--
-- TOC entry 5346 (class 2604 OID 70468)
-- Name: tb_paiement idpaiement; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_paiement ALTER COLUMN idpaiement SET DEFAULT nextval('public.tb_paiement_idpaiement_seq'::regclass);


--
-- TOC entry 5350 (class 2604 OID 70469)
-- Name: tb_peremption id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_peremption ALTER COLUMN id SET DEFAULT nextval('public.tb_peremption_id_seq'::regclass);


--
-- TOC entry 5352 (class 2604 OID 70470)
-- Name: tb_personnel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_personnel ALTER COLUMN id SET DEFAULT nextval('public.tb_personnel_id_seq'::regclass);


--
-- TOC entry 5354 (class 2604 OID 70471)
-- Name: tb_pmtavoir id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtavoir ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtavoir_id_seq'::regclass);


--
-- TOC entry 5356 (class 2604 OID 70472)
-- Name: tb_pmtcom id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcom ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtcom_id_seq'::regclass);


--
-- TOC entry 5358 (class 2604 OID 70473)
-- Name: tb_pmtcredit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcredit ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtcredit_id_seq'::regclass);


--
-- TOC entry 5360 (class 2604 OID 70474)
-- Name: tb_pmtfacture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtfacture ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtfacture_id_seq'::regclass);


--
-- TOC entry 5363 (class 2604 OID 70475)
-- Name: tb_pmtsalaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtsalaire ALTER COLUMN id SET DEFAULT nextval('public.tb_pmtsalaire_id_seq'::regclass);


--
-- TOC entry 5366 (class 2604 OID 70476)
-- Name: tb_postepersonnel idposte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postepersonnel ALTER COLUMN idposte SET DEFAULT nextval('public.tb_postepersonnel_idposte_seq'::regclass);


--
-- TOC entry 5369 (class 2604 OID 70477)
-- Name: tb_presencepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presencepers ALTER COLUMN id SET DEFAULT nextval('public.tb_presencepers_id_seq'::regclass);


--
-- TOC entry 5370 (class 2604 OID 70478)
-- Name: tb_prix id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_prix ALTER COLUMN id SET DEFAULT nextval('public.tb_prix_id_seq'::regclass);


--
-- TOC entry 5372 (class 2604 OID 70479)
-- Name: tb_proforma idprof; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proforma ALTER COLUMN idprof SET DEFAULT nextval('public.tb_proforma_idprof_seq'::regclass);


--
-- TOC entry 5373 (class 2604 OID 70480)
-- Name: tb_proformadetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proformadetail ALTER COLUMN id SET DEFAULT nextval('public.tb_proformadetail_id_seq'::regclass);


--
-- TOC entry 5374 (class 2604 OID 70481)
-- Name: tb_salairebasepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_salairebasepers ALTER COLUMN id SET DEFAULT nextval('public.tb_salairebasepers_id_seq'::regclass);


--
-- TOC entry 5375 (class 2604 OID 70482)
-- Name: tb_save_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_save_history ALTER COLUMN id SET DEFAULT nextval('public.tb_save_history_id_seq'::regclass);


--
-- TOC entry 5377 (class 2604 OID 70483)
-- Name: tb_sortie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortie ALTER COLUMN id SET DEFAULT nextval('public.tb_sortie_id_seq'::regclass);


--
-- TOC entry 5380 (class 2604 OID 70484)
-- Name: tb_sortiedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortiedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_sortiedetail_id_seq'::regclass);


--
-- TOC entry 5383 (class 2604 OID 70485)
-- Name: tb_stock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_stock ALTER COLUMN id SET DEFAULT nextval('public.tb_stock_id_seq'::regclass);


--
-- TOC entry 5385 (class 2604 OID 70486)
-- Name: tb_suivipresence idpresence; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_suivipresence ALTER COLUMN idpresence SET DEFAULT nextval('public.tb_suivipresence_idpresence_seq'::regclass);


--
-- TOC entry 5390 (class 2604 OID 70487)
-- Name: tb_tauxhoraire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_tauxhoraire ALTER COLUMN id SET DEFAULT nextval('public.tb_tauxhoraire_id_seq'::regclass);


--
-- TOC entry 5391 (class 2604 OID 70488)
-- Name: tb_transfert idtransfert; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfert ALTER COLUMN idtransfert SET DEFAULT nextval('public.tb_transfert_idtransfert_seq'::regclass);


--
-- TOC entry 5393 (class 2604 OID 70489)
-- Name: tb_transfertbanque id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertbanque ALTER COLUMN id SET DEFAULT nextval('public.tb_transfertbanque_id_seq'::regclass);


--
-- TOC entry 5394 (class 2604 OID 70490)
-- Name: tb_transfertcaisse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertcaisse ALTER COLUMN id SET DEFAULT nextval('public.tb_transfertcaisse_id_seq'::regclass);


--
-- TOC entry 5395 (class 2604 OID 70491)
-- Name: tb_transfertdetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertdetail ALTER COLUMN id SET DEFAULT nextval('public.tb_transfertdetail_id_seq'::regclass);


--
-- TOC entry 5399 (class 2604 OID 70492)
-- Name: tb_typeclient idtypeclient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeclient ALTER COLUMN idtypeclient SET DEFAULT nextval('public.tb_typeclient_idtypeclient_seq'::regclass);


--
-- TOC entry 5400 (class 2604 OID 70493)
-- Name: tb_typeoperation idtypeoperation; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeoperation ALTER COLUMN idtypeoperation SET DEFAULT nextval('public.tb_typeoperation_idtypeoperation_seq'::regclass);


--
-- TOC entry 5401 (class 2604 OID 70494)
-- Name: tb_typepmt idtypepmt; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typepmt ALTER COLUMN idtypepmt SET DEFAULT nextval('public.tb_typepmt_idtypepmt_seq'::regclass);


--
-- TOC entry 5403 (class 2604 OID 70495)
-- Name: tb_unite idunite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_unite ALTER COLUMN idunite SET DEFAULT nextval('public.tb_unite_idunite_seq'::regclass);


--
-- TOC entry 5405 (class 2604 OID 70496)
-- Name: tb_users iduser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users ALTER COLUMN iduser SET DEFAULT nextval('public.tb_users_iduser_seq'::regclass);


--
-- TOC entry 5407 (class 2604 OID 70497)
-- Name: tb_vente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vente ALTER COLUMN id SET DEFAULT nextval('public.tb_vente_id_seq'::regclass);


--
-- TOC entry 5410 (class 2604 OID 70498)
-- Name: tb_ventedetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_ventedetail ALTER COLUMN id SET DEFAULT nextval('public.tb_ventedetail_id_seq'::regclass);


--
-- TOC entry 5420 (class 2606 OID 70500)
-- Name: event_logs event_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_logs
    ADD CONSTRAINT event_logs_pkey PRIMARY KEY (id_log);


--
-- TOC entry 5430 (class 2606 OID 70502)
-- Name: logistique_bon_sortie_ligne logistique_bon_sortie_ligne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie_ligne
    ADD CONSTRAINT logistique_bon_sortie_ligne_pkey PRIMARY KEY (id);


--
-- TOC entry 5425 (class 2606 OID 70504)
-- Name: logistique_bon_sortie logistique_bon_sortie_numero_bon_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie
    ADD CONSTRAINT logistique_bon_sortie_numero_bon_key UNIQUE (numero_bon);


--
-- TOC entry 5427 (class 2606 OID 70506)
-- Name: logistique_bon_sortie logistique_bon_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie
    ADD CONSTRAINT logistique_bon_sortie_pkey PRIMARY KEY (id);


--
-- TOC entry 5434 (class 2606 OID 70508)
-- Name: logistique_carburant logistique_carburant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_carburant
    ADD CONSTRAINT logistique_carburant_pkey PRIMARY KEY (id);


--
-- TOC entry 5439 (class 2606 OID 70510)
-- Name: logistique_maintenance logistique_maintenance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_maintenance
    ADD CONSTRAINT logistique_maintenance_pkey PRIMARY KEY (id);


--
-- TOC entry 5444 (class 2606 OID 70512)
-- Name: logistique_mission logistique_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_mission
    ADD CONSTRAINT logistique_mission_pkey PRIMARY KEY (id);


--
-- TOC entry 5453 (class 2606 OID 70514)
-- Name: logistique_piece_mouvement logistique_piece_mouvement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece_mouvement
    ADD CONSTRAINT logistique_piece_mouvement_pkey PRIMARY KEY (id);


--
-- TOC entry 5448 (class 2606 OID 70516)
-- Name: logistique_piece logistique_piece_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece
    ADD CONSTRAINT logistique_piece_pkey PRIMARY KEY (id);


--
-- TOC entry 5450 (class 2606 OID 70518)
-- Name: logistique_piece logistique_piece_reference_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece
    ADD CONSTRAINT logistique_piece_reference_key UNIQUE (reference);


--
-- TOC entry 5457 (class 2606 OID 70520)
-- Name: logistique_vehicule logistique_vehicule_immatriculation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_vehicule
    ADD CONSTRAINT logistique_vehicule_immatriculation_key UNIQUE (immatriculation);


--
-- TOC entry 5459 (class 2606 OID 70522)
-- Name: logistique_vehicule logistique_vehicule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_vehicule
    ADD CONSTRAINT logistique_vehicule_pkey PRIMARY KEY (id);


--
-- TOC entry 5470 (class 2606 OID 70524)
-- Name: logistique_voyage_detail logistique_voyage_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage_detail
    ADD CONSTRAINT logistique_voyage_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 5464 (class 2606 OID 70526)
-- Name: logistique_voyage logistique_voyage_numero_voyage_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage
    ADD CONSTRAINT logistique_voyage_numero_voyage_key UNIQUE (numero_voyage);


--
-- TOC entry 5466 (class 2606 OID 70528)
-- Name: logistique_voyage logistique_voyage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage
    ADD CONSTRAINT logistique_voyage_pkey PRIMARY KEY (id);


--
-- TOC entry 5472 (class 2606 OID 70530)
-- Name: tb_absence tb_absence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_absence
    ADD CONSTRAINT tb_absence_pkey PRIMARY KEY (id);


--
-- TOC entry 5474 (class 2606 OID 70532)
-- Name: tb_article tb_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_article
    ADD CONSTRAINT tb_article_pkey PRIMARY KEY (idarticle);


--
-- TOC entry 5476 (class 2606 OID 70534)
-- Name: tb_autorisation tb_autorisation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autorisation
    ADD CONSTRAINT tb_autorisation_pkey PRIMARY KEY (id);


--
-- TOC entry 5478 (class 2606 OID 70536)
-- Name: tb_autre_infos tb_autre_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autre_infos
    ADD CONSTRAINT tb_autre_infos_pkey PRIMARY KEY (id);


--
-- TOC entry 5480 (class 2606 OID 70538)
-- Name: tb_autrecreance tb_autrecreance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autrecreance
    ADD CONSTRAINT tb_autrecreance_pkey PRIMARY KEY (id);


--
-- TOC entry 5482 (class 2606 OID 70540)
-- Name: tb_autredette tb_autredette_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_autredette
    ADD CONSTRAINT tb_autredette_pkey PRIMARY KEY (id);


--
-- TOC entry 5484 (class 2606 OID 70542)
-- Name: tb_avancepers tb_avancepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancepers
    ADD CONSTRAINT tb_avancepers_pkey PRIMARY KEY (id);


--
-- TOC entry 5486 (class 2606 OID 70544)
-- Name: tb_avanceprof tb_avanceprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avanceprof
    ADD CONSTRAINT tb_avanceprof_pkey PRIMARY KEY (id);


--
-- TOC entry 5488 (class 2606 OID 70546)
-- Name: tb_avancespecpers tb_avancespecpers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avancespecpers
    ADD CONSTRAINT tb_avancespecpers_pkey PRIMARY KEY (id);


--
-- TOC entry 5490 (class 2606 OID 70548)
-- Name: tb_avoir tb_avoir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoir
    ADD CONSTRAINT tb_avoir_pkey PRIMARY KEY (id);


--
-- TOC entry 5492 (class 2606 OID 70550)
-- Name: tb_avoirdetail tb_avoirdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avoirdetail
    ADD CONSTRAINT tb_avoirdetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5494 (class 2606 OID 70552)
-- Name: tb_banque tb_banque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banque
    ADD CONSTRAINT tb_banque_pkey PRIMARY KEY (id_banque);


--
-- TOC entry 5496 (class 2606 OID 70554)
-- Name: tb_baseliste tb_baseliste_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_baseliste
    ADD CONSTRAINT tb_baseliste_pkey PRIMARY KEY (id);


--
-- TOC entry 5498 (class 2606 OID 70556)
-- Name: tb_categoriearticle tb_categoriearticle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriearticle
    ADD CONSTRAINT tb_categoriearticle_pkey PRIMARY KEY (idca);


--
-- TOC entry 5500 (class 2606 OID 70558)
-- Name: tb_categoriecompte tb_categoriecompte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriecompte
    ADD CONSTRAINT tb_categoriecompte_pkey PRIMARY KEY (idcc);


--
-- TOC entry 5502 (class 2606 OID 70560)
-- Name: tb_categoriepersonnel tb_categoriepersonnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoriepersonnel
    ADD CONSTRAINT tb_categoriepersonnel_pkey PRIMARY KEY (idcategorie);


--
-- TOC entry 5507 (class 2606 OID 70562)
-- Name: tb_changement tb_changement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_changement
    ADD CONSTRAINT tb_changement_pkey PRIMARY KEY (idchg);


--
-- TOC entry 5509 (class 2606 OID 70564)
-- Name: tb_changement tb_changement_refchg_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_changement
    ADD CONSTRAINT tb_changement_refchg_key UNIQUE (refchg);


--
-- TOC entry 5511 (class 2606 OID 70566)
-- Name: tb_chat tb_chat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat
    ADD CONSTRAINT tb_chat_pkey PRIMARY KEY (id);


--
-- TOC entry 5513 (class 2606 OID 70568)
-- Name: tb_client tb_client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_client
    ADD CONSTRAINT tb_client_pkey PRIMARY KEY (idclient);


--
-- TOC entry 5515 (class 2606 OID 70570)
-- Name: tb_codeautorisation tb_codeautorisation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_codeautorisation
    ADD CONSTRAINT tb_codeautorisation_pkey PRIMARY KEY (id);


--
-- TOC entry 5517 (class 2606 OID 70572)
-- Name: tb_commande tb_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commande
    ADD CONSTRAINT tb_commande_pkey PRIMARY KEY (idcom);


--
-- TOC entry 5519 (class 2606 OID 70574)
-- Name: tb_commandedetail tb_commandedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_commandedetail
    ADD CONSTRAINT tb_commandedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5521 (class 2606 OID 70576)
-- Name: tb_configdb tb_configdb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_configdb
    ADD CONSTRAINT tb_configdb_pkey PRIMARY KEY (id);


--
-- TOC entry 5527 (class 2606 OID 70578)
-- Name: tb_consommationinterne_details tb_consommationinterne_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne_details
    ADD CONSTRAINT tb_consommationinterne_details_pkey PRIMARY KEY (id);


--
-- TOC entry 5523 (class 2606 OID 70580)
-- Name: tb_consommationinterne tb_consommationinterne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne
    ADD CONSTRAINT tb_consommationinterne_pkey PRIMARY KEY (id);


--
-- TOC entry 5525 (class 2606 OID 70582)
-- Name: tb_consommationinterne tb_consommationinterne_refconsommation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_consommationinterne
    ADD CONSTRAINT tb_consommationinterne_refconsommation_key UNIQUE (refconsommation);


--
-- TOC entry 5529 (class 2606 OID 70584)
-- Name: tb_decaissement tb_decaissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissement
    ADD CONSTRAINT tb_decaissement_pkey PRIMARY KEY (id);


--
-- TOC entry 5531 (class 2606 OID 70586)
-- Name: tb_decaissementbq tb_decaissementbq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_decaissementbq
    ADD CONSTRAINT tb_decaissementbq_pkey PRIMARY KEY (id);


--
-- TOC entry 5535 (class 2606 OID 70588)
-- Name: tb_detailchange_entree tb_detailchange_entree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_entree
    ADD CONSTRAINT tb_detailchange_entree_pkey PRIMARY KEY (iddetail);


--
-- TOC entry 5539 (class 2606 OID 70590)
-- Name: tb_detailchange_sortie tb_detailchange_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_detailchange_sortie
    ADD CONSTRAINT tb_detailchange_sortie_pkey PRIMARY KEY (iddetail);


--
-- TOC entry 5541 (class 2606 OID 70592)
-- Name: tb_encaissement tb_encaissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissement
    ADD CONSTRAINT tb_encaissement_pkey PRIMARY KEY (id);


--
-- TOC entry 5543 (class 2606 OID 70594)
-- Name: tb_encaissementbq tb_encaissementbq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_encaissementbq
    ADD CONSTRAINT tb_encaissementbq_pkey PRIMARY KEY (id);


--
-- TOC entry 5545 (class 2606 OID 70596)
-- Name: tb_entree tb_entree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entree
    ADD CONSTRAINT tb_entree_pkey PRIMARY KEY (id);


--
-- TOC entry 5547 (class 2606 OID 70598)
-- Name: tb_entreedetail tb_entreedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_entreedetail
    ADD CONSTRAINT tb_entreedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5549 (class 2606 OID 70600)
-- Name: tb_evenement tb_evenement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_evenement
    ADD CONSTRAINT tb_evenement_pkey PRIMARY KEY (id);


--
-- TOC entry 5551 (class 2606 OID 70602)
-- Name: tb_facture_sequence tb_facture_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_facture_sequence
    ADD CONSTRAINT tb_facture_sequence_pkey PRIMARY KEY (annee);


--
-- TOC entry 5553 (class 2606 OID 70604)
-- Name: tb_facturecli tb_facturecli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_facturecli
    ADD CONSTRAINT tb_facturecli_pkey PRIMARY KEY (idfact);


--
-- TOC entry 5555 (class 2606 OID 70606)
-- Name: tb_fonction tb_fonction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fonction
    ADD CONSTRAINT tb_fonction_pkey PRIMARY KEY (idfonction);


--
-- TOC entry 5557 (class 2606 OID 70608)
-- Name: tb_fournisseur tb_fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_fournisseur
    ADD CONSTRAINT tb_fournisseur_pkey PRIMARY KEY (idfrs);


--
-- TOC entry 5559 (class 2606 OID 70610)
-- Name: tb_infosociete tb_infosociete_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_infosociete
    ADD CONSTRAINT tb_infosociete_pkey PRIMARY KEY (id);


--
-- TOC entry 5561 (class 2606 OID 70612)
-- Name: tb_inventaire tb_inventaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire
    ADD CONSTRAINT tb_inventaire_pkey PRIMARY KEY (id);


--
-- TOC entry 5564 (class 2606 OID 70614)
-- Name: tb_inventaire_temporaire tb_inventaire_temporaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_inventaire_temporaire
    ADD CONSTRAINT tb_inventaire_temporaire_pkey PRIMARY KEY (id);


--
-- TOC entry 5570 (class 2606 OID 70616)
-- Name: tb_livraisoncli_attente tb_livraisoncli_attente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli_attente
    ADD CONSTRAINT tb_livraisoncli_attente_pkey PRIMARY KEY (id);


--
-- TOC entry 5566 (class 2606 OID 70618)
-- Name: tb_livraisoncli tb_livraisoncli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisoncli
    ADD CONSTRAINT tb_livraisoncli_pkey PRIMARY KEY (idlivcli);


--
-- TOC entry 5572 (class 2606 OID 70620)
-- Name: tb_livraisonfrs tb_livraisonfrs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_livraisonfrs
    ADD CONSTRAINT tb_livraisonfrs_pkey PRIMARY KEY (idlivfrs);


--
-- TOC entry 5576 (class 2606 OID 70622)
-- Name: tb_log_evenements tb_log_evenements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_log_evenements
    ADD CONSTRAINT tb_log_evenements_pkey PRIMARY KEY (id_log);


--
-- TOC entry 5578 (class 2606 OID 70624)
-- Name: tb_log_stock tb_log_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_log_stock
    ADD CONSTRAINT tb_log_stock_pkey PRIMARY KEY (id);


--
-- TOC entry 5580 (class 2606 OID 70626)
-- Name: tb_lot_peremption tb_lot_peremption_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_lot_peremption
    ADD CONSTRAINT tb_lot_peremption_pkey PRIMARY KEY (id);


--
-- TOC entry 5582 (class 2606 OID 70628)
-- Name: tb_magasin tb_magasin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_magasin
    ADD CONSTRAINT tb_magasin_pkey PRIMARY KEY (idmag);


--
-- TOC entry 5584 (class 2606 OID 70630)
-- Name: tb_menu tb_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_menu
    ADD CONSTRAINT tb_menu_pkey PRIMARY KEY (id);


--
-- TOC entry 5586 (class 2606 OID 70632)
-- Name: tb_modepaiement tb_modepaiement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_modepaiement
    ADD CONSTRAINT tb_modepaiement_pkey PRIMARY KEY (idmode);


--
-- TOC entry 5588 (class 2606 OID 70634)
-- Name: tb_paiement tb_paiement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_paiement
    ADD CONSTRAINT tb_paiement_pkey PRIMARY KEY (idpaiement);


--
-- TOC entry 5590 (class 2606 OID 70636)
-- Name: tb_param_commande_frs tb_param_commande_frs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_commande_frs
    ADD CONSTRAINT tb_param_commande_frs_pkey PRIMARY KEY (id);


--
-- TOC entry 5592 (class 2606 OID 70638)
-- Name: tb_param_livraison_client tb_param_livraison_client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_livraison_client
    ADD CONSTRAINT tb_param_livraison_client_pkey PRIMARY KEY (id);


--
-- TOC entry 5594 (class 2606 OID 70640)
-- Name: tb_peremption tb_peremption_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_peremption
    ADD CONSTRAINT tb_peremption_pkey PRIMARY KEY (id);


--
-- TOC entry 5596 (class 2606 OID 70642)
-- Name: tb_personnel tb_personnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_personnel
    ADD CONSTRAINT tb_personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 5598 (class 2606 OID 70644)
-- Name: tb_pmtavoir tb_pmtavoir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtavoir
    ADD CONSTRAINT tb_pmtavoir_pkey PRIMARY KEY (id);


--
-- TOC entry 5600 (class 2606 OID 70646)
-- Name: tb_pmtcom tb_pmtcom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcom
    ADD CONSTRAINT tb_pmtcom_pkey PRIMARY KEY (id);


--
-- TOC entry 5602 (class 2606 OID 70648)
-- Name: tb_pmtcredit tb_pmtcredit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtcredit
    ADD CONSTRAINT tb_pmtcredit_pkey PRIMARY KEY (id);


--
-- TOC entry 5605 (class 2606 OID 70650)
-- Name: tb_pmtfacture tb_pmtfacture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtfacture
    ADD CONSTRAINT tb_pmtfacture_pkey PRIMARY KEY (id);


--
-- TOC entry 5607 (class 2606 OID 70652)
-- Name: tb_pmtsalaire tb_pmtsalaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pmtsalaire
    ADD CONSTRAINT tb_pmtsalaire_pkey PRIMARY KEY (id);


--
-- TOC entry 5609 (class 2606 OID 70654)
-- Name: tb_postepersonnel tb_postepersonnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postepersonnel
    ADD CONSTRAINT tb_postepersonnel_pkey PRIMARY KEY (idposte);


--
-- TOC entry 5611 (class 2606 OID 70656)
-- Name: tb_presencepers tb_presencepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_presencepers
    ADD CONSTRAINT tb_presencepers_pkey PRIMARY KEY (id);


--
-- TOC entry 5613 (class 2606 OID 70658)
-- Name: tb_prix tb_prix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_prix
    ADD CONSTRAINT tb_prix_pkey PRIMARY KEY (id);


--
-- TOC entry 5615 (class 2606 OID 70660)
-- Name: tb_proforma tb_proforma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proforma
    ADD CONSTRAINT tb_proforma_pkey PRIMARY KEY (idprof);


--
-- TOC entry 5617 (class 2606 OID 70662)
-- Name: tb_proformadetail tb_proformadetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_proformadetail
    ADD CONSTRAINT tb_proformadetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5619 (class 2606 OID 70664)
-- Name: tb_salairebasepers tb_salairebasepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_salairebasepers
    ADD CONSTRAINT tb_salairebasepers_pkey PRIMARY KEY (id);


--
-- TOC entry 5623 (class 2606 OID 70666)
-- Name: tb_save_history tb_save_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_save_history
    ADD CONSTRAINT tb_save_history_pkey PRIMARY KEY (id);


--
-- TOC entry 5625 (class 2606 OID 70668)
-- Name: tb_sortie tb_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortie
    ADD CONSTRAINT tb_sortie_pkey PRIMARY KEY (id);


--
-- TOC entry 5627 (class 2606 OID 70670)
-- Name: tb_sortiedetail tb_sortiedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_sortiedetail
    ADD CONSTRAINT tb_sortiedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5629 (class 2606 OID 70672)
-- Name: tb_stock tb_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_stock
    ADD CONSTRAINT tb_stock_pkey PRIMARY KEY (id);


--
-- TOC entry 5632 (class 2606 OID 70674)
-- Name: tb_suivipresence tb_suivipresence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_suivipresence
    ADD CONSTRAINT tb_suivipresence_pkey PRIMARY KEY (idpresence);


--
-- TOC entry 5634 (class 2606 OID 70676)
-- Name: tb_tauxhoraire tb_tauxhoraire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_tauxhoraire
    ADD CONSTRAINT tb_tauxhoraire_pkey PRIMARY KEY (id);


--
-- TOC entry 5636 (class 2606 OID 70678)
-- Name: tb_transfert tb_transfert_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfert
    ADD CONSTRAINT tb_transfert_pkey PRIMARY KEY (idtransfert);


--
-- TOC entry 5638 (class 2606 OID 70680)
-- Name: tb_transfertbanque tb_transfertbanque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertbanque
    ADD CONSTRAINT tb_transfertbanque_pkey PRIMARY KEY (id);


--
-- TOC entry 5640 (class 2606 OID 70682)
-- Name: tb_transfertcaisse tb_transfertcaisse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertcaisse
    ADD CONSTRAINT tb_transfertcaisse_pkey PRIMARY KEY (id);


--
-- TOC entry 5642 (class 2606 OID 70684)
-- Name: tb_transfertdetail tb_transfertdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transfertdetail
    ADD CONSTRAINT tb_transfertdetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5644 (class 2606 OID 70686)
-- Name: tb_transporteur tb_transporteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_transporteur
    ADD CONSTRAINT tb_transporteur_pkey PRIMARY KEY (idtransporteur);


--
-- TOC entry 5646 (class 2606 OID 70688)
-- Name: tb_typeclient tb_typeclient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeclient
    ADD CONSTRAINT tb_typeclient_pkey PRIMARY KEY (idtypeclient);


--
-- TOC entry 5648 (class 2606 OID 70690)
-- Name: tb_typeoperation tb_typeoperation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typeoperation
    ADD CONSTRAINT tb_typeoperation_pkey PRIMARY KEY (idtypeoperation);


--
-- TOC entry 5650 (class 2606 OID 70692)
-- Name: tb_typepmt tb_typepmt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_typepmt
    ADD CONSTRAINT tb_typepmt_pkey PRIMARY KEY (idtypepmt);


--
-- TOC entry 5652 (class 2606 OID 70694)
-- Name: tb_unite tb_unite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_unite
    ADD CONSTRAINT tb_unite_pkey PRIMARY KEY (idunite);


--
-- TOC entry 5654 (class 2606 OID 70696)
-- Name: tb_users tb_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (iduser);


--
-- TOC entry 5657 (class 2606 OID 70698)
-- Name: tb_vente tb_vente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vente
    ADD CONSTRAINT tb_vente_pkey PRIMARY KEY (id);


--
-- TOC entry 5660 (class 2606 OID 70700)
-- Name: tb_ventedetail tb_ventedetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_ventedetail
    ADD CONSTRAINT tb_ventedetail_pkey PRIMARY KEY (id);


--
-- TOC entry 5421 (class 1259 OID 70701)
-- Name: idx_bon_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bon_date ON public.logistique_bon_sortie USING btree (date_bon);


--
-- TOC entry 5422 (class 1259 OID 70702)
-- Name: idx_bon_numero; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bon_numero ON public.logistique_bon_sortie USING btree (numero_bon);


--
-- TOC entry 5423 (class 1259 OID 70703)
-- Name: idx_bon_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bon_statut ON public.logistique_bon_sortie USING btree (statut);


--
-- TOC entry 5431 (class 1259 OID 70704)
-- Name: idx_carburant_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_carburant_date ON public.logistique_carburant USING btree (date_plein);


--
-- TOC entry 5432 (class 1259 OID 70705)
-- Name: idx_carburant_veh; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_carburant_veh ON public.logistique_carburant USING btree (vehicule_id);


--
-- TOC entry 5503 (class 1259 OID 70706)
-- Name: idx_changement_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changement_date ON public.tb_changement USING btree (datechg);


--
-- TOC entry 5504 (class 1259 OID 70707)
-- Name: idx_changement_refchg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changement_refchg ON public.tb_changement USING btree (refchg);


--
-- TOC entry 5505 (class 1259 OID 70708)
-- Name: idx_changement_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changement_user ON public.tb_changement USING btree (iduser);


--
-- TOC entry 5532 (class 1259 OID 70709)
-- Name: idx_detailchange_entree_article; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_entree_article ON public.tb_detailchange_entree USING btree (idarticle);


--
-- TOC entry 5533 (class 1259 OID 70710)
-- Name: idx_detailchange_entree_idchg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_entree_idchg ON public.tb_detailchange_entree USING btree (idchg);


--
-- TOC entry 5536 (class 1259 OID 70711)
-- Name: idx_detailchange_sortie_article; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_sortie_article ON public.tb_detailchange_sortie USING btree (idarticle);


--
-- TOC entry 5537 (class 1259 OID 70712)
-- Name: idx_detailchange_sortie_idchg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_detailchange_sortie_idchg ON public.tb_detailchange_sortie USING btree (idchg);


--
-- TOC entry 5562 (class 1259 OID 70713)
-- Name: idx_inv_temp_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_inv_temp_date ON public.tb_inventaire_temporaire USING btree (date_creation);


--
-- TOC entry 5428 (class 1259 OID 70714)
-- Name: idx_ligne_bon; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ligne_bon ON public.logistique_bon_sortie_ligne USING btree (bon_id);


--
-- TOC entry 5567 (class 1259 OID 70715)
-- Name: idx_livcli_attente_refvente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_livcli_attente_refvente ON public.tb_livraisoncli_attente USING btree (refvente);


--
-- TOC entry 5568 (class 1259 OID 70716)
-- Name: idx_livcli_attente_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_livcli_attente_statut ON public.tb_livraisoncli_attente USING btree (statut);


--
-- TOC entry 5435 (class 1259 OID 70717)
-- Name: idx_maintenance_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_maintenance_date ON public.logistique_maintenance USING btree (date_entree);


--
-- TOC entry 5436 (class 1259 OID 70718)
-- Name: idx_maintenance_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_maintenance_statut ON public.logistique_maintenance USING btree (statut);


--
-- TOC entry 5437 (class 1259 OID 70719)
-- Name: idx_maintenance_vehicule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_maintenance_vehicule ON public.logistique_maintenance USING btree (vehicule_id);


--
-- TOC entry 5440 (class 1259 OID 70720)
-- Name: idx_mission_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mission_date ON public.logistique_mission USING btree (date_depart);


--
-- TOC entry 5441 (class 1259 OID 70721)
-- Name: idx_mission_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mission_statut ON public.logistique_mission USING btree (statut);


--
-- TOC entry 5442 (class 1259 OID 70722)
-- Name: idx_mission_vehicule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mission_vehicule ON public.logistique_mission USING btree (vehicule_id);


--
-- TOC entry 5451 (class 1259 OID 70723)
-- Name: idx_mvt_piece; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mvt_piece ON public.logistique_piece_mouvement USING btree (piece_id);


--
-- TOC entry 5445 (class 1259 OID 70724)
-- Name: idx_piece_quantite; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_piece_quantite ON public.logistique_piece USING btree (quantite);


--
-- TOC entry 5446 (class 1259 OID 70725)
-- Name: idx_piece_reference; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_piece_reference ON public.logistique_piece USING btree (reference);


--
-- TOC entry 5630 (class 1259 OID 70726)
-- Name: idx_suivipresence_date_personnel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_suivipresence_date_personnel ON public.tb_suivipresence USING btree (datepresence, idpersonnel);


--
-- TOC entry 5573 (class 1259 OID 70727)
-- Name: idx_tb_log_evenements_datetime; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_log_evenements_datetime ON public.tb_log_evenements USING btree (datetime DESC);


--
-- TOC entry 5574 (class 1259 OID 70728)
-- Name: idx_tb_log_evenements_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_log_evenements_user ON public.tb_log_evenements USING btree ("user");


--
-- TOC entry 5603 (class 1259 OID 70729)
-- Name: idx_tb_pmtfacture_refvente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_pmtfacture_refvente ON public.tb_pmtfacture USING btree (refvente);


--
-- TOC entry 5620 (class 1259 OID 70730)
-- Name: idx_tb_save_history_datetime; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_save_history_datetime ON public.tb_save_history USING btree (datetime DESC);


--
-- TOC entry 5621 (class 1259 OID 70731)
-- Name: idx_tb_save_history_utilisateur; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_save_history_utilisateur ON public.tb_save_history USING btree (utilisateur);


--
-- TOC entry 5655 (class 1259 OID 70732)
-- Name: idx_tb_vente_factureliste_filter; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_vente_factureliste_filter ON public.tb_vente USING btree (deleted, statut, dateregistre DESC, refvente DESC);


--
-- TOC entry 5658 (class 1259 OID 70733)
-- Name: idx_tb_ventedetail_idvente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tb_ventedetail_idvente ON public.tb_ventedetail USING btree (idvente);


--
-- TOC entry 5454 (class 1259 OID 70734)
-- Name: idx_vehicule_immat; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_vehicule_immat ON public.logistique_vehicule USING btree (immatriculation);


--
-- TOC entry 5455 (class 1259 OID 70735)
-- Name: idx_vehicule_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_vehicule_statut ON public.logistique_vehicule USING btree (statut);


--
-- TOC entry 5467 (class 1259 OID 70736)
-- Name: idx_voyage_detail_article; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_voyage_detail_article ON public.logistique_voyage_detail USING btree (idarticle);


--
-- TOC entry 5468 (class 1259 OID 70737)
-- Name: idx_voyage_detail_voyage; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_voyage_detail_voyage ON public.logistique_voyage_detail USING btree (voyage_id);


--
-- TOC entry 5460 (class 1259 OID 70738)
-- Name: idx_voyage_numero; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_voyage_numero ON public.logistique_voyage USING btree (numero_voyage);


--
-- TOC entry 5461 (class 1259 OID 70739)
-- Name: idx_voyage_statut; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_voyage_statut ON public.logistique_voyage USING btree (statut);


--
-- TOC entry 5462 (class 1259 OID 70740)
-- Name: idx_voyage_vehicule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_voyage_vehicule ON public.logistique_voyage USING btree (vehicule_id);


--
-- TOC entry 5671 (class 2606 OID 70741)
-- Name: tb_chat fk_destinataire; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat
    ADD CONSTRAINT fk_destinataire FOREIGN KEY (id_destinataire) REFERENCES public.tb_users(iduser);


--
-- TOC entry 5672 (class 2606 OID 70746)
-- Name: tb_chat fk_expediteur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_chat
    ADD CONSTRAINT fk_expediteur FOREIGN KEY (id_expediteur) REFERENCES public.tb_users(iduser);


--
-- TOC entry 5662 (class 2606 OID 70751)
-- Name: logistique_bon_sortie_ligne logistique_bon_sortie_ligne_bon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie_ligne
    ADD CONSTRAINT logistique_bon_sortie_ligne_bon_id_fkey FOREIGN KEY (bon_id) REFERENCES public.logistique_bon_sortie(id) ON DELETE CASCADE;


--
-- TOC entry 5661 (class 2606 OID 70756)
-- Name: logistique_bon_sortie logistique_bon_sortie_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_bon_sortie
    ADD CONSTRAINT logistique_bon_sortie_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5663 (class 2606 OID 70761)
-- Name: logistique_carburant logistique_carburant_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_carburant
    ADD CONSTRAINT logistique_carburant_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5664 (class 2606 OID 70766)
-- Name: logistique_maintenance logistique_maintenance_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_maintenance
    ADD CONSTRAINT logistique_maintenance_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5665 (class 2606 OID 70771)
-- Name: logistique_mission logistique_mission_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_mission
    ADD CONSTRAINT logistique_mission_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5666 (class 2606 OID 70776)
-- Name: logistique_piece_mouvement logistique_piece_mouvement_piece_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_piece_mouvement
    ADD CONSTRAINT logistique_piece_mouvement_piece_id_fkey FOREIGN KEY (piece_id) REFERENCES public.logistique_piece(id) ON DELETE CASCADE;


--
-- TOC entry 5668 (class 2606 OID 70781)
-- Name: logistique_voyage_detail logistique_voyage_detail_idfrs_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage_detail
    ADD CONSTRAINT logistique_voyage_detail_idfrs_fkey FOREIGN KEY (idfrs) REFERENCES public.tb_fournisseur(idfrs) ON DELETE SET NULL;


--
-- TOC entry 5669 (class 2606 OID 70786)
-- Name: logistique_voyage_detail logistique_voyage_detail_voyage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage_detail
    ADD CONSTRAINT logistique_voyage_detail_voyage_id_fkey FOREIGN KEY (voyage_id) REFERENCES public.logistique_voyage(id) ON DELETE CASCADE;


--
-- TOC entry 5667 (class 2606 OID 70791)
-- Name: logistique_voyage logistique_voyage_vehicule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistique_voyage
    ADD CONSTRAINT logistique_voyage_vehicule_id_fkey FOREIGN KEY (vehicule_id) REFERENCES public.logistique_vehicule(id) ON DELETE SET NULL;


--
-- TOC entry 5670 (class 2606 OID 70796)
-- Name: tb_avanceprof tb_avanceprof_idpers_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_avanceprof
    ADD CONSTRAINT tb_avanceprof_idpers_fkey FOREIGN KEY (idpers) REFERENCES public.tb_personnel(id);


--
-- TOC entry 5673 (class 2606 OID 70801)
-- Name: tb_param_commande_frs tb_param_commande_frs_idfrs_defaut_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_commande_frs
    ADD CONSTRAINT tb_param_commande_frs_idfrs_defaut_fkey FOREIGN KEY (idfrs_defaut) REFERENCES public.tb_fournisseur(idfrs) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5674 (class 2606 OID 70806)
-- Name: tb_param_livraison_client tb_param_livraison_client_idtransporteur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_param_livraison_client
    ADD CONSTRAINT tb_param_livraison_client_idtransporteur_fkey FOREIGN KEY (idtransporteur_defaut) REFERENCES public.tb_transporteur(idtransporteur) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5675 (class 2606 OID 70811)
-- Name: tb_personnel tb_personnel_idposte_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_personnel
    ADD CONSTRAINT tb_personnel_idposte_fkey FOREIGN KEY (idposte) REFERENCES public.tb_postepersonnel(idposte) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5676 (class 2606 OID 70816)
-- Name: tb_postepersonnel tb_postepersonnel_idcategorie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_postepersonnel
    ADD CONSTRAINT tb_postepersonnel_idcategorie_fkey FOREIGN KEY (idcategorie) REFERENCES public.tb_categoriepersonnel(idcategorie) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2026-08-04 10:16:36

--
-- PostgreSQL database dump complete
--

\unrestrict dGbpmZgGebNfDi017u0gdzc6XIUcDmPsL6vWA8DMusXfkgU3AOtrW9GtOi4Gj96

