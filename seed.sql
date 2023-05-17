  INSERT INTO userInfo (author, experience, linkedIn, adminVerifier)
  VALUES (
    'Timothy Galloway', 
    'Completed 16 week bootcamp for Full Stack Software Engineering and has built multiple products for the Air Force.', 
    'https://www.linkedin.com/in/tim-s-galloway/', 
    'Yes');
-- Insert into 'javaScriptCode' table
INSERT INTO javaScriptCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'test',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'cssCode' table
INSERT INTO cssCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'htmlCode' table
INSERT INTO htmlCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'sqlCode' table
INSERT INTO sqlCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'serverCode' table
INSERT INTO serverCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'seedCode' table
INSERT INTO seedCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'jQueryCode' table
INSERT INTO jQueryCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';

-- Insert into 'gitCode' table
INSERT INTO gitCode (title, author_id, author, problem, solution, formulas, verified, post_date)
SELECT
  'test',
  id AS author_id,
  'Timothy Galloway',
  'test',
  'test',
  'test',
  'Yes',
  '2023-05-17'
FROM userInfo
WHERE author = 'Timothy Galloway';