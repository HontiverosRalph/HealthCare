CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    ContactInfo VARCHAR(255)
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Specialty VARCHAR(100),
    ContactInfo VARCHAR(255)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    ReasonForVisit TEXT,
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create MedicalRecords table
CREATE TABLE MedicalRecords (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Diagnosis TEXT,
    Treatment TEXT,
    RecordDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create Prescriptions table
CREATE TABLE Prescriptions (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Medication VARCHAR(255),
    Dosage VARCHAR(100),
    PrescriptionDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
