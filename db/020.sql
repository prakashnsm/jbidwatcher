CREATE TABLE time_queue (
  id integer NOT NULL generated by default as identity (START WITH 1, INCREMENT BY 1),
  destination varchar(255) default NULL,
  payload varchar(255) default NULL,
  fire_at timestamp default NULL,
  repeat_interval integer default NULL,
  repeat_count integer default NULL,
  PRIMARY KEY  (id)
)

CREATE INDEX IDX_TQ_Destination ON time_queue(destination, payload)

CREATE INDEX IDX_TQ_FireAt ON time_queue(fire_at)
