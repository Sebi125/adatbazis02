CREATE TABLE ugyfelek (
    ugyfel_id INTEGER NOT NULL PRIMARY KEY,
    nev       VARCHAR(150),
    szul_ido  DATE,
    tel_szam  VARCHAR(20),
    email     VARCHAR(150)
);

CREATE TABLE palyak (
    palya_id      INTEGER NOT NULL PRIMARY KEY,
    szam          INTEGER,
    talaj         VARCHAR(150),
    "Kinti/Benti" VARCHAR(150)
);

CREATE TABLE foglalas (
    foglalas_id        INTEGER NOT NULL PRIMARY KEY,
    ugyfel_id          INTEGER,
    palya_id           INTEGER,
    mettol             DATE,
    meddig             DATE,
    FOREIGN KEY (ugyfel_id) REFERENCES ugyfelek(ugyfel_id),
    FOREIGN KEY (palya_id) REFERENCES palyak(palya_id)
);

CREATE TABLE berletek (
    berlet_id          INTEGER NOT NULL PRIMARY KEY,
    ugyfel_id          INTEGER,
    mettol             DATE,
    meddig             DATE,
    tipus              VARCHAR(150),
    FOREIGN KEY (ugyfel_id) REFERENCES ugyfelek(ugyfel_id)
);

CREATE TABLE uto_berlesv2 (
    berles_id          INTEGER NOT NULL PRIMARY KEY,
    uto                VARCHAR(150),
    ugyfel_id          INTEGER,
    mettol             DATE,
    meddig             DATE,
    FOREIGN KEY (ugyfel_id) REFERENCES ugyfelek(ugyfel_id)
);

ALTER TABLE foglalas ADD CONSTRAINT foglalas_palyak_fk FOREIGN KEY (palya_id) REFERENCES palyak(palya_id);
ALTER TABLE foglalas ADD CONSTRAINT foglalas_ugyfelek_fk FOREIGN KEY (ugyfel_id) REFERENCES ugyfelek(ugyfel_id);

ALTER TABLE berletek ADD CONSTRAINT berletek_ugyfelek_fk FOREIGN KEY (ugyfel_id) REFERENCES ugyfelek(ugyfel_id);

ALTER TABLE uto_berlesv2 ADD CONSTRAINT uto_berlesv2_ugyfelek_fk FOREIGN KEY (ugyfel_id) REFERENCES ugyfelek(ugyfel_id);