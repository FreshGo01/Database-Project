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
    ),
    (
        88710265,
        'Logical Thinking and Problem Solving for Innovation',
        'Technological innovation that changes the world; process of logical
thinking and problem solving, problem analysis; data abstraction and
representation; flowchart, mind map, dividing main problems into sub
problems; problem modeling tools',
        'IT',
        2
    ),
    (
        88510265,
        'Programming Fundamental',
        'Principles of problem solving, concepts, roles and functions of
algorithms, planning and designing logic and algorithms in programming
with flowcharts or pseudocode, algorithm application, development,
testing, debugging and program editing, grammar and semantics of highlevel languages, number representation, constants, variables, expressions,
and assignments, input and display of data, control structures of program
as selective and repetitive, subprogram and value passing, recursion
concept and recursion functions, character representing, array data type
and processing, strings and processing, file',
        'IT',
        3
    ),
    (
        88710065,
        'Information Technology Fundamentals',
        'Pervasive themes in IT; data and information, management of
complexity; redesigning processes and application of IT in business; project
management, information management; information assurance, and
security; information, and communication technologies; IT professionalism,
IT and related disciplines; history of computing technology; user
interaction; the Internet and World Wide Web, cloud, social impact, and IT
applications',
        'IT',
        3
    ),
    (
        88823465,
        'Individual Software Development Process',
        'Software development process; time management; tracking time; period
and production planning; managing personal time; commitments and schedules; project
plan; finding defects; code review checklist; projecting defects; economics of defect
removal; defects of design; product quality and process; personal commitment to
quality; self-organization & improvement',
        'SE',
        3
    ),
    (
        88822365,
        'Data Structure and Algorithms for Software Engineering',
        'Fundamental concepts of data structures, array, list, stack, queue, tree,
graph, hashing methods; sorting; searching; the basics of algorithmic analysis; algorithmic
complexity; concepts of recursion; laboratory',
        'SE',
        3
    ),
    (
        88520365,
        'Probability and Statistics for Computing',
        'Descriptive statistics; statistical inference; principles of probability; Bayes
theorem; probability distribution of random variables; statistical distribution; estimation;
hypothesis testing; correlation and linear regression analysis; data visualization; data
analysis for decision support',
        'SE',
        3
    ),
    (
        88825165,
        'Computer Architecture and Organization for Software Engineering',
        'Basic concepts of computer architecture and organization; design
methodology; performance evaluation; CPU architecture; instruction sets; ALU design;
memory hierarchies; virtual memory; cache memory; input/output architectures;
interrupts; DMA; parallel processing; pipelined processors; multiprocessors',
        'SE',
        3
    ),
    (
        88823565,
        'Individual Software Development Process Laboratory',
        'Laboratory for individual software development process; practice of
individual software development process in laboratory workshop',
        'SE',
        1
    ),
    (
        89022264,
        'Basic Electronics and Logic Design',
        'Semiconductor devices, current, voltage and frequency characteristics,
analysis and design of diode circuits, analysis and design of BJT, MOS, CMOS and BiCMOS
transistor circuits, operational amplifier and its applications, power supply module',
        'AAI',
        3
    ),
    (
        89022164,
        'Data Analytics Programming',
        'Overview of programming for data analysis, data types, reading and writing
data files, data analystic tools, programming for statistical analysis, programming for
scientific computing, data visualizations',
        'AAI',
        3
    ),
    (
        89022364,
        'Unix Tools and System Administration',
        'Overview of the Unix system, utility programs, file system structure,
command-line interface and graphic user interface, shell scripts, system calls, introduction
to system administration, roles of system administrator, booting, user and group
management, process management, network configuration, system backup',
        'AAI',
        3
    ),
    (
        89033064,
        'Database I',
        'Data storage basics, database terminology, database structures, database
design, database query, database tools for managing data, data center basics',
        'AAI',
        3
    ),
    (
        88959162,
        'Seminar in Data Science I',
        'Approaches and steps in pursuing problems by scientific methods, the
dimension and tools of research, literature review process, research planning and design,
qualitative and quantitative methodology, ways to summarize and present the final results,
prepare a seminar on a current and relevant research topic using scientific methodologies',
        'M.Sc',
        1
    ),
    (
        88969762,
        'Thesis',
        'Purpose of research; literature reviews, analysis and synthesis; confidence
evaluation of reviewed literature; research aims and objectives; research methodologies;
research proposals; research conducts; result processing and analysis; result synthesis;
discussions; citations and international bibliographic systems; full research report
compilation; research article authoring; abstract preparation; oral presentations; ethics and
code of conducts of researchers; ethics in publishing academic works',
        'M.Sc',
        6
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
    (88624165, 27),
    (88710265, 8),
    (88710265, 11),
    (88510265, 10),
    (88510265, 12),
    (88710065, 9),
    (88710065, 14),
    (88823465, 15),
    (88823465, 16),
    (88822365, 17),
    (88822365, 19),
    (88520365, 18),
    (88520365, 20),
    (88825165, 17),
    (88825165, 18),
    (88823565, 2),
    (88823565, 3),
    (89022264, 25),
    (89022164, 29),
    (89022364, 30),
    (89033064, 25),
    (89033064, 26),
    (88959162, 27),
    (88969762, 28);