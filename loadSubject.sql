-- INSERT data for Subject table
INSERT INTO
    Subject (
        Subject_ID,
        Subject_Name,
        Subject_Description,
        Subject_Major,
        Subject_Unit
    )
VALUES
    (
        88634065,
        'Software Development',
        'Fundamental design concepts and principles; design patterns and software 
architecture; structured design; object-oriented analysis and design; component-based 
design; design quality and reusing; application programming interfaces; usage design; 
programming environments and tools; software life cycle and process models; software 
requirement analysis and modeling; verification and validation; software evolution and 
maintenance; team management; project scheduling; software measurement and quality 
assurance',
        'CS',
        3
    ),
    (
        88624065,
        'Relational Database',
        'Importance of database; basic data model; relation model; entity-relationship model; advanced data model; normalization; SQL language; database 
performance tuning; database design',
        'CS',
        3
    ),
    (
        88621065,
        'Mathematics for Computing',
        'Matrices; determinants; systems of linear equations; Gaussian elimination; 
linear programming; solving linear programming problems with geometric approach and 
simplex method; vector spaces; linear transformations; analytic geometry; matrix 
decompositions; eigenvalues and eigenvectors; Markov chains; state machines',
        'CS',
        3
    ),
    (
        88622065,
        'Data Structures and Algorithms',
        'Fundamentals of algorithms; linear data structures, lists, linked list, stacks 
and queue; recursion; non- linear data structures, tree graph; basic sorting algorithms, 
searching algorithms, hash tables and collision avoidance strategies; laboratory for 
problem solving and applying data structures',
        'CS',
        3
    ),
    (
        88624165,
        'User Interface Design and Development',
        'Theories and practical guidelines of user interface design; user experience 
management; users'' requirement gathering; user interface analysis and design techniques; 
prototyping and creating mock-ups using industry-standard tools; creating pilot effectively 
and efficiently',
        'CS',
        3
    );

-- insert data for ResponsibleSubject table
-- CS Professor_ID has 1-7
-- 1 subject has 2-3 professor
INSERT INTO
    ResponsibleSubject (Subject_ID, Professor_ID)
VALUES
    (88634065, 1),
    (88634065, 2),
    (88624065, 3),
    (88624065, 5),
    (88621065, 4),
    (88621065, 6),
    (88622065, 6),
    (88622065, 7),
    (88624165, 2),
    (88624165, 4),
    (88624165, 27);