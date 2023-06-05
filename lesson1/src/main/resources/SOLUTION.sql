create table Student(
    id bigint,
    name varchar(150),
    birthday date,
    "group" int,
    primary key(id)
);

create table Subject(
    id bigint,
    name varchar(99),
    description varchar(98),
    grade int,
    primary key(id)
);

create table PaymentType(
    id bigint,
    name varchar(56),
    primary key(id)
);

create table Payment(
    id bigint,
    type_id bigint,
    amount decimal,
    student_id bigint,
    payment_date datetime,
    primary key(id),
    foreign key(type_id) references PaymentType(id),
    foreign key(student_id) references Student(id)
);

create table Mark(
    id bigint,
    student_id bigint,
    subject_id bigint,
    mark int,
    primary key(id),
    foreign key(student_id) references Student(id),
    foreign key(subject_id) references Subject(id)
)

