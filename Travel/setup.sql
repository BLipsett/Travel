CREATE TABLE Accounts(  
    id VARCHAR(255) NOT NULL primary key comment 'primary key',
    create_time DATETIME  DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
    name VARCHAR(255) NOT NULL COMMENT 'Users Name',
    email VARCHAR(255) NOT NULL COMMENT 'Users Email',
    picture VARCHAR(255) NOT NULL COMMENT 'Picture Url'
) default charset utf8 comment '';

CREATE TABLE Vacations(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT'primary key',
  create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'ceate time',
  update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
  name VARCHAR(255) NOT NULL COMMENT 'name of vacation',
  creatorId VARCHAR(255) NOT NULL COMMENT 'FK: Account Id',
  trip_length INT NOT NULL COMMENT 'trip length',
  daily_cost INT COMMENT 'cost per day',
  total_cost INT COMMENT 'total cost',
  FOREIGN KEY(creatorId) REFERENCES Accounts(id) ON DELETE CASCADE
) default charset utf8 comment '';

CREATE TABLE Cruise(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT  'create time',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
    name varchar(255) comment 'cruise name',
    creatorId VARCHAR(255) NOT NULL COMMENT 'FK: Account id',
    vacationId int NOT NULL COMMENT 'FK: Vacation id',
    FOREIGN KEY(creatorId) REFERENCES Accounts(id) ON DELETE CASCADE,
    FOREIGN KEY(vacationId) REFERENCES Vacations(id) ON DELETE CASCADE
) default charset utf8 comment '';

CREATE TABLE Trip(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT  'create time',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
    name varchar(255) comment 'trip name',
    creatorId VARCHAR(255) NOT NULL COMMENT 'FK: Account id',
    vacationId int NOT NULL COMMENT 'FK: Vacation id',
    FOREIGN KEY(creatorId) REFERENCES Accounts(id) ON DELETE CASCADE,
    FOREIGN KEY(vacationId) REFERENCES Vacations(id) ON DELETE CASCADE
) default charset utf8 comment '';

INSERT into Accounts(id, name, email, picture)
VALUES ("60c1362a61d53b635e306ee9", "Brian", "testaccount@test.com", "https://s.gravatar.com/avatar/430c00f035cb7918135f6d0adfc5e2e2?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fte.png");

ALTER TABLE Trip 
ADD trip_length INT NOT NULL COMMENT 'trip length',
ADD daily_cost INT COMMENT 'cost per day',
ADD total_cost INT COMMENT 'total cost';
