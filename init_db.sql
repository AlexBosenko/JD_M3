DROP TABLE IF EXISTS worker CASCADE;
DROP TABLE IF EXISTS client CASCADE;
DROP TABLE IF EXISTS project CASCADE;
DROP TABLE IF EXISTS project_worker;

DROP SEQUENCE IF EXISTS worker_seq;
DROP SEQUENCE IF EXISTS client_seq;
DROP SEQUENCE IF EXISTS project_seq;

CREATE SEQUENCE worker_seq START 1;
CREATE SEQUENCE client_seq START 1;
CREATE SEQUENCE project_seq START 1;

CREATE TABLE worker (
    id INT DEFAULT NEXTVAL('worker_seq'),
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2 AND LENGTH(name) <= 1000),
    birthday DATE CHECK (birthday > '1900-01-01'),
    level VARCHAR(10) NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    salary INT CHECK (salary >= 100 AND salary <= 100000),
    PRIMARY KEY (id)
);

CREATE TABLE client (
    id INT DEFAULT NEXTVAL('client_seq'),
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2 AND LENGTH(name) <= 1000),
    PRIMARY KEY (id)
);

CREATE TABLE project (
    id INT DEFAULT NEXTVAL('project_seq'),
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2 AND LENGTH(name) <= 1000),
    client_id INT,
    start_date DATE,
    finish_date DATE,
    PRIMARY KEY (id),
    CONSTRAINT project_fk FOREIGN KEY (client_id) REFERENCES client(id)
);

CREATE TABLE project_worker (
    project_id INT,
    worker_id INT,
    CONSTRAINT project_worker__project_fk FOREIGN KEY (project_id) REFERENCES project(id),
    CONSTRAINT project_worker__worker_fk FOREIGN KEY (worker_id) REFERENCES worker(id)
);