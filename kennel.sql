CREATE TABLE `Location` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`address`	TEXT NOT NULL
);

CREATE TABLE `Customer` (
    `id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `name`    TEXT NOT NULL,
    `address`    TEXT NOT NULL,
    `email`    TEXT NOT NULL,
    `password`    TEXT NOT NULL
);

CREATE TABLE `Animal` (
	`id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`  TEXT NOT NULL,
	`status` TEXT NOT NULL,
	`breed` TEXT NOT NULL,
	`customer_id` INTEGER NOT NULL,
	`location_id` INTEGER,
	FOREIGN KEY(`customer_id`) REFERENCES `Customer`(`id`),
	FOREIGN KEY(`location_id`) REFERENCES `Location`(`id`)
);


CREATE TABLE `Employee` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`address`	TEXT NOT NULL,
	`location_id` INTEGER NOT NULL,
	FOREIGN KEY(`location_id`) REFERENCES `Location`(`id`)
);

INSERT INTO `Location` VALUES (null, 'Nashville North', "64 Washington Heights");
INSERT INTO `Location` VALUES (null, 'Nashville South', "101 Penn Ave");

INSERT INTO `Employee` VALUES (null, "Jisie David", "850 LeadThe Way", 1);
INSERT INTO `Employee` VALUES (null, "Scott Silver", "391 Terrace St", 2);
INSERT INTO `Employee` VALUES (null, "Aja Washington", "57205 Elm Ave", 1);
INSERT INTO `Employee` VALUES (null, "Hannah Hall", "411 2nd Ave", 2);
INSERT INTO `Employee` VALUES (null, "Sage Klein", "805 Magnolia Dr", 1);


INSERT INTO `Customer` VALUES (null, "Madison Powell", "9404 Aster St", "madison@powell.com", "password" );
INSERT INTO `Customer` VALUES (null, "Lauren Schuler", "414 Iris Ave", "lauren@schuler.com", "password" );
INSERT INTO `Customer` VALUES (null, "Sari Schyler", "2501 Peony Rd", "sari@schyler.com", "password" );
INSERT INTO `Customer` VALUES (null, "Ronna Suller", "202 Calla Lily Ct", "ronna@suller.com", "password" );


INSERT INTO `Animal` VALUES (null, "Kipper", "Bernese Mountain Dog", "Admitted", 1, 2);
INSERT INTO `Animal` VALUES (null, "Pluto", "Dachshund", "Admitted", 3, 2);
INSERT INTO `Animal` VALUES (null, "Pansy", "Pomeranian", "Admitted", 1, 1);
INSERT INTO `Animal` VALUES (null, "Aoife", "Collie", "Admitted", 2, 2);
INSERT INTO `Animal` VALUES (null, "Alberta", "Dalmation", "Admitted", 1, 2);
INSERT INTO `Animal` VALUES (null, "Josie", "Cairn Terrier", "Admitted", 2, 3);
INSERT INTO `Animal` VALUES (null, "Fritz", "Dachshund", "Admitted", 1, 2);


SELECT * FROM Animal;

INSERT INTO `Animal` VALUES (null, "Daps", "Kennel", "Boxer", 2, 2);