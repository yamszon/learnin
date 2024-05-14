--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40),
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    decimal_needs numeric,
    czy1 integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40),
    moon_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    czy1 integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40),
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    czy1 integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    name character varying(40),
    space_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    czy1 integer NOT NULL
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40),
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    czy1 integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('ognik', 1, 'posiada dlugie ramie', true, true, 1, 1, 1.1, 100);
INSERT INTO public.galaxy VALUES ('slon', 2, 'taczka', true, true, 1, 1, 1.2, 101);
INSERT INTO public.galaxy VALUES ('agrest', 3, 'poziomka', true, true, 1, 1, 1.3, 102);
INSERT INTO public.galaxy VALUES ('czeko', 4, 'fiufiu', true, true, 1, 1, 1.4, 103);
INSERT INTO public.galaxy VALUES ('miumiu', 5, 'blabla', true, true, 1, 1, 1.5, 104);
INSERT INTO public.galaxy VALUES ('mama mia', 6, 'ldedleld', true, true, 1, 1, NULL, 105);
INSERT INTO public.galaxy VALUES (NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 106);
INSERT INTO public.galaxy VALUES (NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 107);
INSERT INTO public.galaxy VALUES (NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 108);
INSERT INTO public.galaxy VALUES (NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 109);
INSERT INTO public.galaxy VALUES (NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 110);
INSERT INTO public.galaxy VALUES (NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 111);
INSERT INTO public.galaxy VALUES (NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 112);
INSERT INTO public.galaxy VALUES (NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 113);
INSERT INTO public.galaxy VALUES (NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 114);
INSERT INTO public.galaxy VALUES (NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 115);
INSERT INTO public.galaxy VALUES (NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 116);
INSERT INTO public.galaxy VALUES (NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 117);
INSERT INTO public.galaxy VALUES (NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 118);
INSERT INTO public.galaxy VALUES (NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 119);
INSERT INTO public.galaxy VALUES (NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 120);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('ognik', 1, 'posiada dlugie ramie', true, true, 1, 1, 100);
INSERT INTO public.moon VALUES ('slon', 2, 'taczka', true, true, 1, 1, 101);
INSERT INTO public.moon VALUES ('agrest', 3, 'poziomka', true, true, 1, 1, 102);
INSERT INTO public.moon VALUES ('czeko', 4, 'fiufiu', true, true, 1, 1, 103);
INSERT INTO public.moon VALUES ('miumiu', 5, 'blabla', true, true, 1, 1, 104);
INSERT INTO public.moon VALUES ('mama mia', 6, 'ldedleld', true, true, 1, 1, 105);
INSERT INTO public.moon VALUES (NULL, 7, NULL, NULL, NULL, NULL, NULL, 106);
INSERT INTO public.moon VALUES (NULL, 8, NULL, NULL, NULL, NULL, NULL, 107);
INSERT INTO public.moon VALUES (NULL, 9, NULL, NULL, NULL, NULL, NULL, 108);
INSERT INTO public.moon VALUES (NULL, 10, NULL, NULL, NULL, NULL, NULL, 109);
INSERT INTO public.moon VALUES (NULL, 11, NULL, NULL, NULL, NULL, NULL, 110);
INSERT INTO public.moon VALUES (NULL, 12, NULL, NULL, NULL, NULL, NULL, 111);
INSERT INTO public.moon VALUES (NULL, 13, NULL, NULL, NULL, NULL, NULL, 112);
INSERT INTO public.moon VALUES (NULL, 14, NULL, NULL, NULL, NULL, NULL, 113);
INSERT INTO public.moon VALUES (NULL, 15, NULL, NULL, NULL, NULL, NULL, 114);
INSERT INTO public.moon VALUES (NULL, 16, NULL, NULL, NULL, NULL, NULL, 115);
INSERT INTO public.moon VALUES (NULL, 17, NULL, NULL, NULL, NULL, NULL, 116);
INSERT INTO public.moon VALUES (NULL, 18, NULL, NULL, NULL, NULL, NULL, 117);
INSERT INTO public.moon VALUES (NULL, 19, NULL, NULL, NULL, NULL, NULL, 118);
INSERT INTO public.moon VALUES (NULL, 20, NULL, NULL, NULL, NULL, NULL, 119);
INSERT INTO public.moon VALUES (NULL, 21, NULL, NULL, NULL, NULL, NULL, 120);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('ognik', 1, 'posiada dlugie ramie', true, true, 1, 1, 100);
INSERT INTO public.planet VALUES ('slon', 2, 'taczka', true, true, 1, 1, 101);
INSERT INTO public.planet VALUES ('agrest', 3, 'poziomka', true, true, 1, 1, 102);
INSERT INTO public.planet VALUES ('czeko', 4, 'fiufiu', true, true, 1, 1, 103);
INSERT INTO public.planet VALUES ('miumiu', 5, 'blabla', true, true, 1, 1, 104);
INSERT INTO public.planet VALUES ('mama mia', 6, 'ldedleld', true, true, 1, 1, 105);
INSERT INTO public.planet VALUES (NULL, 7, NULL, NULL, NULL, NULL, NULL, 106);
INSERT INTO public.planet VALUES (NULL, 8, NULL, NULL, NULL, NULL, NULL, 107);
INSERT INTO public.planet VALUES (NULL, 9, NULL, NULL, NULL, NULL, NULL, 108);
INSERT INTO public.planet VALUES (NULL, 10, NULL, NULL, NULL, NULL, NULL, 109);
INSERT INTO public.planet VALUES (NULL, 11, NULL, NULL, NULL, NULL, NULL, 110);
INSERT INTO public.planet VALUES (NULL, 12, NULL, NULL, NULL, NULL, NULL, 111);
INSERT INTO public.planet VALUES (NULL, 13, NULL, NULL, NULL, NULL, NULL, 112);
INSERT INTO public.planet VALUES (NULL, 14, NULL, NULL, NULL, NULL, NULL, 113);
INSERT INTO public.planet VALUES (NULL, 15, NULL, NULL, NULL, NULL, NULL, 114);
INSERT INTO public.planet VALUES (NULL, 16, NULL, NULL, NULL, NULL, NULL, 115);
INSERT INTO public.planet VALUES (NULL, 17, NULL, NULL, NULL, NULL, NULL, 116);
INSERT INTO public.planet VALUES (NULL, 18, NULL, NULL, NULL, NULL, NULL, 117);
INSERT INTO public.planet VALUES (NULL, 19, NULL, NULL, NULL, NULL, NULL, 118);
INSERT INTO public.planet VALUES (NULL, 20, NULL, NULL, NULL, NULL, NULL, 119);
INSERT INTO public.planet VALUES (NULL, 21, NULL, NULL, NULL, NULL, NULL, 120);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES ('ognik', 1, 'posiada dlugie ramie', true, true, 1, 1, 100);
INSERT INTO public.space VALUES ('slon', 2, 'taczka', true, true, 1, 1, 101);
INSERT INTO public.space VALUES ('agrest', 3, 'poziomka', true, true, 1, 1, 102);
INSERT INTO public.space VALUES ('czeko', 4, 'fiufiu', true, true, 1, 1, 103);
INSERT INTO public.space VALUES ('miumiu', 5, 'blabla', true, true, 1, 1, 104);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('ognik', 7, 'posiada dlugie ramie', true, true, 1, 1, 100);
INSERT INTO public.star VALUES ('slon', 8, 'taczka', true, true, 1, 1, 101);
INSERT INTO public.star VALUES ('agrest', 9, 'poziomka', true, true, 1, 1, 102);
INSERT INTO public.star VALUES ('czeko', 10, 'fiufiu', true, true, 1, 1, 103);
INSERT INTO public.star VALUES ('miumiu', 11, 'blabla', true, true, 1, 1, 104);
INSERT INTO public.star VALUES ('mama mia', 13, 'ldedleld', true, true, 1, 1, 105);
INSERT INTO public.star VALUES (NULL, 14, NULL, NULL, NULL, NULL, NULL, 106);
INSERT INTO public.star VALUES (NULL, 15, NULL, NULL, NULL, NULL, NULL, 107);
INSERT INTO public.star VALUES (NULL, 16, NULL, NULL, NULL, NULL, NULL, 108);
INSERT INTO public.star VALUES (NULL, 17, NULL, NULL, NULL, NULL, NULL, 109);
INSERT INTO public.star VALUES (NULL, 18, NULL, NULL, NULL, NULL, NULL, 110);
INSERT INTO public.star VALUES (NULL, 19, NULL, NULL, NULL, NULL, NULL, 111);
INSERT INTO public.star VALUES (NULL, 20, NULL, NULL, NULL, NULL, NULL, 112);
INSERT INTO public.star VALUES (NULL, 21, NULL, NULL, NULL, NULL, NULL, 113);
INSERT INTO public.star VALUES (NULL, 22, NULL, NULL, NULL, NULL, NULL, 114);
INSERT INTO public.star VALUES (NULL, 23, NULL, NULL, NULL, NULL, NULL, 115);
INSERT INTO public.star VALUES (NULL, 24, NULL, NULL, NULL, NULL, NULL, 116);
INSERT INTO public.star VALUES (NULL, 25, NULL, NULL, NULL, NULL, NULL, 117);
INSERT INTO public.star VALUES (NULL, 26, NULL, NULL, NULL, NULL, NULL, 118);
INSERT INTO public.star VALUES (NULL, 27, NULL, NULL, NULL, NULL, NULL, 119);
INSERT INTO public.star VALUES (NULL, 28, NULL, NULL, NULL, NULL, NULL, 120);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: galaxy galaxy_czy1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_czy1_key UNIQUE (czy1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_czy1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_czy1_key UNIQUE (czy1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_czy1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_czy1_key UNIQUE (czy1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space space_czy1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_czy1_key UNIQUE (czy1);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: star star_czy1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_czy1_key UNIQUE (czy1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_czy1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_czy1_fkey FOREIGN KEY (czy1) REFERENCES public.planet(czy1);


--
-- Name: planet planet_czy1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_czy1_fkey FOREIGN KEY (czy1) REFERENCES public.star(czy1);


--
-- Name: star star_czy1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_czy1_fkey FOREIGN KEY (czy1) REFERENCES public.galaxy(czy1);


--
-- PostgreSQL database dump complete
--

