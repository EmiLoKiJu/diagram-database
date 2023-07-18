CREATE TABLE patients (
	id serial PRIMARY KEY,
	name varchar(255),
	date_of_birth varchar(255),
)

CREATE TABLE medical_histories (
	id serial PRIMARY KEY,
	addmited_att timestamp,
	FOREIGN KEY (patient_id) REFERENCES patients(id),
	status varchar(255),
)