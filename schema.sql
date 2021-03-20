CREATE TABLE competitions(
    competition_id SERIAL PRIMARY KEY,
    competition_name VARCHAR(200),
    competition_adress VARCHAR(200),
    start_date DATE,
    end_date DATE,
    max_athletes INT,
    number_event INT,
    competition_contact_phone VARCHAR(200),
    competition_contact_email VARCHAR(200)
);
CREATE TABLE athletes(
    athlete_id SERIAL PRIMARY KEY,
    athlete_name VARCHAR(200),
    gender VARCHAR(200),
    date_of_birth DATE,
    nationality VARCHAR(200),
    weight VARCHAR(200),
    height VARCHAR(200)
);
CREATE TABLE partners(
    partner_id SERIAL PRIMARY KEY,
    company_name VARCHAR(200),
    company_contact_phone VARCHAR(200),
    company_contact_email VARCHAR(200),
    company_adress VARCHAR(200)
);
CREATE TABLE scoring_methods(
    scoring_method_id SERIAL PRIMARY KEY,
    main_score VARCHAR(200),
    main_tie_break VARCHAR(200),
    secondary_score VARCHAR(200),
    secondary_tie_break VARCHAR(200)
);
CREATE TABLE organizes(
    organizes_id SERIAL PRIMARY KEY,
    competition_year INT,
    competition_id INT,
    partner_id INT,
    CONSTRAINT fk_partners FOREIGN KEY(partner_id) REFERENCES partners(partner_id),
    CONSTRAINT fk_competitions FOREIGN KEY(competition_id) REFERENCES competitions(competition_id)
);
CREATE TABLE events(
    event_id SERIAL PRIMARY KEY,
    competition_id INT,
    scoring_method_id INT,
    event_name VARCHAR(200),
    CONSTRAINT fk_scoring_methods FOREIGN KEY(scoring_method_id) REFERENCES scoring_methods(scoring_method_id),
    CONSTRAINT fk_competitions FOREIGN KEY(competition_id) REFERENCES competitions(competition_id)
);
CREATE TABLE competes_in(
    competes_in_id SERIAL PRIMARY KEY,
    athlete_id INT,
    event_id INT,
    competition_id INT,
    CONSTRAINT fk_athletes FOREIGN KEY(athlete_id) REFERENCES athletes(athlete_id),
    CONSTRAINT fk_competitions FOREIGN KEY(competition_id) REFERENCES competitions(competition_id),
    CONSTRAINT fk_events FOREIGN KEY(event_id) REFERENCES events(event_id)
);