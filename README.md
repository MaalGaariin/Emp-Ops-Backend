# Emp-Ops-Backend

#### This repository belongs to section 1 students

### Project Title:
- # Employee Profile

### Backend

# Explanation on the timestamp line of the sql code.
In the announcement table creation, there's a line that sets a default value for the timestamp column

timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

This line is specifying that the timestamp column should have a default value of the current timestamp whenever a new row is inserted, and the timestamp value is not explicitly provided during the insertion.

Breaking it down...

TIMESTAMP: This is the data type for a timestamp in SQL.

DEFAULT CURRENT_TIMESTAMP: This part specifies the default value for the column. In this case, it's set to the current timestamp, which is the date and time when the record is inserted into the table.

So, when you insert a new record into the announcement table without specifying a value for the timestamp column, it will automatically be populated with the current date and time.

For example, if you insert a record into the announcement table like this:

INSERT INTO announcement (employee_id, title, image_url, text) 
VALUES (1, 'New Announcement', 'image.jpg', 'This is a new announcement');

The timestamp column will be automatically set to the current date and time at the moment of the insertion.

