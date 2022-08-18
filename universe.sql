
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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    size_in_km integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(3,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    name character varying(10) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(10) NOT NULL,
    age_in_million_of_years integer,
    size_light_years integer,
    distance_from_earth numeric(3,2),
    description text,
    is_spherical boolean,
    has_life boolean
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
    size_in_km integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(3,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    planet_id integer,
    name character varying(10) NOT NULL
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
    size_in_km integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric(3,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer,
    name character varying(10) NOT NULL
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
    size_in_km integer,
    age_in_million_of_years integer,
    distance_from_earth numeric(3,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer,
    name character varying(10) NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 100, 87, 7.11, 'black hole 1', false, false, 'Metroid');
INSERT INTO public.black_hole VALUES (2, 99, 22, 5.22, 'black hole 2', false, false, 'Zelda');
INSERT INTO public.black_hole VALUES (3, 88, 89, 1.22, 'black hole 3', false, false, 'Pin');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 20, 2.33, 'galaxy 1', false, true);
INSERT INTO public.galaxy VALUES (2, 'Torrent', 21, 90, 4.30, 'galaxy 2', false, true);
INSERT INTO public.galaxy VALUES (3, 'Blizzard', 33, 88, 3.33, 'galaxy 3', false, true);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 87, 100, 7.11, 'galaxy 4', false, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 22, 99, 5.22, 'galaxy 5', true, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 89, 88, 1.22, 'galaxy 6', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 11, 22, 3.44, 'moon 1', true, false, NULL, 'moon');
INSERT INTO public.moon VALUES (2, 22, 33, 4.44, 'moon 2', true, false, NULL, 'Deimos');
INSERT INTO public.moon VALUES (3, 33, 44, 5.55, 'moon 3', true, false, NULL, 'Phobos');
INSERT INTO public.moon VALUES (4, 44, 55, 6.66, 'moon 4', true, false, NULL, 'Adrastea');
INSERT INTO public.moon VALUES (5, 66, 77, 8.88, 'moon 5', true, false, NULL, 'Aitne');
INSERT INTO public.moon VALUES (6, 77, 88, 9.99, 'moon 6', true, false, NULL, 'Amalthea');
INSERT INTO public.moon VALUES (7, 1010, 1122, 1.11, 'moon 7', true, false, NULL, 'Ananke');
INSERT INTO public.moon VALUES (8, 1122, 1313, 2.22, 'moon 8', true, false, NULL, 'Aoede');
INSERT INTO public.moon VALUES (9, 1425, 22, 4.44, 'moon 9', true, false, NULL, 'Arche');
INSERT INTO public.moon VALUES (10, 99, 2, 3.45, 'moon 10', true, false, NULL, 'Autonoe');
INSERT INTO public.moon VALUES (11, 44, 1, 4.33, 'moon 11', true, false, NULL, 'Callisto');
INSERT INTO public.moon VALUES (12, 55, 2, 6.44, 'moon 12', true, false, NULL, 'Carme');
INSERT INTO public.moon VALUES (13, 67, 87, 5.22, 'moon 13', true, false, NULL, 'Callirrohe');
INSERT INTO public.moon VALUES (14, 77, 87, 7.11, 'moon 14', true, false, NULL, 'Carpo');
INSERT INTO public.moon VALUES (15, 98, 90, 8.11, 'moon 15', true, false, NULL, 'Chaldene');
INSERT INTO public.moon VALUES (16, 24, 26, 7.77, 'moon 16', true, false, NULL, 'Cyllene');
INSERT INTO public.moon VALUES (17, 34, 43, 9.11, 'moon 17', true, false, NULL, 'Elara');
INSERT INTO public.moon VALUES (18, 43, 66, 8.21, 'moon 18', true, false, NULL, 'Erinoe');
INSERT INTO public.moon VALUES (19, 55, 78, 1.22, 'moon 19', true, false, NULL, 'Euanthe');
INSERT INTO public.moon VALUES (20, 99, 11, 8.22, 'moon 20', true, false, NULL, 'Europa');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 70, 60, 9.33, 'planet 1', false, true, 1, 'Earth');
INSERT INTO public.planet VALUES (2, 40, 20, 8.30, 'planet 2', false, true, 2, 'Red Planet');
INSERT INTO public.planet VALUES (3, 98, 38, 8.33, 'planet 3', false, true, 3, 'Tyranid');
INSERT INTO public.planet VALUES (4, 100, 87, 7.11, 'planet 4', true, false, NULL, 'Tatooine');
INSERT INTO public.planet VALUES (5, 99, 22, 5.22, 'planet 5', true, false, NULL, 'Libra');
INSERT INTO public.planet VALUES (6, 88, 89, 1.22, 'planet 6', true, false, NULL, 'Mercury');
INSERT INTO public.planet VALUES (7, 11, 55, 7.22, 'planet 7', true, false, NULL, 'Venus');
INSERT INTO public.planet VALUES (8, 44, 66, 3.33, 'planet 8', true, false, NULL, 'Jupiter');
INSERT INTO public.planet VALUES (9, 33, 44, 9.99, 'planet 9', true, false, NULL, 'Hyrule');
INSERT INTO public.planet VALUES (10, 22, 33, 8.88, 'planet 10', true, false, NULL, 'Saturn');
INSERT INTO public.planet VALUES (11, 44, 55, 7.32, 'planet 11', true, false, NULL, 'Uranus');
INSERT INTO public.planet VALUES (12, 56, 77, 9.99, 'planet 12', true, false, NULL, 'Neptune');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 20, 10, 2.33, 'star 1', false, true, 1, 'Sun');
INSERT INTO public.star VALUES (2, 90, 21, 4.30, 'star 2', false, true, 2, 'Red Sun');
INSERT INTO public.star VALUES (3, 88, 33, 3.33, 'star 3', false, true, 3, 'A-12');
INSERT INTO public.star VALUES (4, 100, 87, 7.11, 'star 4', true, false, NULL, 'F-88');
INSERT INTO public.star VALUES (5, 99, 22, 5.22, 'star 5', true, false, NULL, 'X-33');
INSERT INTO public.star VALUES (6, 88, 89, 1.22, 'star 6', true, false, NULL, 'Pinwheel');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: black_hole black_hole_black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--

