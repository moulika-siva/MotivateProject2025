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
# Dumping data for table 'mcat_chapters'
#

INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (59, 37, 'amet eros', 'notstarted', '2024-09-06');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (23, 71, 'non', 'notstarted', '2024-07-21');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (67, 63, 'dapibus', 'notstarted', '2024-05-01');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (59, 73, 'justo', 'inprogress', '2024-11-09');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (21, 26, 'aliquet', 'inprogress', '2024-08-09');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (100, 66, 'morbi', 'inprogress', '2024-07-04');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (22, 73, 'luctus', 'completed', '2024-07-29');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (31, 61, 'morbi non', 'notstarted', '2024-12-27');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (80, 3, 'tristique', 'notstarted', '2025-02-21');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (48, 61, 'nulla nisl', 'notstarted', '2024-04-28');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (1, 8, 'nisi venenatis', 'notstarted', '2025-03-19');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (77, 37, 'cras', 'inprogress', '2024-11-02');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (93, 91, 'condimentum id', 'inprogress', '2024-07-09');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (45, 18, 'nulla pede', 'completed', '2024-06-14');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (34, 64, 'velit vivamus', 'completed', '2025-01-09');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (19, 35, 'sapien', 'inprogress', '2024-07-31');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (69, 51, 'massa id', 'inprogress', '2024-11-08');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (75, 11, 'parturient', 'notstarted', '2024-04-20');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (37, 3, 'consequat morbi', 'completed', '2025-04-01');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (89, 76, 'nullam', 'notstarted', '2025-01-30');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (69, 72, 'nullam molestie', 'notstarted', '2024-04-11');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (82, 73, 'accumsan odio', 'completed', '2024-05-09');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (55, 17, 'ut massa', 'inprogress', '2025-01-08');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (29, 81, 'duis', 'completed', '2024-09-28');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (1, 82, 'nulla tellus', 'completed', '2024-05-01');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (61, 74, 'quis tortor', 'completed', '2024-05-07');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (35, 2, 'tempus vivamus', 'inprogress', '2024-07-12');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (33, 49, 'lorem quisque', 'completed', '2024-09-16');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (3, 73, 'aliquet', 'completed', '2025-02-11');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (88, 18, 'lorem ipsum', 'completed', '2025-04-01');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (22, 91, 'cras', 'completed', '2024-07-24');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (62, 27, 'ligula', 'notstarted', '2025-01-18');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (55, 88, 'sed', 'inprogress', '2025-03-08');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (34, 37, 'rhoncus', 'inprogress', '2024-08-13');
INSERT INTO 'mcat_chapters' ('chapter_id', 'student_id', 'topic', 'status', 'last_reviewed') VALUES (43, 74, 'velit vivamus', 'inprogress', '2024-12-01');
# 35 records

#
# Dumping data for table 'pre_med_requirements'
#

INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (24, 44, 'Donec quis orci eget orci vehicula condimentum.', 'inprogress', '2025-01-22');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (22, 39, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'completed', '2024-12-11');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (5, 99, 'Nulla tempus.', 'notstarted', '2024-12-04');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (60, 46, 'Nam tristique tortor eu pede.', 'notstarted', '2024-11-18');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (18, 56, 'Fusce posuere felis sed lacus.', 'notstarted', '2024-04-09');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (59, 96, 'Etiam pretium iaculis justo.', 'completed', '2025-04-02');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (40, 4, 'Sed vel enim sit amet nunc viverra dapibus.', 'inprogress', '2024-09-04');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (78, 80, 'Duis at velit eu est congue elementum.', 'inprogress', '2024-12-05');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (9, 8, 'In eleifend quam a odio.', 'completed', '2024-10-14');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (13, 56, 'Pellentesque at nulla.', 'inprogress', '2024-08-02');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (97, 56, 'Duis consequat dui nec nisi volutpat eleifend.', 'notstarted', '2024-04-25');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (56, 10, 'In eleifend quam a odio.', 'completed', '2024-07-16');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (3, 21, 'In hac habitasse platea dictumst.', 'notstarted', '2024-04-15');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (85, 97, 'Pellentesque at nulla.', 'completed', '2024-06-14');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (1, 81, 'Morbi quis tortor id nulla ultrices aliquet.', 'notstarted', '2024-05-22');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (97, 99, 'Sed accumsan felis.', 'notstarted', '2024-12-17');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (95, 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'notstarted', '2024-04-25');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (61, 20, 'Nulla ac enim.', 'notstarted', '2024-09-01');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (22, 30, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'inprogress', '2024-08-22');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (86, 53, 'Sed ante.', 'completed', '2024-09-05');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (40, 26, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'notstarted', '2024-04-18');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (3, 59, 'Donec semper sapien a libero.', 'inprogress', '2025-03-13');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (68, 83, 'In hac habitasse platea dictumst.', 'inprogress', '2025-02-25');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (4, 92, 'Nullam molestie nibh in lectus.', 'notstarted', '2024-10-20');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (40, 44, 'Donec quis orci eget orci vehicula condimentum.', 'notstarted', '2025-03-18');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (24, 23, 'Integer ac leo.', 'completed', '2024-04-25');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (43, 34, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'inprogress', '2024-05-28');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (86, 67, 'Integer tincidunt ante vel ipsum.', 'inprogress', '2024-04-09');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (61, 70, 'In hac habitasse platea dictumst.', 'inprogress', '2024-09-15');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (77, 62, 'Sed vel enim sit amet nunc viverra dapibus.', 'inprogress', '2024-08-24');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (69, 87, 'Cras pellentesque volutpat dui.', 'completed', '2024-06-21');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (20, 59, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'inprogress', '2024-06-11');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (70, 99, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'inprogress', '2025-04-05');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (56, 100, 'Maecenas pulvinar lobortis est.', 'completed', '2024-12-15');
INSERT INTO 'pre_med_requirements' ('req_id', 'student_id', 'description', 'status', 'target_date') VALUES (11, 70, 'Duis mattis egestas metus.', 'inprogress', '2024-08-11');
# 35 records 

#
# Dumping data for table 'lesson_plans'
#

INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (30, 71, 65, '5/6/2025', 'Suspendisse potenti.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (60, 19, 23, '2/4/2025', 'In hac habitasse platea dictumst.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (31, 26, 20, '6/3/2024', 'Phasellus id sapien in sapien iaculis congue.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (43, 94, 45, '8/20/2024', 'Vestibulum ac est lacinia nisi venenatis tristique.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (80, 49, 20, '9/26/2024', 'Nulla suscipit ligula in lacus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (5, 89, 50, '10/22/2024', 'Donec quis orci eget orci vehicula condimentum.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (24, 96, 25, '9/10/2025', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (41, 77, 41, '8/18/2024', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (92, 91, 86, '1/3/2025', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (84, 93, 70, '9/23/2024', 'Cras non velit nec nisi vulputate nonummy.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (72, 99, 64, '3/2/2025', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (79, 58, 79, '9/6/2024', 'Vestibulum massa arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (30, 37, 11, '11/29/2024', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (60, 12, 77, '5/10/2024', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (15, 15, 9, '9/19/2024', 'Nulla suscipit ligula in lacus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (25, 81, 25, '1/26/2025', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (32, 10, 3, '4/4/2025', 'Vivamus vestibulum sagittis sapien.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (23, 88, 1, '3/8/2025', 'Integer ac neque.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (88, 99, 81, '4/20/2024', 'Nulla tempus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (22, 93, 44, '11/8/2024', 'Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (73, 51, 51, '5/8/2024', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (64, 80, 52, '7/25/2024', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (7, 79, 73, '3/23/2025', 'Proin risus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (59, 79, 76, '9/23/2024', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (87, 3, 75, '9/24/2024', 'Vestibulum rutrum rutrum neque.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (32, 95, 42, '9/2/2024', 'Morbi non lectus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (96, 96, 1, '1/22/2025', 'Curabitur in libero ut massa volutpat convallis.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (4, 13, 62, '6/23/2024', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (87, 98, 15, '9/23/2024', 'Suspendisse accumsan tortor quis turpis.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (18, 15, 73, '5/13/2024', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (95, 90, 70, '9/27/2024', 'Donec posuere metus vitae ipsum.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (14, 93, 67, '4/10/2025', 'Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (93, 68, 41, '4/19/2025', 'Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (42, 72, 24, '2/21/2024', 'Pellentesque ultrices mattis odio.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (79, 7, 19, '7/19/2024', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (23, 19, 24, '3/20/2024', 'Phasellus id sapien in sapien iaculis congue.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (17, 74, 25, '1/4/2025', 'Nulla suscipit ligula in lacus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (30, 26, 76, '12/6/2024', 'Donec dapibus.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (20, 12, 76, '1/11/2025', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO 'lesson_plans' ('plan_id', 'course_id', 'professor_id', 'date', 'content') VALUES (17, 100, 100, '6/29/2024', 'Integer tincidunt ante vel ipsum.');
# 40 records

#
# Dumping data for table 'grocery_items'
#

INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (86, 96, 'Chickpea Salad Deluxe', 31, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (79, 64, 'Portable Hammock with Stand', 70, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (10, 97, 'Cinnamon Raisin Bread', 53, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (30, 92, 'Peach Mango Smoothie', 66, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (39, 44, 'Luxury Bath Robe', 60, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (65, 59, 'Summer Tank Dress', 95, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (57, 94, 'Decorative Throw Blanket', 92, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (63, 68, 'Beef Stroganoff Mix', 20, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (28, 25, 'Organic Whole Grain Oats', 74, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (2, 23, 'Adjustable Window Blind', 52, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (29, 20, 'Compact Shoe Rack', 34, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (5, 5, 'Coconut Flakes', 47, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (77, 94, 'Eggs (dozen)', 3, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (24, 21, 'Kids'' Trampoline', 95, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (32, 91, 'Woven Storage Baskets', 3, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (99, 97, 'Pizza Stone', 80, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (68, 83, 'Satin Slip Dress', 33, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (47, 74, 'Chili Lime Corn Chips', 39, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (39, 19, 'Chickpea Salad', 91, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (48, 40, 'Self-Watering Planters', 1, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (99, 77, 'Classic Caesar Dressing', 25, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (70, 76, 'Organic Sweet Potatoes', 84, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (54, 15, 'Organic Almonds', 66, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (28, 15, 'Italian Herb Balsamic Marinade', 6, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (23, 53, 'Electric Hot Pot', 20, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (19, 19, 'Magnetic Phone Car Mount', 5, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (53, 51, 'Puzzle 3D Model Kit', 25, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (1, 58, 'Smart Plant Monitor', 83, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (83, 26, 'Adjustable Resistance Bands', 13, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (13, 29, 'Chicken Sausage', 78, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (32, 8, 'Pumpkin Pancake Mix', 6, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (40, 32, 'Bamboo Utensil Holder', 60, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (1, 57, 'Teriyaki Salmon Fillets', 78, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (42, 19, 'Almond Flour Brownies', 46, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (40, 57, 'Incense Holder', 16, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (56, 53, 'Coconut Milk', 96, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (28, 30, 'Italian Marinara Sauce', 48, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (46, 13, 'Foam Muscle Roller', 60, 'pending');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (70, 89, 'Vegetable Korma', 67, 'purchased');
INSERT INTO 'grocery_items' ('item_id', 'list_id', 'name', 'quantity', 'purchase_status') VALUES (83, 41, 'Spicy Tuna Rolls', 87, 'pending');
# 40 records

#
# Dumping data for table 'tickets'
#

INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (48, 'Swastika', '8/12/2024', 'open', 'Curabitur convallis.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (32, 'Unlawful Entry', '10/16/2024', 'resolved', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (1, 'Kill Bill: Vol. 2', '5/4/2024', 'inprogress', 'Duis at velit eu est congue elementum.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (87, 'Playing God', '3/10/2025', 'resolved', 'Etiam faucibus cursus urna.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (50, 'Berlin in Germany', '10/22/2024', 'resolved', 'Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (10, 'Backdraft', '6/26/2024', 'resolved', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (88, 'Freakonomics', '6/16/2024', 'open', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (96, 'Best of Ernie and Bert, The', '12/29/2024', 'open', 'Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (76, 'Hilary and Jackie', '9/28/2024', 'open', 'Maecenas rhoncus aliquam lacus.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (82, 'Lives of Others, The (Das Leben der Anderen)', '12/17/2024', 'open', 'Sed accumsan felis.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (79, 'Aladdin', '11/13/2024', 'open', 'Duis aliquam convallis nunc.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (57, 'Shaolin Temple 2: Kids from Shaolin (Shao Lin xiao zi) (Kids from Shaolin)', '8/25/2024', 'resolved', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (24, 'Burning Secret', '12/17/2024', 'open', 'Curabitur gravida nisi at nibh.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (70, '1981', '11/15/2024', 'inprogress', 'Nam tristique tortor eu pede.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (49, 'Won''t Back Down', '2/16/2025', 'inprogress', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (63, 'Singing Nun, The', '3/5/2025', 'resolved', 'Pellentesque ultrices mattis odio.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (53, 'Devil, The (Diabel)', '12/6/2024', 'open', 'Duis bibendum.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (1, 'Brother Rat', '11/10/2024', 'open', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (71, 'Zatoichi''s Conspiracy (Shin Zatôichi monogatari: Kasama no chimatsuri) (Zatôichi 25)', '10/8/2024', 'inprogress', 'Mauris ullamcorper purus sit amet nulla.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (53, 'Out California Way', '2/26/2025', 'open', 'Aliquam non mauris.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (64, 'Arlington Road', '7/28/2024', 'inprogress', 'Cras in purus eu magna vulputate luctus.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (49, 'East, West, East: The Final Sprint', '10/14/2024', 'inprogress', 'Nullam varius.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (7, 'Cube 2: Hypercube', '2/26/2025', 'open', 'Praesent lectus.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (31, 'Flying Saucer, The', '3/26/2025', 'open', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (78, 'Hottest State, The', '11/22/2024', 'inprogress', 'Donec ut dolor.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (62, 'Charlie Chan''s Courage', '2/21/2025', 'open', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (74, 'Twogether', '7/2/2024', 'resolved', 'Mauris ullamcorper purus sit amet nulla.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (96, 'Emma', '10/26/2024', 'resolved', 'Morbi a ipsum.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (68, 'Silent Night, Bloody Night', '7/12/2024', 'open', 'Morbi non quam nec dui luctus rutrum.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (37, 'Fanny and Alexander (Fanny och Alexander)', '2/7/2025', 'open', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (77, 'Human Nature', '9/18/2024', 'open', 'Curabitur gravida nisi at nibh.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (81, 'Black Cat, The', '11/18/2024', 'resolved', 'Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (10, 'Emma', '7/19/2024', 'inprogress', 'Nulla facilisi.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (82, 'Windy Day (Tuulinen päivä)', '10/10/2024', 'resolved', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (73, 'The Son of the Sheik', '5/5/2024', 'inprogress', 'Aliquam non mauris.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (93, 'Fellini''s Casanova (Il Casanova di Federico Fellini)', '2/7/2025', 'resolved', 'Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (82, 'Price Check', '1/29/2025', 'inprogress', 'In hac habitasse platea dictumst.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (94, 'Step Up 3D', '8/27/2024', 'resolved', 'Etiam justo.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (59, 'Delphine 1, Yvan 0', '6/7/2024', 'resolved', 'Morbi non lectus.');
INSERT INTO 'tickets' ('ticket_id', 'title', 'date', 'status', 'description') VALUES (40, 'Story of the Weeping Camel, The (Geschichte vom weinenden Kamel, Die)', '5/6/2024', 'inprogress', 'Pellentesque eget nunc.');
# 40 records

#
# Dumping data for table 'club_events'
#

INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (50, 'Mint Chocolate Chip Ice Cream', 'Apt 944', '7/9/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (38, 'Floral Wrap Top', 'Room 388', '11/20/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (80, 'Personalized Keychain', 'Suite 30', '1/4/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (99, 'Garlic Parmesan Roasted Potatoes', 'Room 1302', '7/13/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (71, 'Pumpkin Spice Latte Mix', '18th Floor', '11/18/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (88, 'Tuna Fish (canned)', 'Room 638', '4/15/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (34, 'Radish Chips', 'Apt 768', '7/18/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (65, 'Portable Solar Camp Shower', 'Apt 981', '9/8/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (45, 'Self-Watering Planter', 'Room 678', '9/24/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (73, 'Spicy Hummus', 'PO Box 15198', '1/1/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (100, 'Crispy Tofu Bites', 'Room 373', '2/20/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (58, 'Baked Falafel Balls', '18th Floor', '4/30/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (18, 'Buffalo Stilton Cheese', 'Suite 11', '9/7/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (22, 'Relaxed Fit Henley Shirt', 'PO Box 31706', '11/15/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (72, 'Lemonade Mix', 'PO Box 55783', '8/22/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (54, 'Artisan Pickles', 'Room 1028', '9/24/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (35, 'Oven-Baked Potato Chips', '1st Floor', '3/4/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (83, 'Luxe Velvet Blazer', 'Room 642', '3/13/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (23, 'Decorative Wall Tapestry', 'Apt 735', '7/15/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (3, 'Pet Grooming Brush', '13th Floor', '6/1/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (13, 'High-Speed Blender', 'Room 816', '6/13/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (6, 'Children''s Educational Workbook', '2nd Floor', '4/19/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (85, 'High-Waisted Skirt', 'PO Box 50400', '5/8/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (10, 'Portable Pet Bathing Tool', 'Apt 298', '7/15/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (25, 'Wire Shelving Unit', 'Room 1365', '5/22/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (41, 'Smart Thermostat', 'Apt 776', '12/15/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (66, 'Durable Hiking Boots', 'Apt 1429', '10/17/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (39, 'Chocolate Hazelnut Granola', 'Room 1920', '6/6/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (58, 'Overnight Hiking Backpack', 'PO Box 24438', '10/8/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (96, 'LED Strip Lights with Remote Control', 'PO Box 96062', '12/18/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (24, 'Fruit Medley Juice', 'Room 1532', '2/3/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (55, 'Multi-Function Meat Tenderizer', 'Room 400', '1/28/2025');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (10, 'Baked Falafel', 'Room 1110', '4/22/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (6, 'Garden Vegetable Chips', 'PO Box 96013', '10/29/2024');
INSERT INTO 'club_events' ('club_event_id', 'name', 'location', 'date') VALUES (23, 'Cotton Pajama Set', 'Room 160', '9/7/2024');
# 35 records

INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2024-10-09', 'curae', '635058631-X', '585937318-X');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('In hac habitasse platea dictumst.', '2024-07-25', 'cras', '971730883-7', '408720654-8');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2024-04-14', 'porta', '240807106-2', '617079720-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Duis mattis egestas metus. Aenean fermentum.', '2025-03-12', 'hac', '995880267-8', '268805724-3');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '2025-02-03', 'ridiculus', '100357158-1', '190407235-6');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2024-11-09', 'nisl', '231182367-1', '073347307-5');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2024-08-19', 'nec', '474741346-4', '047780826-3');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2024-10-31', 'sit', '748573264-1', '707757975-1');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2025-02-28', 'id', '217309950-7', '602164373-9');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Sed sagittis.', '2024-09-06', 'pulvinar', '282708021-4', '572137651-1');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2025-01-02', 'orci', '315328153-X', '344626731-X');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', '2025-01-26', 'eu', '722536286-0', '620683214-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Sed accumsan felis.', '2024-07-20', 'maecenas', '325143881-6', '492477963-6');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '2024-12-11', 'lacinia', '285023042-1', '971089666-0');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2024-04-24', 'luctus', '245478815-2', '526756426-5');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Morbi porttitor lorem id ligula.', '2024-05-08', 'curabitur', '760622893-0', '611788942-9');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '2024-07-15', 'amet', '014325356-5', '652700599-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Praesent lectus.', '2024-12-13', 'nisl', '096157206-X', '850008523-1');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Maecenas ut massa quis augue luctus tincidunt.', '2024-07-23', 'nulla', '473695333-0', '549213997-5');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nulla tellus.', '2024-12-20', 'dui', '809307583-6', '312242228-X');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Maecenas ut massa quis augue luctus tincidunt.', '2025-03-11', 'est', '421058038-4', '751621665-8');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('In quis justo.', '2024-08-10', 'proin', '290606976-0', '196569226-5');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2025-01-29', 'rhoncus', '802237367-2', '109696603-4');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2024-12-27', 'vestibulum', '159826977-1', '824236297-1');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2024-05-07', 'eleifend', '669471059-3', '098718980-8');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Donec posuere metus vitae ipsum. Aliquam non mauris.', '2024-06-09', 'lorem', '552407241-2', '147759440-X');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2024-08-27', 'dictumst', '983072725-4', '685041591-3');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '2024-06-07', 'nisi', '507556633-2', '705371634-1');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '2025-01-17', 'vestibulum', '061949765-3', '985778864-5');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Integer ac leo. Pellentesque ultrices mattis odio.', '2025-01-07', 'in', '642907869-8', '945287083-4');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '2024-10-25', 'sapien', '452301881-2', '912814971-8');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2024-04-17', 'mauris', '143123330-7', '509865235-9');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Integer ac neque. Duis bibendum.', '2025-02-25', 'nunc', '945428027-9', '384152280-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nullam sit amet turpis elementum ligula vehicula consequat.', '2024-09-11', 'ultrices', '144442355-X', '201549209-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2024-09-26', 'nulla', '850299849-8', '749281703-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2024-10-12', 'justo', '776059361-9', '408332935-1');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2024-08-11', 'pede', '306386420-X', '721511302-7');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2024-09-11', 'in', '985538016-9', '688875967-9');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', '2024-11-02', 'erat', '030618322-6', '417608268-2');
INSERT INTO 'CalendarEvent' ('Description', 'DateTime', 'Type', 'UserId', 'CustomerId') VALUES ('Nulla nisl. Nunc nisl.', '2024-11-08', 'consectetuer', '551006027-1', '719770660-2');

INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSFVMQVN0DCAVDF2340', 'sed', '2025-03-14', '2024-12-21', '01JRGGFYSGJJF7CWK3A43SGSDN');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSG1B4CS1GEZ0QX80M7', 'curae', '2024-12-26', '2024-06-05', '01JRGGFYSH5S3J1J1VWRH5WMKX');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSHZJ9HEWXSBBVP47B4', 'quisque', '2024-04-10', '2025-04-08', '01JRGGFYSJAE5R0KZXB53WEF55');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSJN25P617ZY61QBN2R', 'enim', '2024-08-01', '2025-01-29', '01JRGGFYSMZNBTB3SKFDNP5Q2E');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSM31169B86J2V76MG8', 'turpis', '2024-09-21', '2025-02-12', '01JRGGFYSNDM609N1VCN3DB5T1');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSN679X0S5ZH5NX4CEM', 'pulvinar', '2024-04-26', '2024-11-29', '01JRGGFYSPG3SCA0G5453J4R2Y');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSP3P7VAC4FXR9HG26F', 'ut', '2024-07-05', '2025-01-28', '01JRGGFYSQ6Q8N3RYCR209DQB5');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSR8Z0TYEBZPWDK4ZH6', 'praesent', '2024-12-31', '2024-10-20', '01JRGGFYSRYRHD6TXXF8KX09DZ');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSSF7NZG6HZQ0ZEK6BD', 'hac', '2024-10-03', '2025-03-04', '01JRGGFYST18HGD17TS5G20D60');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYST6PDTBPR1SVJ89KG6', 'enim', '2025-03-23', '2025-02-22', '01JRGGFYSV9T2SKCHTG641AZDT');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSW7Z61YDAPBZYH9CWN', 'pede', '2025-01-01', '2024-09-08', '01JRGGFYSWPAW1YJHYVQ9KW6SS');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSXEAJ1NYNB4416WR0Y', 'dui', '2025-03-08', '2024-05-27', '01JRGGFYSYMNXKZJGVHQVZQJED');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYSYEFBWRQH0KTQK0NT7', 'sed', '2025-04-02', '2024-11-04', '01JRGGFYSZBWQTCSY33KRS5DH6');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT0JGDETQS4JQMFEP7B', 'ut', '2024-06-06', '2024-08-14', '01JRGGFYT1MGCG00WW140A06KH');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT1BVS3VSSY3EKMYYH9', 'penatibus', '2024-11-28', '2024-08-27', '01JRGGFYT22QQ5DRT5V8S7Q9JP');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT2FQ7A3EYAQH8KEY5N', 'magna', '2024-12-29', '2025-03-26', '01JRGGFYT3VSGVM94GZW6JW4CW');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT4MD2C3EHHP4QQA8XK', 'eget', '2024-04-15', '2024-07-25', '01JRGGFYT422XC711GVR4K6QRD');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT5P9VYHF3NVPXDF4HD', 'sociis', '2025-03-11', '2025-02-25', '01JRGGFYT61333WKK7GMQM575T');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT69VMWE9GE7YYH18GG', 'eros', '2025-03-04', '2025-02-20', '01JRGGFYT8GC75FSDR6ZP963GT');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYT8QV0DH82WVTQP125H', 'primis', '2025-01-12', '2025-02-08', '01JRGGFYT9CEJJJ3WNE8X6HGYK');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTA0T19CJW32FH0EJWJ', 'aliquam', '2024-11-16', '2025-01-04', '01JRGGFYTBV62X7V3E1F5QSSQ4');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTBKTXH4T220KAD7KYC', 'massa', '2024-06-15', '2025-01-14', '01JRGGFYTC4K4T00GDVFW0BEF5');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTCC4KFHCBC5DDXM8AT', 'natoque', '2024-11-29', '2025-01-17', '01JRGGFYTDACST4XEFVZ68ZKC6');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTDP3J2P8Y0VKES7AEZ', 'magna', '2024-04-29', '2024-07-02', '01JRGGFYTE6EF2MTD2J2ACXPFE');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTE98DZSMA1BEPCYHYY', 'cubilia', '2025-01-05', '2024-05-11', '01JRGGFYTF8TDDJGQJS3CRSCNB');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTFRHJZNFJDQSYRCQJ2', 'pede', '2024-10-22', '2024-12-09', '01JRGGFYTG95BN22B8CVJ2SE1J');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTG4DFNAYFWSZMQQBG7', 'eu', '2024-12-08', '2024-10-06', '01JRGGFYTHMZYYSVT2SH6PKJ8V');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTHHKNSJ94WVCYHSNCF', 'elit', '2025-01-03', '2024-08-26', '01JRGGFYTHTAG14Z710RCCNRRC');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTHXNKSZQGFP0QVHJS1', 'dui', '2024-12-18', '2024-11-06', '01JRGGFYTJ8MH507ZVC5P5N4EJ');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTKEK8Y39RDNB9SAC9A', 'et', '2024-08-08', '2024-11-12', '01JRGGFYTM4FXZZXG7FEKEEGGX');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTMZTHEHES9CX47GYCX', 'diam', '2024-06-30', '2024-07-28', '01JRGGFYTNTTX26J61P0V6B8PT');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTPHJWCM230CJC752BN', 'a', '2025-03-07', '2024-07-28', '01JRGGFYTQE4M2YY0T00XT49AP');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTQNCT92WM6W0FFG6Y5', 'ut', '2024-06-28', '2024-10-07', '01JRGGFYTRJGT2J3DWWG1F87HE');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTS2TZCED3R7SCF70ZV', 'cum', '2024-08-14', '2025-01-21', '01JRGGFYTTBNM2A3D1M5AF4WXS');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTT0781YT3RD7N77B9G', 'ligula', '2025-02-20', '2024-10-09', '01JRGGFYTVZRZYSZSXBZDJ8G87');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTXSSQYPYMDE8SER734', 'nam', '2025-01-24', '2024-11-09', '01JRGGFYTYKZ1Q4FDVDXDSQYD5');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTY4A1D20VJKTDXME7K', 'suscipit', '2024-12-07', '2024-06-03', '01JRGGFYTZW4QTPA4THKTNP3DT');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYTZBW0NN26PFTPPN0KR', 'metus', '2024-05-03', '2025-02-07', '01JRGGFYV0X0TF1DK01D6PEXSA');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYV043PED0E5ST5EJQJ9', 'dui', '2024-08-27', '2024-05-13', '01JRGGFYV0VN415SWCBC9GY4J1');
INSERT INTO 'grocery_list' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGGFYV05K3ASPKTT4YF5S53', 'suspendisse', '2024-12-28', '2025-02-10', '01JRGGFYV1V2AJQS794MZEE8HP');

INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('in', 'Senior Editor', 15, '01JRGGX0QJPW80SBVQ708YQTF3');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('porttitor', 'Recruiter', 33, '01JRGGX0QJBDHB7NFH6JRZYYJJ');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('vitae', 'Computer Systems Analyst IV', 46, '01JRGGX0QKF4WZB69X1N0M4R41');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('orci', 'Automation Specialist IV', 54, '01JRGGX0QKRPDBPA4CM69JGD6P');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('ut', 'Nurse', 47, '01JRGGX0QKXVM6B2B47CZDR81K');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('in', 'Developer III', 73, '01JRGGX0QM27VAG68268YY80HW');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('faucibus', 'Civil Engineer', 23, '01JRGGX0QM5JV60JQVM0CQFD7V');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('nec', 'Geologist IV', 20, '01JRGGX0QMAR3RF7340Y8SH169');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('tincidunt', 'Editor', 31, '01JRGGX0QNWTJ14QJT35J97FFE');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('placerat', 'Clinical Specialist', 1, '01JRGGX0QNBE2RYJBCJSYV39MA');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('vestibulum', 'Nurse', 23, '01JRGGX0QNEKHD2MNF2SMBK6SA');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('mauris', 'Senior Editor', 52, '01JRGGX0QPN0JGQKVXA4XRN5AY');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('pede', 'Human Resources Assistant II', 40, '01JRGGX0QP16TWJ4YVN1AVXQZ0');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('bibendum', 'Research Assistant I', 41, '01JRGGX0QP7P6BBVDR6ZQBJS5C');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('diam', 'Web Developer I', 30, '01JRGGX0QQ9E6B9BAWR5VPEDMP');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('ligula', 'Information Systems Manager', 19, '01JRGGX0QQDJ2KVTK9XZGZ3WNC');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('vestibulum', 'Assistant Media Planner', 36, '01JRGGX0QQBDP45PX31HBCMQQ7');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('turpis', 'Environmental Tech', 70, '01JRGGX0QRMYS2XHJVR4YVWC2G');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('nisl', 'Marketing Manager', 47, '01JRGGX0QRTNWBRA4C8TNVVWE8');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('turpis', 'Research Nurse', 2, '01JRGGX0QR4JZHSEJ9CG59MQ6W');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('parturient', 'Accountant I', 24, '01JRGGX0QSDM46TVSF9CTKXG30');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('iaculis', 'Registered Nurse', 72, '01JRGGX0QSPTTET3MPPTZ6V50R');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('sit', 'Financial Analyst', 49, '01JRGGX0QSJBK4EPB4AAYQSVYX');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('ut', 'Associate Professor', 77, '01JRGGX0QT4Z3SF2BMSYP10CY7');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('in', 'Registered Nurse', 58, '01JRGGX0QTSW52DGWFT75XWKQP');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('erat', 'Information Systems Manager', 5, '01JRGGX0QTJKPK8RHD8ZWATBR9');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('neque', 'Statistician I', 23, '01JRGGX0QV9EGX39AN9PSGX0WP');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('quis', 'Systems Administrator III', 39, '01JRGGX0QVNXE8GA2G79BEN8T8');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('cras', 'Payment Adjustment Coordinator', 62, '01JRGGX0QV6J6QWZBGF72FGTKE');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('donec', 'Operator', 40, '01JRGGX0QWE2VHM4BAPXM7QVRT');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('posuere', 'Staff Accountant I', 26, '01JRGGX0QW9C1VCRJ4XG9407HH');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('libero', 'Assistant Professor', 69, '01JRGGX0QX1E3PYJDJSQ94CM7G');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('cursus', 'Systems Administrator IV', 57, '01JRGGX0QYPEAKSSG8PGEX4PYZ');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('nec', 'Administrative Assistant II', 56, '01JRGGX0QZ9A6BBDPGX9KYT5T3');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('libero', 'Human Resources Manager', 51, '01JRGGX0R0R9A2CBPH7DG8GPAM');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('fringilla', 'Librarian', 61, '01JRGGX0R103X8QNGWBYCMR67H');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('ligula', 'Operator', 37, '01JRGGX0R2MVT1JCRPSN230T46');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('aliquam', 'Account Representative II', 27, '01JRGGX0R38X3TK1J55384V283');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('leo', 'Occupational Therapist', 7, '01JRGGX0R491R8RY0NQPAXZMJH');
INSERT INTO 'Parent' ('Name', 'Occupation', 'Age', 'UserId') VALUES ('ante', 'Technical Writer', 32, '01JRGGX0R4FJHKM0PZ3RNQZ8B9');

INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZAZA8NKY332TF2F3B8', 'dui', '2024-10-20', '2025-02-25', '01JRGHK3ZB8CF665Z40KAB2E8J');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZBEQ9TMMW5ARAVW2JQ', 'ac', '2024-10-15', '2024-12-24', '01JRGHK3ZCA3G5T258K5MNSAV5');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZCXNMP4R04Z5WSSSXK', 'ultricies', '2024-04-13', '2024-09-14', '01JRGHK3ZD896EH6RBS6H1JPQ2');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZE1CECH3P63CG08HDR', 'mi', '2025-03-19', '2024-08-23', '01JRGHK3ZEQQ3M5QE4AG69ZN9F');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZF97NE1TAB8MSXH0W3', 'aliquam', '2025-01-29', '2024-10-02', '01JRGHK3ZFHN6DFVR58T0A33NT');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZGZCAM5ZZFXCXP7YRK', 'eu', '2024-05-04', '2024-11-16', '01JRGHK3ZGVTBYJN8YS0SK61ED');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZH6H752B1Z4HT1KYWD', 'pellentesque', '2024-11-11', '2024-07-25', '01JRGHK3ZH0H1WPDPZYA0DDJWH');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZJDDNH2M9X3P7KGYRB', 'condimentum', '2024-11-29', '2025-01-03', '01JRGHK3ZJHEZPD50T69E4P5TB');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZK3SRZDXZKBJ14T2QW', 'et', '2024-08-26', '2024-08-23', '01JRGHK3ZK2K0M6FW0HYZS3JGZ');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZMYGE7EKHAN0ZMPJ1N', 'ut', '2024-04-29', '2024-11-27', '01JRGHK3ZMAHHBAFC06ERMCJHB');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZN1XFWWPFR39WVRZQ3', 'a', '2024-08-19', '2024-11-23', '01JRGHK3ZP6NNZ4839J923KRAH');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZPZDWTB9D5V898REJ3', 'suspendisse', '2024-08-19', '2025-01-08', '01JRGHK3ZQ45RHZGN5F1C99P24');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZQZP65FF11JT0Y6MYG', 'convallis', '2024-05-03', '2024-10-21', '01JRGHK3ZR8MZPR12K2F4HN4RE');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZRK7NQE5FQ9YRYSZ0F', 'quam', '2024-09-22', '2024-10-09', '01JRGHK3ZSYN193KP0TXNNNJ0B');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZSVBXWA5WA3NDN18DP', 'volutpat', '2024-05-11', '2024-09-25', '01JRGHK3ZT0QK14M31DEK92BZ7');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZTTTBWP6ZYFWREKAXK', 'sapien', '2024-06-16', '2024-08-04', '01JRGHK3ZVVBDBQMXA8M9FY4NM');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZV7RNG62SMFMM5ZHH9', 'odio', '2025-04-07', '2024-04-18', '01JRGHK3ZWEVM02HDQQN885045');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZWD3E02M2QMMHYGA5F', 'sapien', '2024-12-30', '2024-08-02', '01JRGHK3ZX5EA4B4MTCRQCHDN2');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZXFBVHB9EDYJRN0WCB', 'pellentesque', '2024-08-06', '2024-08-22', '01JRGHK3ZYPFZ8YX0FP45M8WZY');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZY8QZHKWJ131A4VHRA', 'cras', '2024-09-15', '2025-01-24', '01JRGHK3ZZVVSPED4YEQ8HHV83');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK3ZZSVGGE8DE021B2S64', 'ac', '2024-04-30', '2024-07-22', '01JRGHK400P9NZSDY1SA4H2DX3');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK400VZ61X7GRWHNX1H6F', 'mi', '2025-03-29', '2024-11-20', '01JRGHK400YCKTH1J5067ZPAE8');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK401B5DY1PFYZ1SXYAH5', 'enim', '2025-02-05', '2024-06-19', '01JRGHK401883PF5EM5GMJS500');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK4022S682CQXKHTHHASG', 'interdum', '2025-01-05', '2025-03-29', '01JRGHK402B4R1GST81RSZ2SQ9');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK403GDTFBCKWYKZSK1RQ', 'massa', '2025-01-12', '2025-01-09', '01JRGHK4034D7A3Q0DWPXR42MQ');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK4040XPN4T2SDAZH4YGH', 'aliquet', '2025-02-21', '2024-09-22', '01JRGHK404E30DQXKFG8JYAZR1');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK405S2PM5PJKGG2VZ805', 'vestibulum', '2024-07-06', '2024-10-03', '01JRGHK4052TB1NF3VRYYTHEDG');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK406C7WZWDT6ESTE1YB8', 'venenatis', '2025-02-19', '2024-11-18', '01JRGHK406X2EYSCQ9MBB8Q9XB');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK406FSEBRCPYFZM6SABR', 'ornare', '2024-12-23', '2025-04-01', '01JRGHK40638FN7Y4EYT2QSHRB');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK407HY7NS0YMVK1WFKBE', 'ultrices', '2024-04-10', '2024-12-29', '01JRGHK407ZESR6X4PZMH7PJPR');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK407GVM0WS3BTKM8DEMW', 'integer', '2024-10-21', '2024-05-26', '01JRGHK40803D8RNS0HBC1CPR4');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK408FCN3NQHJ5JFJYPZY', 'iaculis', '2024-05-28', '2025-02-01', '01JRGHK4080XVRVB7SYSC4DZNK');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40960F7YCQ21WXTN7QH', 'lectus', '2024-10-29', '2025-04-01', '01JRGHK4095KT9RRABC1929S5H');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK409T5B2DFAH6V30T8X1', 'porta', '2024-06-14', '2024-05-10', '01JRGHK40A684B4NTC6GV8F5GQ');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40AXGCK5PTVBBM1TQF4', 'amet', '2025-01-01', '2024-11-22', '01JRGHK40ANZYRYT29GBZ9MKT6');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40AW4FAZGH9FYP5B7QJ', 'magna', '2024-12-09', '2024-08-25', '01JRGHK40B6D9F1Y57Q68N82CR');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40BMV13VXV00NT6NRYJ', 'mattis', '2024-06-28', '2024-05-10', '01JRGHK40B9AEWVN8HY2G1GHX0');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40BGAT3K3TFWG4RZ4QN', 'orci', '2024-06-13', '2024-12-22', '01JRGHK40C61K8BWTZF0V9HHR2');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40CJ34JNQGCMR18BN5F', 'maecenas', '2024-11-02', '2024-05-25', '01JRGHK40D9F99QKHRMMA1GASC');
INSERT INTO 'ToDoList' ('UserId', 'Title', 'CreatedAt', 'UpdatedAt', 'ListId') VALUES ('01JRGHK40DXTZSTG3PS5AFE0AT', 'adipiscing', '2024-06-18', '2024-12-05', '01JRGHK40D62269VXSESMYVT1H');

INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18GWDJ4NPAQQR2BBA4M');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18GERXM5RSSGTZ9ATKN');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18GEAVG0W93H53FAVXZ');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18GGP5RQ9KBW5N67X5V');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18GACHY36JFWPP5F6S6');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18G26J2ENMS2BM1PA9H');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18GVRQDPTAHRBCARWS1');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18H1P5N6NX0R6TH02RF');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18HBT39GZD8VRE9XSV7');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18HCBVQM4CX041V3Z2D');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18HBAGH708YP9EZ8G0F');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18HG4NA59S4PDEB0GWC');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18HGZJ6NJY9N0BQXQ7P');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18HZ0F4VAE48A999THK');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18H090KER4779D0QVFY');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18JE01JV23ZEQCDT6YS');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18JZA08QE7ZCTCV4JHW');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18J87NVAHHM9JJFYDSS');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18J42VZ7WCX24QTBDB2');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18JWQ4Z747Z9XN5Y5TD');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18J5NW3A37K6HJZYVFJ');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18JRZKYM36GTX48Q768');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18JDMBFFDVMPYA468DW');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18J3M69MNT3MX5QK0T2');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KC67Y2BBHFCZNEWGT');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KP7B7TW4PAFMRY6YN');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KJJY26J699KBSEGTK');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18K3XRTWRZ994CAX8F1');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KEYSQQ3HXAFTGN7GQ');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18K45SSSQC3VSP7DSQY');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KB5DWMQK0YDPY0CYB');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KNXX4KVDPGG51KP9B');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18KVWSQYPQV49V02CX3');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18MZ1R22JTS2QYJ9YKX');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18MQX3KB6PPBPPGWJ2T');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18MPEN5SSXVYM2DM1YZ');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18MCC8XMP192FQS57SR');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18MQJYCR1TCBT5CEJ8P');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18M7G4BEFK1A09A8R2Q');
INSERT INTO 'SystemAdmin' ('UserId') VALUES ('01JRGKT18MX62DM9Q240E3E21M');

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;