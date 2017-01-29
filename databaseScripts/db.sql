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
    MondayStart float,
    MondayEnd float,
    TuesdayStart float,
    TuesdayEnd float,
    WednesdayStart float,
    WednesdayEnd float,
    ThursdayStart float,
    ThursdayEnd float,
    FridayStart float,
    FridayEnd float,
    SaturdayStart float,
    SaturdayEnd float,
    SundayStart float,
    SundayEnd float,
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


