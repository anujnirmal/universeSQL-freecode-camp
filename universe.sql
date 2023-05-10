--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(20),
    number_of_stars integer,
    number_of_planets integer NOT NULL,
    number_of_moons integer NOT NULL,
    size numeric(4,1)
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
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    size integer NOT NULL,
    only_moon boolean NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(20),
    description text,
    is_dwarf boolean,
    life_exists boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    galaxy_id integer NOT NULL,
    number_of_planets integer NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_planets (
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20),
    star_planets_id integer NOT NULL
);


ALTER TABLE public.star_planets OWNER TO freecodecamp;

--
-- Name: star_planets_star_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planets_star_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planets_star_planet_id_seq OWNER TO freecodecamp;

--
-- Name: star_planets_star_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planets_star_planet_id_seq OWNED BY public.star_planets.star_planets_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_planets star_planets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets ALTER COLUMN star_planets_id SET DEFAULT nextval('public.star_planets_star_planet_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'anjuman', 8, 16, 20, 50.3);
INSERT INTO public.galaxy VALUES (2, 'ramunam', 9, 24, 42, 633.3);
INSERT INTO public.galaxy VALUES (3, 'ayuman', 6, 14, 12, 42.3);
INSERT INTO public.galaxy VALUES (4, 'howdy', 8, 24, 42, 45.3);
INSERT INTO public.galaxy VALUES (5, 'heythere', 6, 42, 24, 243.4);
INSERT INTO public.galaxy VALUES (6, 'mayi', 7, 25, 12, 451.2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'nova', 1, 42, true);
INSERT INTO public.moon VALUES (2, 'holi', 2, 43, false);
INSERT INTO public.moon VALUES (3, 'diwali', 3, 65, true);
INSERT INTO public.moon VALUES (4, 'he', 5, 54, true);
INSERT INTO public.moon VALUES (5, 'mooni', 5, 412, true);
INSERT INTO public.moon VALUES (6, 'hmm', 12, 24, false);
INSERT INTO public.moon VALUES (7, 'nonamess', 12, 45, false);
INSERT INTO public.moon VALUES (8, 'nvie', 12, 45, false);
INSERT INTO public.moon VALUES (9, 'wordl', 1, 42, true);
INSERT INTO public.moon VALUES (10, 'notcretive', 2, 43, false);
INSERT INTO public.moon VALUES (11, 'nobro', 3, 65, true);
INSERT INTO public.moon VALUES (12, 'killme', 5, 54, true);
INSERT INTO public.moon VALUES (13, 'nasa', 5, 412, true);
INSERT INTO public.moon VALUES (14, 'nhss', 12, 24, false);
INSERT INTO public.moon VALUES (15, 'nope', 1, 42, true);
INSERT INTO public.moon VALUES (16, 'baby', 2, 43, false);
INSERT INTO public.moon VALUES (17, 'iamthebest', 3, 65, true);
INSERT INTO public.moon VALUES (18, 'words', 5, 54, true);
INSERT INTO public.moon VALUES (19, 'heyther', 5, 412, true);
INSERT INTO public.moon VALUES (20, 'halwa', 12, 24, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'This is planet1', false, false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'This is planet2', false, false, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 'Ths is planet3', false, true, 1);
INSERT INTO public.planet VALUES (4, 'planet4', 'This is planet4', false, true, 2);
INSERT INTO public.planet VALUES (5, 'planet5', ' This is planet5', true, false, 3);
INSERT INTO public.planet VALUES (6, 'planet6', 'This is planet6', true, false, 4);
INSERT INTO public.planet VALUES (7, 'planet7', 'This is planet7', false, false, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 'This is planet8', false, false, 1);
INSERT INTO public.planet VALUES (9, 'planet9', 'Ths is planet9', false, true, 3);
INSERT INTO public.planet VALUES (10, 'planet10', 'This is planet10', false, true, 5);
INSERT INTO public.planet VALUES (11, 'planet11', ' This is planet11', true, false, 4);
INSERT INTO public.planet VALUES (12, 'planet12', 'This is planet12', true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'abstar', 1, 16, 20);
INSERT INTO public.star VALUES (2, '32star', 2, 24, 42);
INSERT INTO public.star VALUES (3, 'muastar', 3, 14, 12);
INSERT INTO public.star VALUES (4, 'hellstar', 4, 24, 42);
INSERT INTO public.star VALUES (5, '69star', 5, 42, 24);
INSERT INTO public.star VALUES (6, 'bayblade', 6, 25, 12);


--
-- Data for Name: star_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_planets VALUES (1, 1, NULL, 1);
INSERT INTO public.star_planets VALUES (3, 8, 'cc', 2);
INSERT INTO public.star_planets VALUES (4, 6, 'dd', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_planets_star_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planets_star_planet_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unq UNIQUE (galaxy_id);


--
-- Name: moon moon_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unq UNIQUE (moon_id);


--
-- Name: planet planet_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unq UNIQUE (planet_id);


--
-- Name: star star_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_pkey PRIMARY KEY (star_id);


--
-- Name: star star_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unq UNIQUE (star_id);


--
-- Name: star_planets star_planet_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets
    ADD CONSTRAINT star_planet_id_pkey PRIMARY KEY (star_planets_id);


--
-- Name: star_planets star_planets_star_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets
    ADD CONSTRAINT star_planets_star_planet_id_key UNIQUE (star_planets_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star_planets star_planets_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets
    ADD CONSTRAINT star_planets_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star_planets star_planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets
    ADD CONSTRAINT star_planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

