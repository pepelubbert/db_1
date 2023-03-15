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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    galaxy_id integer,
    speed real,
    name character varying NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size real,
    case1 boolean,
    case2 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    case1 boolean,
    case2 boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer NOT NULL,
    case1 boolean,
    case2 boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    count1 integer,
    count2 integer,
    temp numeric,
    color text,
    case1 boolean,
    case2 boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 1, 55.8, 'Halley''s Comet');
INSERT INTO public.comet VALUES (2, 1, 44.7, 'Comet Hale-Bopp');
INSERT INTO public.comet VALUES (3, 1, 6.1, 'Comet Wild 2');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway Galaxy', 52850, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 110000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 18500, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 30000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 50000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 50000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Enceladus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Rhea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Lapetus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Hyperion', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Phoebe', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Janus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Epimetheus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Helene', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Atlas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Prometheus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Pandora', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Titania', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Kepler-11b', 7, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-11c', 7, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-11d', 7, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-11e', 7, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'sirius', 2, 3, 9667, 'Red', true, false, 1);
INSERT INTO public.star VALUES (1, 'sun', 2, 3, 5500, 'Red', true, false, 1);
INSERT INTO public.star VALUES (3, 'alpha centauri a', 2, 3, 5497, 'Red', true, false, 1);
INSERT INTO public.star VALUES (4, 'arcturus', 2, 3, 4017, 'Red', true, false, 1);
INSERT INTO public.star VALUES (5, 'vega', 2, 3, 9327, 'Red', true, false, 1);
INSERT INTO public.star VALUES (6, 'procyon', 2, 3, 6227, 'Red', true, false, 1);
INSERT INTO public.star VALUES (7, 'Kepler-11', 2, 3, 5407, 'Red', true, false, 1);


--
-- Name: comet comet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_unique UNIQUE (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: comet pk_comet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT pk_comet PRIMARY KEY (comet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: star c1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT c1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

