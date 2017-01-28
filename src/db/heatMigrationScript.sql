-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: Heat
-- Source Schemata: Heat
-- Created: Sat Jan 21 08:56:26 2017
-- Workbench Version: 6.3.8
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema Heat
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `Heat` ;
CREATE SCHEMA IF NOT EXISTS `Heat` ;

-- ----------------------------------------------------------------------------
-- Table Heat.HEATMail
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATMail` (
  `MessageID` INT NULL,
  `ToWho` VARCHAR(96) NULL,
  `FromWho` VARCHAR(96) NULL,
  `SendDate` VARCHAR(10) NULL,
  `SendTime` VARCHAR(8) NULL,
  `Subject` VARCHAR(50) NULL,
  `Attachment` VARCHAR(20) NULL,
  `MsgText` LONGTEXT NULL,
  `IsRead` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATSeq
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATSeq` (
  `SeqKey` VARCHAR(30) NULL,
  `SeqValue` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATSGrp
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATSGrp` (
  `TableName` VARCHAR(30) NULL,
  `TableType` VARCHAR(118) NULL,
  `FldName` VARCHAR(30) NULL,
  `SearchCode` VARCHAR(2) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATTab
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATTab` (
  `Name` VARCHAR(30) NULL,
  `TabLabel` VARCHAR(15) NULL,
  `TabOrder` INT NULL,
  `TabType` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATHrs
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATHrs` (
  `CustType` VARCHAR(50) NULL,
  `StartDate` VARCHAR(10) NULL,
  `HOpDay` INT NULL,
  `HOpDur` INT NULL,
  `TimeStart` VARCHAR(8) NULL,
  `TimeEnd` VARCHAR(8) NULL,
  `DayChart` VARCHAR(24) NULL,
  `HopCount` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATINI
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATINI` (
  `INISection` VARCHAR(25) NULL,
  `INIEntry` VARCHAR(96) NULL,
  `Contents` VARCHAR(200) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATActn
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATActn` (
  `ActionName` VARCHAR(100) NULL,
  `ActionType` VARCHAR(3) NULL,
  `StartFile` VARCHAR(250) NULL,
  `Input1` VARCHAR(61) NULL,
  `Input2` VARCHAR(61) NULL,
  `Input3` VARCHAR(61) NULL,
  `Input4` VARCHAR(61) NULL,
  `Input5` VARCHAR(61) NULL,
  `Input6` VARCHAR(61) NULL,
  `Input7` VARCHAR(61) NULL,
  `Input8` VARCHAR(61) NULL,
  `Input9` VARCHAR(61) NULL,
  `Input10` VARCHAR(61) NULL,
  `SolnField` VARCHAR(61) NULL,
  `ParmList` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATSrch
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATSrch` (
  `Field1` VARCHAR(50) NULL,
  `Value1` VARCHAR(50) NULL,
  `Field2` VARCHAR(50) NULL,
  `Value2` VARCHAR(50) NULL,
  `Field3` VARCHAR(50) NULL,
  `Value3` VARCHAR(50) NULL,
  `ActionName` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATMsg
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATMsg` (
  `MRecordID` INT NULL,
  `MMsgID` INT NULL,
  `MTo` VARCHAR(96) NULL,
  `MFrom` VARCHAR(96) NULL,
  `MDateTime` INT NULL,
  `CallID` VARCHAR(25) NULL,
  `MFolder` VARCHAR(14) NULL,
  `MType` VARCHAR(1) NULL,
  `MStatus` VARCHAR(1) NULL,
  `MMoreStat` VARCHAR(1) NULL,
  `MPriority` VARCHAR(1) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATNote
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATNote` (
  `MMsgID` INT NULL,
  `MSubject` VARCHAR(50) NULL,
  `MNote` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATTran
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATTran` (
  `CallID` VARCHAR(8) NULL,
  `DTCreated` INT NULL,
  `TType` VARCHAR(2) NULL,
  `TWho` VARCHAR(50) NULL,
  `TOrigID` VARCHAR(50) NULL,
  `TMethod` VARCHAR(30) NULL,
  `TIni` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATLock
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATLock` (
  `CallID` VARCHAR(8) NULL,
  `Tracker` VARCHAR(96) NULL,
  `DTLocked` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATActv
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATActv` (
  `CallID` VARCHAR(8) NULL,
  `SeqNum` INT NULL,
  `DateStrt` VARCHAR(10) NULL,
  `TimeStrt` VARCHAR(8) NULL,
  `DateStop` VARCHAR(10) NULL,
  `TimeStop` VARCHAR(8) NULL,
  `Duration` DECIMAL(19,5) NULL,
  `UserName` VARCHAR(96) NULL,
  `RecType` VARCHAR(20) NULL,
  `SysName` VARCHAR(21) NULL,
  `ActvDesc` LONGTEXT NULL,
  `CallStatus` VARCHAR(50) NULL,
  `CallType` VARCHAR(100) NULL,
  `IsTemp` VARCHAR(4) NULL,
  `Watch1` VARCHAR(25) NULL,
  `Watch2` VARCHAR(25) NULL,
  `Watch3` VARCHAR(25) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATRTyp
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATRTyp` (
  `RecType` VARCHAR(10) NULL,
  `RecDesc` VARCHAR(50) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATMLog
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATMLog` (
  `MetricName` VARCHAR(254) NULL,
  `Transition` VARCHAR(50) NULL,
  `DTEnter` INT NULL,
  `EnterDate` VARCHAR(10) NULL,
  `EnterTime` VARCHAR(8) NULL,
  `DTExit` INT NULL,
  `ExitDate` VARCHAR(10) NULL,
  `ExitTime` VARCHAR(8) NULL,
  `Cause` VARCHAR(100) NULL,
  `Action` LONGTEXT NULL,
  `LogKey` VARCHAR(15) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATELog
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATELog` (
  `MetricName` VARCHAR(254) NULL,
  `GroupName` VARCHAR(50) NULL,
  `RedToYello` INT NULL,
  `YelloToGrn` INT NULL,
  `GrnToYello` INT NULL,
  `YelloToRed` INT NULL,
  `LogDate` VARCHAR(10) NULL,
  `LogTime` VARCHAR(8) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATSGen
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATSGen` (
  `SGCode` VARCHAR(2) NULL,
  `SGName` VARCHAR(30) NULL,
  `SGAccType` VARCHAR(2) NULL,
  `SGOwner` VARCHAR(96) NULL,
  `SGCategory` VARCHAR(1) NULL,
  `SGCatName` VARCHAR(30) NULL,
  `SGType` VARCHAR(2) NULL,
  `SGOnMenu` VARCHAR(1) NULL,
  `SGLastMod` INT NULL,
  `SGCount` INT NULL,
  `SGDetail` LONGTEXT NULL,
  `SGExpire` INT NULL,
  `SGSFolder` VARCHAR(25) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATHot
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATHot` (
  `HotName` VARCHAR(30) NULL,
  `HotOwner` VARCHAR(96) NULL,
  `OwnerType` VARCHAR(2) NULL,
  `CallID` VARCHAR(8) NULL,
  `ParentID` VARCHAR(8) NULL,
  `DTAdded` INT NULL,
  `WhoAdded` VARCHAR(96) NULL,
  `HotCode` VARCHAR(2) NULL,
  `HotFlags` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATCnt
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATCnt` (
  `HCName` VARCHAR(20) NULL,
  `DTLastMod` INT NULL,
  `HCValue` INT NULL,
  `HCInc` INT NULL,
  `HCResetPer` INT NULL,
  `HCResetVal` INT NULL,
  `HCDTReset` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATImg
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATImg` (
  `ID` INT NULL,
  `Data` LONGTEXT NULL,
  `DTLastMod` INT NULL,
  `Type` VARCHAR(7) NULL,
  `ImageSize` VARCHAR(7) NULL,
  `LastModBy` VARCHAR(96) NULL,
  `FileName` VARCHAR(254) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Assignee
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Assignee` (
  `Assignee` VARCHAR(96) NULL,
  `GroupName` VARCHAR(75) NULL,
  `CallType` VARCHAR(100) NULL,
  `Phone` VARCHAR(25) NULL,
  `Pager` VARCHAR(25) NULL,
  `LoginID` VARCHAR(96) NULL,
  `Comments` LONGTEXT NULL,
  `EMail` VARCHAR(50) NULL,
  `PhoneExt` VARCHAR(6) NULL,
  `Availability` VARCHAR(25) NULL,
  `OutOfOffice` VARCHAR(1) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.AssmtStatus
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`AssmtStatus` (
  `AssmtStatus` VARCHAR(25) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.CallType
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`CallType` (
  `CallType` VARCHAR(100) NULL,
  `Description` VARCHAR(75) NULL,
  `ResolveInOrder` VARCHAR(1) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Category
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Category` (
  `Category` VARCHAR(20) NULL,
  `Description` VARCHAR(75) NULL,
  `Pref` VARCHAR(3) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Cause
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Cause` (
  `Cause` VARCHAR(50) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Contacts
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Contacts` (
  `Contact` VARCHAR(40) NULL,
  `Title` VARCHAR(35) NULL,
  `Department` VARCHAR(25) NULL,
  `Phone` VARCHAR(25) NULL,
  `PhoneExt` VARCHAR(6) NULL,
  `Fax` VARCHAR(25) NULL,
  `EMail` VARCHAR(50) NULL,
  `CustID` VARCHAR(50) NULL,
  `Salutations` VARCHAR(10) NULL,
  `Facility` VARCHAR(50) NULL,
  `ContactType` VARCHAR(25) NULL,
  `Notes` LONGTEXT NULL,
  `MasterKey` VARCHAR(10) NULL,
  `UniqueKey` VARCHAR(10) NULL,
  `NumberKeys` VARCHAR(10) NULL,
  `Room` VARCHAR(25) NULL,
  `FacilityType` VARCHAR(25) NULL,
  `Construction` VARCHAR(25) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATCAI
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATCAI` (
  `LoginID` VARCHAR(96) NULL,
  `CustID` VARCHAR(50) NULL,
  `CustType` VARCHAR(50) NULL,
  `Password` VARCHAR(75) NULL,
  `SecretQ` VARCHAR(100) NULL,
  `SecretA` VARCHAR(50) NULL,
  `Flags` INT NULL,
  `DTCreated` INT NULL,
  `DTLastMod` INT NULL,
  `LastModBy` VARCHAR(96) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.NoYes
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`NoYes` (
  `NoYes` VARCHAR(3) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.nrswcDataStore
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`nrswcDataStore` (
  `userID` VARCHAR(25) NULL,
  `itemType` VARCHAR(2) NULL,
  `displayname` VARCHAR(50) NULL,
  `category` VARCHAR(15) NULL,
  `url` LONGTEXT NULL,
  `reportType` VARCHAR(10) NULL,
  `fieldToCount` VARCHAR(50) NULL,
  `tablename` VARCHAR(50) NULL,
  `criteria` LONGTEXT NULL,
  `chartcode` VARCHAR(1) NULL,
  `groupbyfield` VARCHAR(50) NULL,
  `sqltext` LONGTEXT NULL,
  `groupBy` VARCHAR(50) NULL,
  `team` VARCHAR(100) NULL,
  `chartid` VARCHAR(10) NULL,
  `msg` LONGTEXT NULL,
  `gridHeaders` LONGTEXT NULL,
  `gridFields` LONGTEXT NULL,
  `gridSQLFields` LONGTEXT NULL,
  `gridFieldSizes` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Priority
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Priority` (
  `Priority` VARCHAR(2) NULL,
  `Description` LONGTEXT NULL,
  `Name` VARCHAR(15) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.ProbType
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`ProbType` (
  `ProbType` VARCHAR(25) NULL,
  `Description` LONGTEXT NULL,
  `Category` VARCHAR(20) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Resolve
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Resolve` (
  `ResCode` VARCHAR(50) NULL,
  `Description` VARCHAR(75) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Sites
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Sites` (
  `FullName` VARCHAR(50) NULL,
  `Code` VARCHAR(3) NULL,
  `Manager` VARCHAR(50) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Source
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Source` (
  `CallSource` VARCHAR(20) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Status
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Status` (
  `CallStatus` VARCHAR(50) NULL,
  `Description` VARCHAR(75) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATGRP
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATGRP` (
  `GroupName` VARCHAR(21) NULL,
  `Descrip` VARCHAR(51) NULL,
  `Tracker` VARCHAR(97) NULL,
  `GroupType` VARCHAR(3) NULL,
  `AccType` VARCHAR(3) NULL,
  `ListFrom` VARCHAR(254) NULL,
  `ListJoin` VARCHAR(254) NULL,
  `ListWhere` LONGTEXT NULL,
  `ListOrder` VARCHAR(254) NULL,
  `Owner` VARCHAR(97) NULL,
  `Category` VARCHAR(2) NULL,
  `CatName` VARCHAR(31) NULL,
  `CustType` VARCHAR(51) NULL,
  `ShowDashBoard` VARCHAR(3) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.SubCallType
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`SubCallType` (
  `SubCallType` VARCHAR(45) NULL,
  `CallType` VARCHAR(100) NULL,
  `Description` VARCHAR(75) NULL,
  `Question1` VARCHAR(75) NULL,
  `Question2` VARCHAR(75) NULL,
  `Question3` VARCHAR(75) NULL,
  `Question4` VARCHAR(75) NULL,
  `Question5` VARCHAR(75) NULL,
  `Question6` VARCHAR(75) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.TeamDefs
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`TeamDefs` (
  `TeamName` VARCHAR(30) NULL,
  `Descrip` VARCHAR(50) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Tracker
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Tracker` (
  `LoginID` VARCHAR(96) NULL,
  `FullName` VARCHAR(100) NULL,
  `HEATPass` VARCHAR(75) NULL,
  `SecGroup` VARCHAR(30) NULL,
  `Manager` VARCHAR(96) NULL,
  `Status` INT NULL,
  `ModPWDate` VARCHAR(10) NULL,
  `ModWho` VARCHAR(96) NULL,
  `ModDate` VARCHAR(10) NULL,
  `ModTime` VARCHAR(8) NULL,
  `DefTracker` VARCHAR(96) NULL,
  `eMailName` VARCHAR(100) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Subset
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Subset` (
  `CustID` VARCHAR(50) NULL,
  `Phone` VARCHAR(25) NULL,
  `CallID` VARCHAR(8) NULL,
  `CustType` VARCHAR(50) NULL,
  `FirstName` VARCHAR(20) NULL,
  `LastName` VARCHAR(25) NULL,
  `EMailID` VARCHAR(50) NULL,
  `Site` VARCHAR(25) NULL,
  `Salutations` VARCHAR(10) NULL,
  `AssetType` VARCHAR(50) NULL,
  `LocationCode` VARCHAR(50) NULL,
  `Manufacturer` VARCHAR(50) NULL,
  `Model` VARCHAR(50) NULL,
  `Wartime` INT NULL,
  `WarrantyExp` VARCHAR(10) NULL,
  `UnderWar` VARCHAR(3) NULL,
  `Serial` VARCHAR(50) NULL,
  `Part` VARCHAR(50) NULL,
  `PSDate` VARCHAR(50) NULL,
  `Name` VARCHAR(25) NULL,
  `LocationName` VARCHAR(100) NULL,
  `Tempdate` VARCHAR(10) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Profile
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Profile` (
  `CustID` VARCHAR(50) NULL,
  `CustType` VARCHAR(50) NULL,
  `FirstName` VARCHAR(20) NULL,
  `LastName` VARCHAR(30) NULL,
  `Phone` VARCHAR(25) NULL,
  `Site` VARCHAR(3) NULL,
  `EMailID` VARCHAR(50) NULL,
  `Notes` LONGTEXT NULL,
  `ModBy` VARCHAR(96) NULL,
  `ModDate` VARCHAR(10) NULL,
  `ModTime` VARCHAR(8) NULL,
  `FormerName` VARCHAR(25) NULL,
  `DTLastMod` INT NULL,
  `RecvdDate` VARCHAR(10) NULL,
  `RecvdTime` VARCHAR(8) NULL,
  `Title` VARCHAR(25) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Config
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Config` (
  `HEATSeq` INT NULL,
  `CustID` VARCHAR(50) NULL,
  `CustType` VARCHAR(50) NULL,
  `ConfigType` VARCHAR(100) NULL,
  `DTLastMod` INT NULL,
  `RecvdDate` VARCHAR(10) NULL,
  `RecvdTime` VARCHAR(8) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATSecG
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATSecG` (
  `SecGroup` VARCHAR(51) NULL,
  `Descrip` VARCHAR(51) NULL,
  `SecRights` VARCHAR(251) NULL,
  `LookupGrp` VARCHAR(31) NULL,
  `GroupToRun` VARCHAR(61) NULL,
  `TblRights` LONGTEXT NULL,
  `UserType` VARCHAR(10) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Detail
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Detail` (
  `CallID` VARCHAR(8) NULL,
  `Requestor` VARCHAR(50) NULL,
  `Email` VARCHAR(50) NULL,
  `Phone` VARCHAR(14) NULL,
  `laptopyes` VARCHAR(1) NULL,
  `laptopno` VARCHAR(1) NULL,
  `LCDProjYes` VARCHAR(1) NULL,
  `LCDProjNo` VARCHAR(1) NULL,
  `AVCardYes` VARCHAR(1) NULL,
  `AVCardNO` VARCHAR(1) NULL,
  `InternetYes` VARCHAR(1) NULL,
  `InternetNo` VARCHAR(1) NULL,
  `DateRequired` VARCHAR(10) NULL,
  `TimeRequired` VARCHAR(8) NULL,
  `DateReturn` VARCHAR(10) NULL,
  `TimeReturn` VARCHAR(8) NULL,
  `Department` VARCHAR(5) NULL,
  `Room` VARCHAR(35) NULL,
  `Program` VARCHAR(35) NULL,
  `Instruction` LONGTEXT NULL,
  `AssetTag` VARCHAR(100) NULL,
  `AssetType` VARCHAR(100) NULL,
  `ModelNo` VARCHAR(100) NULL,
  `PartNo` VARCHAR(100) NULL,
  `SerialNo` VARCHAR(100) NULL,
  `Building` VARCHAR(100) NULL,
  `LocCode` VARCHAR(100) NULL,
  `Vendor` VARCHAR(100) NULL,
  `MACAddress` VARCHAR(100) NULL,
  `Warranty` VARCHAR(5) NULL,
  `PSDate` VARCHAR(25) NULL,
  `WarrantyLength` INT NULL,
  `WarrantyDt` VARCHAR(10) NULL,
  `CustID` VARCHAR(50) NULL,
  `FromLocation` VARCHAR(5) NULL,
  `FromArea` VARCHAR(35) NULL,
  `FromDP` VARCHAR(5) NULL,
  `FromSW` VARCHAR(5) NULL,
  `FromVLAN` VARCHAR(15) NULL,
  `FromDPDisableCheck` VARCHAR(1) NULL,
  `FromSWDisable` VARCHAR(1) NULL,
  `FromVLANDisable` VARCHAR(1) NULL,
  `FromDPEnable` VARCHAR(1) NULL,
  `FromSWEnable` VARCHAR(1) NULL,
  `FromVLANEnable` VARCHAR(1) NULL,
  `ToDPDisable` VARCHAR(1) NULL,
  `ToSWDisable` VARCHAR(1) NULL,
  `ToVLANDisable` VARCHAR(1) NULL,
  `ToDP` VARCHAR(5) NULL,
  `ToSW` VARCHAR(5) NULL,
  `ToVLAN` VARCHAR(5) NULL,
  `ToDPEnable` VARCHAR(1) NULL,
  `ToSWEnable` VARCHAR(1) NULL,
  `ToVLANEnable` VARCHAR(1) NULL,
  `PRNTName` VARCHAR(35) NULL,
  `MACNotes` LONGTEXT NULL,
  `ToLocation` VARCHAR(5) NULL,
  `ToArea` VARCHAR(35) NULL,
  `RFCComponent` VARCHAR(100) NULL,
  `RFCSubject` VARCHAR(100) NULL,
  `RFCDesc` LONGTEXT NULL,
  `RFCType` VARCHAR(50) NULL,
  `RFCEnvironment` VARCHAR(50) NULL,
  `RFCRelated` VARCHAR(10) NULL,
  `RFCDate` VARCHAR(10) NULL,
  `RFCTime` VARCHAR(8) NULL,
  `RFCDowntime` VARCHAR(10) NULL,
  `RFCTestPlan` LONGTEXT NULL,
  `RFCBackout` LONGTEXT NULL,
  `RFCRecovertime` VARCHAR(10) NULL,
  `RFCTested` VARCHAR(10) NULL,
  `RFCResource1` VARCHAR(50) NULL,
  `RFCResource2` VARCHAR(50) NULL,
  `RFCResource3` VARCHAR(50) NULL,
  `RFCResource4` VARCHAR(50) NULL,
  `RFCResource5` VARCHAR(50) NULL,
  `RFCService1` VARCHAR(25) NULL,
  `RFCService2` VARCHAR(25) NULL,
  `RFCService3` VARCHAR(25) NULL,
  `RFCService4` VARCHAR(25) NULL,
  `RFCService5` VARCHAR(25) NULL,
  `Manager1` VARCHAR(35) NULL,
  `Manager2` VARCHAR(35) NULL,
  `Manager3` VARCHAR(35) NULL,
  `Manager4` VARCHAR(35) NULL,
  `Manager5` VARCHAR(35) NULL,
  `Manager1Email` VARCHAR(50) NULL,
  `Manager2Email` VARCHAR(50) NULL,
  `Manager3Email` VARCHAR(50) NULL,
  `Manager4Email` VARCHAR(50) NULL,
  `Manager5Email` VARCHAR(50) NULL,
  `DocDesc1` VARCHAR(50) NULL,
  `DocDesc2` VARCHAR(50) NULL,
  `DocDesc3` VARCHAR(50) NULL,
  `DocDesc4` VARCHAR(50) NULL,
  `DocDesc5` VARCHAR(50) NULL,
  `DocURL1` VARCHAR(100) NULL,
  `DocURL2` VARCHAR(100) NULL,
  `DocURL3` VARCHAR(100) NULL,
  `DocURL4` VARCHAR(100) NULL,
  `DocURL5` VARCHAR(100) NULL,
  `Approval` VARCHAR(15) NULL,
  `Approver` VARCHAR(35) NULL,
  `ApproveConditions` LONGTEXT NULL,
  `ApprovedDate` VARCHAR(10) NULL,
  `RFCInstallDate` VARCHAR(10) NULL,
  `InstallationTime` VARCHAR(8) NULL,
  `TempDate` VARCHAR(10) NULL,
  `AssignTeam1` VARCHAR(50) NULL,
  `AssignTeam2` VARCHAR(50) NULL,
  `AssignTeam3` VARCHAR(50) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.CallLog
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`CallLog` (
  `CallID` VARCHAR(8) NULL,
  `CustID` VARCHAR(50) NULL,
  `CustType` VARCHAR(50) NULL,
  `CallType` VARCHAR(100) NULL,
  `Tracker` VARCHAR(96) NULL,
  `CallStatus` VARCHAR(50) NULL,
  `Severity` INT NULL,
  `CDuration` DECIMAL(9,4) NULL,
  `CallCount` DECIMAL(5,2) NULL,
  `StopWatch` DECIMAL(9,6) NULL,
  `ClosedBy` VARCHAR(96) NULL,
  `ClosedDate` VARCHAR(10) NULL,
  `ClosedTime` VARCHAR(8) NULL,
  `Symptoms` LONGTEXT NULL,
  `CallResolution` LONGTEXT NULL,
  `RecvdBy` VARCHAR(96) NULL,
  `RecvdDate` VARCHAR(10) NULL,
  `RecvdTime` VARCHAR(8) NULL,
  `ModBy` VARCHAR(96) NULL,
  `ModDate` VARCHAR(10) NULL,
  `ModTime` VARCHAR(8) NULL,
  `DTLastMod` INT NULL,
  `CallSource` VARCHAR(15) NULL,
  `Category` VARCHAR(20) NULL,
  `TotalAsgnmntTime` INT NULL,
  `CatHeading` VARCHAR(25) NULL,
  `TotalJournalTime` INT NULL,
  `TotalTime` INT NULL,
  `SL_Callback_Target` INT NULL,
  `SL_Callback_Date` VARCHAR(10) NULL,
  `SL_Callback_Time` VARCHAR(8) NULL,
  `SL_Resolution_Target` INT NULL,
  `SL_Resolution_Date` VARCHAR(10) NULL,
  `SL_Resolution_Time` VARCHAR(8) NULL,
  `SL_Clock_Status` VARCHAR(20) NULL,
  `SL_Button_Status` VARCHAR(20) NULL,
  `FirstResolution` VARCHAR(3) NULL,
  `SL_Complete_Status` VARCHAR(25) NULL,
  `ProblemDesc` LONGTEXT NULL,
  `ProbType` VARCHAR(50) NULL,
  `SevChanged` VARCHAR(2) NULL,
  `Hostname` VARCHAR(20) NULL,
  `Yes_No` VARCHAR(1) NULL,
  `TimeSpent` INT NULL,
  `Priority` VARCHAR(2) NULL,
  `Dueby` VARCHAR(10) NULL,
  `PastDue` VARCHAR(10) NULL,
  `SaveFlag` VARCHAR(5) NULL,
  `TempTime` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.SLA
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`SLA` (
  `Severity` VARCHAR(4) NULL,
  `Problem_Impact` LONGTEXT NULL,
  `Callback_Target` INT NULL,
  `Resolution_Target` INT NULL,
  `Push` VARCHAR(4) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATTbl
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATTbl` (
  `DbName` VARCHAR(9) NULL,
  `TableName` VARCHAR(31) NULL,
  `TableType` VARCHAR(119) NULL,
  `TableDesc` VARCHAR(51) NULL,
  `SysLookup` VARCHAR(2) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATFld
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATFld` (
  `TableName` VARCHAR(31) NULL,
  `TableType` VARCHAR(119) NULL,
  `FldName` VARCHAR(31) NULL,
  `DataType` INT NULL,
  `StorSize` INT NULL,
  `Format` VARCHAR(31) NULL,
  `Descrip` VARCHAR(51) NULL,
  `DefType` INT NULL,
  `DefValue` VARCHAR(51) NULL,
  `DependsOn` INT NULL,
  `ValTable` VARCHAR(31) NULL,
  `ValType` VARCHAR(119) NULL,
  `ValField` INT NULL,
  `GridOrder` INT NULL,
  `Flags` INT NULL,
  `FieldID` INT NULL,
  `FilledByID` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATXTbl
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATXTbl` (
  `DbName` VARCHAR(9) NULL,
  `DSName` VARCHAR(36) NULL,
  `TableName` VARCHAR(31) NULL,
  `TableType` VARCHAR(119) NULL,
  `TableDesc` VARCHAR(51) NULL,
  `SysLookup` VARCHAR(2) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.FLSTree
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`FLSTree` (
  `TreeID` INT NULL,
  `NodeID` INT NULL,
  `ParentID` INT NULL,
  `Label` VARCHAR(100) NULL,
  `Abstract` VARCHAR(80) NULL,
  `LastEditor` VARCHAR(8) NULL,
  `DTLastMod` VARCHAR(16) NULL,
  `Approval` VARCHAR(1) NULL,
  `ApprAction` VARCHAR(1) NULL,
  `TimesUsed` INT NULL,
  `KeyChain` VARCHAR(250) NULL,
  `NodeText` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATXFld
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATXFld` (
  `TableName` VARCHAR(31) NULL,
  `TableType` VARCHAR(119) NULL,
  `FldName` VARCHAR(31) NULL,
  `DataType` INT NULL,
  `StorSize` INT NULL,
  `Format` VARCHAR(31) NULL,
  `Descrip` VARCHAR(51) NULL,
  `DefType` INT NULL,
  `DefValue` VARCHAR(51) NULL,
  `DependsOn` INT NULL,
  `ValTable` VARCHAR(31) NULL,
  `ValType` VARCHAR(119) NULL,
  `ValField` INT NULL,
  `GridOrder` INT NULL,
  `Flags` INT NULL,
  `FieldID` INT NULL,
  `FilledByID` INT NULL,
  `MapField` VARCHAR(31) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.FLSList
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`FLSList` (
  `TreeID` INT NULL,
  `TreeName` VARCHAR(30) NULL,
  `UpperCap` VARCHAR(35) NULL,
  `LowerCap` VARCHAR(35) NULL,
  `EditorPSW` VARCHAR(16) NULL,
  `SuperPSW` VARCHAR(16) NULL,
  `TreeDelPSW` VARCHAR(16) NULL,
  `UserLimit` INT NULL,
  `LastImport` VARCHAR(16) NULL,
  `TreeDesc1` VARCHAR(50) NULL,
  `TreeDesc2` VARCHAR(50) NULL,
  `TreeDesc3` VARCHAR(50) NULL,
  `VerMajor` INT NULL,
  `VerMinor` INT NULL,
  `UserCount` INT NULL,
  `HtmlLinks` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATFmt
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATFmt` (
  `Name` VARCHAR(31) NULL,
  `Descrip` VARCHAR(51) NULL,
  `SystemDef` INT NULL,
  `Mask` VARCHAR(51) NULL,
  `FmtOptions` VARCHAR(51) NULL,
  `DataType` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.FLSAtt
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`FLSAtt` (
  `TreeID` INT NULL,
  `RecordID` INT NULL,
  `NodeID` INT NULL,
  `AttachType` VARCHAR(1) NULL,
  `AttachPath` VARCHAR(250) NULL,
  `AttPath2` VARCHAR(10) NULL,
  `AttachDesc` VARCHAR(26) NULL,
  `DTLastMod` VARCHAR(16) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATCtrl
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATCtrl` (
  `TableName` VARCHAR(31) NULL,
  `TableType` VARCHAR(119) NULL,
  `Control` VARCHAR(21) NULL,
  `FieldID` INT NULL,
  `TabID` INT NULL,
  `HelpText` VARCHAR(76) NULL,
  `RectLeft` INT NULL,
  `RectTop` INT NULL,
  `RectRight` INT NULL,
  `RectBottom` INT NULL,
  `CheckState` INT NULL,
  `ColorText` VARCHAR(9) NULL,
  `ColorBK` VARCHAR(9) NULL,
  `ColorBordr` VARCHAR(9) NULL,
  `Shadow` INT NULL,
  `LineSize` INT NULL,
  `TextAlign` INT NULL,
  `FHeight` INT NULL,
  `FWidth` INT NULL,
  `FEscape` INT NULL,
  `FOrient` INT NULL,
  `FWeight` INT NULL,
  `FItalic` INT NULL,
  `FUnderline` INT NULL,
  `FStrikeOut` INT NULL,
  `FCharSet` INT NULL,
  `FOutPrec` INT NULL,
  `FClipPrec` INT NULL,
  `FQuality` INT NULL,
  `FPitch` INT NULL,
  `FFaceName` VARCHAR(32) NULL,
  `PointSize` INT NULL,
  `Hatch` INT NULL,
  `CtrlText` VARCHAR(254) NULL,
  `Style` VARCHAR(9) NULL,
  `DrawOrder` INT NULL,
  `ThemeID` INT NULL,
  `CtrlCmd` VARCHAR(100) NULL,
  `BitmapID` VARCHAR(21) NULL,
  `Spin` INT NULL,
  `SpinInc` INT NULL,
  `ColorExp` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.FLSSeq
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`FLSSeq` (
  `SeqKey` VARCHAR(30) NULL,
  `SeqValue` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATDTyp
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATDTyp` (
  `DataType` INT NULL,
  `Descrip` VARCHAR(31) NULL,
  `ClassName` VARCHAR(31) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.FLSINI
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`FLSINI` (
  `INISection` VARCHAR(25) NULL,
  `INIEntry` VARCHAR(25) NULL,
  `Contents` VARCHAR(200) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATForm
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATForm` (
  `TableName` VARCHAR(31) NULL,
  `TableType` VARCHAR(119) NULL,
  `Version` INT NULL,
  `NumCtrls` INT NULL,
  `FormColor` VARCHAR(9) NULL,
  `Units` INT NULL,
  `Cx` INT NULL,
  `Cy` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.FLSDel
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`FLSDel` (
  `Action` VARCHAR(2) NULL,
  `Label` VARCHAR(20) NULL,
  `KeyChain` VARCHAR(250) NULL,
  `AttPath1` VARCHAR(250) NULL,
  `AttPath2` VARCHAR(10) NULL,
  `DTDelete` VARCHAR(16) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATCTyp
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATCTyp` (
  `ConfigType` VARCHAR(101) NULL,
  `Descrip` VARCHAR(51) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATCust
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATCust` (
  `CustType` VARCHAR(51) NULL,
  `Descrip` VARCHAR(51) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATEscT
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATEscT` (
  `TableName` VARCHAR(31) NULL,
  `EventDesc` VARCHAR(46) NULL,
  `EDateField` VARCHAR(31) NULL,
  `ETimeField` VARCHAR(31) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATEscL
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATEscL` (
  `EscRecID` VARCHAR(51) NULL,
  `EscItemID` INT NULL,
  `EscTime` INT NULL,
  `EscStatus` INT NULL,
  `EscKey` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.AsgnGrp
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`AsgnGrp` (
  `GroupName` VARCHAR(75) NULL,
  `Description` VARCHAR(65) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATSym
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATSym` (
  `AlrtStat` VARCHAR(2) NULL,
  `HEATSeq` INT NULL,
  `AlrtDate` VARCHAR(11) NULL,
  `AlrtTime` VARCHAR(9) NULL,
  `CustID` VARCHAR(26) NULL,
  `AlrtDesc` LONGTEXT NULL,
  `AlrtSrc` VARCHAR(51) NULL,
  `CallID` VARCHAR(9) NULL,
  `Tracker` VARCHAR(9) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATGen
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATGen` (
  `GCode` VARCHAR(3) NULL,
  `GName` VARCHAR(97) NULL,
  `GType` VARCHAR(21) NULL,
  `GDetail` LONGTEXT NULL,
  `GDTLastMod` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Services
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Services` (
  `Service` VARCHAR(25) NULL,
  `Manager` VARCHAR(50) NULL,
  `ManagerEmail` VARCHAR(50) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.TeamMems
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`TeamMems` (
  `LoginID` VARCHAR(96) NULL,
  `Team` VARCHAR(30) NULL,
  `PrimaryTm` VARCHAR(1) NULL,
  `Email` VARCHAR(100) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.RFCType
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`RFCType` (
  `RFCType` VARCHAR(20) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Asgnmnt
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Asgnmnt` (
  `AssignedBy` VARCHAR(96) NULL,
  `DateAssign` VARCHAR(10) NULL,
  `TimeAssign` VARCHAR(8) NULL,
  `Assignee` VARCHAR(96) NULL,
  `Description` LONGTEXT NULL,
  `DateAcknow` VARCHAR(10) NULL,
  `TimeAcknow` VARCHAR(8) NULL,
  `DateResolv` VARCHAR(10) NULL,
  `TimeResolv` VARCHAR(8) NULL,
  `Resolution` LONGTEXT NULL,
  `CallID` VARCHAR(8) NULL,
  `HEATSeq` INT NULL,
  `EMail` VARCHAR(100) NULL,
  `DTLastMod` INT NULL,
  `WhoAcknow` VARCHAR(96) NULL,
  `WhoResolv` VARCHAR(96) NULL,
  `TargetTime` VARCHAR(8) NULL,
  `TargetDate` VARCHAR(10) NULL,
  `SLAResTime` DECIMAL(9,2) NULL,
  `TotalAsgnmntTime` INT NULL,
  `CallType` VARCHAR(100) NULL,
  `ResolveOrder` INT NULL,
  `Status` VARCHAR(25) NULL,
  `ModBy` VARCHAR(50) NULL,
  `ModDate` VARCHAR(10) NULL,
  `ModTime` VARCHAR(8) NULL,
  `TimeUpdate` INT NULL,
  `TeamName` VARCHAR(30) NULL,
  `TempNotes` LONGTEXT NULL,
  `TempTime` INT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.YesorNo
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`YesorNo` (
  `YesorNO` VARCHAR(5) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATDb
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATDb` (
  `DbName` VARCHAR(8) NULL,
  `FileName` VARCHAR(12) NULL,
  `Path` VARCHAR(50) NULL,
  `Version` INT NULL,
  `LastFldID` INT NULL,
  `DBStatus` VARCHAR(96) NULL,
  `CompName` VARCHAR(55) NULL,
  `CompSer` VARCHAR(29) NULL,
  `Defaults` VARCHAR(55) NULL,
  `CompHDA` VARCHAR(12) NULL,
  `Serial` VARCHAR(8) NULL,
  `HEATSchema` INT NULL,
  `Administrator` VARCHAR(50) NULL,
  `Email` VARCHAR(50) NULL,
  `DTLastMod` INT NULL,
  `UpdatePath` VARCHAR(75) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.Journal
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`Journal` (
  `CallID` VARCHAR(8) NULL,
  `HEATSeq` INT NULL,
  `Tracker` VARCHAR(96) NULL,
  `EntryDate` VARCHAR(10) NULL,
  `EntryTime` VARCHAR(8) NULL,
  `EntryText` LONGTEXT NULL,
  `JournalType` VARCHAR(25) NULL,
  `DTLastMod` INT NULL,
  `EntryText2` LONGTEXT NULL,
  `TempField` VARCHAR(100) NULL,
  `TotalJournalTime` INT NULL,
  `Emailed` VARCHAR(10) NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.JournalType
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`JournalType` (
  `JournalType` VARCHAR(25) NULL,
  `QuickJournal` LONGTEXT NULL);

-- ----------------------------------------------------------------------------
-- Table Heat.HEATFunc
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `Heat`.`HEATFunc` (
  `FuncName` VARCHAR(50) NULL,
  `Descrip` VARCHAR(50) NULL,
  `SystemDef` INT NULL,
  `DataType` INT NULL);
SET FOREIGN_KEY_CHECKS = 1;
