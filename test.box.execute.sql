box.execute([[create table public_entities_tca (    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tca_id integer not null,    tca_number varchar(50) not null,
    name varchar(50) not null,     placeCode varchar(50) not null,
    sec_storage_id integer,     sec_nominee_storage_id integer,
    funds_storage_id integer,     funds_nominee_storage_id integer);]])

box.execute([[SELECT * FROM public_entities_tca;]])
