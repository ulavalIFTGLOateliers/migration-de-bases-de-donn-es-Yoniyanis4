ALTER TABLE singer RENAME TO musician;

ALTER TABLE album drop foreign key FK_A_singerName;

ALTER TABLE musician drop primary key;
ALTER TABLE musician RENAME COLUMN singerName to musicianName;

ALTER TABLE musician add primary key(musicianName);

ALTER TABLE album add CONSTRAINT FK_A_musicianName FOREIGN KEY (singerName) REFERENCES musician (musicianName);

alter table musician add COLUMN role varchar(50);
alter table musician add COLUMN bandName varchar(50);

create table band (bandName varchar(50), creation YEAR, genre varchar(50), primary key (bandName));

UPDATE musician SET role = 'vocals' WHERE age = 32;
UPDATE musician SET bandName = 'Crazy Duo' WHERE age = 32;

UPDATE musician SET role = 'guitar' WHERE age = 23;
UPDATE musician SET bandName = 'Mysterio' WHERE age = 23;

UPDATE musician SET role = 'percussion' WHERE age = 47;
UPDATE musician SET bandName = 'Crazy Duo' WHERE age = 47;

UPDATE musician SET role = 'piano' WHERE age = 31;
UPDATE musician SET bandName = 'Luna' WHERE age = 31;


INSERT INTO band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band (bandName, creation, genre) VALUES ('Luna', 2009, 'classical');
INSERT INTO band (bandName, creation, genre) VALUES ('Mysterio', 2019, 'pop');