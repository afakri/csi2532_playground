ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210227213900-update-athletes.sql', '2021-02-27 21:39:00'); 