/*Continuing to collect the data concerning the IMDb Top 100 movies with Python (Spyder IDE), below we first create the respective database and lastly its two tables.
The first stores informations about directors and stars whereas the second has information about the country and financial aspects of the movie.*/




-- Creating the database --
CREATE DATABASE IMDb_db250;


-- Creating the first table --
CREATE TABLE directors_and_stars (
id INT IDENTITY (1,1) PRIMARY KEY,
director VARCHAR (35),
stars VARCHAR (75),
);



-- Storing information into the first table --
INSERT INTO IMDb_db250.dbo.directors_and_stars (director, stars)
VALUES ('Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton'), ('Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan'),
('Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart'), ('Francis Ford Coppola', 'Al Pacino, Robert De Niro, Robert Duvall'),
('Sidney Lumet', 'Henry Fonda, Lee J. Cobb, Martin Balsam'), ('Steven Spielberg', 'Liam Neeson, Ralph Fiennes, Ben Kingsley'),
('Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen'), ('Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson'),
('Peter Jackson', 'Elijah Wood, Ian McKellen, Orlando Bloom'), ('Sergio Leone', 'Clint Eastwood, Eli Wallach, Lee Van Cleef'),
('Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise'), ('David Fincher', 'Brad Pitt, Edward Norton, Meat Loaf'),
('Peter Jackson', 'Elijah Wood, Ian McKellen, Viggo Mortensen'), ('Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page'),
('Irvin Kershner', 'TMark Hamill, Harrison Ford, Carrie Fisher'), ('JLana Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss'),
('Martin Scorsese', 'Robert De Niro, Ray Liotta, Joe Pesci'), ('Milos Forman', 'Jack Nicholson, Louise Fletcher, Michael Berryman'),
('Joaquim Dos Santos', 'Shameik Moore, Hailee Steinfeld, Brian Tyree Henry'), ('David Fincher', 'Morgan Freeman, Brad Pitt, Kevin Spacey'),
('Frank Capra', 'James Stewart, Donna Reed, Lionel Barrymore'), ('Akira Kurosawa', 'MifuneTakashi, Shimura, Keiko Tsushima'),
('Jonathan Demme', 'Jodie Foster, Anthony Hopkins, Lawrence A. Bonney'), ('Christopher Nolan', 'McConaughey, Anne Hathaway, Jessica Chastain'),
('Steven Spielberg', 'Tom Hanks, Matt Damon, Tom Sizemore'), ('Fernando Meirelles', 'Alexandre Rodrigues, Leandro Firmino, Matheus Nachtergaele'),
('Roberto Benigni', 'Roberto Benigni, Nicoletta Braschi, Giorgio Cantarini'), ('Frank Darabont', 'Tom Hanks, Michael Clarke Duncan, David Morse'),
('George Lucas', 'Mark Hamill, Harrison Ford, Carrie Fisher'), ('James Cameron', 'Arnold Schwarzenegger, Linda Hamilton, Edward Furlong'),
('Robert Zemeckis', 'Michael J. Fox, Christopher Lloyd, Lea Thompson'), ('Hayao Miyazaki', 'Daveigh Chase, Suzanne Pleshette, Miyu Irino'),
('Roman Polanski', 'Adrien Brody, Thomas Kretschmann, Frank Finlay'), ('Alfred Hitchcock', 'Anthony Perkins, Janet Leigh, Vera Miles'),
('Bong Joon Ho', 'Song Kang-hoLee, Sun-kyunCho, Yeo-jeong'), ('Ridley Scott', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen'),
('Roger Allers', 'Matthew Broderick, Jeremy Irons, James Earl Jones'), ('Luc Besson', 'Jean Reno, Gary Oldman, Natalie Portman'),
('Tony Kaye', 'Edward Norton, Edward Furlong, Beverly DAngelo'), ('Martin Scorsese', 'Leonardo DiCaprio, Matt Damon, Jack Nicholson'),
('Damien Chazelle', 'Miles Teller, J.K. Simmons, Melissa Benoist'), ('Christopher Nolan', 'Christian Bale, Hugh Jackman, Scarlett Johansson'),
('Christopher Nolan', 'Cillian Murphy, Emily Blunt, Matt Damon'), ('Bryan Singer', 'Kevin Spacey, Gabriel Byrne, Chazz Palminteri'),
('Isao Takahata', 'Tsutomu Tatsumi, Ayano Shiraishi, Akemi Yamaguchi'), ('Masaki Kobayashi', 'Tatsuya Nakadai, Akira Ishihama, Shima Iwashita'),
('Michael Curtiz', 'Humphrey Bogart, Ingrid Bergman, Paul Henreid'), ('Olivier Nakache', 'François Cluzet, Omar Sy, Anne Le Ny'),
('Charles Chaplin', 'Charles Chaplin, Paulette Goddard, Henry Bergman'), ('Giuseppe Tornatore', 'Philippe Noiret, Enzo Cannavale, Antonella Attili'), 
('Sergio Leone', 'Henry Fonda, Charles Bronson, Claudia Cardinale'), ('Alfred Hitchcock', 'James Stewart, Grace Kelly, Wendell Corey'),
('Ridley Scott', 'Sigourney Weaver, Tom Skerritt, John Hurts'), ('Charles Chaplin', 'Charles Chaplin, Virginia Cherrill, Florence Lee'),
('Francis Ford Coppola', 'Martin Sheen, Marlon Brando, Robert Duvall'), ('Christopher Nolan', 'Guy Pearce, Carrie-Anne Moss, Joe Pantoliano'), 
('Quentin Tarantino', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio'), ('Steven Spielberg', 'Harrison Ford, Karen Allen, Paul Freeman'), 
('Andrew Stanton', 'Ben Burtt, Elissa Knight, Jeff Garlin'), ('Florian Henckel von Donnersmarck', 'Ulrich Mühe, Martina Gedeck, Sebastian Koch'),
('Billy Wilder', 'William Holden, Gloria Swanson, Erich von Stroheim'), ('Stanley Kubrick', 'Kirk Douglas, Ralph Meeker, Adolphe Menjous'),
('Anthony Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo'), ('Stanley Kubrick', 'Jack Nicholson, Shelley Duvall, Danny Lloyd'),
('Charles Chaplin', 'Charles Chaplin, Paulette Goddard, Jack Oakie'), ('Billy Wilder', 'Tyrone Power, Marlene Dietrich, Charles Laughton'),
('Bob Persichetti', 'Shameik Moore, Jake Johnson, Hailee Steinfeld'), ('James Cameron', 'Sigourney Weaver, Michael Biehn, Carrie Henn'),
('Christopher Nolan', 'Christian Bale, Tom Hardy, Anne Hathaway'), ('Quentin Tarantino', 'Brad Pitt, Diane Kruger, Eli Roth'),
('Sam Mendes', 'Kevin Spacey, Annette Bening, Thora Birch'), ('Stanley Kubrick', 'Peter Sellers, George C. Scott, Sterling Hayden'),
('Park Chan-wook', 'Choi Min-sik, Yoo Ji-tae, Kang Hye-jeong'), ('Lee Unkrich', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt'), 
('Milos Forman', 'F. Murray, AbrahamTom Hulce, Elizabeth Berridge'), ('John Lasseter', 'Tom Hanks, Tim Allen, Don Rickles'), 
('Wolfgang Petersen', 'Jürgen Prochnow, Herbert Grönemeyer, Klaus Wennemann'), ('Mel Gibson', 'Mel Gibson, Sophie Marceau, Patrick McGoohan'),
('Anthony Russo', 'Robert Downey Jr., Chris Evans, Mark Ruffalo'), ('Todd Phillips', 'Joaquin Phoenix, Robert De Niro, Zazie Beetz'),
('Hayao Miyazaki', 'Yôji Matsuda, Yuriko Ishida, Yûko Tanaka'), ('Gus Van Sant', 'Robin Williams, Matt Damon, Ben Affleck'),
('Sergio Leone', 'Robert De Niro, James Woods, Elizabeth McGoverns'), ('Makoto Shinkai', 'Ryunosuke Kamiki, Mone Kamishiraishi, Ryo Narita'),
('Rajkumar Hirani', 'Aamir Khan, Madhavan, Mona Singh'), ('Akira Kurosawa', 'Toshirô Mifune, Yutaka Sada, Tatsuya Nakadai'),
('Stanley Donen', 'Gene Kelly, Donald OConnor, Debbie Reynolds'), ('Darren Aronofsky', 'Ellen Burstyn, Jared Leto, Jennifer Connelly'),
('Nadine Labaki', 'Zain Al Rafeea, Yordanos Shiferaw, Boluwatife Treasure Bankole'), ('Lee Unkrich', 'Tom Hanks, Tim Allen, Joan Cusack'),
('Elem Klimov', 'Aleksey Kravchenko, Olga Mironova, Liubomiras Laucevicius'), ('Richard Marquand', 'Mark Hamill, Harrison Ford, Carrie Fisher'),
('Michel Gondry', 'Jim Carrey, Kate Winslet, Tom Wilkinson'), ('Stanley Kubrick', 'Keir Dullea, Gary Lockwood, William Sylvester'),
('Thomas Vinterberg', 'Mads Mikkelsen, Thomas Bo Larsen, Annika Wedderkopp'), ('Quentin Tarantino', 'Harvey Keitel, Tim Roth, Michael Madsen'),
('Akira Kurosawa', 'Takashi Shimura, Nobuo Kaneko, Shin.ichi Himori'), ('David Lean', 'Peter OToole, Alec Guinness, Anthony Quinn'),
('Orson Welles', 'Orson Welles, Joseph Cotten, Dorothy Comingore'), ('Fritz Lang', 'Peter Lorre, Ellen Widmann, Inge Landgut'),
('Billy Wilder', 'Jack Lemmon, Shirley MacLaine, Fred MacMurray'), ('Alfred Hitchcock', 'Cary Grant, Eva Marie Saint, James Mason'),
('Alfred Hitchcock', 'James Stewart, Kim Novak, Barbara Bel Geddes'), ('Billy Wilder', 'Fred MacMurray, Barbara Stanwyck, Edward G. Robinson'),
('Jean-Pierre Jeunet', 'Audrey Tautou, Mathieu Kassovitz, Rufus'), ('Brian De Palma', 'Al Pacino, Michelle Pfeiffer, Steven Bauer'),
('Stanley Kubrick', 'Matthew Modine, R. Lee Ermey, Vincent DOnofrio'), ('Stanley Kubrick', 'Malcolm McDowell, Patrick Magee, Michael Bates'),
('Denis Villeneuve', 'Lubna Azabal, Mélissa Désormeaux-Poulin, Maxim Gaudette'), ('Michael Mann', 'Al Pacino, Robert De Niro, Val Kilmer'),
('Thomas Kail', 'Lin-Manuel Miranda, Phillipa Soo, Leslie Odom Jr.'), ('Pete Docter', 'Edward Asner, Jordan Nagai, John Ratzenberger'),
('Robert Mulligan', 'Gregory Peck, John Megna, Frank Overton'), ('George Roy Hill', 'Paul Newman, Robert Redford, Robert Shaw'),
('Asghar Farhadi', 'Payman Maadi, Leila Hatami, Sareh Bayat'), ('Steven Spielberg', 'Harrison Ford, Sean Connery, Alison Doody'),
('Fritz Lang', 'Brigitte Helm, Alfred Abel, Gustav Fröhlich'), ('John McTiernan', 'Bruce Willis, Alan Rickman, Bonnie Bedelia'),
('Curtis Hanson', 'Kevin Spacey, Russell Crowe, Guy Pearce'), ('Vittorio De Sica', 'Lamberto Maggiorani, Enzo Staiola, Lianella Carell'),
('Guy Ritchie', 'Jason Statham, Brad Pitt, Stephen Graham'), ('Aamir Khan', 'Darsheel Safary, Aamir Khan, Tanay Chheda'),
('Martin Scorsese', 'Robert De Niro, Jodie Foster, Cybill Shepherd'), ('Sam Mendes', 'Dean-Charles Chapman, George MacKay, Daniel Mays'),
('Oliver Hirschbiegel', 'Bruno Ganz, Alexandra Maria Lara, Ulrich Matthes'), ('Nitesh Tiwari', 'Aamir Khan, Sakshi Tanwar, Fatima Sana Shaikh'),
('Joseph Kosinski', 'Tom Cruise, Jennifer Connelly, Miles Teller'), ('Sergio Leone', 'Clint Eastwood, Lee Van Cleef, Gian Maria Volontè'),
('Christopher Nolan', 'Christian Bale, Michael Caine, Ken Watanabe'), ('Billy Wilder', 'Marilyn Monroe, Tony Curtis, Jack Lemmon'),
('Charles Chaplin', 'Charles Chaplin, Edna Purviance, Jackie Coogan'), ('Martin Scorsese', 'Leonardo DiCaprio, Jonah Hill, Margot Robbie'),
('Florian Zeller', 'Anthony Hopkins, Olivia Colman, Mark Gatiss'), ('Peter Farrelly', 'Viggo Mortensen, Mahershala Ali, Linda Cardellini'),
('Joseph L. Mankiewicz', 'Bette Davis, Anne Baxter, George Sanders'), ('Stanley Kramer', 'Spencer Tracy, Burt Lancaster, Richard Widmark'),
('Peter Weir', 'Jim Carrey, Ed Harris, Laura Linney'), ('Paul Thomas Anderson', 'Daniel Day-Lewis, Paul Dano, Ciarán Hinds'),
('Akira Kurosawa', 'Tatsuya Nakadai, Akira Terao, Jinpachi Nezu'), ('Martin Scorsese', 'Robert De Niro, Sharon Stone, Joe Pesci'),
('Martin Scorsese', 'Leonardo DiCaprio, Emily Mortimer, Mark Ruffalo'), ('Guillermo del Toro', 'Ivana Baquero, Ariadna Gil, Sergi López'),
('M. Night Shyamalan', 'Bruce Willis, Haley Joel Osment, Toni Collette'), ('Clint Eastwood', 'Clint Eastwood, Gene Hackman, Morgan Freeman'),
('Steven Spielberg', 'Sam Neill, Laura Dern, Jeff Goldblum'), ('Ron Howard', 'Russell Crowe, Ed Harris, Jennifer Connelly'),
('John Huston', 'Humphrey Bogart, Walter Huston, Tim Holt'), ('Akira Kurosawa', 'Toshirô Mifune, Eijirô Tôno, Tatsuya Nakadai'),
('Ethan Coen', 'Tommy Lee Jones, Javier Bardem, Josh Brolin'), ('Quentin Tarantino', 'Uma Thurman, David Carradine, Daryl Hannah'),
('Terry Gilliam', 'Graham Chapman, John Cleese, Eric Idle'), ('John Sturges', 'Steve McQueen, James Garner, Richard Attenborough'),
('John Carpenter', 'Kurt Russell, Wilford Brimley, Keith David'), ('Akira Kurosawa', 'Toshirô Mifune, Machiko Kyô, Masayuki Mori'),
('Andrew Stanton', 'Albert Brooks, Ellen DeGeneres, Alexander Gould'), ('David Lynch', 'Anthony Hopkins, John Hurt, Anne Bancroft'),
('Roman Polanski', 'Jack Nicholson, Faye Dunaway, John Huston'), ('Hayao MiyazakiStars', 'Chieko Baishô, Takuya Kimura, Tatsuya Gashûin'),
('Victor Fleming', 'Clark Gable, Vivien Leigh, Thomas Mitchell'), ('Alfred Hitchcock', 'Ray Milland, Grace Kelly, Robert Cummings'),
('James McTeigue', 'Hugo Weaving, Natalie Portman, Rupert Graves'), ('Jon Watts', 'Tom Holland, Zendaya, Benedict Cumberbatch'),
('Martin Scorsese', 'Robert De Niro, Cathy Moriarty, Joe Pesci'), ('Guy Ritchie', 'Jason Flemyng, Dexter Fletcher, Nick Moran'),
('Juan José Campanella', 'Ricardo Darín, Soledad Villamil, Pablo Rago'), ('Pete Docter', 'Amy Poehler, Bill Hader, Lewis Black'),
('Denis Villeneuve', 'Hugh Jackman, Jake Gyllenhaal, Viola Davis'), ('Martin McDonagh', 'Frances McDormand, Woody Harrelson, Sam Rockwell'),
('David Lean', 'William Holden, Alec Guinness, Jack Hawkins'), ('Danny Boyle', 'Ewan McGregor, Ewen Bremner, Jonny Lee Miller'),
('Joel Coen', 'William H. Macy, Frances McDormand, Steve Buscemi'), ('Gavin OConnor', 'Tom Hardy, Nick Nolte, Joel Edgerton'),
('Clint Eastwood', 'Clint Eastwood, Bee Vang, Christopher Carley'), ('Steven Spielberg', 'Leonardo DiCaprio, Tom Hanks, Christopher Walken'),
('Hayao Miyazaki', 'Hitoshi Takagi, Noriko Hidaka, Chika Sakamoto'), ('Clint Eastwood', 'Hilary Swank, Clint Eastwood, Morgan Freeman'),
('Sergio Pablos', 'Jason Schwartzman, J.K. Simmons, Rashida Jones'), ('David Yates', 'Daniel Radcliffe, Emma Watson, Rupert Grint'),
('Majid Majidi', 'Mohammad Amir Naji, Amir Farrokh Hashemian, Bahare Seddiqi'), ('Ridley Scott', 'Harrison Ford, Rutger Hauer, Sean Young'),
('Steve McQueen', 'Chiwetel Ejiofor, Michael Kenneth Williams, Michael Fassbender'), ('Richard Linklater', 'Ethan Hawke, Julie Delpy, Andrea Eckert'),
('Charles Chaplin', 'Charles Chaplin, Mack Swain, Tom Murray'), ('Wes Anderson', 'Ralph Fiennes, F. Murray Abraham, Mathieu Amalric'),
('William Wyler', 'Charlton Heston, Jack Hawkins, Stephen Boyd'), ('David Fincher', 'Ben Affleck, Rosamund Pike, Neil Patrick Harris'),
('Stanley Kubrick', 'Ryan ONeal, Marisa Berenson, Patrick Magee'), ('Elia Kazan', 'Marlon Brando, Karl Malden, Lee J. Cobb'),
('Mel Gibson', 'Andrew Garfield, Sam Worthington, Luke Bracey'), ('Jim Sheridan', 'Daniel Day-Lewis, Pete Postlethwaite, Alison Crosbie'),
('Clyde Bruckman', 'Buster Keaton, Marion Mack, Glen Cavender'), ('Bong Joon Ho', 'Song Kang-ho, Kim Sang-kyung, Roe-ha Kim'),
('Michael Cimino', 'Robert De Niro, Christopher Walken, John Cazale'), ('Ingmar Bergman', 'Victor Sjöström, Bibi Andersson, Ingrid Thulin'),
('Henri-Georges Clouzot', 'Yves Montand, Charles Vanel, Peter van Eyck'), ('Carol Reed', 'Orson Welles, Joseph Cotten, Alida Valli'),
('Damián Szifron', 'Darío Grandinetti, María Marull, Mónica Villa'), ('Buster Keaton', 'Buster Keaton, Kathryn McGuire, Joe Keaton'),
('George Miller', 'Tom Hardy, Charlize Theron, Nicholas Hoult'), ('Peter Weir', 'Robin Williams, Robert Sean Leonard, Ethan Hawke'),
('Frank Capra', 'James Stewart, Jean Arthur, Claude Rains'), ('Pete Docter', 'Billy Crystal, John Goodman, Mary Gibbs'),
('Dean DeBlois', 'Jay Baruchel, Gerard Butler, Christopher Mintz-Plasse'), ('Steven Spielberg', 'Roy Scheider, Robert Shaw, Richard Dreyfuss'),
('Adam Elliot', 'Toni Collette, Philip Seymour Hoffman, Eric Bana'), ('Ingmar Bergman', 'Max von Sydow, Gunnar Björnstrand, Bengt Ekerot'),
('Lenny Abrahamson', 'Brie Larson, Jacob Tremblay, Sean Bridgers'), ('James Mangold', 'Matt Damon, Christian Bale, Jon Bernthal'),
('Joel Coen', 'Jeff Bridges, John Goodman, Julianne Moore'), ('Yasujirô Ozu', 'Chishû Ryû, Chieko Higashiyama, Sô Yamamura'),
('Brad Bird', 'Brad Garrett, Lou Romano, Patton Oswalt'), ('John G. Avildsen', 'Sylvester Stallone, Talia Shire, Burt Young'),
('Terry George', 'Don Cheadle, Sophie Okonedo, Joaquin Phoenix'), ('Carl Theodor Dreyer', 'Maria Falconetti, Eugene Silvain, André Berley'),
('James Mangold', 'Hugh Jackman, Patrick Stewart, Dafne Keen'),  ('Oliver Stone', 'Charlie Sheen, Tom Berenger, Willem Dafoe'),
('Tom McCarthy', 'Mark Ruffalo, Michael Keaton, Rachel McAdams'), ('James Cameron', 'Arnold Schwarzenegger, Linda Hamilton, Michael Biehn'), 
('T.J. Gnanavel', 'Suriya, Lijo Mol Jose, Manikandan K.'), ('Richard Linklater', 'Ethan Hawke, Julie Delpy, Vernon Dobtcheff'),
('Ron Howard', 'Daniel Brühl, Chris Hemsworth, Olivia Wilde'), ('Sidney Lumet', 'Faye Dunaway, William Holden, Peter Finch'),
('Rob Reiner', 'Wil Wheaton, River Phoenix, Corey Feldman'), ('William Wyler', 'Myrna Loy, Dana Andrews, Fredric March'),
('Mathieu Kassovitz', 'Vincent Cassel, Hubert Koundé, Saïd Taghmaoui'), ('Victor Fleming', 'Judy Garland, Frank Morgan, Ray Bolger'),
('William Friedkin', 'Ellen Burstyn, Max von Sydow, Linda Blair'), ('Sean Penn', 'Emile Hirsch, Vince Vaughn, Catherine Keener'),
('Gore Verbinski', 'Johnny Depp, Geoffrey Rush, Orlando Bloom'), ('Brad Bird', 'Craig T. Nelson, Samuel L. Jackson, Holly Hunter'),
('Ernst Lubitsch', 'Carole Lombard, Jack Benny, Robert Stack'), ('Lasse Hallström', 'Richard Gere, Joan Allen, Cary-Hiroyuki Tagawa'),
('Harold Ramis', 'Bill Murray, Andie MacDowell, Chris Elliott'), ('Park Chan-wook', 'Kim Min-hee, Ha Jung-woo, Cho Jin-woong'),
('John Ford', 'Henry Fonda, Jane Darwell, John Carradine'), ('Gillo Pontecorvo', 'Brahim Hadjadj, Jean Martin, Yacef Saadi'),
('Çagan Irmak', 'Çetin Tekindor, Fikret Kuskan, Hümeyra'), ('Alejandro G. Iñárritu', 'Emilio Echevarría, Gael García Bernal, Goya Toledo'),
('Alfred Hitchcock', 'Laurence Olivier, Joan Fontaine, George Sanders'), ('Stuart Rosenberg', 'Paul Newman, George Kennedy, Strother Martin'),
('Robert Wise', 'Julie Andrews, Christopher Plummer, Eleanor Parker'), ('Satyajit Ray', 'Kanu Bannerjee, Karuna Banner, jeeSubir Banerjee'),
('Frank Capra', 'Clark Gable, Claudette Colbert, Walter Connolly'), ('Brad Bird', 'Eli Marienthal, Harry Connick Jr., Jennifer Aniston'),
('Tate Taylor', 'Viola Davis, Emma Stone, Octavia Spencer'), ('François Truffaut', 'Jean-Pierre Léaud, Albert Rémy, Claire Maurier'),
('Ingmar Bergman', 'Bibi Andersson, Liv Ullmann, Margaretha Krook'), ('Terry Jones', 'Graham Chapman, John Cleese, Michael Palin'),
('Ron Clements', 'Scott Weinger, Robin Williams, Linda Larkin'), ('Anurag Kashyap', 'Manoj Bajpayee, Nawazuddin Siddiqui, Tigmanshu Dhulia');



-- Displaying the table --
SELECT * FROM directors_and_stars;


-- Creating the second table --
CREATE TABLE gross_and_origin (
id INT IDENTITY (1,1) PRIMARY KEY,
country VARCHAR (30) DEFAULT 'USA',
budget REAL,
box_office REAL,
);

-- Inserting information into the second table --

/* the financial information was collected mainly from wikipedia. The remain sources are listed 
in the reference section. It is also important to mention that for cases where the budget or the 
box office were not available we set 0 as its entry*/ 
INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (25, 73.3), (7.2, 291);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 185, 1006);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (13, 93), (0.337, 2), (22, 322.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, Germany, New Zealand', 100, 1470);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (8.5, 213.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, New Zealand', 93, 898.2), ('Italy', 1.2, 38.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (55, 678.2), (65, 101.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, New Zealand', 94, 947.9), ('UK, US', 160, 839);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (30.5, 549);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, Australia', 63, 467.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (25, 47.1), (4.4, 163.3), (100, 689.8), (34, 327.3), (3.18, 3.3);


INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 0.580, 0.84);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (19, 272.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 165, 715);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (70, 482.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Brazil', 3.3, 30.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Italy', 15000, 230.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (60, 286.8), (11, 775.8), (102, 520.9), (19, 388.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 19.2, 395.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France, Germany, Poland, UK', 35, 120.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0.81, 50);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('South Korea', 15.5, 267.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 103, 503.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (45, 968.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France', 16, 46.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (20, 23.9), (90, 291.5), (3.3, 49);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 40, 109.7), ('UK, US', 100, 915.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, Germany', 6, 67), ('Japan', 3.7, 0.5), ('Japan', 0, 0.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1, 6.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France', 10.8, 426.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.5, 1.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Italy, France', 5, 36);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, Italy', 5, 40);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1, 37);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 11, 184.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.5, 4.25), (31, 150), (9, 40.1), (100, 426), (20, 389.9), (180, 532.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Germany', 2, 77.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.75, 5), (0.9, 1.2), (400, 2052);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 19, 47.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (2.2, 5), (2, 9), (90, 384.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 18.5, 183.3), ('UK, US', 300, 1082);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, Germany', 70, 321.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (15, 356.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 1.8, 9.2), ('South Korea', 3, 17.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (225, 814.3), (18, 90), (30, 394.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Germany', 84.9, 257);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (70, 213.2), (400, 2799), (70, 1074);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 23.5, 194.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (10, 225.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('USA, Italy', 30, 5.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 5.065, 382.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('India', 6.629, 48.287);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 1.552, 3.106);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (2.54, 7.2), (4.5, 7.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Lebanon', 4, 68.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (200, 1067);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Russia', 2.5, 21);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (42.7, 482), (20, 74);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 10.5, 146);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Denmark', 3.45, 18.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (3, 2.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 0, 0.552);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK', 15, 70);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0.840, 1.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Germany', 0, 0.356);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (3, 24.6), (4.3, 9.8), (2.5, 7.3), (0.98, 5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France, Germany', 10, 174.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (37, 66);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 30, 120), ('UK, US', 1.3, 114),
('Canada', 6.5, 16);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (60, 187.4), (12.5, 817), (175, 735.1), (2, 13.1),
(5.5, 159.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Iran', 0.8, 24.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (48, 474.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Germany', 22.24, 1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (35, 141.5), (35, 126.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Italy', 0.13, 0.43), ('UK, US', 10, 83.6), ('India', 1.4, 16.23);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.9, 28.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 100, 384.6), ('Germany', 13.5, 92.2),
('India', 8.8, 250);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.77, 1496);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Italy, Germany, Spain', 0.6, 25.5), ('UK, US', 150, 373.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (2.9, 49), (0.25, 5.45), (100, 406.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France, UK', 6, 36.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (23, 321.8), (1.4, 8.4), (3, 16), (60, 264.1),
(25, 76.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France, Japan', 11, 19);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (50, 116.1), (80, 294.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Mexico, Spain', 19, 83.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (40, 672.8), (14.4, 159.2), (63, 1057), 
(58, 316.8), (2.5, 4.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 6.06, 2.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (25, 171.6), (30, 180.9), (3.43, 2.87),
(3.8, 11.7), (15, 19.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 0.14, 0.37);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (94, 940.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 5, 26);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (6, 29.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 24, 236);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.4, 6), (3.85, 390);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 54, 134.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (200, 1922), (18, 23.4);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 1.40, 28.1), ('Argentina', 2, 34);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (175, 858.8), (46, 122.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, US', 15, 162.9), ('UK, US', 2.8, 30.6),('Scotland', 1.82, 72),
('UK, US', 7, 60.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (25, 23.3), (33, 270), (52, 352.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Japan', 3.7, 41);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (30, 216.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Spain, USA', 40, 1.14), ('UK, US', 250, 1342), ('Iran', 0.18, 1.6),
('Hong Kong, USA', 30, 41.6), ('Luxembourg, UK, USA', 22, 187.7),
('Austria, USA', 2.5, 22.5), ('Germany, USA', 25, 173);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (2.5, 4), (15.2, 146.9), (61,369.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, USA', 11, 31.5); 

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0.91, 9.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Australia, USA', 40, 180.5), ('Ireland, UK', 13, 65.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0.75, 1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('South Korea', 2.8, 1.2), ('UK, USA', 15, 49), ('Sweden', 0, 0),
('France, Italy', 56.1, 7.8), ('UK, USA', 0, 12.68),
('argentina, Spain', 4.5, 44.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0, 0.45);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Australia', 185.1, 380);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (16.4, 235.9), (1.5, 9), (115, 579.7),
(165, 494.9), (9, 476.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Australia', 5.2, 1.7), ('Sweden', 0.15, 0.16),
('Ireland, UK, USA', 13, 36.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (97.6, 225.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, USA', 15, 46.7), ('Japan', 0, 0.89);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (150, 623.7), (0.96, 225);


INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Italy, South Africa, UK, USA', 17.5, 33.9), ('France', 0, 0);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (127, 619.2), (6, 138), (20, 98.7), (6.4, 78.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('India', 4.8, 0);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (2.7, 15.8);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Germany, UK, USA', 38, 98.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (3.8, 23.7), (8, 52.3), (3, 23.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('France', 2.6, 15.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (2.8, 29.7), (12, 441.3), (20, 56.8),
(140, 654.3), (145, 631.6), (1.2, 1.5);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('UK, USA', 16, 46.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (30, 105);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('South Korea', 8.8, 38.6);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0.8, 1.59);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('Algeria, Italy', 0.81, 0.88), ('Turkey', 1.4, 0.91),
('Mexico', 2.4, 20.9);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (1.29, 6), (3.2, 16.2), (8.2, 286.2);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('India', 0.03, 21);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (0.33, 2.5), (50,31.3);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('India, UAE, USA', 25, 216.6), ('France', 0.05, 30.7),
('Sweden', 0, 0.25), ('UK', 4, 20.7);

INSERT INTO IMDb_db250.dbo.gross_and_origin (budget, box_office)
VALUES (28, 504.1);

INSERT INTO IMDb_db250.dbo.gross_and_origin (country, budget, box_office)
VALUES ('India', 2.2, 4.9);


-- Next is created a new column to store the movies ROI, only for those which budget information was available --
ALTER TABLE IMDb_db250.dbo.gross_and_origin
ADD gross_roi REAL;

UPDATE IMDb_db250.dbo.gross_and_origin
SET gross_roi = ((box_office-budget)/budget)*100 WHERE budget<>0;


-- Presenting the full information stored into the second table--
SELECT * FROM gross_and_origin;

-- The below query displays a table containing the information stored in both tables. This will be extracted to excel and saved to then be used in Power BI and Spyder --


SELECT country, director, stars, budget, box_office, gross_roi FROM directors_and_stars
FULL OUTER JOIN gross_and_origin 
on directors_and_stars.id = gross_and_origin.id;


-- And thats all for now--