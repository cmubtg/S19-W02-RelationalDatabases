-- schema
CREATE TABLE Members (
    andrew_id VARCHAR(255) NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    primary_major VARCHAR(255) NOT NULL,
    school_year VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    team VARCHAR(255) NOT NULL,
    PRIMARY KEY(andrew_id)
);

-- data
INSERT INTO Members
    (andrew_id, full_name, primary_major, school_year, role, team)
VALUES
    ('maxliu', 'Max Liu', 'Statistics and Machine Learning', 'Freshman', 'Data Engineer', 'External Analytics I'),
    ('dge', 'Denis Ebby', 'Statistics and Machine Learning', 'Sophomore', 'Data Analyst', 'Internal Analytics'),
    ('yukaiy', 'Sebastian Yang', 'Information Systems', 'Freshman', 'Data Analyst', 'External Analytics II'),
    ('jmezavin', 'Juan Diego Meza-Vinasco', 'Business Administration', 'Sophomore', 'Data Engineer', 'Internal Analytics'),
    ('janiex', 'Janie Xue', 'Business Administration', 'Freshman', 'Data Analyst', 'External Analytics I'),
    ('youngjol', 'Youngjoo Lee', 'Information Systems', 'Freshman', 'Data Analyst', 'External Analytics II'),
    ('minsuel', 'Min Sue Lee', 'Behavioral Economics', 'Freshman', 'Data Analyst', 'Internal Analytics'),
    ('dvchou', 'Dylan Chou', 'Statistics and Machine Learning', 'Freshman', 'Data Engineer', 'Internal Analytics'),
    ('efeder', 'Evan Feder', 'Information Systems', 'Sophomore', 'Data Scientist', 'External Analytics I'),
    ('pvanderv', 'Preston Vander Vos', 'Business Administration', 'Junior', 'Data Engineer', 'External Analytics II'),
    ('sbala', 'Sandhya Bala', 'Computer Science', 'Sophomore', 'Data Scientist', 'External Analytics II'),
    ('kouyang', 'Kevin Ouyang', 'Economics and Statistics', 'Junior', 'Data Scientist', 'External Analytics I')
;
