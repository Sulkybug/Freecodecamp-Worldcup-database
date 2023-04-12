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
    round character varying(255) NOT NULL,
    year integer NOT NULL,
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (33, 'Final', 2018, 622, 623, 4, 2);
INSERT INTO public.games VALUES (34, 'Third Place', 2018, 624, 625, 2, 0);
INSERT INTO public.games VALUES (35, 'Semi-Final', 2018, 623, 625, 2, 1);
INSERT INTO public.games VALUES (36, 'Semi-Final', 2018, 622, 624, 1, 0);
INSERT INTO public.games VALUES (37, 'Quarter-Final', 2018, 623, 626, 3, 2);
INSERT INTO public.games VALUES (38, 'Quarter-Final', 2018, 625, 627, 2, 0);
INSERT INTO public.games VALUES (39, 'Quarter-Final', 2018, 624, 628, 2, 1);
INSERT INTO public.games VALUES (40, 'Quarter-Final', 2018, 622, 629, 2, 0);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 2018, 625, 630, 2, 1);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 2018, 627, 631, 1, 0);
INSERT INTO public.games VALUES (43, 'Eighth-Final', 2018, 624, 632, 3, 2);
INSERT INTO public.games VALUES (44, 'Eighth-Final', 2018, 628, 633, 2, 0);
INSERT INTO public.games VALUES (45, 'Eighth-Final', 2018, 623, 634, 2, 1);
INSERT INTO public.games VALUES (46, 'Eighth-Final', 2018, 626, 635, 2, 1);
INSERT INTO public.games VALUES (47, 'Eighth-Final', 2018, 629, 636, 2, 1);
INSERT INTO public.games VALUES (48, 'Eighth-Final', 2018, 622, 637, 4, 3);
INSERT INTO public.games VALUES (49, 'Final', 2014, 638, 637, 1, 0);
INSERT INTO public.games VALUES (50, 'Third Place', 2014, 639, 628, 3, 0);
INSERT INTO public.games VALUES (51, 'Semi-Final', 2014, 637, 639, 1, 0);
INSERT INTO public.games VALUES (52, 'Semi-Final', 2014, 638, 628, 7, 1);
INSERT INTO public.games VALUES (53, 'Quarter-Final', 2014, 639, 640, 1, 0);
INSERT INTO public.games VALUES (54, 'Quarter-Final', 2014, 637, 624, 1, 0);
INSERT INTO public.games VALUES (55, 'Quarter-Final', 2014, 628, 630, 2, 1);
INSERT INTO public.games VALUES (56, 'Quarter-Final', 2014, 638, 622, 1, 0);
INSERT INTO public.games VALUES (57, 'Eighth-Final', 2014, 628, 641, 2, 1);
INSERT INTO public.games VALUES (58, 'Eighth-Final', 2014, 630, 629, 2, 0);
INSERT INTO public.games VALUES (59, 'Eighth-Final', 2014, 622, 642, 2, 0);
INSERT INTO public.games VALUES (60, 'Eighth-Final', 2014, 638, 643, 2, 1);
INSERT INTO public.games VALUES (61, 'Eighth-Final', 2014, 639, 633, 2, 1);
INSERT INTO public.games VALUES (62, 'Eighth-Final', 2014, 640, 644, 2, 1);
INSERT INTO public.games VALUES (63, 'Eighth-Final', 2014, 637, 631, 1, 0);
INSERT INTO public.games VALUES (64, 'Eighth-Final', 2014, 624, 645, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (622, 'France');
INSERT INTO public.teams VALUES (623, 'Croatia');
INSERT INTO public.teams VALUES (624, 'Belgium');
INSERT INTO public.teams VALUES (625, 'England');
INSERT INTO public.teams VALUES (626, 'Russia');
INSERT INTO public.teams VALUES (627, 'Sweden');
INSERT INTO public.teams VALUES (628, 'Brazil');
INSERT INTO public.teams VALUES (629, 'Uruguay');
INSERT INTO public.teams VALUES (630, 'Colombia');
INSERT INTO public.teams VALUES (631, 'Switzerland');
INSERT INTO public.teams VALUES (632, 'Japan');
INSERT INTO public.teams VALUES (633, 'Mexico');
INSERT INTO public.teams VALUES (634, 'Denmark');
INSERT INTO public.teams VALUES (635, 'Spain');
INSERT INTO public.teams VALUES (636, 'Portugal');
INSERT INTO public.teams VALUES (637, 'Argentina');
INSERT INTO public.teams VALUES (638, 'Germany');
INSERT INTO public.teams VALUES (639, 'Netherlands');
INSERT INTO public.teams VALUES (640, 'Costa Rica');
INSERT INTO public.teams VALUES (641, 'Chile');
INSERT INTO public.teams VALUES (642, 'Nigeria');
INSERT INTO public.teams VALUES (643, 'Algeria');
INSERT INTO public.teams VALUES (644, 'Greece');
INSERT INTO public.teams VALUES (645, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 645, true);


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

