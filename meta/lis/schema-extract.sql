-- TODO: compare the real data types with unilab
CREATE TABLE Orders(
    CDOrderID varchar(10),
    CDOrderIDTert varchar(8),
    CDPatient varchar(20),
    CHSenderRec varchar(10),
    StatUrgency integer,
    StatAcquisitionType integer,
    PathoSampleType char(1),
    PathoSampleTypeSec varchar(100),
    PathoSampleTypeTert varchar(100),
    NumberOfPathoSamples integer,
    FixationMethods varchar(10),
    PathoOrganGroup varchar(3),
    OrderDate date,
    OrderTime time,
    SampleTypeDate date,
    SampleTypeTime time,
    FirstArchivedDate date,
    FirstArchivedTime time,
    DeArchivedDate date,
    DeArchivedTime time,
    LastArchivedDate date,
    LastArchivedTime time,
    LastChangeDate date,
    LastChangeTime time
);

CREATE TABLE OrderEvents(
    CDOrderID varchar(10) FOREIGN KEY REFERENCES Orders(CDOrderID),
    EventDate date,
    EventTime time,
    EventID varchar(10),
    EventCategory varchar(10),
    CDSampleID varchar(20),
    Info varchar(255),
    Status varchar(255),
    Machine varchar(255),
    User varchar(255),
    Workstation varchar(100)
);

CREATE TABLE AccessLog(
    CDOrderID varchar(10) FOREIGN KEY REFERENCES Orders(CDOrderID),
    EventDate date,
    EventTime time,
    Function varchar(100),
    UserName  varchar(255),
    AccessRole varchar(100)
);

CREATE TABLE OrderBlocksSlides (
    CDOrderID varchar(10) FOREIGN KEY REFERENCES Orders(CDOrderID),
    BlockID varchar(10),
    SlideID varchar(10),
    BlockNo integer,
    SlideNo integer,
    Staining varchar(255),
    BlockGenDate date,
    BlockGenTime time,
    BlockGenUser varchar(255),
    SlideGenDate date,
    SlideGenTime time,
    SlideGenUser varchar(255),
    MakroFinishedDate date,
    MakroFinishedTime time
);


CREATE TABLE OrderAnalyses(
    CDOrderID varchar(10) FOREIGN KEY REFERENCES Orders(CDOrderID),
    CHAnalysis varchar(100),
    RequisitionDate date,
    RequisitionTime time,
    RequisitionUser varchar(255),
    ComplettionDate date,
    ComplettionTime time
)
