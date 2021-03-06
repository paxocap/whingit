
INSERT INTO `user` (user_email, user_name, user_password) VALUES('ad', 'Ansum Dholakia', 'blahblah');
INSERT INTO `user` (user_email, user_name, user_password) VALUES('ak47', 'AK Kumar', 'qwerty');
INSERT INTO `user` (user_email, user_name, user_password) VALUES('bgrif', 'Blake Griffin', 'clippers');  
INSERT INTO `user` (user_email, user_name, user_password) VALUES('jimmyclackers', 'Jonathan Lam', 'clackers');
INSERT INTO `user` (user_email, user_name, user_password) VALUES('kgupta', 'KAPS Gupta', 'word');  
INSERT INTO `user` (user_email, user_name, user_password) VALUES('kobeBryant', 'Kobe Bryant', 'lakers'); 
INSERT INTO `user` (user_email, user_name, user_password) VALUES('sechan', 'Sean Chan', 'seanseanchan'); 
INSERT INTO `user` (user_email, user_name, user_password) VALUES('sechen', 'Sean Chen', 'seanseanchen'); 
INSERT INTO `user` (user_email, user_name, user_password) VALUES('spark', 'Sean Parker', 'seanseanparker');
INSERT INTO `user` (user_email, user_name, user_password) VALUES('vbhalodi', 'Viral Bhalodia', 'password'); 

INSERT INTO `events` (name, time, location, creator) VALUES ('Event 1', '2012-06-02 19:30:00', 'Location 1', 3); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Event 2', '2012-06-02 20:30:00', 'Location 2', 10); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Happy Hour 1', '2012-06-02 19:30:00', 'Atlanta', 5); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Happy Hour 2', '2012-06-02 20:30:00', 'Las Vegas', 6); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Games 1', '2012-06-02 21:30:00', 'TBA 2', 7); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Games 2', '2012-06-02 22:30:00', 'TBA 1', 3); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Blah Blah 1', '2012-06-02 22:30:00', 'UCSD Scripps', 3); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Blah Blah 2', '2012-06-02 23:30:00', 'UCSD Rec Room', 4); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Final 1', '2012-06-02 23:30:00', 'Somewhere 1', 1); 
INSERT INTO `events` (name, time, location, creator) VALUES ('Final 2', '2012-06-02 22:30:00', 'Somewhere 2', 2); 

INSERT INTO `tags` (tag) VALUES ('other');
INSERT INTO `tags` (tag) VALUES ('free food');
INSERT INTO `tags` (tag) VALUES ('tech talk');
INSERT INTO `tags` (tag) VALUES ('student org');
INSERT INTO `tags` (tag) VALUES ('professional');
INSERT INTO `tags` (tag) VALUES ('academic');
INSERT INTO `tags` (tag) VALUES ('entertainment');
INSERT INTO `tags` (tag) VALUES ('bars');
INSERT INTO `tags` (tag) VALUES ('sports');

INSERT INTO `attend` (id, attendee, status) VALUES (1,3,1);
INSERT INTO `attend` (id, attendee, status) VALUES (2,10,1);
INSERT INTO `attend` (id, attendee, status) VALUES (3,5,1);
INSERT INTO `attend` (id, attendee, status) VALUES (4,6,1);
INSERT INTO `attend` (id, attendee, status) VALUES (5,7,1);
INSERT INTO `attend` (id, attendee, status) VALUES (6,3,1);
INSERT INTO `attend` (id, attendee, status) VALUES (7,3,1);
INSERT INTO `attend` (id, attendee, status) VALUES (8,4,1);
INSERT INTO `attend` (id, attendee, status) VALUES (9,1,1);
INSERT INTO `attend` (id, attendee, status) VALUES (10,2,1);
INSERT INTO `attend` (id, attendee, status) VALUES (1,5,2);
INSERT INTO `attend` (id, attendee, status) VALUES (2,5,1);
INSERT INTO `attend` (id, attendee, status) VALUES (3,7,1);
INSERT INTO `attend` (id, attendee, status) VALUES (4,5,1);
INSERT INTO `attend` (id, attendee, status) VALUES (5,5,1);
INSERT INTO `attend` (id, attendee, status) VALUES (6,5,1);
INSERT INTO `attend` (id, attendee, status) VALUES (7,5,1);
INSERT INTO `attend` (id, attendee, status) VALUES (8,7,2);
INSERT INTO `attend` (id, attendee, status) VALUES (9,8,1);
INSERT INTO `attend` (id, attendee, status) VALUES (1,8,1);
INSERT INTO `attend` (id, attendee, status) VALUES (2,8,1);
INSERT INTO `attend` (id, attendee, status) VALUES (3,8,1);
INSERT INTO `attend` (id, attendee, status) VALUES (4,8,2);
INSERT INTO `attend` (id, attendee, status) VALUES (5,8,2);


INSERT INTO `tagLookup` (eventID, tagID) VALUES (1,1);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (1,2);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (1,4);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (1,5);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (2,1);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (3,2);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (4,3);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (5,4);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (6,4);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (7,4);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (7,6);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (8,6);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (9,6);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (10,1);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (10,2);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (10,3);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (10,4);
INSERT INTO `tagLookup` (eventID, tagID) VALUES (10,5);

INSERT INTO `description` (eventID, about) VALUES (1,'This is event 1');
INSERT INTO `description` (eventID, about) VALUES (2,'This is event 2');
INSERT INTO `description` (eventID, about) VALUES (3,'This is event 3');
INSERT INTO `description` (eventID, about) VALUES (4,'This is event 4');
INSERT INTO `description` (eventID, about) VALUES (5,'This is event 5');
INSERT INTO `description` (eventID, about) VALUES (6,'This is event 6');
INSERT INTO `description` (eventID, about) VALUES (7,'This is event 7');
INSERT INTO `description` (eventID, about) VALUES (8,'This is event 8');
INSERT INTO `description` (eventID, about) VALUES (9,'This is event 9');
INSERT INTO `description` (eventID, about) VALUES (10,'This is event 10');
