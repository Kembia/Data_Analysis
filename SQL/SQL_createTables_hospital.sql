-- CREATE TABLES

-- Create "Patients" table: stocke les informations sur les patients 
CREATE TABLE Patients (
	PatientID INT PRIMARY KEY,
    NomPatient VARCHAR(255),
    PrenomPatient VARCHAR(255),
    SexePatient VARCHAR(255),
    DateNaissance Date,
    EmailPatient VARCHAR(255),
    AdressePatient VARCHAR(255),
    NumeroPhonePatient VARCHAR(255),
    GroupeSanguin VARCHAR(255),
    Allergies VARCHAR(255)
);


-- Create "Medecins" table : stocke les informations sur les medecins
CREATE TABLE Medecins (
	MedecinID INT PRIMARY KEY,
    NomMedecin VARCHAR(255),
    PrenomMedecin VARCHAR(255),
    Specialite VARCHAR(255),
    NumTelephoneMedecein VARCHAR(255),
    EmailMedecin VARCHAR(255),
    SalaireMedecin DECIMAL(10,2),
    DataEmbauche Date
);

-- Create "Infirmiers" table : stocke les informations sur les personnels
CREATE TABLE Infirmiers (
	InfirmierID INT PRIMARY KEY,
    NomInfirmier VARCHAR(255),
    PrenomInfirmier VARCHAR(255),
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    MedecinID INT,
    FOREIGN KEY (MedecinID) REFERENCES Medecins (MedecinID),
    PhoneTelInfirmier VARCHAR(255),
    SalaireInfirmier DECIMAL(10,2)
);



-- Create "Consultations" table : stocke les informations sur les consultations
CREATE TABLE Consultations (
	ConsultationID INT PRIMARY KEY,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    MedecinID INT,
    FOREIGN KEY (MedecinID) REFERENCES Medecins (MedecinID),
    DateConsultation Datetime,
    Diagnostic VARCHAR(255),
    Observations VARCHAR(255)
);

-- Create "Hospitalisations" table : stockent les informations sur les hospitalisations
CREATE TABLE Hospitalisations (
	HospitalisationID INT PRIMARY KEY,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    MedecinID INT,
    FOREIGN KEY (MedecinID) REFERENCES Medecins (MedecinID),
    DateEntree Datetime,
    DateSortie Datetime,
    Motifs VARCHAR(255)
);


-- Create "Traitements" table : stocke les informations sur les traitements
CREATE TABLE Traitements (
	TraitementID INT PRIMARY KEY,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    MedecinID INT,
    FOREIGN KEY (MedecinID) REFERENCES Medecins (MedecinID),
    DescriptionTrtment VARCHAR(255),
    DateDebut Date,
    DateFin Date
);









