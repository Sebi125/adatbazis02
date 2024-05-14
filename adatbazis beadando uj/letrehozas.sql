CREATE TABLE Paciensek (
    ID INT PRIMARY KEY,
    Nev VARCHAR(255),
    Lakcim VARCHAR(255),
    Szuletesi_datum DATE,
    Nem VARCHAR(10),
    Biztositas VARCHAR(50)
);

CREATE TABLE Orvosok (
    ID INT PRIMARY KEY,
    Nev VARCHAR(255),
    Szakterulet VARCHAR(255),
    Rendelo VARCHAR(255),
    Kapcsolat VARCHAR(255)
);

CREATE TABLE Idopontok (
    ID INT PRIMARY KEY,
    PaciensID INT,
    OrvosID INT,
    Datum DATE,
    Idopont TIME,
    Megjegyzes VARCHAR(50),
    FOREIGN KEY (PaciensID) REFERENCES Paciensek(ID),
    FOREIGN KEY (OrvosID) REFERENCES Orvosok(ID)
);

CREATE TABLE Receptek (
    ID INT PRIMARY KEY,
    PaciensID INT,
    OrvosID INT,
    Gyogyszer VARCHAR(255),
    Adagolas VARCHAR(255),
    Gyakorisag VARCHAR(255),
    Kiiras_datuma DATE,
    FOREIGN KEY (PaciensID) REFERENCES Paciensek(ID),
    FOREIGN KEY (OrvosID) REFERENCES Orvosok(ID)
);

CREATE TABLE Orvosi_nyilvantartas (
    ID INT PRIMARY KEY,
    PaciensID INT,
    OrvosID INT,
    Diagnozis VARCHAR(50),
    Kezeles VARCHAR(50),
    Kezeles_kezdete DATE,
    Kezeles_vege DATE,
    FOREIGN KEY (PaciensID) REFERENCES Paciensek(ID),
    FOREIGN KEY (OrvosID) REFERENCES Orvosok(ID)
);
