CREATE TABLE casts
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	cast_name string,
	cast_des text,
	cast_active boolean default true,
);
rails g nifty:scaffold Cast cast_name:string cast_des:text cast_active:boolean

CREATE TABLE sub_casts
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	subcast_name string,
	subcast_des text,
	subcast_active boolean default true,
	cast_id bigint REFERENCES casts(id)
);
rails g nifty:scaffold SubCast subcast_name:string subcast_des:text subcast_active:boolean references:cast

CREATE TABLE standards
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	std_name_str string,
	std_name_int integer,
	std_des string,
	std_active boolean default true
);
rails g nifty:scaffold Standard std_name_str:string std_name_int:integer std_des:string std_active:boolean


CREATE TABLE sections
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	sec_name string,
	sec_des string,
	sec_active boolean default true
);
rails g nifty:scaffold Section sec_name:string sec_des:string sec_active:boolean

CREATE TABLE emp_types
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	emptype_name string, --principal, hod
	emptype_des string,
	emptype_active boolean default true
);
rails g nifty:scaffold EmpType emptype_name:string emptype_des:string emptype_active:boolean

CREATE TABLE schools
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	sc_name string,
	sc_address1 string,
	sc_address2 string,
	sc_city string,--
	sc_state string,
	sc_pin string,
	sc_country string,
	sc_tel_no string,
	sc_web_addr string,
	sc_email_addr string,
	sc_fax_no string,
	sc_active boolean default true,
);

rails g nifty:scaffold School sc_name:string sc_address1:string sc_address2:string sc_city:string sc_state:string sc_pin:string sc_country:string sc_tel_no:string sc_web_addr:string  sc_email_addr:string sc_fax_no:string sc_active:boolean


CREATE TABLE employees
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	emp_name string,
	emp_address1 string,
	emp_address2 string,
	emp_city string,
	emp_state string,
	emp_pin string,
	emp_country string,
	emp_mobile string,
	emp_email string,
	emp_active boolean default true,
	emp_type_id bigint REFERENCES emp_types(id)
	school_id bigint REFERENCES schools(id)
);
rails g nifty:scaffold Employee emp_name:string emp_address1:string emp_address2:string emp_city:string emp_state:string emp_pin:string emp_country:string emp_mobile:string emp_email:string emp_active:boolean emp_type:references school:references

CREATE TABLE students
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	stud_admission_no string,
	stud_firstname string,
	stud_lastname string,
	stud_sex string,
	stud_dob date,
	stud_father_name string,
	stud_mother_name string,
	stud_guardian_name string,
	stud_address1  string,
	stud_address2 string,
	stud_city string,
	stud_state string,
	stud_pin string,
	stud_country string,
	stud_identification text,
	stud_contact_number string,
	stud_blood_group string,
	stud_religion string,
	stud_nationality string,
	stud_mother_tounge string,
	stud_date_of_joining date,
	stud_std_admitted string,
	stud_active boolean default true,
	school_id bigint REFERENCES schools(id)
	applied_tc boolean default false
	sub_cast_id bigint REFERENCES sub_casts(id)
);

rails g nifty:scaffold Student stud_firstname:string stud_lastname:string stud_sex:string stud_dob:date stud_father_name:string stud_mother_name:string stud_guardian_name:string stud_address1:string stud_address2:string stud_city:string stud_state:string stud_pin:string stud_country:string stud_identification:text stud_contact_number:string stud_blood_group:string stud_religion:string stud_nationality:string stud_mother_tounge:string stud_date_of_joining:date stud_std_admitted:string stud_active:boolean school:references sub_cast:references

CREATE TABLE stud_pre_sc_details
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	pre_sc_name string,
	pre_sc_principal_name string,
	pre_sc_address1 string,
	pre_sc_address2 string,
	pre_sc_city string,
	pre_sc_state string,
	pre_sc_pin string,
	pre_sc_country string,
	pre_sc_tel_no string,
	pre_sc_web_addr string,
	pre_sc_email_addr string,
	pre_sc_fax_no string,
	pre_sc_last_studied string,
	pre_sc_leaving_date date,
	pre_sc_rea_of_leaving text,
	student_id bigint REFERENCES students(id)
);

rails g nifty:scaffold StudPreScDetail pre_sc_name:string pre_sc_principal_name:string pre_sc_address1:string pre_sc_address2:string pre_sc_city:string pre_sc_state:string pre_sc_country:string pre_sc_pin:string pre_sc_tel_no:string pre_sc_web_addr:string pre_sc_email_addr:string pre_sc_fax_no:string pre_sc_last_studied:string pre_sc_leaving_date:date pre_sc_rea_of_leaving:text student:references

CREATE TABLE stud_std_details
(
	id SERIAL UNIQUE PRIMARY KEY,
	created_at timestamp,
	updated_at timestamp,
	rollno string,
	result string,
	grade string,
	date_of_joining date,
	date_of_passing date,
	section_id bigint REFERENCES sections(id)
	standard_id bigint REFERENCES standards(id)
);
rails g nifty:scaffold StudStdDetail rollno:string year_of_joining:string year_of_passing:string result:string section:references standard:references

rails g nifty:scaffold Country iso:string name:string printable_name:string iso2:string iso3:string grade:string numcode:integer textcode:string capital:string population:integer

doubt:
admission number
serial number
