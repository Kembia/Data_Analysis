-- INSERT INTO TABLES

-- INSERT INTO "Patients" table: insert 1 row into patients tables
INSERT INTO patients (NomPatient, PrenomPatient, SexePatient, DateNaissance, EmailPatient, 
						AdressePatient, NumeroPhonePatient, GroupeSanguin, Allergies)
			VALUES ("Brown", "Alicia", "F", "1989-08-06", "alicebrown@outlook.com", 
					"4 Nelson Street", "0989766876", "A", "Nut");


-- INSERT INTO "Patients" table: insert 3 rows into patients tables
INSERT INTO patients (NomPatient, PrenomPatient, SexePatient, DateNaissance, EmailPatient, 
						AdressePatient, NumeroPhonePatient, GroupeSanguin, Allergies)
			VALUES ("Doe", "John", "M", "1988-09-06", "johndoe@outlook.com", 
					"7 Mandela Street", "0983466876", "AB", "shrimp"),
                    ("Cook", "Jeremy", "M", "1989-09-16", "jeremycook@outlook.com", 
					"4 John Street", "0983266876", "B", "Nut"),
                    ("Brook", "Sandra", "F", "1988-05-06", "sandrabrookn@outlook.com", 
					"4 Rob Street", "0986466876", "A", "shrimp");
                    
                    
                    
-- INSERT INTO "Medecins" table: insert 3 rows into medecins tables
INSERT INTO medecins (NomMedecin, PrenomMedecin, Specialite, NumTelephoneMedecein, EmailMedecin, 
						SalaireMedecin, DataEmbauche)
			VALUES ("Sullivan", "John", "Gynecologist", "0983266876", "johnsullivan@outlook.com",
                    "80864.65",  "2010-05-26"),
                    ("Johnson", "Alexia", "Pediatrician", "0985066876", "alexiajohnson@outlook.com",
                    "80854.65",  "2012-07-22"),
                    ("Puech", "Anna", "Plastic surgery", "0988736876", "annapuech@outlook.com",
                    "87894.95",  "2015-03-18");

