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

CREATE TABLE invoices (
	id serial PRIMARY KEY,
	total_amount decimal(7,2),
	generated_at timestamp,
	payed_at timestamp,
	FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id),
)