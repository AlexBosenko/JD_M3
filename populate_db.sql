INSERT INTO worker (name, birthday, level, salary)
VALUES 
    ('Peter Quill', '1979-06-21', 'Middle', 50000), -- id 1
    ('Peter Parker', '1996-06-01', 'Junior', 3500), -- id 2
    ('Tony Stark', '1965-05-04', 'Senior', 90000), -- id 3
    ('Clint Barton', '1971-01-07', 'Middle', 75000), -- id 4
    ('Scott Lang', '1969-04-06', 'Trainee', 800), -- id 5
    ('Steven Rogers', '1981-06-13', 'Senior', 100000), -- id 6
    ('Groot', '2005-09-20', 'Trainee', 1500), -- id 7
    ('Natalia Romanova', '1984-11-22', 'Middle', 60000), -- id 8
    ('Pepper Pots', '1972-09-27', 'Middle', 45000), -- id 9
    ('Thor Odinson', '1983-08-11', 'Middle', 80000); -- id 10

INSERT INTO client (name)
VALUES
    ('Columbia Pictures'), -- id 1
    ('Paramount Pictures'), -- id 2
    ('Marvel Studios'), -- id 3
    ('Walt Disney Studios Motion'), -- id 4
    ('Sony Pictures Releasing'); -- id 5

INSERT INTO project (name, client_id, start_date, finish_date)
VALUES
    ('Spider-Man: Homecoming', 1, '2016-06-20', '2017-07-07'), -- id 1
    ('Guardians of the Galaxy', 4, '2013-07-06', '2014-08-01'), -- id 2
    ('Captain America: Civil War', 4, '2015-04-27', '2016-04-21'), -- id 3
    ('Iron Man', 2, '2007-03-12', '2008-05-02'), -- id 4
    ('The Avengers', 3, '2011-04-01', '2012-05-04'), -- id 5
    ('Avengers: Endgame', 3, '2017-08-10', '2019-04-26'), -- id 6
    ('Avengers: Infinity War', 3, '2017-01-23', '2018-04-27'), -- id 7
    ('Avengers: Age of Ultron', 5, '2014-02-11', '2015-05-01'), -- id 8
    ('Guardians of the Galaxy Vol. 3', 4, '2021-11-08', '2023-05-05'), -- id 9
    ('Captain America: The Winter Soldier', 4, '20213-04-01', '2014-04-04'); -- id 10

INSERT INTO project_worker (project_id, worker_id)
VALUES
    (1, 2), -- 'Spider-Man: Homecoming', 'Peter Parker'
    (1, 3), -- 'Spider-Man: Homecoming', 'Tony Stark'
    (2, 1), -- 'Guardians of the Galaxy', 'Peter Quill'
    (2, 7), -- 'Guardians of the Galaxy', 'Groot'
    (3, 2), -- 'Captain America: Civil War', 'Peter Parker'
    (3, 3), -- 'Captain America: Civil War', 'Tony Stark'
    (3, 4), -- 'Captain America: Civil War', 'Clint Barton'   
    (3, 6), -- 'Captain America: Civil War', 'Steven Rogers'
    (3, 8), -- 'Captain America: Civil War', 'Natalia Romanova'
    (4, 3), -- 'Iron Man', 'Tony Stark'
    (4, 9), -- 'Iron Man', 'Pepper Pots'
    (5, 3), -- 'The Avengers', 'Tony Stark'
    (5, 4), -- 'The Avengers', 'Clint Barton'   
    (5, 6), -- 'The Avengers', 'Steven Rogers'
    (5, 8), -- 'The Avengers', 'Natalia Romanova'
    (5, 10), -- 'The Avengers', 'Thor Odinson'
    (6, 3), -- 'Avengers: Endgame', 'Tony Stark'
    (6, 4), -- 'Avengers: Endgame', 'Clint Barton'   
    (6, 6), -- 'Avengers: Endgame', 'Steven Rogers'
    (6, 9), -- 'Avengers: Endgame', Pepper Pots'
    (6, 10), -- 'Avengers: Endgame', 'Thor Odinson'
    (7, 2), -- 'Avengers: Infinity War', 'Peter Parker'
    (7, 3), -- 'Avengers: Infinity War', 'Tony Stark'
    (7, 6), -- 'Avengers: Infinity War', 'Steven Rogers'
    (7, 10), -- 'Avengers: Infinity War', 'Thor Odinson'
    (8, 3), -- 'Avengers: Age of Ultron', 'Tony Stark'
    (8, 4), -- 'Avengers: Age of Ultron', 'Clint Barton'
    (8, 6), -- 'Avengers: Age of Ultron', 'Steven Rogers'
    (8, 8), -- 'Avengers: Age of Ultron', 'Natalia Romanova'
    (9, 1), -- 'Guardians of the Galaxy Vol. 3', 'Peter Quill'
    (9, 7), -- 'Guardians of the Galaxy Vol. 3', 'Groot'
    (10, 6), -- 'Avengers: Age of Ultron', 'Steven Rogers'
    (10, 8); -- 'Avengers: Age of Ultron', 'Natalia Romanova'