ALTER TABLE musician RENAME TO singer;

ALTER TABLE album drop foreign key FK_A_musicianName;
ALTER TABLE singer drop primary key;
ALTER TABLE singer RENAME COLUMN  musicianName to singerName;

ALTER TABLE singer add primary key(singerName);


ALTER TABLE album add CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer (singerName);
alter table singer drop COLUMN role;
alter table singer drop COLUMN bandName;

drop table band;

