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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (577, 2018, 'Final', 2725, 2726, 4, 2);
INSERT INTO public.games VALUES (578, 2018, 'Third Place', 2727, 2728, 2, 0);
INSERT INTO public.games VALUES (579, 2018, 'Semi-Final', 2726, 2728, 2, 1);
INSERT INTO public.games VALUES (580, 2018, 'Semi-Final', 2725, 2727, 1, 0);
INSERT INTO public.games VALUES (581, 2018, 'Quarter-Final', 2726, 2734, 3, 2);
INSERT INTO public.games VALUES (582, 2018, 'Quarter-Final', 2728, 2736, 2, 0);
INSERT INTO public.games VALUES (583, 2018, 'Quarter-Final', 2727, 2738, 2, 1);
INSERT INTO public.games VALUES (584, 2018, 'Quarter-Final', 2725, 2740, 2, 0);
INSERT INTO public.games VALUES (585, 2018, 'Eighth-Final', 2728, 2742, 2, 1);
INSERT INTO public.games VALUES (586, 2018, 'Eighth-Final', 2736, 2744, 1, 0);
INSERT INTO public.games VALUES (587, 2018, 'Eighth-Final', 2727, 2746, 3, 2);
INSERT INTO public.games VALUES (588, 2018, 'Eighth-Final', 2738, 2748, 2, 0);
INSERT INTO public.games VALUES (589, 2018, 'Eighth-Final', 2726, 2750, 2, 1);
INSERT INTO public.games VALUES (590, 2018, 'Eighth-Final', 2734, 2752, 2, 1);
INSERT INTO public.games VALUES (591, 2018, 'Eighth-Final', 2740, 2754, 2, 1);
INSERT INTO public.games VALUES (592, 2018, 'Eighth-Final', 2725, 2756, 4, 3);
INSERT INTO public.games VALUES (593, 2014, 'Final', 2757, 2756, 1, 0);
INSERT INTO public.games VALUES (594, 2014, 'Third Place', 2759, 2738, 3, 0);
INSERT INTO public.games VALUES (595, 2014, 'Semi-Final', 2756, 2759, 1, 0);
INSERT INTO public.games VALUES (596, 2014, 'Semi-Final', 2757, 2738, 7, 1);
INSERT INTO public.games VALUES (597, 2014, 'Quarter-Final', 2759, 2766, 1, 0);
INSERT INTO public.games VALUES (598, 2014, 'Quarter-Final', 2756, 2727, 1, 0);
INSERT INTO public.games VALUES (599, 2014, 'Quarter-Final', 2738, 2742, 2, 1);
INSERT INTO public.games VALUES (600, 2014, 'Quarter-Final', 2757, 2725, 1, 0);
INSERT INTO public.games VALUES (601, 2014, 'Eighth-Final', 2738, 2774, 2, 1);
INSERT INTO public.games VALUES (602, 2014, 'Eighth-Final', 2742, 2740, 2, 0);
INSERT INTO public.games VALUES (603, 2014, 'Eighth-Final', 2725, 2778, 2, 0);
INSERT INTO public.games VALUES (604, 2014, 'Eighth-Final', 2757, 2780, 2, 1);
INSERT INTO public.games VALUES (605, 2014, 'Eighth-Final', 2759, 2748, 2, 1);
INSERT INTO public.games VALUES (606, 2014, 'Eighth-Final', 2766, 2784, 2, 1);
INSERT INTO public.games VALUES (607, 2014, 'Eighth-Final', 2756, 2744, 1, 0);
INSERT INTO public.games VALUES (608, 2014, 'Eighth-Final', 2727, 2788, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (2725, 'France');
INSERT INTO public.teams VALUES (2726, 'Croatia');
INSERT INTO public.teams VALUES (2727, 'Belgium');
INSERT INTO public.teams VALUES (2728, 'England');
INSERT INTO public.teams VALUES (2734, 'Russia');
INSERT INTO public.teams VALUES (2736, 'Sweden');
INSERT INTO public.teams VALUES (2738, 'Brazil');
INSERT INTO public.teams VALUES (2740, 'Uruguay');
INSERT INTO public.teams VALUES (2742, 'Colombia');
INSERT INTO public.teams VALUES (2744, 'Switzerland');
INSERT INTO public.teams VALUES (2746, 'Japan');
INSERT INTO public.teams VALUES (2748, 'Mexico');
INSERT INTO public.teams VALUES (2750, 'Denmark');
INSERT INTO public.teams VALUES (2752, 'Spain');
INSERT INTO public.teams VALUES (2754, 'Portugal');
INSERT INTO public.teams VALUES (2756, 'Argentina');
INSERT INTO public.teams VALUES (2757, 'Germany');
INSERT INTO public.teams VALUES (2759, 'Netherlands');
INSERT INTO public.teams VALUES (2766, 'Costa Rica');
INSERT INTO public.teams VALUES (2774, 'Chile');
INSERT INTO public.teams VALUES (2778, 'Nigeria');
INSERT INTO public.teams VALUES (2780, 'Algeria');
INSERT INTO public.teams VALUES (2784, 'Greece');
INSERT INTO public.teams VALUES (2788, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 608, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 2788, true);


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
-- Name: teams teams_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key1 UNIQUE (name);


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

