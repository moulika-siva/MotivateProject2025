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

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;