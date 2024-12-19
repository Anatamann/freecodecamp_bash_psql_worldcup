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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(60) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 2018, 67, 68, 4, 2, 'Final');
INSERT INTO public.games VALUES (22, 2018, 69, 70, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (23, 2018, 68, 70, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (24, 2018, 67, 69, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (25, 2018, 68, 71, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (26, 2018, 70, 72, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (27, 2018, 69, 73, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (28, 2018, 67, 74, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (29, 2018, 70, 75, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 2018, 72, 76, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 2018, 69, 77, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 2018, 73, 78, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (33, 2018, 68, 79, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (34, 2018, 71, 80, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (35, 2018, 74, 81, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (36, 2018, 67, 82, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (37, 2014, 83, 82, 1, 0, 'Final');
INSERT INTO public.games VALUES (38, 2014, 84, 73, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (39, 2014, 82, 84, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (40, 2014, 83, 73, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (41, 2014, 84, 85, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (42, 2014, 82, 69, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (43, 2014, 73, 75, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (44, 2014, 83, 67, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (45, 2014, 73, 86, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 2014, 75, 74, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 2014, 67, 87, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 2014, 83, 88, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 2014, 84, 78, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (50, 2014, 85, 89, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (51, 2014, 82, 76, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (52, 2014, 69, 90, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (67, 'France');
INSERT INTO public.teams VALUES (68, 'Croatia');
INSERT INTO public.teams VALUES (69, 'Belgium');
INSERT INTO public.teams VALUES (70, 'England');
INSERT INTO public.teams VALUES (71, 'Russia');
INSERT INTO public.teams VALUES (72, 'Sweden');
INSERT INTO public.teams VALUES (73, 'Brazil');
INSERT INTO public.teams VALUES (74, 'Uruguay');
INSERT INTO public.teams VALUES (75, 'Colombia');
INSERT INTO public.teams VALUES (76, 'Switzerland');
INSERT INTO public.teams VALUES (77, 'Japan');
INSERT INTO public.teams VALUES (78, 'Mexico');
INSERT INTO public.teams VALUES (79, 'Denmark');
INSERT INTO public.teams VALUES (80, 'Spain');
INSERT INTO public.teams VALUES (81, 'Portugal');
INSERT INTO public.teams VALUES (82, 'Argentina');
INSERT INTO public.teams VALUES (83, 'Germany');
INSERT INTO public.teams VALUES (84, 'Netherlands');
INSERT INTO public.teams VALUES (85, 'Costa Rica');
INSERT INTO public.teams VALUES (86, 'Chile');
INSERT INTO public.teams VALUES (87, 'Nigeria');
INSERT INTO public.teams VALUES (88, 'Algeria');
INSERT INTO public.teams VALUES (89, 'Greece');
INSERT INTO public.teams VALUES (90, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 90, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

