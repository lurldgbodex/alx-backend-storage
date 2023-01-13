-- creates a view need_meeting that lists all student
-- with score under 80(strict) and no last_meeting
-- or more than a month

CREATE VIEW need_meeting AS SELECT name FROM students WHERE score < 80 AND (last_meeting IS NULL OR last_meeting < SUBDATE(CURRENT_DATE(), INTERVAL 1 MONTH))
