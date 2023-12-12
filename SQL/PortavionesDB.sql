-- Creación de la base de datos
CREATE DATABASE PortavionesDB;

USE PortavionesDB;

-- Creación de la tabla EstadoAvion
CREATE TABLE EstadoAvion (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Estado NVARCHAR(255) UNIQUE
);

-- Creación de la tabla MarcaAvion
CREATE TABLE MarcaAvion (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NombreMarca NVARCHAR(255) UNIQUE
);

-- Creación de la tabla ModeloAvion
CREATE TABLE ModeloAvion (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    MarcaID INT,
    NombreModelo NVARCHAR(255),
    FOREIGN KEY (MarcaID) REFERENCES MarcaAvion(ID)
);

-- Creación de la tabla Técnicos
CREATE TABLE Tecnicos (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(255)
);

-- Creación de la tabla Aviones
CREATE TABLE Aviones (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    MarcaID INT,
    ModeloID INT,
    TecnicoID INT, -- Nuevo campo agregado
    NumeroSerie NVARCHAR(255) UNIQUE,
    NombreFantasia NVARCHAR(255),
    AnchoAlaAla FLOAT,
    Alto FLOAT,
    LargoPuntaCola FLOAT,
    DistanciaMaxima FLOAT,
    EstadoID INT,
    FechaIngreso DATETIME,
    CantidadInventario INT,
    FOREIGN KEY (MarcaID) REFERENCES MarcaAvion(ID),
    FOREIGN KEY (ModeloID) REFERENCES ModeloAvion(ID),
    FOREIGN KEY (EstadoID) REFERENCES EstadoAvion(ID),
    FOREIGN KEY (TecnicoID) REFERENCES Tecnicos(ID)
);

-- Creación de la tabla EstadoMision
CREATE TABLE EstadoMision (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Estado NVARCHAR(255) UNIQUE
);

-- Creación de la tabla Misiones
CREATE TABLE Misiones (
    ID INT IDENTITY(1,1) PRIMARY KEY,
	NumeroDespegue NVARCHAR(255), -- Nuevo campo agregado para el número de despegue
    NombreMision NVARCHAR(255),
    FechaDespegue DATETIME,
    FechaAterrizaje DATETIME,
    EstadoID INT, -- Suponiendo que este es el estado de la misión
    DetallesMision NVARCHAR(MAX),
    AvionID INT, -- ID del avión de DetallesMision
    TecnicoID INT, -- ID del técnico de DetallesMision
    NombrePiloto NVARCHAR(255), -- Nuevo campo agregado
    -- Aquí puedes agregar más campos de DetallesMision si es necesario
    FOREIGN KEY (AvionID) REFERENCES Aviones(ID),
    FOREIGN KEY (TecnicoID) REFERENCES Tecnicos(ID),
    FOREIGN KEY (EstadoID) REFERENCES EstadoMision(ID)
);

-- Creación de la tabla TipoOperacion
CREATE TABLE TipoOperacion (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Tipo NVARCHAR(50) UNIQUE
);

-- Creación de la tabla Operaciones
CREATE TABLE Operaciones (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TipoID INT,
    Fecha DATETIME,
    DetallesTecnicos NVARCHAR(MAX),
    AvionID INT,
    TecnicoID INT, -- Nuevo campo agregado
    FOREIGN KEY (TipoID) REFERENCES TipoOperacion(ID),
    FOREIGN KEY (AvionID) REFERENCES Aviones(ID),
    FOREIGN KEY (TecnicoID) REFERENCES Tecnicos(ID)
);
