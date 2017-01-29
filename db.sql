DROP TABLE IF EXISTS users;

DROP TABLE IF EXISTS  shifts;

DROP TABLE IF EXISTS  shiftPeriod;

DROP DATABASE IF EXISTS  SCHEDULER;

CREATE DATABASE IF NOT EXISTS SCHEDULER;

USE SCHEDULER

CREATE TABLE IF NOT EXISTS users (
    ID int NOT NULL AUTO_INCREMENT,
    Name char NOT NULL,
    lelve int not NULL,
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
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS shifts(
    ID int not NULL AUTO_INCREMENT,
    Day char(2),
    TimeStart float,
    TimeEnd float,
    PRIMARY KEY (ID)
);

create TABLE IF NOT EXISTS shiftPeriod(
    ID int not NULL AUTO_INCREMENT,
    PRIMARY KEY (ID)
);


