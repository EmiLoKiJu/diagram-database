CREATE TABLE patients (
	id serial PRIMARY KEY,
	name varchar(255),
	date_of_birth varchar(255)
)

CREATE TABLE medical_histories (
	id serial PRIMARY KEY,
	addmited_att timestamp,
	patient_id int REFERENCES patients(id),
	status varchar(255)
)

CREATE TABLE invoices (
	id serial PRIMARY KEY,
	total_amount decimal(7,2),
	generated_at timestamp,
	payed_at timestamp,
	medical_history_id int REFERENCES medical_histories(id)
)

CREATE TABLE treatments (
	id serial PRIMARY KEY,
	type varchar(255),
	name varchar(255)
)

CREATE TABLE invoice_items (
	id serial PRIMARY KEY,
	unit_price decimal(7,2),
	quantity int,
	total_price decimal(7,2),
	invoice_id int REFERENCES invoices(id),
	treatment_id int REFERENCES treatments(id)
)

CREATE TABLE medical_histories_MTM_treatments (
	medical_history_id int REFERENCES medical_histories(id),
	treatmets_id int REFERENCES treatments(id)
)
