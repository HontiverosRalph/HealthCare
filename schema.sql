-- Create Patients table
CREATE TABLE Patients (
    PatientID INTEGER PRIMARY KEY,  -- SQLite auto-increments INTEGER PRIMARY KEY
    FirstName TEXT,
    LastName TEXT,
    DateOfBirth DATE,
    Gender TEXT,
    ContactInfo TEXT
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INTEGER PRIMARY KEY,  -- SQLite auto-increments INTEGER PRIMARY KEY
    FirstName TEXT,
    LastName TEXT,
    Specialty TEXT,
    ContactInfo TEXT
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INTEGER PRIMARY KEY,  -- SQLite auto-increments INTEGER PRIMARY KEY
    PatientID INTEGER,
    DoctorID INTEGER,
    AppointmentDate DATE,
    ReasonForVisit TEXT,
    Status TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create MedicalRecords table
CREATE TABLE MedicalRecords (
    RecordID INTEGER PRIMARY KEY,  -- SQLite auto-increments INTEGER PRIMARY KEY
    PatientID INTEGER,
    DoctorID INTEGER,
    Diagnosis TEXT,
    Treatment TEXT,
    RecordDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create Prescriptions table
CREATE TABLE Prescriptions (
    PrescriptionID INTEGER PRIMARY KEY,  -- SQLite auto-increments INTEGER PRIMARY KEY
    PatientID INTEGER,
    DoctorID INTEGER,
    Medication TEXT,
    Dosage TEXT,
    PrescriptionDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
