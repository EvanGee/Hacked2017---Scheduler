
CREATE DATABASE IF NOT EXISTS SCHEDULER;
USE SCHEDULER;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS  shifts;
DROP TABLE IF EXISTS  shiftPeriod;

CREATE TABLE IF NOT EXISTS users (
    ID INT NOT NULL AUTO_INCREMENT,
    Name CHAR NOT NULL,
    level INT not NULL,

    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS shiftPeriod(
    ID int not NULL AUTO_INCREMENT,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS availability (

    ID INT NOT NULL AUTO_INCREMENT,
    

    MondayStart REAL(3,1),
    MondayEnd REAL(3,1),
    TuesdayStart REAL(3,1),
    TuesdayEnd REAL(3,1),
    WednesdayStart REAL(3,1),
    WednesdayEnd REAL(3,1),
    ThursdayStart REAL(3,1),
    ThursdayEnd REAL(3,1),
    FridayStart REAL(3,1),
    FridayEnd REAL(3,1),
    SaturdayStart REAL(3,1),
    SaturdayEnd REAL(3,1),
    SundayStart REAL(3,1),
    SundayEnd REAL(3,1),

    PeriodId INT NOT NULL,
    UserId INT NOT NULL,

    CONSTRAINT user_period UNIQUE (PeriodId, UserId),
    
    FOREIGN KEY (PeriodId) REFERENCES shiftPeriod (ID)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (UserId) REFERENCES users (ID)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS shifts(
    ID int not NULL AUTO_INCREMENT,
    Day char(2),
    TimeStart REAL(3,1),
    TimeEnd REAL(3,1),
    PeriodId INT NOT NULL,

    FOREIGN KEY (PeriodId) REFERENCES shiftPeriod (ID)
    ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (ID)
);

