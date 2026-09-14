-- V1__initial_schema.sql - initial schema
CREATE TABLE IF NOT EXISTS example_entity (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
