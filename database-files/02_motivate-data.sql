#
# Converted from MS Access 2010 Northwind database (northwind.accdb) using
# Bullzip MS Access to MySQL Version 5.1.242. http://www.bullzip.com
#
# CHANGES MADE AFTER INITIAL CONVERSION
# * column and row names in CamelCase converted to lower_case_with_underscore
# * space and slash ("/") in table and column names replaced with _underscore_
# * id column names converted to "id"
# * foreign key column names converted to xxx_id
# * variables of type TIMESTAMP converted to DATETIME to avoid TIMESTAMP
#   range limitation (1997 - 2038 UTC), and other limitations.
# * unique and foreign key checks disabled while loading data
#
#------------------------------------------------------------------
#

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

USE `motivate`;
#
# Dumping data for table 'SystemCommand'
#

INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('8.9', 'active', '2024-11-07', '01JRBD8EHJ96QF0Q15T8H1ESFY');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('9.2', 'down', '2025-01-05', '01JRBD8EHKNTPVJ8A0E9ABYNBE');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.84', 'active', '2024-10-29', '01JRBD8EHKEHZ1ADFVV1A4F4YT');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.1.0', 'active', '2024-08-31', '01JRBD8EHMVJXC2E2PR97CB6CJ');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.65', 'maintenance', '2024-11-22', '01JRBD8EHN6F6Q5RCN9R2NGD22');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('7.1.2', 'active', '2024-10-01', '01JRBD8EHNEFG6A43M56YPEWDS');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.73', 'down', '2025-02-07', '01JRBD8EHPTZ2FCVHYR6TTPK2W');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('4.1.8', 'down', '2024-07-11', '01JRBD8EHP3JX7JASN36H8TQZS');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('8.3', 'maintenance', '2024-11-26', '01JRBD8EHQ568D5S3HP6QGG83V');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.2.2', 'active', '2024-12-23', '01JRBD8EHQWB35D8NNM9KP4PB6');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.79', 'maintenance', '2024-11-01', '01JRBD8EHR6KZAJMW09KEYB6SN');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.6.9', 'maintenance', '2024-07-15', '01JRBD8EHSKQYFENAJFM5VMJW0');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.2.0', 'maintenance', '2024-12-08', '01JRBD8EHTR8NJV8GV2X1KKSS4');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('2.58', 'active', '2025-01-04', '01JRBD8EHVYZ47HR2RYMKJZE1Z');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('5.1', 'active', '2024-05-17', '01JRBD8EHVSRXXBKWZGNPW10N0');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.53', 'down', '2025-03-31', '01JRBD8EHVRQ0TF4CZ6M54NM2E');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.9.6', 'maintenance', '2024-08-19', '01JRBD8EHWBC9M7CP86RGZBM3Y');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('7.98', 'active', '2024-12-14', '01JRBD8EHXMJ69R4CMR2553C3Y');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('8.9', 'down', '2025-03-22', '01JRBD8EHX2ZBDXVPKNCDCBJX2');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('6.5.0', 'active', '2024-08-24', '01JRBD8EHYHX4VW59M5DBZ900D');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('7.8.6', 'active', '2024-08-25', '01JRBD8EHY9XGNVZQSP59768Y2');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.4.4', 'active', '2024-07-08', '01JRBD8EHYPV6GFTQ9NBDDZK19');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('9.32', 'active', '2025-03-22', '01JRBD8EHZ3EZ3928CXQGK0WZQ');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('7.4', 'down', '2024-12-10', '01JRBD8EHZVGK49PTHWD0PMPFM');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('7.5', 'active', '2024-11-24', '01JRBD8EJ0MWK74CEFS8F9QQ2A');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.4.5', 'active', '2024-06-26', '01JRBD8EJ0JQJ168JV2ANZHPHT');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('5.2.9', 'maintenance', '2024-05-25', '01JRBD8EJ0ZK4EX014F20VR4D9');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('1.04', 'active', '2025-01-03', '01JRBD8EJ1894D00J0REMPAJK8');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('7.3.5', 'maintenance', '2024-04-25', '01JRBD8EJ1M9Y8FMF96K1R1TF7');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('6.1.5', 'down', '2024-07-19', '01JRBD8EJ28J60VV06Y7BVDHTZ');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('6.6', 'maintenance', '2025-03-15', '01JRBD8EJ2NB0CH9ZKVD7SBQTT');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.16', 'down', '2024-09-08', '01JRBD8EJ2E24V22PSDEQX2PW5');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('0.24', 'maintenance', '2024-11-13', '01JRBD8EJ3G2CY9PD3PKDYZWEX');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('9.9', 'maintenance', '2025-01-10', '01JRBD8EJ3GT6NGS1JGB3GSZPX');
INSERT INTO SystemCommand (Version, Status, LastUpdated, SystemID) VALUES ('5.6', 'maintenance', '2024-10-04', '01JRBD8EJ4JT9GY8FF7VCQXJ5G');

# 34 records

#
# Dumping data for table 'CacheData'
#
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (1, '2024-12-01', 'String', 1);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (2, '2024-06-08', 'Integer', 2);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (3, '2024-12-23', 'JSON', 3);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (4, '2024-10-09', 'Integer', 4);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (5, '2024-05-22', 'JSON', 5);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (6, '2024-08-05', 'JSON', 6);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (7, '2024-09-23', 'Integer', 7);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (8, '2024-10-05', 'JSON', 8);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (9, '2025-01-16', 'String', 9);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (10, '2024-09-04', 'JSON', 10);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (11, '2025-03-20', 'Integer', 11);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (12, '2024-11-15', 'String', 12);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (13, '2024-08-04', 'JSON', 13);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (14, '2025-02-23', 'Integer', 14);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (15, '2024-04-14', 'String', 15);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (16, '2024-05-02', 'String', 16);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (17, '2024-09-10', 'JSON', 17);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (18, '2025-01-30', 'Integer', 18);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (19, '2024-08-19', 'String', 19);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (20, '2025-03-28', 'Integer', 20);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (21, '2025-03-04', 'Integer', 21);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (22, '2025-02-01', 'String', 22);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (23, '2025-04-04', 'String', 23);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (24, '2025-03-23', 'Integer', 24);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (25, '2024-04-08', 'Integer', 25);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (26, '2024-08-13', 'String', 26);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (27, '2024-04-20', 'JSON', 27);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (28, '2024-07-03', 'String', 28);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (29, '2024-08-03', 'String', 29);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (30, '2024-05-06', 'String', 30);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (31, '2024-11-28', 'JSON', 31);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (32, '2025-02-27', 'Integer', 32);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (33, '2024-05-24', 'Integer', 33);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (34, '2024-05-01', 'String', 34);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (35, '2024-06-07', 'String', 35);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (36, '2024-12-01', 'JSON', 36);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (37, '2024-07-21', 'String', 37);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (38, '2025-04-03', 'JSON', 38);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (39, '2024-09-23', 'Integer', 39);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (40, '2025-03-25', 'String', 40);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (41, '2025-01-11', 'JSON', 41);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (42, '2024-08-02', 'Integer', 42);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (43, '2025-01-11', 'JSON', 43);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (44, '2024-06-10', 'Integer', 44);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (45, '2025-01-12', 'String', 45);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (46, '2024-05-01', 'String', 46);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (47, '2024-07-10', 'JSON', 47);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (48, '2024-12-13', 'String', 48);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (49, '2024-11-26', 'Integer', 49);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (50, '2024-12-08', 'Integer', 50);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (51, '2025-02-02', 'String', 51);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (52, '2024-09-06', 'JSON', 52);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (53, '2025-03-08', 'JSON', 53);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (54, '2024-11-22', 'JSON', 54);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (55, '2024-09-19', 'JSON', 55);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (56, '2024-10-15', 'Integer', 56);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (57, '2024-10-03', 'JSON', 57);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (58, '2024-07-15', 'JSON', 58);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (59, '2024-05-30', 'Integer', 59);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (60, '2025-02-04', 'String', 60);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (61, '2024-11-04', 'String', 61);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (62, '2024-08-14', 'JSON', 62);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (63, '2025-03-12', 'Integer', 63);
INSERT INTO CacheData (SystemID, Date, DataType, CacheID) VALUES (64, '2025-01-23', 'JSON', 64);

# 64 records

#
# Dumping data for table 'SystemUpdate'
#

INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-04-14', 1);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-04-13', 2);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-06-21', 3);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2024-05-08', 4);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2025-03-20', 5);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-08-26', 6);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-07-09', 7);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-06-08', 8);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-10-18', 9);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-08-26', 10);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2024-09-07', 11);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Security', '2024-09-25', 12);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-10-17', 13);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2025-03-13', 14);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Performance', '2025-02-26', 15);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-09-07', 16);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-07-11', 17);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2025-01-07', 18);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2025-03-11', 19);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-10-01', 20);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-09-29', 21);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-04-20', 22);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-09-06', 23);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-06-18', 24);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-05-12', 25);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Performance', '2024-12-03', 26);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2025-01-12', 27);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-12-05', 28);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2024-04-20', 29);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2024-07-09', 30);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2024-04-28', 31);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2025-02-02', 32);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2025-03-31', 33);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2025-03-11', 34);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2024-10-07', 35);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2025-03-15', 36);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Performance', '2024-07-02', 37);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2025-03-19', 38);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2024-11-22', 39);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-05-07', 40);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Security', '2024-06-14', 41);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Security', '2024-12-06', 42);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2025-03-05', 43);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-11-05', 44);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2024-09-04', 45);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2025-01-14', 46);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-06-15', 47);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-12-03', 48);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Performance', '2025-01-17', 49);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2025-03-23', 50);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Bug Fix', '2025-02-27', 51);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2025-01-21', 52);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-06-16', 53);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-06-10', 54);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-09-08', 55);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-05-02', 56);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Security', '2024-07-21', 57);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2024-06-02', 58);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Critical', '2024-06-17', 59);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Performance', '2024-08-06', 60);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Firmware', '2024-11-23', 61);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Feature', '2024-05-25', 62);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Driver', '2024-12-10', 63);
INSERT INTO SystemUpdate (Type, ReleaseDate, UpdateID) VALUES ('Security', '2024-11-24', 64);

# 64 records
#
# Dumping data for table 'Issue'
#

INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-09-25', 'Bug', 'error: Illegal quoting in line 1.', 1);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-06-21', 'Feature Request', 'error: Illegal quoting in line 1.', 2);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-03-02', 'Security', 'error: Illegal quoting in line 1.', 3);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-11-23', 'Compatibility', 'error: Illegal quoting in line 1.', 4);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-21', 'Integration', 'error: Illegal quoting in line 1.', 5);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-04-16', 'Bug', 'error: Illegal quoting in line 1.', 6);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-03-20', 'Feature Request', 'error: Illegal quoting in line 1.', 7);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-06', 'Security', 'error: Illegal quoting in line 1.', 8);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-09-27', 'Compatibility', 'error: Illegal quoting in line 1.', 9);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-11-29', 'Integration', 'error: Illegal quoting in line 1.', 10);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-09-06', 'Bug', 'error: Illegal quoting in line 1.', 11);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-03-09', 'Feature Request', 'error: Illegal quoting in line 1.', 12);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-11-23', 'Security', 'error: Illegal quoting in line 1.', 13);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-01-22', 'Compatibility', 'error: Illegal quoting in line 1.', 14);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-10-19', 'Integration', 'error: Illegal quoting in line 1.', 15);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-06-13', 'Bug', 'error: Illegal quoting in line 1.', 16);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-06-16', 'Feature Request', 'error: Illegal quoting in line 1.', 17);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-23', 'Security', 'error: Illegal quoting in line 1.', 18);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-14', 'Compatibility', 'error: Illegal quoting in line 1.', 19);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-04-09', 'Integration', 'error: Illegal quoting in line 1.', 20);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-11-26', 'Bug', 'error: Illegal quoting in line 1.', 21);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-02', 'Feature Request', 'error: Illegal quoting in line 1.', 22);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-03-04', 'Security', 'error: Illegal quoting in line 1.', 23);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-05-12', 'Compatibility', 'error: Illegal quoting in line 1.', 24);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-08-20', 'Integration', 'error: Illegal quoting in line 1.', 25);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-01-13', 'Bug', 'error: Illegal quoting in line 1.', 26);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-07-26', 'Feature Request', 'error: Illegal quoting in line 1.', 27);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-26', 'Security', 'error: Illegal quoting in line 1.', 28);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-05-23', 'Compatibility', 'error: Illegal quoting in line 1.', 29);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-08-03', 'Integration', 'error: Illegal quoting in line 1.', 30);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-04-13', 'Bug', 'error: Illegal quoting in line 1.', 31);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-03-03', 'Feature Request', 'error: Illegal quoting in line 1.', 32);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-02-12', 'Security', 'error: Illegal quoting in line 1.', 33);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-05-26', 'Compatibility', 'error: Illegal quoting in line 1.', 34);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-01-19', 'Integration', 'error: Illegal quoting in line 1.', 35);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-12-08', 'Bug', 'error: Illegal quoting in line 1.', 36);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-10-05', 'Feature Request', 'error: Illegal quoting in line 1.', 37);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-09-21', 'Security', 'error: Illegal quoting in line 1.', 38);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-07-14', 'Compatibility', 'error: Illegal quoting in line 1.', 39);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2025-03-20', 'Integration', 'error: Illegal quoting in line 1.', 40);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-08-13', 'Bug', 'error: Illegal quoting in line 1.', 41);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-10-08', 'Feature Request', 'error: Illegal quoting in line 1.', 42);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-04-08', 'Security', 'error: Illegal quoting in line 1.', 43);
INSERT INTO Issue (Date, Type, Description, IssueID) VALUES ('2024-05-21', 'Compatibility', 'error: Illegal quoting in line 1.', 44);

# 44 records
#
# Dumping data for table 'User'
#
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Evvie', 'Employee', 'edewhirst0@craigslist.org', 1);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Marlene', 'Parent', 'mbarabich1@sitemeter.com', 2);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Evita', 'Student', 'ereddings2@mozilla.com', 3);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Sean', 'Employee', 'sgaffer3@over-blog.com', 4);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Dorree', 'Employee', 'dwebster4@bloglines.com', 5);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Maximilien', 'Business Owner', 'mhussey5@yandex.ru', 6);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Joye', 'Teacher', 'jjunifer6@google.co.jp', 7);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Thaine', 'Teacher', 'twaywell7@bluehost.com', 8);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Claudio', 'Teacher', 'clippiello8@bizjournals.com', 9);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Ynez', 'Business Owner', 'ytanguy9@phoca.cz', 10);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Kenny', 'Teacher', 'kandersona@dailymail.co.uk', 11);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Harriette', 'Teacher', 'herroweb@discovery.com', 12);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Kendrick', 'Parent', 'kalldisc@ftc.gov', 13);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Thomasin', 'Student', 'tbrehenyd@sciencedirect.com', 14);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Miriam', 'Student', 'mpeplawe@spiegel.de', 15);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Darrell', 'Teacher', 'dglindef@senate.gov', 16);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Milka', 'Employee', 'mrunnaclesg@behance.net', 17);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Wally', 'Parent', 'wforrestillh@ustream.tv', 18);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Yevette', 'Employee', 'ymaiori@opera.com', 19);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Sula', 'Business Owner', 'sporrettj@pcworld.com', 20);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Dolores', 'Employee', 'dhabertk@google.com', 21);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Dallas', 'Business Owner', 'dcrowel@gizmodo.com', 22);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Stephen', 'Student', 'sgilhooliem@un.org', 23);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Ethelda', 'Business Owner', 'eshaven@bbc.co.uk', 24);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Elliot', 'Student', 'eguymero@tinypic.com', 25);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Theodor', 'Employee', 'tbullersp@woothemes.com', 26);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Rafa', 'Teacher', 'rricsonq@cocolog-nifty.com', 27);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Andra', 'Business Owner', 'abiffenr@chronoengine.com', 28);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Fara', 'Employee', 'ftotterdills@1und1.de', 29);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Mandi', 'Employee', 'mbiancot@china.com.cn', 30);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Issy', 'Business Owner', 'iblowneu@wikimedia.org', 31);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Clementia', 'Teacher', 'cdelaciv@google.es', 32);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Lorenzo', 'Parent', 'lrumensw@dyndns.org', 33);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Willi', 'Parent', 'wlyfordx@cnn.com', 34);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Lorraine', 'Student', 'lbesekey@google.cn', 35);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Dominik', 'Parent', 'dotridgez@odnoklassniki.ru', 36);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Irita', 'Parent', 'isinnott10@netlog.com', 37);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Esma', 'Business Owner', 'esporgeon11@sphinn.com', 38);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Ephrem', 'Business Owner', 'ewynter12@tinypic.com', 39);
INSERT INTO "User" (Name, Role, Email, UserID) VALUES ('Timi', 'Employee', 'tfarrans13@1und1.de', 40);
#
# 40 records
#
# Dumping data for table 'Course'
#
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 2', 'High', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Spring Semester', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 2', 'Low', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Fall Semester', 'High', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Spring Semester', 'Low', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Semester 2', 'Low', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Fall Semester', 'Low', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Fall Semester', 'Low', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 1', 'High', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Spring Semester', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Fall Semester', 'Low', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Semester 1', 'High', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Spring Semester', 'High', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Spring Semester', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 1', 'High', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Fall Semester', 'Low', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 2', 'Low', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Semester 1', 'Low', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 2', 'Medium', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Spring Semester', 'Medium', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 2', 'Medium', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Fall Semester', 'High', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 1', 'High', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Semester 2', 'High', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 2', 'Low', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Spring Semester', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 2', 'Medium', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Semester 2', 'Medium', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 2', 'Low', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Fall Semester', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 1', 'High', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Fall Semester', 'High', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Fall Semester', 'High', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Semester 1', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Fall Semester', 'Low', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Spring Semester', 'High', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 2', 'Medium', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Semester 1', 'Low', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Fall Semester', 'High', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Semester 2', 'Low', 293);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Math', 'Semester 1', 'High', 101);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Science', 'Spring Semester', 'Medium', 103);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('English', 'Semester 1', 'High', 109);
INSERT INTO Course (Name, Semester, Priority, CourseID) VALUES ('Social Studies', 'Semester 2', 'Medium', 293);
#
# 44 records

# Dumping data for table 'Exam'
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Fall Semester', 'Final', 1);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Quiz', 2);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 2', 'Midterm', 3);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Final', 4);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 1', 'Midterm', 5);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Quiz', 6);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Final', 7);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Spring Semester', 'Midterm', 8);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Fall Semester', 'Quiz', 9);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Spring Semester', 'Quiz', 10);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Quiz', 11);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Midterm', 12);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 1', 'Quiz', 13);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Spring Semester', 'Quiz', 14);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 1', 'Midterm', 15);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Midterm', 16);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Fall Semester', 'Quiz', 17);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Quiz', 18);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Quiz', 19);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Quiz', 20);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Spring Semester', 'Final', 21);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 1', 'Quiz', 22);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Quiz', 23);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 2', 'Midterm', 24);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 2', 'Quiz', 25);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Spring Semester', 'Quiz', 26);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 1', 'Final', 27);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Midterm', 28);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 2', 'Midterm', 29);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Quiz', 30);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 2', 'Midterm', 31);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Spring Semester', 'Quiz', 32);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 2', 'Final', 33);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Quiz', 34);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 2', 'Final', 35);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 2', 'Midterm', 36);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 1', 'Quiz', 37);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Fall Semester', 'Midterm', 38);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Final', 39);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Quiz', 40);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 1', 'Midterm', 41);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Final', 42);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 2', 'Final', 43);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Spring Semester', 'Quiz', 44);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Spring Semester', 'Quiz', 45);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Fall Semester', 'Final', 46);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Final', 47);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Fall Semester', 'Quiz', 48);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 2', 'Midterm', 49);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 2', 'Final', 50);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 2', 'Quiz', 51);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Semester 1', 'Midterm', 52);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Semester 2', 'Final', 53);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 1', 'Quiz', 54);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Spring Semester', 'Final', 55);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Fall Semester', 'Midterm', 56);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (101, 'Fall Semester', 'Quiz', 57);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (103, 'Semester 1', 'Final', 58);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (109, 'Semester 1', 'Midterm', 59);
INSERT INTO Exam (CourseID, Date, Type, ExamID) VALUES (293, 'Spring Semester', 'Midterm', 60);
#
# 60 records

# Dumping data for table 'Assignment'
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2024-10-15', 1);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Study for midterm', '2025-01-07', 2);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do practice exam', '2025-01-18', 3);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2024-05-07', 4);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Write a page of notes', '2024-06-03', 5);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do practice exam', '2024-09-13', 6);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Write a page of notes', '2025-03-30', 7);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2025-04-03', 8);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2024-10-12', 9);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do assignment given on google docs', '2024-10-28', 10);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do assignment given on google docs', '2024-12-07', 11);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2025-01-22', 12);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2025-03-01', 13);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do practice exam', '2025-01-26', 14);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Study for midterm', '2024-09-27', 15);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2024-06-17', 16);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do assignment given on google docs', '2024-09-15', 17);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Study for midterm', '2024-12-04', 18);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do practice exam', '2024-11-26', 19);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Write a page of notes', '2025-02-28', 20);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Write a page of notes', '2024-06-26', 21);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Write a page of notes', '2024-04-16', 22);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Write a page of notes', '2024-10-15', 23);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2025-02-01', 24);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2024-05-15', 25);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Write a page of notes', '2024-08-15', 26);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Study for midterm', '2025-01-28', 27);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do practice exam', '2024-09-16', 28);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2025-02-03', 29);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do assignment given on google docs', '2024-11-11', 30);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do practice exam', '2024-07-13', 31);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Write a page of notes', '2024-12-04', 32);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do assignment given on google docs', '2024-12-03', 33);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do assignment given on google docs', '2024-12-27', 34);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Study for midterm', '2024-07-27', 35);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Write a page of notes', '2025-02-18', 36);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do assignment given on google docs', '2024-10-23', 37);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Study for midterm', '2024-04-13', 38);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do assignment given on google docs', '2024-11-08', 39);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2025-01-24', 40);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Study for midterm', '2024-07-12', 41);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do practice exam', '2024-11-21', 42);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do assignment given on google docs', '2024-05-20', 43);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do practice exam', '2024-10-03', 44);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2024-12-30', 45);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Study for midterm', '2024-12-09', 46);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Study for midterm', '2024-06-28', 47);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Study for midterm', '2024-10-10', 48);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do practice exam', '2024-07-03', 49);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Write a page of notes', '2025-01-19', 50);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Study for midterm', '2024-10-27', 51);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2024-11-27', 52);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Do assignment given on google docs', '2024-05-19', 53);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Write a page of notes', '2024-10-24', 54);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Write a page of notes', '2024-10-22', 55);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Study for midterm', '2024-11-30', 56);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (101, 'Study for midterm', '2025-01-04', 57);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (103, 'Do practice exam', '2024-12-19', 58);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (109, 'Do assignment given on google docs', '2025-02-02', 59);
INSERT INTO Assignment (CourseID, Description, DueDate, AssignID) VALUES (293, 'Do assignment given on google docs', '2024-07-06', 60);
# 60 records

# Dumping data for table 'Student'
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Gaynor', 1, 1);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Julienne', 2, 2);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Hobey', 3, 3);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Marnie', 4, 4);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Lilli', 5, 5);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Finlay', 6, 6);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Arabel', 7, 7);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Eduard', 8, 8);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Nestor', 9, 9);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Melisenda', 10, 10);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Roxy', 11, 11);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Moselle', 12, 12);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Valentin', 13, 13);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Harlen', 14, 14);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Charita', 15, 15);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Sandra', 16, 16);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Ward', 17, 17);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Blinny', 18, 18);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Billi', 19, 19);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Prudi', 20, 20);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Kaitlin', 21, 21);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Elton', 22, 22);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Stacy', 23, 23);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Malinde', 24, 24);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Ram', 25, 25);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Raf', 26, 26);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Smith', 27, 27);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Lynnett', 28, 28);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Hermy', 29, 29);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Odella', 30, 30);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Cristiano', 31, 31);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Nanine', 32, 32);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Margret', 33, 33);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Sharlene', 34, 34);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Melisa', 35, 35);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Humberto', 36, 36);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Terese', 37, 37);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Kendrick', 38, 38);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Axel', 39, 39);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Caralie', 40, 40);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Peg', 41, 41);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Nikkie', 42, 42);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Heddi', 43, 43);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Essa', 44, 44);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Pippy', 45, 45);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Celestia', 46, 46);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Orland', 47, 47);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Hersch', 48, 48);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Ramonda', 49, 49);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Frederic', 50, 50);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Cymbre', 51, 51);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Ranna', 52, 52);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Melesa', 53, 53);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Reynard', 54, 54);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Marita', 55, 55);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Mel', 56, 56);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (101, 'Abigail', 57, 57);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (103, 'Willy', 58, 58);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (109, 'Maribelle', 59, 59);
INSERT INTO Student (CourseID, Name, UserID, StudentID) VALUES (293, 'Jena', 60, 60);
# 60 records

# Dumping data for table 'mcat_chapter'
#

INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (59, 37, 'amet eros', 'notstarted', '2024-09-06');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (23, 71, 'non', 'notstarted', '2024-07-21');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (67, 63, 'dapibus', 'notstarted', '2024-05-01');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (59, 73, 'justo', 'inprogress', '2024-11-09');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (21, 26, 'aliquet', 'inprogress', '2024-08-09');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (100, 66, 'morbi', 'inprogress', '2024-07-04');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (22, 73, 'luctus', 'completed', '2024-07-29');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (31, 61, 'morbi non', 'notstarted', '2024-12-27');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (80, 3, 'tristique', 'notstarted', '2025-02-21');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (48, 61, 'nulla nisl', 'notstarted', '2024-04-28');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (1, 8, 'nisi venenatis', 'notstarted', '2025-03-19');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (77, 37, 'cras', 'inprogress', '2024-11-02');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (93, 91, 'condimentum id', 'inprogress', '2024-07-09');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (45, 18, 'nulla pede', 'completed', '2024-06-14');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (34, 64, 'velit vivamus', 'completed', '2025-01-09');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (19, 35, 'sapien', 'inprogress', '2024-07-31');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (69, 51, 'massa id', 'inprogress', '2024-11-08');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (75, 11, 'parturient', 'notstarted', '2024-04-20');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (37, 3, 'consequat morbi', 'completed', '2025-04-01');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (89, 76, 'nullam', 'notstarted', '2025-01-30');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (69, 72, 'nullam molestie', 'notstarted', '2024-04-11');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (82, 73, 'accumsan odio', 'completed', '2024-05-09');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (55, 17, 'ut massa', 'inprogress', '2025-01-08');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (29, 81, 'duis', 'completed', '2024-09-28');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (1, 82, 'nulla tellus', 'completed', '2024-05-01');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (61, 74, 'quis tortor', 'completed', '2024-05-07');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (35, 2, 'tempus vivamus', 'inprogress', '2024-07-12');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (33, 49, 'lorem quisque', 'completed', '2024-09-16');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (3, 73, 'aliquet', 'completed', '2025-02-11');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (88, 18, 'lorem ipsum', 'completed', '2025-04-01');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (22, 91, 'cras', 'completed', '2024-07-24');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (62, 27, 'ligula', 'notstarted', '2025-01-18');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (55, 88, 'sed', 'inprogress', '2025-03-08');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (34, 37, 'rhoncus', 'inprogress', '2024-08-13');
INSERT INTO 'mcat_chapter' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (43, 74, 'velit vivamus', 'inprogress', '2024-12-01');

#
# Dumping data for table 'pre_med_requirement'
#

INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (24, 44, 'Donec quis orci eget orci vehicula condimentum.', 'inprogress', '2025-01-22');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (22, 39, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'completed', '2024-12-11');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (5, 99, 'Nulla tempus.', 'notstarted', '2024-12-04');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (60, 46, 'Nam tristique tortor eu pede.', 'notstarted', '2024-11-18');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (18, 56, 'Fusce posuere felis sed lacus.', 'notstarted', '2024-04-09');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (59, 96, 'Etiam pretium iaculis justo.', 'completed', '2025-04-02');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (40, 4, 'Sed vel enim sit amet nunc viverra dapibus.', 'inprogress', '2024-09-04');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (78, 80, 'Duis at velit eu est congue elementum.', 'inprogress', '2024-12-05');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (9, 8, 'In eleifend quam a odio.', 'completed', '2024-10-14');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (13, 56, 'Pellentesque at nulla.', 'inprogress', '2024-08-02');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (97, 56, 'Duis consequat dui nec nisi volutpat eleifend.', 'notstarted', '2024-04-25');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (56, 10, 'In eleifend quam a odio.', 'completed', '2024-07-16');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (3, 21, 'In hac habitasse platea dictumst.', 'notstarted', '2024-04-15');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (85, 97, 'Pellentesque at nulla.', 'completed', '2024-06-14');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (1, 81, 'Morbi quis tortor id nulla ultrices aliquet.', 'notstarted', '2024-05-22');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (97, 99, 'Sed accumsan felis.', 'notstarted', '2024-12-17');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (95, 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'notstarted', '2024-04-25');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (61, 20, 'Nulla ac enim.', 'notstarted', '2024-09-01');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (22, 30, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'inprogress', '2024-08-22');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (86, 53, 'Sed ante.', 'completed', '2024-09-05');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (40, 26, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'notstarted', '2024-04-18');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (3, 59, 'Donec semper sapien a libero.', 'inprogress', '2025-03-13');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (68, 83, 'In hac habitasse platea dictumst.', 'inprogress', '2025-02-25');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (4, 92, 'Nullam molestie nibh in lectus.', 'notstarted', '2024-10-20');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (40, 44, 'Donec quis orci eget orci vehicula condimentum.', 'notstarted', '2025-03-18');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (24, 23, 'Integer ac leo.', 'completed', '2024-04-25');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (43, 34, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'inprogress', '2024-05-28');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (86, 67, 'Integer tincidunt ante vel ipsum.', 'inprogress', '2024-04-09');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (61, 70, 'In hac habitasse platea dictumst.', 'inprogress', '2024-09-15');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (77, 62, 'Sed vel enim sit amet nunc viverra dapibus.', 'inprogress', '2024-08-24');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (69, 87, 'Cras pellentesque volutpat dui.', 'completed', '2024-06-21');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (20, 59, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'inprogress', '2024-06-11');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (70, 99, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'inprogress', '2025-04-05');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (56, 100, 'Maecenas pulvinar lobortis est.', 'completed', '2024-12-15');
INSERT INTO 'pre_med_requirement' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (11, 70, 'Duis mattis egestas metus.', 'inprogress', '2024-08-11');

#
# Dumping data for table 'lesson_plan'
#

INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (30, 71, 65, '5/6/2025', 'Suspendisse potenti.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (60, 19, 23, '2/4/2025', 'In hac habitasse platea dictumst.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (31, 26, 20, '6/3/2024', 'Phasellus id sapien in sapien iaculis congue.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (43, 94, 45, '8/20/2024', 'Vestibulum ac est lacinia nisi venenatis tristique.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (80, 49, 20, '9/26/2024', 'Nulla suscipit ligula in lacus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (5, 89, 50, '10/22/2024', 'Donec quis orci eget orci vehicula condimentum.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (24, 96, 25, '9/10/2025', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (41, 77, 41, '8/18/2024', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (92, 91, 86, '1/3/2025', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (84, 93, 70, '9/23/2024', 'Cras non velit nec nisi vulputate nonummy.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (72, 99, 64, '3/2/2025', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (79, 58, 79, '9/6/2024', 'Vestibulum massa arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (30, 37, 11, '11/29/2024', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (60, 12, 77, '5/10/2024', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (15, 15, 9, '9/19/2024', 'Nulla suscipit ligula in lacus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (25, 81, 25, '1/26/2025', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (32, 10, 3, '4/4/2025', 'Vivamus vestibulum sagittis sapien.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (23, 88, 1, '3/8/2025', 'Integer ac neque.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (88, 99, 81, '4/20/2024', 'Nulla tempus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (22, 93, 44, '11/8/2024', 'Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (73, 51, 51, '5/8/2024', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (64, 80, 52, '7/25/2024', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (7, 79, 73, '3/23/2025', 'Proin risus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (59, 79, 76, '9/23/2024', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (87, 3, 75, '9/24/2024', 'Vestibulum rutrum rutrum neque.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (32, 95, 42, '9/2/2024', 'Morbi non lectus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (96, 96, 1, '1/22/2025', 'Curabitur in libero ut massa volutpat convallis.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (4, 13, 62, '6/23/2024', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (87, 98, 15, '9/23/2024', 'Suspendisse accumsan tortor quis turpis.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (18, 15, 73, '5/13/2024', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (95, 90, 70, '9/27/2024', 'Donec posuere metus vitae ipsum.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (14, 93, 67, '4/10/2025', 'Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (93, 68, 41, '4/19/2025', 'Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (42, 72, 24, '2/21/2024', 'Pellentesque ultrices mattis odio.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (79, 7, 19, '7/19/2024', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (23, 19, 24, '3/20/2024', 'Phasellus id sapien in sapien iaculis congue.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (17, 74, 25, '1/4/2025', 'Nulla suscipit ligula in lacus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (30, 26, 76, '12/6/2024', 'Donec dapibus.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (20, 12, 76, '1/11/2025', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO 'lesson_plan' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (17, 100, 100, '6/29/2024', 'Integer tincidunt ante vel ipsum.');

#
# Dumping data for table 'grocery_item'
#

INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (86, 96, 'Chickpea Salad Deluxe', 31, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (79, 64, 'Portable Hammock with Stand', 70, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (10, 97, 'Cinnamon Raisin Bread', 53, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (30, 92, 'Peach Mango Smoothie', 66, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (39, 44, 'Luxury Bath Robe', 60, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (65, 59, 'Summer Tank Dress', 95, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (57, 94, 'Decorative Throw Blanket', 92, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (63, 68, 'Beef Stroganoff Mix', 20, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (28, 25, 'Organic Whole Grain Oats', 74, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (2, 23, 'Adjustable Window Blind', 52, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (29, 20, 'Compact Shoe Rack', 34, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (5, 5, 'Coconut Flakes', 47, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (77, 94, 'Eggs (dozen)', 3, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (24, 21, 'Kids'' Trampoline', 95, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (32, 91, 'Woven Storage Baskets', 3, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (99, 97, 'Pizza Stone', 80, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (68, 83, 'Satin Slip Dress', 33, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (47, 74, 'Chili Lime Corn Chips', 39, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (39, 19, 'Chickpea Salad', 91, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (48, 40, 'Self-Watering Planters', 1, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (99, 77, 'Classic Caesar Dressing', 25, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (70, 76, 'Organic Sweet Potatoes', 84, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (54, 15, 'Organic Almonds', 66, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (28, 15, 'Italian Herb Balsamic Marinade', 6, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (23, 53, 'Electric Hot Pot', 20, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (19, 19, 'Magnetic Phone Car Mount', 5, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (53, 51, 'Puzzle 3D Model Kit', 25, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (1, 58, 'Smart Plant Monitor', 83, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (83, 26, 'Adjustable Resistance Bands', 13, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (13, 29, 'Chicken Sausage', 78, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (32, 8, 'Pumpkin Pancake Mix', 6, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (40, 32, 'Bamboo Utensil Holder', 60, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (1, 57, 'Teriyaki Salmon Fillets', 78, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (42, 19, 'Almond Flour Brownies', 46, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (40, 57, 'Incense Holder', 16, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (56, 53, 'Coconut Milk', 96, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (28, 30, 'Italian Marinara Sauce', 48, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (46, 13, 'Foam Muscle Roller', 60, 'pending');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (70, 89, 'Vegetable Korma', 67, 'purchased');
INSERT INTO 'grocery_item' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (83, 41, 'Spicy Tuna Rolls', 87, 'pending');

#
# Dumping data for table 'ticket'
#

INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (48, 'Swastika', '8/12/2024', 'open', 'Curabitur convallis.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (32, 'Unlawful Entry', '10/16/2024', 'resolved', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (1, 'Kill Bill: Vol. 2', '5/4/2024', 'inprogress', 'Duis at velit eu est congue elementum.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (87, 'Playing God', '3/10/2025', 'resolved', 'Etiam faucibus cursus urna.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (50, 'Berlin in Germany', '10/22/2024', 'resolved', 'Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (10, 'Backdraft', '6/26/2024', 'resolved', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (88, 'Freakonomics', '6/16/2024', 'open', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (96, 'Best of Ernie and Bert, The', '12/29/2024', 'open', 'Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (76, 'Hilary and Jackie', '9/28/2024', 'open', 'Maecenas rhoncus aliquam lacus.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (82, 'Lives of Others, The (Das Leben der Anderen)', '12/17/2024', 'open', 'Sed accumsan felis.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (79, 'Aladdin', '11/13/2024', 'open', 'Duis aliquam convallis nunc.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (57, 'Shaolin Temple 2: Kids from Shaolin (Shao Lin xiao zi) (Kids from Shaolin)', '8/25/2024', 'resolved', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (24, 'Burning Secret', '12/17/2024', 'open', 'Curabitur gravida nisi at nibh.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (70, '1981', '11/15/2024', 'inprogress', 'Nam tristique tortor eu pede.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (49, 'Won''t Back Down', '2/16/2025', 'inprogress', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (63, 'Singing Nun, The', '3/5/2025', 'resolved', 'Pellentesque ultrices mattis odio.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (53, 'Devil, The (Diabel)', '12/6/2024', 'open', 'Duis bibendum.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (1, 'Brother Rat', '11/10/2024', 'open', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (71, 'Zatoichi''s Conspiracy (Shin Zatôichi monogatari: Kasama no chimatsuri) (Zatôichi 25)', '10/8/2024', 'inprogress', 'Mauris ullamcorper purus sit amet nulla.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (53, 'Out California Way', '2/26/2025', 'open', 'Aliquam non mauris.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (64, 'Arlington Road', '7/28/2024', 'inprogress', 'Cras in purus eu magna vulputate luctus.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (49, 'East, West, East: The Final Sprint', '10/14/2024', 'inprogress', 'Nullam varius.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (7, 'Cube 2: Hypercube', '2/26/2025', 'open', 'Praesent lectus.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (31, 'Flying Saucer, The', '3/26/2025', 'open', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (78, 'Hottest State, The', '11/22/2024', 'inprogress', 'Donec ut dolor.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (62, 'Charlie Chan''s Courage', '2/21/2025', 'open', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (74, 'Twogether', '7/2/2024', 'resolved', 'Mauris ullamcorper purus sit amet nulla.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (96, 'Emma', '10/26/2024', 'resolved', 'Morbi a ipsum.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (68, 'Silent Night, Bloody Night', '7/12/2024', 'open', 'Morbi non quam nec dui luctus rutrum.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (37, 'Fanny and Alexander (Fanny och Alexander)', '2/7/2025', 'open', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (77, 'Human Nature', '9/18/2024', 'open', 'Curabitur gravida nisi at nibh.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (81, 'Black Cat, The', '11/18/2024', 'resolved', 'Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (10, 'Emma', '7/19/2024', 'inprogress', 'Nulla facilisi.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (82, 'Windy Day (Tuulinen päivä)', '10/10/2024', 'resolved', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (73, 'The Son of the Sheik', '5/5/2024', 'inprogress', 'Aliquam non mauris.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (93, 'Fellini''s Casanova (Il Casanova di Federico Fellini)', '2/7/2025', 'resolved', 'Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (82, 'Price Check', '1/29/2025', 'inprogress', 'In hac habitasse platea dictumst.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (94, 'Step Up 3D', '8/27/2024', 'resolved', 'Etiam justo.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (59, 'Delphine 1, Yvan 0', '6/7/2024', 'resolved', 'Morbi non lectus.');
INSERT INTO 'ticket' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (40, 'Story of the Weeping Camel, The (Geschichte vom weinenden Kamel, Die)', '5/6/2024', 'inprogress', 'Pellentesque eget nunc.');

#
# Dumping data for table 'ClubEvent'
#

INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (50, 'Mint Chocolate Chip Ice Cream', 'Apt 944', '7/9/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (38, 'Floral Wrap Top', 'Room 388', '11/20/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (80, 'Personalized Keychain', 'Suite 30', '1/4/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (99, 'Garlic Parmesan Roasted Potatoes', 'Room 1302', '7/13/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (71, 'Pumpkin Spice Latte Mix', '18th Floor', '11/18/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (88, 'Tuna Fish (canned)', 'Room 638', '4/15/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (34, 'Radish Chips', 'Apt 768', '7/18/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (65, 'Portable Solar Camp Shower', 'Apt 981', '9/8/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (45, 'Self-Watering Planter', 'Room 678', '9/24/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (73, 'Spicy Hummus', 'PO Box 15198', '1/1/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (100, 'Crispy Tofu Bites', 'Room 373', '2/20/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (58, 'Baked Falafel Balls', '18th Floor', '4/30/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (18, 'Buffalo Stilton Cheese', 'Suite 11', '9/7/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (22, 'Relaxed Fit Henley Shirt', 'PO Box 31706', '11/15/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (72, 'Lemonade Mix', 'PO Box 55783', '8/22/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (54, 'Artisan Pickles', 'Room 1028', '9/24/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (35, 'Oven-Baked Potato Chips', '1st Floor', '3/4/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (83, 'Luxe Velvet Blazer', 'Room 642', '3/13/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (23, 'Decorative Wall Tapestry', 'Apt 735', '7/15/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (3, 'Pet Grooming Brush', '13th Floor', '6/1/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (13, 'High-Speed Blender', 'Room 816', '6/13/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (6, 'Children''s Educational Workbook', '2nd Floor', '4/19/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (85, 'High-Waisted Skirt', 'PO Box 50400', '5/8/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (10, 'Portable Pet Bathing Tool', 'Apt 298', '7/15/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (25, 'Wire Shelving Unit', 'Room 1365', '5/22/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (41, 'Smart Thermostat', 'Apt 776', '12/15/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (66, 'Durable Hiking Boots', 'Apt 1429', '10/17/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (39, 'Chocolate Hazelnut Granola', 'Room 1920', '6/6/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (58, 'Overnight Hiking Backpack', 'PO Box 24438', '10/8/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (96, 'LED Strip Lights with Remote Control', 'PO Box 96062', '12/18/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (24, 'Fruit Medley Juice', 'Room 1532', '2/3/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (55, 'Multi-Function Meat Tenderizer', 'Room 400', '1/28/2025');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (10, 'Baked Falafel', 'Room 1110', '4/22/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (6, 'Garden Vegetable Chips', 'PO Box 96013', '10/29/2024');
INSERT INTO 'ClubEvent' ('club_event_id', 'name', 'location', 'date') VALUES (23, 'Cotton Pajama Set', 'Room 160', '9/7/2024');

#
# Dumping data for table 'CalendarEvent'
#

INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2024-10-09', 'curae', '635058631-X', '585937318-X');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('In hac habitasse platea dictumst.', '2024-07-25', 'cras', '971730883-7', '408720654-8');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2024-04-14', 'porta', '240807106-2', '617079720-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Duis mattis egestas metus. Aenean fermentum.', '2025-03-12', 'hac', '995880267-8', '268805724-3');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '2025-02-03', 'ridiculus', '100357158-1', '190407235-6');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2024-11-09', 'nisl', '231182367-1', '073347307-5');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2024-08-19', 'nec', '474741346-4', '047780826-3');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2024-10-31', 'sit', '748573264-1', '707757975-1');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2025-02-28', 'id', '217309950-7', '602164373-9');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Sed sagittis.', '2024-09-06', 'pulvinar', '282708021-4', '572137651-1');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2025-01-02', 'orci', '315328153-X', '344626731-X');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', '2025-01-26', 'eu', '722536286-0', '620683214-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Sed accumsan felis.', '2024-07-20', 'maecenas', '325143881-6', '492477963-6');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '2024-12-11', 'lacinia', '285023042-1', '971089666-0');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2024-04-24', 'luctus', '245478815-2', '526756426-5');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Morbi porttitor lorem id ligula.', '2024-05-08', 'curabitur', '760622893-0', '611788942-9');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '2024-07-15', 'amet', '014325356-5', '652700599-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Praesent lectus.', '2024-12-13', 'nisl', '096157206-X', '850008523-1');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Maecenas ut massa quis augue luctus tincidunt.', '2024-07-23', 'nulla', '473695333-0', '549213997-5');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nulla tellus.', '2024-12-20', 'dui', '809307583-6', '312242228-X');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Maecenas ut massa quis augue luctus tincidunt.', '2025-03-11', 'est', '421058038-4', '751621665-8');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('In quis justo.', '2024-08-10', 'proin', '290606976-0', '196569226-5');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2025-01-29', 'rhoncus', '802237367-2', '109696603-4');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2024-12-27', 'vestibulum', '159826977-1', '824236297-1');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2024-05-07', 'eleifend', '669471059-3', '098718980-8');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Donec posuere metus vitae ipsum. Aliquam non mauris.', '2024-06-09', 'lorem', '552407241-2', '147759440-X');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2024-08-27', 'dictumst', '983072725-4', '685041591-3');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '2024-06-07', 'nisi', '507556633-2', '705371634-1');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '2025-01-17', 'vestibulum', '061949765-3', '985778864-5');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Integer ac leo. Pellentesque ultrices mattis odio.', '2025-01-07', 'in', '642907869-8', '945287083-4');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '2024-10-25', 'sapien', '452301881-2', '912814971-8');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2024-04-17', 'mauris', '143123330-7', '509865235-9');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Integer ac neque. Duis bibendum.', '2025-02-25', 'nunc', '945428027-9', '384152280-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nullam sit amet turpis elementum ligula vehicula consequat.', '2024-09-11', 'ultrices', '144442355-X', '201549209-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2024-09-26', 'nulla', '850299849-8', '749281703-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2024-10-12', 'justo', '776059361-9', '408332935-1');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2024-08-11', 'pede', '306386420-X', '721511302-7');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2024-09-11', 'in', '985538016-9', '688875967-9');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', '2024-11-02', 'erat', '030618322-6', '417608268-2');
INSERT INTO 'calendar_events' ('description', 'date_time', 'type', 'user_id', 'customer_id') VALUES ('Nulla nisl. Nunc nisl.', '2024-11-08', 'consectetuer', '551006027-1', '719770660-2');

#
# Dumping data for table 'calendar_events'
#

INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSFVMQVN0DCAVDF2340', 'sed', '2025-03-14', '2024-12-21', '01JRGGFYSGJJF7CWK3A43SGSDN');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSG1B4CS1GEZ0QX80M7', 'curae', '2024-12-26', '2024-06-05', '01JRGGFYSH5S3J1J1VWRH5WMKX');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSHZJ9HEWXSBBVP47B4', 'quisque', '2024-04-10', '2025-04-08', '01JRGGFYSJAE5R0KZXB53WEF55');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSJN25P617ZY61QBN2R', 'enim', '2024-08-01', '2025-01-29', '01JRGGFYSMZNBTB3SKFDNP5Q2E');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSM31169B86J2V76MG8', 'turpis', '2024-09-21', '2025-02-12', '01JRGGFYSNDM609N1VCN3DB5T1');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSN679X0S5ZH5NX4CEM', 'pulvinar', '2024-04-26', '2024-11-29', '01JRGGFYSPG3SCA0G5453J4R2Y');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSP3P7VAC4FXR9HG26F', 'ut', '2024-07-05', '2025-01-28', '01JRGGFYSQ6Q8N3RYCR209DQB5');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSR8Z0TYEBZPWDK4ZH6', 'praesent', '2024-12-31', '2024-10-20', '01JRGGFYSRYRHD6TXXF8KX09DZ');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSSF7NZG6HZQ0ZEK6BD', 'hac', '2024-10-03', '2025-03-04', '01JRGGFYST18HGD17TS5G20D60');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYST6PDTBPR1SVJ89KG6', 'enim', '2025-03-23', '2025-02-22', '01JRGGFYSV9T2SKCHTG641AZDT');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSW7Z61YDAPBZYH9CWN', 'pede', '2025-01-01', '2024-09-08', '01JRGGFYSWPAW1YJHYVQ9KW6SS');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSXEAJ1NYNB4416WR0Y', 'dui', '2025-03-08', '2024-05-27', '01JRGGFYSYMNXKZJGVHQVZQJED');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYSYEFBWRQH0KTQK0NT7', 'sed', '2025-04-02', '2024-11-04', '01JRGGFYSZBWQTCSY33KRS5DH6');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT0JGDETQS4JQMFEP7B', 'ut', '2024-06-06', '2024-08-14', '01JRGGFYT1MGCG00WW140A06KH');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT1BVS3VSSY3EKMYYH9', 'penatibus', '2024-11-28', '2024-08-27', '01JRGGFYT22QQ5DRT5V8S7Q9JP');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT2FQ7A3EYAQH8KEY5N', 'magna', '2024-12-29', '2025-03-26', '01JRGGFYT3VSGVM94GZW6JW4CW');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT4MD2C3EHHP4QQA8XK', 'eget', '2024-04-15', '2024-07-25', '01JRGGFYT422XC711GVR4K6QRD');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT5P9VYHF3NVPXDF4HD', 'sociis', '2025-03-11', '2025-02-25', '01JRGGFYT61333WKK7GMQM575T');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT69VMWE9GE7YYH18GG', 'eros', '2025-03-04', '2025-02-20', '01JRGGFYT8GC75FSDR6ZP963GT');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYT8QV0DH82WVTQP125H', 'primis', '2025-01-12', '2025-02-08', '01JRGGFYT9CEJJJ3WNE8X6HGYK');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTA0T19CJW32FH0EJWJ', 'aliquam', '2024-11-16', '2025-01-04', '01JRGGFYTBV62X7V3E1F5QSSQ4');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTBKTXH4T220KAD7KYC', 'massa', '2024-06-15', '2025-01-14', '01JRGGFYTC4K4T00GDVFW0BEF5');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTCC4KFHCBC5DDXM8AT', 'natoque', '2024-11-29', '2025-01-17', '01JRGGFYTDACST4XEFVZ68ZKC6');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTDP3J2P8Y0VKES7AEZ', 'magna', '2024-04-29', '2024-07-02', '01JRGGFYTE6EF2MTD2J2ACXPFE');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTE98DZSMA1BEPCYHYY', 'cubilia', '2025-01-05', '2024-05-11', '01JRGGFYTF8TDDJGQJS3CRSCNB');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTFRHJZNFJDQSYRCQJ2', 'pede', '2024-10-22', '2024-12-09', '01JRGGFYTG95BN22B8CVJ2SE1J');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTG4DFNAYFWSZMQQBG7', 'eu', '2024-12-08', '2024-10-06', '01JRGGFYTHMZYYSVT2SH6PKJ8V');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTHHKNSJ94WVCYHSNCF', 'elit', '2025-01-03', '2024-08-26', '01JRGGFYTHTAG14Z710RCCNRRC');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTHXNKSZQGFP0QVHJS1', 'dui', '2024-12-18', '2024-11-06', '01JRGGFYTJ8MH507ZVC5P5N4EJ');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTKEK8Y39RDNB9SAC9A', 'et', '2024-08-08', '2024-11-12', '01JRGGFYTM4FXZZXG7FEKEEGGX');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTMZTHEHES9CX47GYCX', 'diam', '2024-06-30', '2024-07-28', '01JRGGFYTNTTX26J61P0V6B8PT');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTPHJWCM230CJC752BN', 'a', '2025-03-07', '2024-07-28', '01JRGGFYTQE4M2YY0T00XT49AP');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTQNCT92WM6W0FFG6Y5', 'ut', '2024-06-28', '2024-10-07', '01JRGGFYTRJGT2J3DWWG1F87HE');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTS2TZCED3R7SCF70ZV', 'cum', '2024-08-14', '2025-01-21', '01JRGGFYTTBNM2A3D1M5AF4WXS');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTT0781YT3RD7N77B9G', 'ligula', '2025-02-20', '2024-10-09', '01JRGGFYTVZRZYSZSXBZDJ8G87');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTXSSQYPYMDE8SER734', 'nam', '2025-01-24', '2024-11-09', '01JRGGFYTYKZ1Q4FDVDXDSQYD5');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTY4A1D20VJKTDXME7K', 'suscipit', '2024-12-07', '2024-06-03', '01JRGGFYTZW4QTPA4THKTNP3DT');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYTZBW0NN26PFTPPN0KR', 'metus', '2024-05-03', '2025-02-07', '01JRGGFYV0X0TF1DK01D6PEXSA');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYV043PED0E5ST5EJQJ9', 'dui', '2024-08-27', '2024-05-13', '01JRGGFYV0VN415SWCBC9GY4J1');
INSERT INTO 'grocery_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGGFYV05K3ASPKTT4YF5S53', 'suspendisse', '2024-12-28', '2025-02-10', '01JRGGFYV1V2AJQS794MZEE8HP');

#
# Dumping data for table 'grocery_list'
#

INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('in', 'Senior Editor', 15, '01JRGGX0QJPW80SBVQ708YQTF3');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('porttitor', 'Recruiter', 33, '01JRGGX0QJBDHB7NFH6JRZYYJJ');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('vitae', 'Computer Systems Analyst IV', 46, '01JRGGX0QKF4WZB69X1N0M4R41');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('orci', 'Automation Specialist IV', 54, '01JRGGX0QKRPDBPA4CM69JGD6P');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('ut', 'Nurse', 47, '01JRGGX0QKXVM6B2B47CZDR81K');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('in', 'Developer III', 73, '01JRGGX0QM27VAG68268YY80HW');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('faucibus', 'Civil Engineer', 23, '01JRGGX0QM5JV60JQVM0CQFD7V');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('nec', 'Geologist IV', 20, '01JRGGX0QMAR3RF7340Y8SH169');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('tincidunt', 'Editor', 31, '01JRGGX0QNWTJ14QJT35J97FFE');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('placerat', 'Clinical Specialist', 1, '01JRGGX0QNBE2RYJBCJSYV39MA');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('vestibulum', 'Nurse', 23, '01JRGGX0QNEKHD2MNF2SMBK6SA');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('mauris', 'Senior Editor', 52, '01JRGGX0QPN0JGQKVXA4XRN5AY');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('pede', 'Human Resources Assistant II', 40, '01JRGGX0QP16TWJ4YVN1AVXQZ0');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('bibendum', 'Research Assistant I', 41, '01JRGGX0QP7P6BBVDR6ZQBJS5C');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('diam', 'Web Developer I', 30, '01JRGGX0QQ9E6B9BAWR5VPEDMP');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('ligula', 'Information Systems Manager', 19, '01JRGGX0QQDJ2KVTK9XZGZ3WNC');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('vestibulum', 'Assistant Media Planner', 36, '01JRGGX0QQBDP45PX31HBCMQQ7');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('turpis', 'Environmental Tech', 70, '01JRGGX0QRMYS2XHJVR4YVWC2G');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('nisl', 'Marketing Manager', 47, '01JRGGX0QRTNWBRA4C8TNVVWE8');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('turpis', 'Research Nurse', 2, '01JRGGX0QR4JZHSEJ9CG59MQ6W');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('parturient', 'Accountant I', 24, '01JRGGX0QSDM46TVSF9CTKXG30');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('iaculis', 'Registered Nurse', 72, '01JRGGX0QSPTTET3MPPTZ6V50R');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('sit', 'Financial Analyst', 49, '01JRGGX0QSJBK4EPB4AAYQSVYX');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('ut', 'Associate Professor', 77, '01JRGGX0QT4Z3SF2BMSYP10CY7');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('in', 'Registered Nurse', 58, '01JRGGX0QTSW52DGWFT75XWKQP');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('erat', 'Information Systems Manager', 5, '01JRGGX0QTJKPK8RHD8ZWATBR9');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('neque', 'Statistician I', 23, '01JRGGX0QV9EGX39AN9PSGX0WP');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('quis', 'Systems Administrator III', 39, '01JRGGX0QVNXE8GA2G79BEN8T8');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('cras', 'Payment Adjustment Coordinator', 62, '01JRGGX0QV6J6QWZBGF72FGTKE');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('donec', 'Operator', 40, '01JRGGX0QWE2VHM4BAPXM7QVRT');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('posuere', 'Staff Accountant I', 26, '01JRGGX0QW9C1VCRJ4XG9407HH');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('libero', 'Assistant Professor', 69, '01JRGGX0QX1E3PYJDJSQ94CM7G');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('cursus', 'Systems Administrator IV', 57, '01JRGGX0QYPEAKSSG8PGEX4PYZ');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('nec', 'Administrative Assistant II', 56, '01JRGGX0QZ9A6BBDPGX9KYT5T3');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('libero', 'Human Resources Manager', 51, '01JRGGX0R0R9A2CBPH7DG8GPAM');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('fringilla', 'Librarian', 61, '01JRGGX0R103X8QNGWBYCMR67H');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('ligula', 'Operator', 37, '01JRGGX0R2MVT1JCRPSN230T46');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('aliquam', 'Account Representative II', 27, '01JRGGX0R38X3TK1J55384V283');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('leo', 'Occupational Therapist', 7, '01JRGGX0R491R8RY0NQPAXZMJH');
INSERT INTO 'parent' ('name', 'occupation', 'age', 'user_id') VALUES ('ante', 'Technical Writer', 32, '01JRGGX0R4FJHKM0PZ3RNQZ8B9');

#
# Dumping data for table 'parent'
#

INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZAZA8NKY332TF2F3B8', 'dui', '2024-10-20', '2025-02-25', '01JRGHK3ZB8CF665Z40KAB2E8J');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZBEQ9TMMW5ARAVW2JQ', 'ac', '2024-10-15', '2024-12-24', '01JRGHK3ZCA3G5T258K5MNSAV5');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZCXNMP4R04Z5WSSSXK', 'ultricies', '2024-04-13', '2024-09-14', '01JRGHK3ZD896EH6RBS6H1JPQ2');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZE1CECH3P63CG08HDR', 'mi', '2025-03-19', '2024-08-23', '01JRGHK3ZEQQ3M5QE4AG69ZN9F');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZF97NE1TAB8MSXH0W3', 'aliquam', '2025-01-29', '2024-10-02', '01JRGHK3ZFHN6DFVR58T0A33NT');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZGZCAM5ZZFXCXP7YRK', 'eu', '2024-05-04', '2024-11-16', '01JRGHK3ZGVTBYJN8YS0SK61ED');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZH6H752B1Z4HT1KYWD', 'pellentesque', '2024-11-11', '2024-07-25', '01JRGHK3ZH0H1WPDPZYA0DDJWH');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZJDDNH2M9X3P7KGYRB', 'condimentum', '2024-11-29', '2025-01-03', '01JRGHK3ZJHEZPD50T69E4P5TB');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZK3SRZDXZKBJ14T2QW', 'et', '2024-08-26', '2024-08-23', '01JRGHK3ZK2K0M6FW0HYZS3JGZ');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZMYGE7EKHAN0ZMPJ1N', 'ut', '2024-04-29', '2024-11-27', '01JRGHK3ZMAHHBAFC06ERMCJHB');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZN1XFWWPFR39WVRZQ3', 'a', '2024-08-19', '2024-11-23', '01JRGHK3ZP6NNZ4839J923KRAH');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZPZDWTB9D5V898REJ3', 'suspendisse', '2024-08-19', '2025-01-08', '01JRGHK3ZQ45RHZGN5F1C99P24');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZQZP65FF11JT0Y6MYG', 'convallis', '2024-05-03', '2024-10-21', '01JRGHK3ZR8MZPR12K2F4HN4RE');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZRK7NQE5FQ9YRYSZ0F', 'quam', '2024-09-22', '2024-10-09', '01JRGHK3ZSYN193KP0TXNNNJ0B');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZSVBXWA5WA3NDN18DP', 'volutpat', '2024-05-11', '2024-09-25', '01JRGHK3ZT0QK14M31DEK92BZ7');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZTTTBWP6ZYFWREKAXK', 'sapien', '2024-06-16', '2024-08-04', '01JRGHK3ZVVBDBQMXA8M9FY4NM');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZV7RNG62SMFMM5ZHH9', 'odio', '2025-04-07', '2024-04-18', '01JRGHK3ZWEVM02HDQQN885045');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZWD3E02M2QMMHYGA5F', 'sapien', '2024-12-30', '2024-08-02', '01JRGHK3ZX5EA4B4MTCRQCHDN2');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZXFBVHB9EDYJRN0WCB', 'pellentesque', '2024-08-06', '2024-08-22', '01JRGHK3ZYPFZ8YX0FP45M8WZY');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZY8QZHKWJ131A4VHRA', 'cras', '2024-09-15', '2025-01-24', '01JRGHK3ZZVVSPED4YEQ8HHV83');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK3ZZSVGGE8DE021B2S64', 'ac', '2024-04-30', '2024-07-22', '01JRGHK400P9NZSDY1SA4H2DX3');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK400VZ61X7GRWHNX1H6F', 'mi', '2025-03-29', '2024-11-20', '01JRGHK400YCKTH1J5067ZPAE8');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK401B5DY1PFYZ1SXYAH5', 'enim', '2025-02-05', '2024-06-19', '01JRGHK401883PF5EM5GMJS500');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK4022S682CQXKHTHHASG', 'interdum', '2025-01-05', '2025-03-29', '01JRGHK402B4R1GST81RSZ2SQ9');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK403GDTFBCKWYKZSK1RQ', 'massa', '2025-01-12', '2025-01-09', '01JRGHK4034D7A3Q0DWPXR42MQ');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK4040XPN4T2SDAZH4YGH', 'aliquet', '2025-02-21', '2024-09-22', '01JRGHK404E30DQXKFG8JYAZR1');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK405S2PM5PJKGG2VZ805', 'vestibulum', '2024-07-06', '2024-10-03', '01JRGHK4052TB1NF3VRYYTHEDG');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK406C7WZWDT6ESTE1YB8', 'venenatis', '2025-02-19', '2024-11-18', '01JRGHK406X2EYSCQ9MBB8Q9XB');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK406FSEBRCPYFZM6SABR', 'ornare', '2024-12-23', '2025-04-01', '01JRGHK40638FN7Y4EYT2QSHRB');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK407HY7NS0YMVK1WFKBE', 'ultrices', '2024-04-10', '2024-12-29', '01JRGHK407ZESR6X4PZMH7PJPR');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK407GVM0WS3BTKM8DEMW', 'integer', '2024-10-21', '2024-05-26', '01JRGHK40803D8RNS0HBC1CPR4');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK408FCN3NQHJ5JFJYPZY', 'iaculis', '2024-05-28', '2025-02-01', '01JRGHK4080XVRVB7SYSC4DZNK');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40960F7YCQ21WXTN7QH', 'lectus', '2024-10-29', '2025-04-01', '01JRGHK4095KT9RRABC1929S5H');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK409T5B2DFAH6V30T8X1', 'porta', '2024-06-14', '2024-05-10', '01JRGHK40A684B4NTC6GV8F5GQ');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40AXGCK5PTVBBM1TQF4', 'amet', '2025-01-01', '2024-11-22', '01JRGHK40ANZYRYT29GBZ9MKT6');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40AW4FAZGH9FYP5B7QJ', 'magna', '2024-12-09', '2024-08-25', '01JRGHK40B6D9F1Y57Q68N82CR');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40BMV13VXV00NT6NRYJ', 'mattis', '2024-06-28', '2024-05-10', '01JRGHK40B9AEWVN8HY2G1GHX0');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40BGAT3K3TFWG4RZ4QN', 'orci', '2024-06-13', '2024-12-22', '01JRGHK40C61K8BWTZF0V9HHR2');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40CJ34JNQGCMR18BN5F', 'maecenas', '2024-11-02', '2024-05-25', '01JRGHK40D9F99QKHRMMA1GASC');
INSERT INTO 'todo_list' ('user_id', 'title', 'created_at', 'updated_at', 'list_id') VALUES ('01JRGHK40DXTZSTG3PS5AFE0AT', 'adipiscing', '2024-06-18', '2024-12-05', '01JRGHK40D62269VXSESMYVT1H');

#
# Dumping data for table 'todo_list'
#

INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18GWDJ4NPAQQR2BBA4M');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18GERXM5RSSGTZ9ATKN');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18GEAVG0W93H53FAVXZ');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18GGP5RQ9KBW5N67X5V');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18GACHY36JFWPP5F6S6');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18G26J2ENMS2BM1PA9H');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18GVRQDPTAHRBCARWS1');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18H1P5N6NX0R6TH02RF');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18HBT39GZD8VRE9XSV7');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18HCBVQM4CX041V3Z2D');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18HBAGH708YP9EZ8G0F');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18HG4NA59S4PDEB0GWC');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18HGZJ6NJY9N0BQXQ7P');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18HZ0F4VAE48A999THK');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18H090KER4779D0QVFY');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18JE01JV23ZEQCDT6YS');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18JZA08QE7ZCTCV4JHW');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18J87NVAHHM9JJFYDSS');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18J42VZ7WCX24QTBDB2');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18JWQ4Z747Z9XN5Y5TD');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18J5NW3A37K6HJZYVFJ');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18JRZKYM36GTX48Q768');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18JDMBFFDVMPYA468DW');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18J3M69MNT3MX5QK0T2');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KC67Y2BBHFCZNEWGT');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KP7B7TW4PAFMRY6YN');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KJJY26J699KBSEGTK');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18K3XRTWRZ994CAX8F1');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KEYSQQ3HXAFTGN7GQ');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18K45SSSQC3VSP7DSQY');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KB5DWMQK0YDPY0CYB');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KNXX4KVDPGG51KP9B');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18KVWSQYPQV49V02CX3');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18MZ1R22JTS2QYJ9YKX');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18MQX3KB6PPBPPGWJ2T');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18MPEN5SSXVYM2DM1YZ');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18MCC8XMP192FQS57SR');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18MQJYCR1TCBT5CEJ8P');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18M7G4BEFK1A09A8R2Q');
INSERT INTO 'system_admin' ('user_id') VALUES ('01JRGKT18MX62DM9Q240E3E21M');

#
# Dumping data for table 'system_admin'
#

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;