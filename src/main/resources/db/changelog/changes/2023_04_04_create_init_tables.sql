create table categories(
    id serial primary key,
    name varchar(50)
);
create table items(
    id serial primary key,
    name varchar(50),
    price int,
    amount int,
    categories_id int,
    constraint fk_items_categories
                  foreign key (categories_id)
                  references categories(id)
);