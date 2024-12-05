-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "titles" (
    "title_id" VARCHAR(30)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR(30)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(30)   NOT NULL,
    "hire_date" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no"),
	CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY ("emp_title_id") REFERENCES "titles" ("title_id")
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY ("dept_no")
);

CREATE TABLE "Dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(30)   NOT NULL,
	CONSTRAINT "pk_Dept_emp" PRIMARY KEY ("emp_no", "dept_no"),  -- Composite primary key
    CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no")
);

CREATE TABLE "Dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" int   NOT NULL,
	CONSTRAINT "pk_Dept_manager" PRIMARY KEY ("dept_no", "emp_no"),  -- Composite primary key
	CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no"),
    CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" money   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY ("emp_no"),
	CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);


