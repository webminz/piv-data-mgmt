CREATE TABLE NorpatCodes (
    Code char(6),
    UnilabID varchar(100),
    Description varchar(255)
)

CREATE TABLE Analyses (
    ID integer,
    CHAnalysisID varchar(100),
    Code varchar(25),
    ShortName varchar(255),
    OfferedByLab varchar(10)
)

CREATE TABLE LocationProcedurePairs (
    LocationId varchar(10),
    ProcedureId varchar(10),
    LocationDesc varchar(255),
    ProcedureDesc varchar(255),
    DefaultOrganGroup varchar(3),
    NorpatLocationCode char(6),
    NorpatProcedureCode char(6),
    DefaultNoOfBlocks integer
)