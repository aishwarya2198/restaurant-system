-- Required for the tstzrange exclusion constraint 
-- (prevents overlapping reservations at the DB level)
--The rejected insert fails with error code 23P01 (exclusion_violation). Your API can catch that error and reply "That table is already booked for this time."
CREATE EXTENSION IF NOT EXISTS btree_gist;