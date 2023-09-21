Create database PetHouseDB
go
use PetHouseDB
go

create table raza(
idRaza int primary key identity,
nombre varchar(50),
descripcion text
)
go
create table propietario(
idPropietario int primary key identity,
nombre varchar(50),
dui varchar(100),
telefono int,
correo varchar(150)
)
go
create table mascota(
idMascota int primary key identity,
nombre varchar(50),
edad int,
sexo varchar(20),
idRaza int,
idPropietario int,

foreign key (idRaza) references raza(idRaza),
foreign key (idPropietario) references propietario(idPropietario),
)
go
create table cita(
idCita int primary key identity,
idMascota int,
fechaCita datetime,
DescripcionCita text,
FOREIGN KEY (idMascota) REFERENCES mascota(idMascota)

)
go
CREATE TABLE tratamientos (
    TratamientoID INT PRIMARY KEY,
    idMascota INT,
    FechaInicio DATE,
    FechaFin DATE,
    FOREIGN KEY (idMascota) REFERENCES mascota(idMascota)
);
go
CREATE TABLE medicamentosTratamiento (
    MedicamentoTratamientoID INT PRIMARY KEY,
    TratamientoID INT,
    NombreMedicamento VARCHAR(100),
    Dosis VARCHAR(50),
    FOREIGN KEY (TratamientoID) REFERENCES Tratamientos(TratamientoID)
);

/**pacientes, propietarios, citas,
tratamientos **/