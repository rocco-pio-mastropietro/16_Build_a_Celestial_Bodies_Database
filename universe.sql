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
-- Name: artificial_satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_satellite (
    artificial_satellite_id integer NOT NULL,
    name character varying NOT NULL,
    is_active boolean,
    distance_from_earth_in_kilometers integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.artificial_satellite OWNER TO freecodecamp;

--
-- Name: artificial_satellite_artificial_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_satellite_artificial_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_satellite_artificial_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: artificial_satellite_artificial_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_satellite_artificial_satellite_id_seq OWNED BY public.artificial_satellite.artificial_satellite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    distance_from_earth_in_thousands_of_light_year numeric,
    diameter_in_light_year integer
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
    name character varying NOT NULL,
    is_spherical boolean,
    diameter_in_kilometers numeric,
    planet_id integer NOT NULL
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
    name character varying NOT NULL,
    has_life boolean,
    distance_from_sun_in_millions_of_kilometers integer,
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
    name character varying NOT NULL,
    system character varying,
    distance_from_earth_in_light_year numeric,
    galaxy_id integer NOT NULL
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
-- Name: artificial_satellite artificial_satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite ALTER COLUMN artificial_satellite_id SET DEFAULT nextval('public.artificial_satellite_artificial_satellite_id_seq'::regclass);


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
-- Data for Name: artificial_satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_satellite VALUES (1, 'ISS', true, 408, 3);
INSERT INTO public.artificial_satellite VALUES (2, 'Tiangong 1', false, 450, 3);
INSERT INTO public.artificial_satellite VALUES (3, 'Tiangong 2', false, 393, 3);
INSERT INTO public.artificial_satellite VALUES (4, 'Tiangong', true, 425, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of Earth. Barred spiral galaxy.', 26.500, 87400);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Satellite of Milky Way (accretion by Milky Way).', 25.000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Draco II', 'Satellite of Milky Way.', 70.100, 120);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 'Satellite of Milky Way that is being tidally disrupted.', 74.700, 220);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 'Satellite of Milky Way.', 75.000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sagittarius Dwarf Sphr', 'Satellite of Milky Way.', 78.000, 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3474.8, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Io', false, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 3121.6, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5268.2, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 4820.6, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', false, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Thebe', false, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Adrastea', false, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Metis', false, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Mimas', true, 396.4, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', true, 504.2, 6);
INSERT INTO public.moon VALUES (14, 'Tethys', true, 1066.2, 6);
INSERT INTO public.moon VALUES (15, 'Dione', true, 1122.8, 6);
INSERT INTO public.moon VALUES (16, 'Rhea', true, 15027.6, 6);
INSERT INTO public.moon VALUES (17, 'Titan', true, 5149.5, 6);
INSERT INTO public.moon VALUES (18, 'Ariel', true, 1157.8, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', true, 1169.4, 7);
INSERT INTO public.moon VALUES (20, 'Titania', true, 1577.8, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 108, 1);
INSERT INTO public.planet VALUES (3, 'Terra', true, 150, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 228, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 777, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 1, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 3, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 5, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, 6, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', false, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', false, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri d', false, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Solar System', 0.000, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Alpha Centauri', 4.247, 1);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 'Alpha Centauri', 4.344, 1);
INSERT INTO public.star VALUES (4, 'Toliman', 'Alpha Centauri', 4.344, 1);
INSERT INTO public.star VALUES (5, 'Luhman 16 A', 'Luhman 16', 6.503, 1);
INSERT INTO public.star VALUES (6, 'Luhman 16 B', 'Luhman 16', 6.503, 1);


--
-- Name: artificial_satellite_artificial_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_satellite_artificial_satellite_id_seq', 4, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: artificial_satellite artificial_satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_name_key UNIQUE (name);


--
-- Name: artificial_satellite artificial_satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_pkey PRIMARY KEY (artificial_satellite_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: artificial_satellite artificial_satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--

