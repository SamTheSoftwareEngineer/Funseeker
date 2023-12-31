"""This file is the SQL equivalent to the models.py database schema. It is used to create the database tables."""

CREATE TABLE "users" (
  "user_id" serial PRIMARY KEY,
  "username" string, UNIQUE, not NULL
  "password" string, unique, not NULL
);

CREATE TABLE "activities" (
  "activity_id" serial PRIMARY KEY,
  "price" decimal,
  "accessibility" decimal
);

CREATE TABLE "favorites" (
  "user_id" bigint,
  "activity_id" bigint,
  "favorite_id" int
);

ALTER TABLE "favorites" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "favorites" ADD FOREIGN KEY ("activity_id") REFERENCES "activities" ("activity_id");
