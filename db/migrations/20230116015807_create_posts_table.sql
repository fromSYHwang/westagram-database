-- migrate:up
CREATE TABLE posts (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  content varchar(3000) NULL,
  user_id int NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

-- migrate:down

