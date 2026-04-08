CREATE DATABASE netflix_gt CHARACTER SET utf8 COLLATE utf8_spanish_ci;

USE netflix_gt;

CREATE TABLE tbl_categoria (
    id INT NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
) CHARACTER SET utf8 COLLATE utf8_spanish_ci;

CREATE TABLE tbl_enc_pelicula (
    id INT AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    para_ti VARCHAR(15) NOT NULL,
    año VARCHAR(4) NOT NULL,
    edad VARCHAR(3) NOT NULL,
    duracion VARCHAR(10) NOT NULL,
    calidad VARCHAR(5) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tbl_categoria (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) CHARACTER SET utf8 COLLATE utf8_spanish_ci;

CREATE TABLE tbl_det_pelicula (
    id INT NOT NULL,
    id_pelicula INT NOT NULL,
    sinopsis VARCHAR(300) NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    elenco VARCHAR(100) NOT NULL,
    generos VARCHAR(50) NOT NULL,
    coleccion VARCHAR(50),
    PRIMARY KEY (id),
    FOREIGN KEY (id_pelicula) REFERENCES tbl_enc_pelicula (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) CHARACTER SET utf8 COLLATE utf8_spanish_ci;