/*
  event-inserts.sql

  The purpose of this SQL file is to manually insert the following event types into the ZooKeepr database;

  * Miniconferences
  * Birds of a Feather (BoF) sessions

  This script is required in order to ensure that the JSON that is exported from ZooKeepr contains all the relevant fields suitable for assisting the AV Team for video production, and for consumption in other systems.

  This script is based off work from;

  * Clinton Roy
  * Steve Ellis

  for LCA2011 and LCA2015 respectively

  In order to use this file you will need

  * Access to ZooKeepr UAT and prod instances via command line
  * A reasonable idea of SQL command line, Postgres flavour
  * Patience and preferably a $beverage ;-)

*/


/*
  Structure of this file

  1. Identify highest time_slot id number
  2. Create the new time_slots that are required for each Miniconf

*/



-- hXeOModrlsxhZPxTsgug - prod
-- KR0pYMsA55u2Qy4HfKDUx - dev


/*
  Identify the highest id in the time_slot table
*/

-- SELECT MAX(id) FROM time_slot;

-- for LCA2016 this is currently 1 in UAT and 100 in production
-- we will set the starting time_slot for manual entry to start at 300


/*
  Create the new time_slots

  The 'whole session' slots are already in the production ZooKeepr database, this will add in session times that are not covered by the 'whole session' slots (ie. after morning tea, after lunch, after afternoon tea).
*/

-- Monday 01 Feb 2016 - Open Cloud Symposium

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (300, '2016-02-01 10:40:00', '2016-02-01 11:35:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (301, '2016-02-01 11:35:00', '2016-02-01 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (302, '2016-02-01 13:20:00', '2016-02-01 14:15:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (303, '2016-02-01 14:15:00', '2016-02-01 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (304, '2016-02-01 15:40:00', '2016-02-01 16:35:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (305, '2016-02-01 16:35:00', '2016-02-01 17:20:00', false, false);

-- Monday 01 Feb 2016 - Open Hardware Miniconf
-- (this Miniconf just has the whole sessions advertised, not individual ones)

-- Monday 01 Feb 2016 - Multimedia and Music Miniconf

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (306, '2016-02-01 11:35:00', '2016-02-01 11:55:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (307, '2016-02-01 11:55:00', '2016-02-01 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (308, '2016-02-01 14:15:00', '2016-02-01 14:40:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (309, '2016-02-01 14:40:00', '2016-02-01 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (309, '2016-02-01 16:35:00', '2016-02-01 17:10:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (311, '2016-02-01 17:10:00', '2016-02-01 17:20:00', false, false);

-- Monday 01 Feb 2016 - Documentation Miniconf
-- (Schedule still to be finalised)

-- Monday 01 Feb 2016 - Open Source and Bioinformatics

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (312, '2016-02-01 10:40:00', '2016-02-01 10:50:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (313, '2016-02-01 10:50:00', '2016-02-01 11:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (314, '2016-02-01 11:20:00', '2016-02-01 11:50:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (315, '2016-02-01 11:50:00', '2016-02-01 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (316, '2016-02-01 13:20:00', '2016-02-01 13:30:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (317, '2016-02-01 13:30:00', '2016-02-01 14:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (318, '2016-02-01 14:30:00', '2016-02-01 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (319, '2016-02-01 15:40:00', '2016-02-01 16:10:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (320, '2016-02-01 16:10:00', '2016-02-01 16:50:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (320, '2016-02-01 16:50:00', '2016-02-01 17:20:00', false, false);

-- Tuesday 02 Feb 2016 - Sysadmin Miniconf

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (321, '2016-02-02 10:40:00', '2016-02-02 11:10:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (322, '2016-02-02 11:10:00', '2016-02-02 11:25:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (323, '2016-02-02 11:30:00', '2016-02-02 11:50:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (324, '2016-02-02 11:50:00', '2016-02-02 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (325, '2016-02-02 13:20:00', '2016-02-02 13:45:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (326, '2016-02-02 13:45:00', '2016-02-02 14:05:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (327, '2016-02-02 14:10:00', '2016-02-02 14:30:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (328, '2016-02-02 14:45:00', '2016-02-02 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (329, '2016-02-02 15:40:00', '2016-02-02 16:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (330, '2016-02-02 16:00:00', '2016-02-02 16:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (331, '2016-02-02 16:25:00', '2016-02-02 16:35:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (332, '2016-02-02 16:35:00', '2016-02-02 16:50:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (333, '2016-02-02 16:50:00', '2016-02-02 17:05:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (334, '2016-02-02 17:05:00', '2016-02-02 17:20:00', false, false);

-- Tuesday 02 Feb 2016 - Open Radio Miniconf

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (335, '2016-02-02 10:40:00', '2016-02-02 10:50:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (336, '2016-02-02 10:50:00', '2016-02-02 11:15:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (337, '2016-02-02 11:15:00', '2016-02-02 11:40:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (338, '2016-02-02 11:40:00', '2016-02-02 12:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (338, '2016-02-02 12:00:00', '2016-02-02 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (338, '2016-02-02 13:30:00', '2016-02-02 14:10:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (339, '2016-02-02 14:10:00', '2016-02-02 14:40:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (340, '2016-02-02 14:40:00', '2016-02-02 15:00:00', false, false);
-- (the after afternoon tea session will use a whole session slot)

-- Tuesday 02 Feb 2016 - Open Knowledge Miniconf

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (341, '2016-02-02 10:40:00', '2016-02-02 11:05:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (342, '2016-02-02 11:05:00', '2016-02-02 11:30:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (343, '2016-02-02 11:30:00', '2016-02-02 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (344, '2016-02-02 13:20:00', '2016-02-02 13:45:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (345, '2016-02-02 13:45:00', '2016-02-02 14:10:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (346, '2016-02-02 14:10:00', '2016-02-02 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (347, '2016-02-02 15:40:00', '2016-02-02 16:30:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (348, '2016-02-02 16:30:00', '2016-02-02 17:20:00', false, false);

-- Tuesday 02 Feb 2016 - Functional Programming Miniconf

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (349, '2016-02-02 10:40:00', '2016-02-02 11:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (350, '2016-02-02 11:00:00', '2016-02-02 11:40:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (351, '2016-02-02 11:40:00', '2016-02-02 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (352, '2016-02-02 13:20:00', '2016-02-02 13:55:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (353, '2016-02-02 13:55:00', '2016-02-02 14:30:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (354, '2016-02-02 14:30:00', '2016-02-02 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (355, '2016-02-02 15:40:00', '2016-02-02 16:15:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (355, '2016-02-02 16:15:00', '2016-02-02 17:05:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (356, '2016-02-02 17:05:00', '2016-02-02 17:20:00', false, false);


/* 
SELECT pg_catalog.setval('time_slot_id_seq', 246, true);
-- This provides the schedule headings

INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (187, 44, 1, 52, false, NULL, NULL, NULL, '2014-12-19 15:06:09.690354', '2014-12-19 15:06:09.690354');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (188, 44, 2, 91, false, NULL, NULL, NULL, '2014-12-19 15:07:20.244029', '2014-12-19 15:07:20.244029');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (189, 44, 4, 90, false, NULL, NULL, NULL, '2014-12-19 15:07:47.826042', '2014-12-19 15:07:47.826042');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (190, 44, 5, 51, false, NULL, NULL, NULL, '2014-12-19 15:08:23.226027', '2014-12-19 15:08:23.226027');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (191, 44, 6, 88, false, NULL, NULL, NULL, '2014-12-19 15:08:52.388738', '2014-12-19 15:08:52.388738');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (192, 44, 14, 89, false, NULL, NULL, NULL, '2014-12-19 15:09:18.367377', '2014-12-19 15:09:18.367377');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (193, 43, 1, 48, false, NULL, NULL, NULL, '2014-12-19 15:11:10.941602', '2014-12-19 15:11:10.941602');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (194, 43, 2, 45, false, NULL, NULL, NULL, '2014-12-19 15:11:31.470596', '2014-12-19 15:11:31.470596');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (195, 43, 4, 40, false, NULL, NULL, NULL, '2014-12-19 15:11:55.783069', '2014-12-19 15:11:55.783069');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (196, 43, 5, 86, false, NULL, NULL, NULL, '2014-12-19 15:12:27.052149', '2014-12-19 15:12:27.052149');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (197, 43, 6, 58, false, NULL, NULL, NULL, '2014-12-19 15:12:45.597483', '2014-12-19 15:12:45.597483');
INSERT INTO schedule (id, time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (198, 43, 14, 46, false, NULL, NULL, NULL, '2014-12-19 15:13:19.021891', '2014-12-19 15:13:19.021891');
-- Name: schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lca2015_uat
SELECT pg_catalog.setval('schedule_id_seq', 199, true);

-- For Astronomy
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (246, '2015-01-13 10:40:00', '2015-01-13 10:45:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (247, '2015-01-13 10:45:00', '2015-01-13 11:25:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (248, '2015-01-13 11:35:00', '2015-01-13 12:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (249, '2015-01-13 13:20:00', '2015-01-13 14:05:00', false, false);
-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (250, '2015-01-13 14:15:00', '2015-01-13 15:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (251, '2015-01-13 15:40:00', '2015-01-13 16:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (252, '2015-01-13 16:05:00', '2015-01-13 16:25:00', false, false);
-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (253, '2015-01-13 16:35:00', '2015-01-13 16:55:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (254, '2015-01-13 17:00:00', '2015-01-13 17:20:00', false, false);

SELECT pg_catalog.setval('time_slot_id_seq', 255, true);

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (255, '2015-01-12 11:30:00', '2015-01-12 12:20:00', false, false);

SELECT pg_catalog.setval('time_slot_id_seq', 256, true);

-- Docs mini-conf

delete from time_slot where id=257;
delete from time_slot where id=258;
delete from time_slot where id=259;
delete from time_slot where id=260;
delete from time_slot where id=260;
delete from time_slot where id=261;
delete from time_slot where id=262;
delete from time_slot where id=263;
delete from time_slot where id=264;
delete from time_slot where id=265;

INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (253, '2015-01-12 14:15:00', '2015-01-12 14:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (257, '2015-01-12 14:20:00', '2015-01-12 14:40:00', false, false);
-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (258, '2015-01-12 14:40:00', '2015-01-12 15:00:00', false, false);

-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (259, '2015-01-12 15:40:00', '2015-01-12 16:00:00', false, false);
-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (260, '2015-01-12 16:00:00', '2015-01-12 16:20:00', false, false);
-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (261, '2015-01-12 16:20:00', '2015-01-12 16:40:00', false, false);
-- INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (262, '2015-01-12 16:40:00', '2015-01-12 17:00:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (263, '2015-01-12 17:00:00', '2015-01-12 17:10:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (264, '2015-01-12 17:10:00', '2015-01-12 17:15:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (265, '2015-01-12 17:15:00', '2015-01-12 17:20:00', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (250, '2015-01-12 17:10:00', '2015-01-12 17:20:00', false, false);

SELECT pg_catalog.setval('time_slot_id_seq', 266, true);

-- Dev Test
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (256, '2015-01-13 16:10:00', '2015-01-13 16:35:00', false, false);


-- Cloud
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (266, '2015-01-12 10:40:00' , '2015-01-12 11:15', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (267, '2015-01-12 11:15:00' , '2015-01-12 11:45', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (268, '2015-01-12 11:50:00' , '2015-01-12 12:20', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (269, '2015-01-12 16:00:00' , '2015-01-12 16:25', false, false);
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (270, '2015-01-12 16:25:00' , '2015-01-12 17:10', false, false);


SELECT pg_catalog.setval('time_slot_id_seq', 270, true);

-- Kernel
INSERT INTO time_slot (id, start_time, end_time, "primary", heading) VALUES (271, '2015-01-12 14:10:00', '2015-01-12 14:55', false, false);
SELECT pg_catalog.setval('time_slot_id_seq', 271, true);














-- Sys Admin miniconf ID 110 - 122 in DEV - 131-143 in UAT/PROD

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Configuration Management - A love story : Javier Turegano','http://sysadmin.miniconf.org/presentations15.html#JavierTuregano', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'How we upgraded the monitoring of over 8000 servers : Phil Ingram','http://sysadmin.miniconf.org/presentations15.html#PhilIngram', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Developments in PCP (Performance Co-Pilot) : Nathan Scott','http://sysadmin.miniconf.org/presentations15.html#NathanScott', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Security options for container implementations : Jay Coles','http://sysadmin.miniconf.org/presentations15.html#JayColes', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Mass automatic roll out of Linux with Windows as a VM guest : Steven Sykes','http://sysadmin.miniconf.org/presentations15.html#StevenSykes', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'etcd: distributed locking and service discovery : Brandon Philips','http://sysadmin.miniconf.org/presentations15.html#BrandonPhilips', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Linux at the University : Randy Appleton','http://sysadmin.miniconf.org/presentations15.html#RandyAppleton', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Untangling the strings: Scaling Puppet with inotify : Steven McDonald','http://sysadmin.miniconf.org/presentations15.html#StevenMcDonald', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Alerting Husbandry : Julien Goodwin','http://sysadmin.miniconf.org/presentations15.html#JulienGoodwin', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Managing microservices effectively : Daniel Hall','http://sysadmin.miniconf.org/presentations15.html#DanielHall', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Corralling logs with ELK : Mark Walkom','http://sysadmin.miniconf.org/presentations15.html#MarkWalkom', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'FAI -- the universal deployment tool : Thomas Lange','http://sysadmin.miniconf.org/presentations15.html#ThomasLange', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Documentation made complicated : Eric Burgueno','http://sysadmin.miniconf.org/presentations15.html#EricBurgueno', true, false, 1);


-- Add to schedule - NOTE FIX EVENT SEQUENCE

-- remove a master entry
Delete from schedule where time_slot_id=12 and location_id=1;

Delete from schedule where time_slot_id=189 and location_id=1;
Delete from schedule where time_slot_id=190 and location_id=1;
Delete from schedule where time_slot_id=191 and location_id=1;
Delete from schedule where time_slot_id=108 and location_id=1;
Delete from schedule where time_slot_id=195 and location_id=1;
Delete from schedule where time_slot_id=196 and location_id=1;
Delete from schedule where time_slot_id=119 and location_id=1;
Delete from schedule where time_slot_id=119 and location_id=1;
Delete from schedule where time_slot_id=198 and location_id=1;
Delete from schedule where time_slot_id=199 and location_id=1;
Delete from schedule where time_slot_id=200 and location_id=1;
Delete from schedule where time_slot_id=201 and location_id=1;
Delete from schedule where time_slot_id=202 and location_id=1;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (189, 1, 131, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (190, 1, 132, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (191, 1, 133, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (192, 1, 134, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (108, 1, 135, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (195, 1, 136, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (196, 1, 137, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (119, 1, 138, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (198, 1, 139, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (199, 1, 140, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (200, 1, 141, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (201, 1, 142, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (202, 1, 143, false, NULL, NULL, NULL,now(),now());




-- Music and Multimedia 123-132 in DEV / 144-153 in UAT



INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Disentangle a new fangled image mangler : Katie McLaughlin', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#km', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Learning to sight read with PHP and LilyPond : Ben Savage', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#bs', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'MediaGoblin: The Decentralized Hosting Service for Artists : Deb Nicholson', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#dn', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Codec 2 at very low bit rates : David Rowe', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#dr', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'State of the GStreamer project : Jan Schmidt', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#js', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Writing custom Gstreamer plugins for art and science : Douglas Bagnall', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#db', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'VLC mobile ports and Mobile Multimedia : Jean-Baptiste Kempf', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#jbk', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'VLC Audio/Video output and pipeline architecture : Rémi Denis-Courmont', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#rdc', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Demo/Jam session and lightning talks : Various', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#v', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Miniconf close : Jonathan Woithe', '', true, false, 1);

-- Cleanup needed in PROD
Delete from schedule where time_slot_id=7 and location_id=6;

delete from schedule where time_slot_id=147 and location_id=6;
delete from schedule where time_slot_id=148 and location_id=6;
delete from schedule where time_slot_id=67 and location_id=6;
delete from schedule where time_slot_id=68 and location_id=6;
delete from schedule where time_slot_id=87 and location_id=6;
delete from schedule where time_slot_id=88 and location_id=6;
delete from schedule where time_slot_id=75 and location_id=6;
delete from schedule where time_slot_id=139 and location_id=6;
delete from schedule where time_slot_id=129 and location_id=6;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (147, 6, 123, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (148, 6, 124, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (67, 6, 125, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (68, 6, 126, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (87, 6, 127, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (88, 6, 128, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (75, 6, 129, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (139, 6, 130, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (129, 6, 131, false, NULL, NULL, NULL,now(),now());
-- INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (160, 6, 153, false, NULL, NULL, NULL,now(),now());

-- 2015-01-12 10:40:00, 'Disentangle a new fangled image mangler : Katie McLaughlin', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#km'
-- 2015-01-12 11:05:00, 'Learning to sight read with PHP and LilyPond : Ben Savage', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#bs'
-- 2015-01-12 11:30:00, 'MediaGoblin: The Decentralized Hosting Service for Artists : Deb Nicholson', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#dn'
-- 2015-01-12 11:55:00, 'Codec 2 at very low bit rates : David Rowe', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#dr'
-- 2015-01-12 13:20:00, 'State of the GStreamer project : Jan Schmidt', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#js'
-- 2015-01-12 14:10:00, 'Writing custom Gstreamer plugins for art and science : Douglas Bagnall', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#db'
-- 2015-01-12 15:40:00, 'VLC mobile ports and Mobile Multimedia : Jean-Baptiste Kempf', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#jbk'
-- 2015-01-12 16:05:00, 'VLC Audio/Video output and pipeline architecture : Rémi Denis-Courmont', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#rdc'
-- 2015-01-12 16:30:00, 'Demo/Jam session and lightning talks : Various', 'http://www.annodex.org/events/lca2015_mmm/index.php/Main/Schedule#v'
-- 2015-01-12 17:20:00, 'Miniconf close : Jonathan Woithe', ''

-- OpenStack on Tuesday 155-164 in DEV
-- Fix sequent in DEV only
SELECT pg_catalog.setval('event_id_seq', 154, true);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Welcome and Introduction : Michael Still', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#welcome', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'TBA', '', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Introducing OpenStack Swift : John Dickinson', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#swift', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Juju Deployments at Canonical : Brad Marshall', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#juju', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Deploying Nova : Michael Still', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#nova', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Introducing OpenStack Neutron : Mark McClain', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#neutron', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Extending Horizon to work in your Deployment : David Lyle', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#horizon', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Handling RabbitMQ Failures Gracefully with HAProxy : Sachi King', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#rabbitmq', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Selling Mist: Better Metering Through Ceilometer : Sharif Olorin', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#metering', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'OpenStack Operations for Engineers : Alex Tesch; Daniel Martushev; and Anthony Rees', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#operations', true, false, 1);

-- Clean up placeholders
delete from schedule where time_slot_id=9 and location_id=2;
delete from schedule where time_slot_id=12 and location_id=2;
delete from schedule where time_slot_id=14 and location_id=2;
delete from schedule where time_slot_id=177 and location_id=2;
delete from schedule where time_slot_id=225 and location_id=2;
delete from schedule where time_slot_id=226 and location_id=2;
delete from schedule where time_slot_id=227 and location_id=2;
delete from schedule where time_slot_id=108 and location_id=2;
delete from schedule where time_slot_id=117 and location_id=2;
delete from schedule where time_slot_id=228 and location_id=2;
delete from schedule where time_slot_id=135 and location_id=2;
delete from schedule where time_slot_id=74 and location_id=2;
delete from schedule where time_slot_id=128 and location_id=2;
delete from schedule where time_slot_id=229 and location_id=2;
delete from schedule where time_slot_id=230 and location_id=2;
delete from schedule where time_slot_id=158 and location_id=2;


delete from event where id=155;
delete from event where id=156;
delete from event where id=157;
delete from event where id=158;
delete from event where id=159;
delete from event where id=160;
delete from event where id=161;
delete from event where id=162;
delete from event where id=162;
delete from event where id=164;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (177, 2, 155, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (225, 2, 156, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (226, 2, 157, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (227, 2, 158, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (108, 2, 159, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (117, 2, 160, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (228, 2, 161, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (230, 2, 162, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (158, 2, 163, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (229, 2, 164, false, NULL, NULL, NULL,now(),now());

-- 2014-01-13 10:40:00 , 2014-01-13 11:00:00, 'Welcome and Introduction : Michael Still', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#welcome'
-- 2014-01-13 11:00:00 , 2014-01-13 11:30:00, 'TBA', ''
-- 2014-01-13 11:30:00 , 2014-01-13 11:35:00, '…five minute break…', ''
-- 2014-01-13 11:35:00 , 2014-01-13 12:00:00, 'Introducing OpenStack Swift : John Dickinson', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#swift'
-- 2014-01-13 12:00:00 , 2014-01-13 12:20:00, 'Juju Deployments at Canonical : Brad Marshall', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#juju'
-- 2014-01-13 13:20:00 , 2014-01-13 13:45:00, 'Deploying Nova : Michael Still', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#nova'
-- 2014-01-13 13:45:00 , 2014-01-13 14:10:00, 'Introducing OpenStack Neutron : Mark McClain', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#neutron'
-- 2014-01-13 14:10:00 , 2014-01-13 14:15:00, '…five minute break…', ''
-- 2014-01-13 14:15:00 , 2014-01-13 14:40:00, 'Extending Horizon to work in your Deployment : David Lyle', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#horizon'
-- 2014-01-13 14:40:00 , 2014-01-13 15:00:00, 'Handling RabbitMQ Failures Gracefully with HAProxy : Sachi King', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#rabbitmq'
-- 2014-01-13 15:40:00 , 2014-01-13 16:30:00, 'Selling Mist: Better Metering Through Ceilometer : Sharif Olorin', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#metering'
-- 2014-01-13 16:30:00 , 2014-01-13 16:35:00, '…five minute break…', ''
-- 2014-01-13 16:35:00 , 2014-01-13 17:20:00, 'OpenStack Operations for Engineers : Alex Tesch; Daniel Martushev; and Anthony Rees', 'http://sites.rcbops.com/openstack_miniconf/2014/12/lca2015-schedule/#operations'


--

-- Humantarian on Monady 165-170 in DEV

-- clean up
delete from schedule where time_slot_id=3 and location_id=5;
delete from schedule where time_slot_id=187 and location_id=5;

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Introduction : Kate Chapman','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#kc1', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Missing Maps Project - Putting the World''s Most Vulnerable on the Map: Kate Chapman','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#kc2', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Introduction to Humanitarian Response: Chris Daley','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#cd', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Map My Rights Foundation - Open Source for Land Tenure: Noel Taylor','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#nt', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Sahana Software Foundation - Crisis Management Software: Michael Howden','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#mh', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Q&A/Speaker Panel','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#qa', true, false, 1);
SELECT pg_catalog.setval('event_id_seq', 171, true);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, ' ','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf', true, false, 1);
SELECT pg_catalog.setval('event_id_seq', 172, true);

delete from schedule where time_slot_id=232 and location_id=5;
delete from schedule where time_slot_id=231 and location_id=5;
delete from schedule where time_slot_id=66 and location_id=5;
delete from schedule where time_slot_id=205 and location_id=5;
delete from schedule where time_slot_id=233 and location_id=5;
delete from schedule where time_slot_id=234 and location_id=5;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (232, 5, 165, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (231, 5, 166, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (66, 5, 167, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (205, 5, 168, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (233, 5, 169, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (87, 5, 170, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (235, 5, 172, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (236, 5, 172, false, NULL, NULL, NULL,now(),now());

-- 2015-01-12 10:40:00,2015-01-12 10:47:00,'Introduction : Kate Chapman','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#kc1'
-- 2015-01-12 10:47:00,2015-01-12 11:07:00,'Missing Maps Project - Putting the World's Most Vulnerable on the Map: Kate Chapman','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#kc2'
-- 2015-01-12 11:10:00,2015-01-12 11:30:00,'Introduction to Humanitarian Response: Chris Daley','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#cd'
-- 2015-01-12 11:35:00,2015-01-12 11:55:00,'Map My Rights Foundation - Open Source for Land Tenure: Noel Taylor','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#nt'
-- 2015-01-12 12:00:00,2015-01-12 12:20:00,'Sahana Software Foundation - Crisis Management Software: Michael Howden','http://lca2015.linux.org.au/wiki/Open_Source_for_Humanitarian_Tech_Miniconf#mh'
-- 239015-01-12 13:20:00,2015-01-12 14:15:00,'Q&A/Speaker Panel','http://lca2015.linux.org.au/wiki/Open_Source_for_Hu

-- Speaker entries

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, '','', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Speaker Dinner Bus','', true, false, 1);

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (237, 1, 173, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (238, 1, 174, false, NULL, NULL, NULL,now(),now());

SELECT pg_catalog.setval('event_id_seq', 174, true);
-- Penguin Dinner Pickup
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Penguin Dinner Bus','', true, true, 1);
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (241, 7, 175, false, NULL, NULL, NULL,now(),now());

-- PDNS Pickup
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'PDNS Bus','', true, true, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'LCA Social at PDNS Venue','', true, true, 1);
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (243, 7, 176, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (245, 11, 177, false, NULL, NULL, NULL,now(),now());


SELECT pg_catalog.setval('event_id_seq', 180, true);


--  Astronomy Event 181 -> 180


INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Welcome to the Astronomy Miniconf: Jessica Smith','https://linux.conf.au/wiki/Astronomy_Miniconf#js', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Māori astronomy: Dr. Pauline Harris (TBC)','https://linux.conf.au/wiki/Astronomy_Miniconf#ph', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Visualising the Open Universe: Dr. Nicholas Rattenbury','https://linux.conf.au/wiki/Astronomy_Miniconf#njr', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Open modelling of stars and galaxies from our own to those at the edge of the observable Universe: Dr. J.J. Eldgridge','https://linux.conf.au/wiki/Astronomy_Miniconf#jje', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'The Square Kilometre Array - Hacking the Big Bang: Nicolás Erdödy','https://linux.conf.au/wiki/Astronomy_Miniconf#ne', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Period Analysis of light curves of MoA database: finding periods of variable stars: Man Cheung Alex Li','https://linux.conf.au/wiki/Astronomy_Miniconf#mcal', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Data Mining the MOA Catalogue Using Machine-Learning Algorithms: Martin Donachie','https://linux.conf.au/wiki/Astronomy_Miniconf#md', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'GPU-accelerated Modeling of Microlensing Events: Ashna Sharan','https://linux.conf.au/wiki/Astronomy_Miniconf#as', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Lightning talks: Brief presentations from miniconf attendees','https://linux.conf.au/wiki/Astronomy_Miniconf#lt', true, false, 1);


delete from schedule where time_slot_id=10 and location_id=5;
delete from schedule where time_slot_id=12 and location_id=5;
delete from schedule where time_slot_id=14 and location_id=5;

delete from schedule where time_slot_id=246 and location_id=5;
delete from schedule where time_slot_id=247 and location_id=5;
delete from schedule where time_slot_id=248 and location_id=5;
delete from schedule where time_slot_id=249 and location_id=5;
delete from schedule where time_slot_id=173 and location_id=5;
delete from schedule where time_slot_id=251 and location_id=5;
delete from schedule where time_slot_id=252 and location_id=5;
delete from schedule where time_slot_id=201 and location_id=5;
delete from schedule where time_slot_id=254 and location_id=5;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (246, 5, 181, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (247, 5, 182, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (248, 5, 183, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (249, 5, 184, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (173, 5, 185, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (251, 5, 186, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (252, 5, 187, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (201, 5, 188, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (254, 5, 189, false, NULL, NULL, NULL,now(),now());

-- 2015-01-13 10:40:00,2015-01-13 10:45:00,Welcome to the Astronomy Miniconf: Jessica Smith,https://linux.conf.au/wiki/Astronomy_Miniconf#js
-- 2015-01-13 10:45:00,2015-01-13 11:25:00,Māori astronomy: Dr. Pauline Harris (TBC),https://linux.conf.au/wiki/Astronomy_Miniconf#ph
-- 2015-01-13 11:35:00,2015-01-13 12:20:00,Visualising the Open Universe: Dr. Nicholas Rattenbury,https://linux.conf.au/wiki/Astronomy_Miniconf#njr
-- 2015-01-13 13:20:00,2015-01-13 14:05:00,Open modelling of stars and galaxies from our own to those at the edge of the observable Universe: Dr. J.J. Eldgridge,https://linux.conf.au/wiki/Astronomy_Miniconf#jje
-- 2015-01-13 14:15:00,2015-01-13 15:00:00,The Square Kilometre Array - Hacking the Big Bang: Nicolás Erdödy,https://linux.conf.au/wiki/Astronomy_Miniconf#ne
-- 2015-01-13 15:40:00,2015-01-13 16:00:00,Period Analysis of light curves of MoA database: finding periods of variable stars: Man Cheung Alex Li,https://linux.conf.au/wiki/Astronomy_Miniconf#mcal
-- 2015-01-13 16:05:00,2015-01-13 16:25:00,Data Mining the MOA Catalogue Using Machine-Learning Algorithms: Martin Donachie,https://linux.conf.au/wiki/Astronomy_Miniconf#md
-- 2015-01-13 16:35:00,2015-01-13 16:55:00,GPU-accelerated Modeling of Microlensing Events: Ashna Sharan,https://linux.conf.au/wiki/Astronomy_Miniconf#as
-- 2015-01-13 17:00:00,2015-01-13 17:20:00,Lightning talks: Brief presentations from miniconf attendees,https://linux.conf.au/wiki/Astronomy_Miniconf#lt


-- Debian Miniconf 200-203
SELECT pg_catalog.setval('event_id_seq', 199, true);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Supporting Debian machines for friends and family : Francois Marier','http://nz2015.mini.debconf.org/Programme/Francois/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Panel: Getting packages into Debian','http://nz2015.mini.debconf.org/Programme/Panel/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Packaging Samba4 for Debian : Andrew Bartlett','http://nz2015.mini.debconf.org/Programme/Andrew/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Bootstrapping a new programming language : Angus Lees','http://nz2015.mini.debconf.org/Programme/Angus/', true, false, 1);

delete from schedule where time_slot_id=3 and location_id=2;
delete from schedule where time_slot_id=5 and location_id=2;
delete from schedule where time_slot_id=7 and location_id=2;
-- delete from schedule where time_slot_id=151 and location_id=2;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (84, 2, 200, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (255, 2, 201, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (5, 2, 202, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (128, 2, 203, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (129, 2, 45, false, NULL, NULL, NULL,now(),now());


-- 2014-01-12 10:40:00,2014-01-12 11:30:00,'Supporting Debian machines for friends and family : Francois Marier','http://nz2015.mini.debconf.org/Programme/Francois/'
-- 2014-01-12 11:30:00,2014-01-12 12:20:00,'Panel: Getting packages into Debian','http://nz2015.mini.debconf.org/Programme/Panel/'
-- 2014-01-12 13:20:00,2014-01-12 15:00:00,'Packaging Samba4 for Debian : Andrew Bartlett','http://nz2015.mini.debconf.org/Programme/Andrew/'
-- 2014-01-12 15:40:00,2014-01-12 16:30:00,'Bootstrapping a new programming language : Angus Lees','http://nz2015.mini.debconf.org/Programme/Angus/'



-- Documentation Miniconf 204-213 - Currently broken
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (7, 5, 87, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (88, 5, 87, false, NULL, NULL, NULL,now(),now());
delete from schedule where time_slot_id=7 and location_id=5;
delete from schedule where time_slot_id=88 and location_id=5;

SELECT pg_catalog.setval('event_id_seq', 203, true);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Documentation MiniConf Opening' , 'http://www.redhat.com', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'David Ryan', ' ', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Finding a Great Project to Work On, or Great People to Work on Your Project : Deb Nicholson of Media Goblin' , 'http://mediagoblin.org', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Authorea : Open Source Tooling for Science Writers : Dr Maia Sauren', 'http://www.thoughtworks.com/profiles/maia-sauren', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Every Page is Page One: A demonstration involving bears, and Play Doh : Lana Brindley of Rackspace' ,' ', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Why so many Open Source Projects Fail at Documentation and How You Can Get it Right : Raghavendra Prabhu' , 'http://www.wnohang.net', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'How Volunteer Technical Writing Got Me a Job at the World''s Hottest Open Source Startup (Getting paid to work on TWiki, Foswiki and Docker) : Sven Dowideit' , 'https://github.com/SvenDowideit', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Documentation Swarms and Sprints: How to Bee a Runner: Alexandra Settle' , '', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Tools for the Documentation Life Cycle - The Open Source Way! : Divya Muntimadugu' , '', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Farewell , Zac Dover , Red Hat', ' ', true, false, 1);

delete from schedule where time_slot_id=69 and location_id=5;
delete from schedule where time_slot_id=257 and location_id=5;
delete from schedule where time_slot_id=258 and location_id=5;
delete from schedule where time_slot_id=259 and location_id=5;
delete from schedule where time_slot_id=260 and location_id=5;
delete from schedule where time_slot_id=261 and location_id=5;
delete from schedule where time_slot_id=262 and location_id=5;
delete from schedule where time_slot_id=263 and location_id=5;
delete from schedule where time_slot_id=264 and location_id=5;
delete from schedule where time_slot_id=265 and location_id=5;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (253, 5, 204, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (257, 5, 205, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (74, 5, 206, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (75, 5, 207, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (76, 5, 208, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (77, 5, 209, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (78, 5, 210, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (263, 5, 211, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (264, 5, 212, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (265, 5, 213, false, NULL, NULL, NULL,now(),now());
delete from schedule where time_slot_id=213 and location_id=1;
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (250, 1, 135, false, NULL, NULL, NULL,now(),now());

2015-01-12 14:15:00 , 2015-01-12 14:20:00, 'Introduction : Zac Dover' , 'http://www.redhat.com'
2015-01-12 14:20:00 , 2015-01-12 14:40:00, David Ryan,
2015-01-12 14:40:00 , 2015-01-12 15:00:00, 'Finding a Great Project to Work On, or Great People to Work on Your Project : Deb Nicholson of Media Goblin , 'http://mediagoblin.org'
2015-01-12 15:00:00 , 2015-01-12 15:40:00, Tea Time
2015-01-12 15:40:00 , 2015-01-12 16:00:00, 'Authorea : Open Source Tooling for Science Writers : Dr Maia Sauren, 'http://www.thoughtworks.com/profiles/maia-sauren'
2015-01-12 16:00:00 , 2015-01-12 16:20:00, 'Every Page is Page One: A demonstration involving bears, and Play Doh : Lana Brindley' of Rackspace ,
2015-01-12 16:20:00 , 2015-01-12 16:40:00, 'Why so many Open Source Projects Fail at Documentation and How You Can Get it Right : Raghavendra Prabhu , 'http://www.wnohang.net'
2015-01-12 16:40:00 , 2015-01-12 17:00:00, 'How Volunteer Technical Writing Got Me a Job at the World's Hottest Open Source Startup (Getting paid to work on TWiki, Foswiki and Docker) : Sven Dowideit' , 'https://github.com/SvenDowideit'
2015-01-12 17:00:00 , 2015-01-12 17:10:00, 'Documentation Swarms and Sprints: How to Bee a Runner: Alexandra Settle' , Rackspace
2015-01-12 17:10:00 , 2015-01-12 17:30:00, 'Tools for the Documentation Life Cycle - The Open Source Way! : Divya Muntimadugu' , Red Hat
2015-01-12 17:30:00 , n/a , 'Farewell' , Zac Dover , Red Hat


-- 2015-01-12 13:20:00 , 2015-01-12 13:40:00, 'The coming-mini-conference, and each other : Zac Dover' , 'http://www.redhat.com'
-- 2015-01-12 13:40:00 , 2015-01-12 14:00:00, David Ryan,
-- 2015-01-12 14:00:00 , 2015-01-12 14:20:00, 'Finding a Great Project to Work On, or Great People to Work on Your Project : Deb Nicholson of Media Goblin , 'http://mediagoblin.org'
-- 2015-01-12 14:20:00 , 2015-01-12 14:30:00, 'Authorea : Open Source Tooling for Science Writers : Dr Maia Sauren, 'http://www.thoughtworks.com/profiles/maia-sauren'
-- 2015-01-12 14:30:00 , 2015-01-12 15:00:00, 'Every Page is Page One: A demonstration involving bears, and Play Doh : Lana Brindley' of Rackspace ,
-- 2015-01-12 15:50:00 , 2015-01-12 16:10:00, 'Why so many Open Source Projects Fail at Documentation and How You Can Get it Right : Raghavendra Prabhu , 'http://www.wnohang.net'
-- 2015-01-12 16:10:00 , 2015-01-12 16:30:00, 'How Volunteer Technical Writing Got Me a Job at the World's Hottest Open Source Startup (Getting paid to work on TWiki, Foswiki and Docker) : Sven Dowideit' , 'https://github.com/SvenDowideit'
-- 2015-01-12 16:30:00 , 2015-01-12 16:40:00, 'Documentation Swarms and Sprints: How to Bee a Runner: Alexandra Settle' , Rackspace
-- 2015-01-12 16:40:00 , 2015-01-12 17:00:00, 'Tools for the Documentation Life Cycle - The Open Source Way! : Divya Muntimadugu' , Red Hat
-- 2015-01-12 17:05:00 , 2015-01-12 17:20:00, 'Farewell' , Zac Dover , Red Hat'


--  Continuous dev 214-224
SELECT pg_catalog.setval('event_id_seq', 213, true);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Beaker''s Hardware Inventory System : Nick Coghlan', 'https://linux.conf.au/wiki/DevTestCIminiconf#Beaker.27s_Hardware_Inventory_System', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Testing the cloud in the cloud : Steve Kowalik', 'https://linux.conf.au/wiki/DevTestCIminiconf#Testing_the_cloud_in_the_cloud', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'The Best Test Data is Random Test Data : Fraser Tweedale', 'https://linux.conf.au/wiki/DevTestCIminiconf#The_Best_Test_Data_is_Random_Test_Data', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Developers, sysadmins, and everyone else: Why you should be using Serverspec : Sarah Kowalik & Jesse Reynolds', 'https://linux.conf.au/wiki/DevTestCIminiconf#Developers.2C_sysadmins.2C_and_everyone_else:_Why_you_should_be_using_Serverspec', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Subunit2SQL: Tracking Individual Test Results in OpenStack''s CI System : Matthew Treinish', 'https://linux.conf.au/wiki/DevTestCIminiconf#Subunit2SQL:_Tracking_Individual_Test_Results_in_OpenStack.27s_CI_System', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Corpus collapsum: Partition tolerance of Galera put to test :  Raghavendra Prabhu', 'https://linux.conf.au/wiki/DevTestCIminiconf#Corpus_collapsum:_Partition_tolerance_of_Galera_put_to_test', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Kickstart new developers using Docker : Sven Dowideit', 'https://linux.conf.au/wiki/DevTestCIminiconf#Kickstart_new_developers_using_Docker', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Large Scale Identification of Race Conditions (In OpenStack CI) : Joe Gordon', 'https://linux.conf.au/wiki/DevTestCIminiconf#Large_Scale_Identification_of_Race_Conditions_.28In_OpenStack_CI.29', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Gerrit & Gertty: A Daily Habit : Anita Kuno', 'https://linux.conf.au/wiki/DevTestCIminiconf#Gerrit_.26_Gertty:_A_Daily_Habit', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Incorporating the Security Development Life Cycle and Static Code Analysis into our Everyday Development Lives: An Overview of Theory and Techniques : Dr. Jason Cohen', 'https://linux.conf.au/wiki/DevTestCIminiconf#Gerrit_.26_Gertty:_A_Daily_Habit', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Discussion / Q&A', '', true, false, 1);


delete from schedule where time_slot_id=10 and location_id=4;
delete from schedule where time_slot_id=12 and location_id=4;
delete from schedule where time_slot_id=14 and location_id=4;

delete from schedule where time_slot_id=92 and location_id=4;
delete from schedule where time_slot_id=93 and location_id=4;
delete from schedule where time_slot_id=226 and location_id=4;
delete from schedule where time_slot_id=227 and location_id=4;
delete from schedule where time_slot_id=108 and location_id=4;
delete from schedule where time_slot_id=117 and location_id=4;
delete from schedule where time_slot_id=196 and location_id=4;
delete from schedule where time_slot_id=119 and location_id=4;
delete from schedule where time_slot_id=173 and location_id=4;
delete from schedule where time_slot_id=100 and location_id=4;
delete from schedule where time_slot_id=256 and location_id=4;
delete from schedule where time_slot_id=229 and location_id=4;
delete from schedule where time_slot_id=173 and location_id=4;
delete from schedule where time_slot_id=100 and location_id=4;
delete from schedule where time_slot_id=256 and location_id=4;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (92, 4, 214, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (93, 4, 215, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (226, 4, 216, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (227, 4, 217, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (108, 4, 218, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (117, 4, 219, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (196, 4, 220, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (119, 4, 221, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (100, 4, 222, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (121, 4, 223, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (229, 4, 224, false, NULL, NULL, NULL,now(),now());

-- 2015-01-13 10:40:00, 2015-01-13 11:05:00, 'Beaker''s Hardware Inventory System : Nick Coghlan', 'https://linux.conf.au/wiki/DevTestCIminiconf#Beaker.27s_Hardware_Inventory_System'
-- 2015-01-13 11:10:00, 2015-01-13 11:25:00, 'Testing the cloud in the cloud : Steve Kowalik', 'https://linux.conf.au/wiki/DevTestCIminiconf#Testing_the_cloud_in_the_cloud'
-- 2015-01-13 11:35:00, 2015-01-13 12:00:00, 'The Best Test Data is Random Test Data : Fraser Tweedale', 'https://linux.conf.au/wiki/DevTestCIminiconf#The_Best_Test_Data_is_Random_Test_Data'
-- 2015-01-13 12:00:00, 2015-01-13 12:20:00, 'Developers, sysadmins, and everyone else: Why you should be using Serverspec : Sarah Kowalik & Jesse Reynolds', 'https://linux.conf.au/wiki/DevTestCIminiconf#Developers.2C_sysadmins.2C_and_everyone_else:_Why_you_should_be_using_Serverspec'
-- 2015-01-13 13:20:00, 2015-01-13 13:45:00, 'Subunit2SQL: Tracking Individual Test Results in OpenStack''s CI System : Matthew Treinish', 'https://linux.conf.au/wiki/DevTestCIminiconf#Subunit2SQL:_Tracking_Individual_Test_Results_in_OpenStack.27s_CI_System'
-- 2015-01-13 13:45:00, 2015-01-13 14:10:00, 'Corpus collapsum: Partition tolerance of Galera put to test :  Raghavendra Prabhu', 'https://linux.conf.au/wiki/DevTestCIminiconf#Corpus_collapsum:_Partition_tolerance_of_Galera_put_to_test'
-- 2015-01-13 14:15:00, 2015-01-13 14:35:00, 'Kickstart new developers using Docker : Sven Dowideit', 'https://linux.conf.au/wiki/DevTestCIminiconf#Kickstart_new_developers_using_Docker'
-- 2015-01-13 14:35:00, 2015-01-13 15:00:00, 'Large Scale Identification of Race Conditions (In OpenStack CI) : Joe Gordon', 'https://linux.conf.au/wiki/DevTestCIminiconf#Large_Scale_Identification_of_Race_Conditions_.28In_OpenStack_CI.29'
-- 2015-01-13 15:40:00, 2015-01-13 16:05:00, 'Gerrit & Gertty: A Daily Habit : Anita Kuno', 'https://linux.conf.au/wiki/DevTestCIminiconf#Gerrit_.26_Gertty:_A_Daily_Habit'
-- 2015-01-13 16:10:00, 2015-01-13 16:35:00, 'Incorporating the Security Development Life Cycle and Static Code Analysis into our Everyday Development Lives: An Overview of Theory and Techniques : Dr. Jason Cohen', 'https://linux.conf.au/wiki/DevTestCIminiconf#Gerrit_.26_Gertty:_A_Daily_Habit'
-- 2015-01-13 16:35:00, 2015-01-13 17:20:00,'Discussion / Q&A', ''



-- Clouds and Containers 225-234
SELECT pg_catalog.setval('event_id_seq', 224, true);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Cloud Herding: Delivering Services Across Multiple Environments : John Mark Walker' , 'http://dissociatedpress.net/miniconf/herding/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'LXD : Tycho Andersen' , 'http://dissociatedpress.net/miniconf/lxd/', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Rocket and the App Container Spec : Brandon Philips' , 'http://dissociatedpress.net/miniconf/rocket/', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'AWS OpsWorks Orchestration War Stories : Andrew Boag' , 'http://dissociatedpress.net/miniconf/aws/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Slim Application Containers from Source : Sven Dowideit' , 'http://dissociatedpress.net/miniconf/slim/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Containers and PCP (Performance Co-Pilot) : Nathan Scott' , 'http://dissociatedpress.net/miniconf/pcp/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'The Challenges of Containerizing your Datacenter : Daniel Hall' , 'http://dissociatedpress.net/miniconf/challenges/', true, false, 1);

INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Building a PaaS with Docker Kubernetes and Hard Work : Steven Pousty' , 'http://dissociatedpress.net/miniconf/building/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'How Synchronous Replication and Linux Containers Mesh Together : Raghavendra Prabhu' , 'http://dissociatedpress.net/miniconf/synchronous/', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Cloud, Containers, and Orchestration Panel : Katie Miller' , 'http://dissociatedpress.net/miniconf/panel/', true, false, 1);

delete from schedule where time_slot_id=3 and location_id=1;
delete from schedule where time_slot_id=5 and location_id=1;
delete from schedule where time_slot_id=7 and location_id=1;

INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (266, 1, 225, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (267, 1, 226, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (268, 1, 227, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (134, 1, 228, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (207, 1, 229, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (208, 1, 230, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (137, 1, 231, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (75, 1, 232, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (269, 1, 233, false, NULL, NULL, NULL,now(),now());
INSERT INTO schedule (time_slot_id, location_id, event_id, overflow, video_url, audio_url, slide_url, creation_timestamp, last_modification_timestamp) VALUES (270, 1, 234, false, NULL, NULL, NULL,now(),now());


-- 2015-01-12 10:40:00 , 2015-01-12 11:15 , 'Cloud Herding: Delivering Services Across Multiple Environments : John Mark Walker' , 'http://dissociatedpress.net/miniconf/herding/'
-- 2015-01-12 11:15:00 , 2015-01-12 11:45 , 'LXD : Tycho Andersen' , 'http://dissociatedpress.net/miniconf/lxd/'

-- 2015-01-12 11:50:00 , 2015-01-12 12:20 , 'Rocket and the App Container Spec : Brandon Philips' , 'http://dissociatedpress.net/miniconf/rocket/'
--
-- 2015-01-12 13:20:00 , 2015-01-12 13:45 , 'AWS OpsWorks Orchestration War Stories : Andrew Boag' , 'http://dissociatedpress.net/miniconf/aws/'
-- 2015-01-12 13:45:00 , 2015-01-12 14:05 , 'Slim Application Containers from Source : Sven Dowideit' , 'http://dissociatedpress.net/miniconf/slim/'
--
-- 2015-01-12 14:15:00 , 2015-01-12 14:35 , 'Containers and PCP (Performance Co-Pilot) : Nathan Scott' , 'http://dissociatedpress.net/miniconf/pcp/'
-- 2015-01-12 14:35:00 , 2015-01-12 15:00 , 'The Challenges of Containerizing your Datacenter : Daniel Hall' , 'http://dissociatedpress.net/miniconf/challenges/'
--
-- 2015-01-12 15:40:00 , 2015-01-12 16:00 , 'Building a PaaS with Docker Kubernetes and Hard Work : Steven Pousty' , 'http://dissociatedpress.net/miniconf/building/'
-- 2015-01-12 16:00:00 , 2015-01-12 16:25 , 'How Synchronous Replication and Linux Containers Mesh Together : Raghavendra Prabhu' , 'http://dissociatedpress.net/miniconf/synchronous/'
-- 2015-01-12 16:25:00 , 2015-01-12 17:10 , 'Cloud, Containers, and Orchestration Panel : Katie Miller' , 'http://dissociatedpress.net/miniconf/panel/'

delete from event where id=237;
delete from event where id=238;
delete from event where id=239;
delete from event where id=240;
delete from event where id=241;
delete from event where id=242;
delete from event where id=243;
delete from event where id=244;
delete from event where id=245;
SELECT pg_catalog.setval('event_id_seq', 236, true);

-- Kernel


INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Insights from data mining the kernel patchwork', 'Jeremy Kerr', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Kernel network stack challenges at increasing speeds', 'Jesper Brouer', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'SLUB fastpath improvements and potential booster shots through bulk alloc and free', 'Christoph Lameter', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Unconference Pt1', 'Not Applicale', true, false, 1);
INSERT INTO event (type_id, proposal_id, title, url, publish, exclusive, sequence) VALUES (1, NULL, 'Unconference Pt2', 'Not Applicale', true, false, 1);

delete from schedule where time_slot_id=3 and location_id=4;
delete from schedule where time_slot_id=5 and location_id=4;
delete from schedule where time_slot_id=7 and location_id=4;

--2015-01-12 10:40:00, 2015-01-12 11:25, 'Insights from data mining the kernel patchwork', 'Jeremy Kerr'
--2015-01-12 11:30:00, 2015-01-12 12:15, 'Kernel network stack challenges at increasing speeds', 'Jesper Brouer'
--2015-01-12 13:20:00, 2015-01-12 14:05, 'SLUB fastpath improvements and potential booster shots through bulk alloc and free', 'Christoph Lameter'
--2015-01-12 14:10:00, 2015-01-12 14:55, 'Unconference Pt1', 'Not Applicale'
--2015-01-12 15:40:00, 2015-01-12 17:20, 'Unconference Pt2', 'Not Applicale'
