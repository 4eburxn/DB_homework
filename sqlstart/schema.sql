CREATE TABLE devices (
  id integer PRIMARY KEY autoincrement,
  sn text not null unique
);


CREATE TABLE tests (
  id integer PRIMARY KEY autoincrement,
  ts integer not null,
  device_id integer not null references devices(id),
  sn text not null unique
);




