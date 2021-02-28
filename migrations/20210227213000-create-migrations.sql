CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210227212800-create-athletes.sql', '2021-02-27 21:28:00');
INSERT INTO schema_migrations (migration, migrated_at) VALUES 
('20210227213000-create-migrations.sql', '2021-02-27 21:30:00');