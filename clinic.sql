PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE doctors (
	id INTEGER NOT NULL, 
	name VARCHAR, 
	specialization VARCHAR, 
	PRIMARY KEY (id)
);
INSERT INTO doctors VALUES(1,'Ranveer Singh','Cardiologist');
INSERT INTO doctors VALUES(2,'Shreya Ghoshal','ENT Specialist');
INSERT INTO doctors VALUES(3,'Vishal Dadlani','Hair Specialist');
INSERT INTO doctors VALUES(4,'Shiva','Nephrologist');
CREATE TABLE patients (
	id INTEGER NOT NULL, 
	name VARCHAR, 
	email VARCHAR, 
	phone VARCHAR, 
	password_hash VARCHAR, 
	PRIMARY KEY (id)
);
INSERT INTO patients VALUES(1,'Sushant','sushant.devane.career@gmail.com','8879567492','$2b$12$dIGQEiNnMSdwnhs57yDPDuYi/CXjzg/.PD3eKxow2MzUTbALEb7.i');
INSERT INTO patients VALUES(2,'Shiva','2023mt03516@wilp.bits-pilani.ac.in','7777777777','$2b$12$/HfNgWZbgsa1CtDwFSqILe7wAfOcp865Gxc.ZkO7lzrTjZpRPUVva');
CREATE TABLE appointments (
	id INTEGER NOT NULL, 
	patient_id INTEGER, 
	doctor_id INTEGER, 
	appointment_time VARCHAR, 
	status VARCHAR, 
	created_at DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(patient_id) REFERENCES patients (id), 
	FOREIGN KEY(doctor_id) REFERENCES doctors (id)
);
INSERT INTO appointments VALUES(1,1,1,'2025-05-03T16:00','Scheduled','2025-05-03 09:26:30.746658');
INSERT INTO appointments VALUES(2,1,1,'2025-05-03T22:00:00','Scheduled','2025-05-03 09:43:19.925533');
INSERT INTO appointments VALUES(3,1,2,'2025-05-03T22:00:00','Scheduled','2025-05-03 09:47:44.553363');
INSERT INTO appointments VALUES(4,1,2,'2025-05-03T23:00:00','Scheduled','2025-05-03 09:57:41.024808');
INSERT INTO appointments VALUES(5,1,2,'2025-05-03T20:00:00','Scheduled','2025-05-03 10:02:10.812637');
INSERT INTO appointments VALUES(6,1,2,'2025-05-03T19:00:00','Scheduled','2025-05-03 10:02:56.778776');
INSERT INTO appointments VALUES(7,1,2,'2025-05-03T19:00:01','Scheduled','2025-05-03 10:03:41.804593');
INSERT INTO appointments VALUES(8,1,2,'2025-05-03T19:00:02','Scheduled','2025-05-03 10:04:33.797070');
INSERT INTO appointments VALUES(9,1,2,'2025-05-03T19:00:03','Scheduled','2025-05-03 10:05:36.866472');
INSERT INTO appointments VALUES(10,1,2,'2025-05-03T19:00:04','Scheduled','2025-05-03 10:08:12.334068');
INSERT INTO appointments VALUES(11,1,2,'2025-05-03T19:00:05','Scheduled','2025-05-03 10:08:34.334464');
INSERT INTO appointments VALUES(12,1,2,'2025-05-03T19:00:06','Scheduled','2025-05-03 10:09:17.598766');
INSERT INTO appointments VALUES(13,1,2,'2025-05-03T19:00:07','Scheduled','2025-05-03 10:12:01.974166');
INSERT INTO appointments VALUES(14,1,2,'2025-05-03T19:00:08','Scheduled','2025-05-03 10:12:41.821729');
INSERT INTO appointments VALUES(15,1,2,'2025-05-03T19:00:09','Scheduled','2025-05-03 10:17:02.528101');
INSERT INTO appointments VALUES(16,1,2,'2025-05-03T19:00:10','Scheduled','2025-05-03 10:18:35.912822');
INSERT INTO appointments VALUES(17,1,3,'2025-05-05T15:50','Scheduled','2025-05-03 10:21:12.780411');
INSERT INTO appointments VALUES(18,1,1,'2025-05-04T15:50','Scheduled','2025-05-03 10:22:56.634647');
INSERT INTO appointments VALUES(19,1,2,'2025-05-04T15:50','Scheduled','2025-05-03 10:24:17.331035');
INSERT INTO appointments VALUES(20,1,1,'2025-05-05T16:10','Scheduled','2025-05-03 10:44:24.019982');
INSERT INTO appointments VALUES(21,1,3,'2025-05-05T12:10','Scheduled','2025-05-03 16:44:17.346374');
INSERT INTO appointments VALUES(22,1,4,'2025-05-06T22:20','Scheduled','2025-05-03 16:48:34.552708');
INSERT INTO appointments VALUES(23,2,4,'2025-05-04T22:40','Scheduled','2025-05-03 17:09:39.198271');
CREATE INDEX ix_doctors_id ON doctors (id);
CREATE INDEX ix_patients_id ON patients (id);
CREATE UNIQUE INDEX ix_patients_email ON patients (email);
CREATE INDEX ix_appointments_id ON appointments (id);
COMMIT;
