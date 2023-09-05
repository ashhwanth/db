create database company;
use company;
create table jobs(job_id varchar(20) primary key, job_title varchar(20), min_salary varchar(20), max_salary varchar(20));
create table employees(employee_id varchar(20) primary key, firstname varchar(20), lastname varchar(20), email varchar(20), phone varchar(20), hire_date varchar(20), job_id varchar(20),
 salary varchar(20), manager_id varchar(20), department_id varchar(20));
 create table dependents(dependent_id varchar(20) primary key, firstname varchar(20), lastname varchar(20), releationship varchar(20), employee_id varchar(20));
 create table departments(department_id varchar(20) primary key, department_name varchar(20), location_id varchar(20));
 create table regions(region_id varchar(20) primary key, region_name varchar(20));
 create table countries(country_id varchar(20) primary key, country_name varchar(20), region_id varchar(20));
 create table locations(location_id varchar(20) primary key, street_address varchar(20), postalcode varchar(20), city varchar(20), state_province varchar(20), country_id varchar(20));
 
 alter table employees add foreign key employees(job_id) references jobs(job_id),add foreign key employees2(department_id) references departments(department_id);
 alter table dependents add foreign key dependents(employee_id) references employees(employee_id);
alter table departments add foreign key departments(location_id) references locations(location_id);
 alter table locations add foreign key locations(country_id) references countries(country_id);
  alter table countries add foreign key countries(region_id) references regions(region_id);
  
  alter table departments rename dept;
  alter table employees modify column salary smallint;
  alter table employees add column commission varchar(20);