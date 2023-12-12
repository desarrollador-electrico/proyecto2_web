USE PortavionesDB;

INSERT INTO MarcaAvion (NombreMarca) VALUES ('Boeing');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Airbus');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Lockheed Martin');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Northrop Grumman');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Raytheon Technologies');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('General Dynamics');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('BAE Systems');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Leonardo');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Dassault Aviation');
INSERT INTO MarcaAvion (NombreMarca) VALUES ('Embraer');


-- Insertar 10 modelos para la marca Boeing (ID 1)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 737');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 747');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 757');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 767');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 777');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 787 Dreamliner');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 727');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 717');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 787-9');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (1, 'Boeing 787-10');

-- Insertar 10 modelos para la marca Airbus (ID 2)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A320');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A330');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A340');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A350');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A380');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A220');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A318');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A319');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A321');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (2, 'Airbus A321neo');

-- Insertar modelos para Lockheed Martin (ID 3)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'F-22 Raptor');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'F-35 Lightning II');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'C-130 Hercules');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'U-2 Dragon Lady');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'SR-71 Blackbird');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'C-5 Galaxy');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'P-3 Orion');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'L-1011 Tristar');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'F-117 Nighthawk');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (3, 'F-16 Fighting Falcon');

-- Insertar modelos para Northrop Grumman (ID 4)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'B-2 Spirit');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'E-2 Hawkeye');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'F-14 Tomcat');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'RQ-4 Global Hawk');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'T-38 Talon');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'X-47B');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'EA-6B Prowler');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'YF-23');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'MQ-8 Fire Scout');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (4, 'A-10 Thunderbolt II');

-- Insertar modelos reales para Raytheon Technologies (ID 5)
-- Nota: Raytheon Technologies incluye marcas como Pratt & Whitney y Collins Aerospace. Se incluyen ejemplos representativos.
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Pratt & Whitney F100');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Pratt & Whitney PW1000G');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Pratt & Whitney PW4000');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Collins Aerospace Pro Line Fusion');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Collins Aerospace Pro Line 21');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Collins Aerospace ARINCDirect');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Raytheon Sentinel');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Raytheon T-1 Jayhawk');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Raytheon Hawker 800XP');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (5, 'Raytheon Premier I');

-- Insertar modelos reales para General Dynamics (ID 6)
-- Nota: General Dynamics es más conocido por su división de sistemas aeroespaciales, Gulfstream.
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G500');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G600');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G650');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G700');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G550');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G280');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream IV');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream V');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G200');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (6, 'Gulfstream G150');

-- Insertar modelos para BAE Systems (ID 7)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Eurofighter Typhoon');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Hawk');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Tornado');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Harrier II');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'F-35 Lightning II');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Nimrod MRA4');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Tempest');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Mantis');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Taranis');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (7, 'Ampersand');

-- Insertar modelos para Leonardo (ID 8)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'AW101 Merlin');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'AW109');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'AW139');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'AW169');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'AW189');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'C-27J Spartan');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'M-346 Master');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'Falco EVO');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'AW609 Tiltrotor');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (8, 'Sky-Y');

-- Insertar modelos para Dassault Aviation (ID 9)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Rafale');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Mirage 2000');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Falcon 7X');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Falcon 8X');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Falcon 6X');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Falcon 900');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Falcon 2000');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Mirage III');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Mirage F1');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (9, 'Mystère');

-- Insertar modelos para Embraer (ID 10)
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer E-Jet E2 family');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer E-Jet family');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'ERJ family');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer Phenom 100');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer Phenom 300');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer Legacy 600/650');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer Legacy 450/500');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer Praetor 600');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Embraer Praetor 500');
INSERT INTO ModeloAvion (MarcaID, NombreModelo) VALUES (10, 'Super Tucano');


INSERT INTO EstadoAvion (Estado) VALUES ('En Servicio');
INSERT INTO EstadoAvion (Estado) VALUES ('Mantenimiento');
INSERT INTO EstadoAvion (Estado) VALUES ('Reservado');
INSERT INTO EstadoAvion (Estado) VALUES ('En Reparación');
INSERT INTO EstadoAvion (Estado) VALUES ('Retirado');
INSERT INTO EstadoAvion (Estado) VALUES ('En Pruebas');
INSERT INTO EstadoAvion (Estado) VALUES ('Almacenado');
INSERT INTO EstadoAvion (Estado) VALUES ('En Espera de Partes');
INSERT INTO EstadoAvion (Estado) VALUES ('Desmontado');
INSERT INTO EstadoAvion (Estado) VALUES ('Perdido en Misión');


INSERT INTO EstadoMision (Estado) VALUES ('Planificada');
INSERT INTO EstadoMision (Estado) VALUES ('En Curso');
INSERT INTO EstadoMision (Estado) VALUES ('Completada');
INSERT INTO EstadoMision (Estado) VALUES ('Cancelada');
INSERT INTO EstadoMision (Estado) VALUES ('Pausada');
INSERT INTO EstadoMision (Estado) VALUES ('Retrasada');
INSERT INTO EstadoMision (Estado) VALUES ('En Espera');
INSERT INTO EstadoMision (Estado) VALUES ('Abortada');
INSERT INTO EstadoMision (Estado) VALUES ('Fallida');
INSERT INTO EstadoMision (Estado) VALUES ('Exitosa');


INSERT INTO TipoOperacion (Tipo) VALUES ('Ingreso de Avión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Retiro de Avión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Mantenimiento de Avión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Inspección de Avión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Reparación de Avión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Actualización de Avión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Despegue de Misión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Aterrizaje de Misión');
INSERT INTO TipoOperacion (Tipo) VALUES ('Entrenamiento');
INSERT INTO TipoOperacion (Tipo) VALUES ('Reabastecimiento en Vuelo');
INSERT INTO TipoOperacion (Tipo) VALUES ('Eliminar Misión');

