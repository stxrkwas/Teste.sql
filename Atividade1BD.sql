create database CursosC;

use CursosC;

create table prof 
     (idprof int primary key not null,
	 nomeprof varchar (60) not null,
	 telprof varchar (20) not null,
	 valorhaula varchar (15) not null);

	 insert into prof
	 (idprof, nomeprof, telprof, valorhaula)
	 values(6566, 'Carolina dos Santos', '(78) 95563-5632', 'R$ 50,00');

	 insert into prof
	 (idprof, nomeprof, telprof, valorhaula)
	 values(5985, 'Eduardo da Silva', '(31) 95495-5989', 'R$ 50,00');

	 insert into prof
	 (idprof, nomeprof, telprof, valorhaula)
	 values(5999, 'Maria Clara Albuquerque', '(44) 95653-4965', 'R$ 50,00');

	 insert into prof
	 (idprof, nomeprof, telprof, valorhaula)
	 values(5697, 'Paulo Carvalhal', '(15) 95299-3654', 'R$ 50,00');

	 insert into prof
	 (idprof, nomeprof, telprof, valorhaula)
	 values(4655, 'Marcia Mendoza', '(78) 95563-5632', 'R$ 50,00');

	 Select * from prof;

create table cursos_a
    (idcurso int primary key not null,
	nomecurso varchar(70) not null,
	cargahor varchar(20) not null,
	contprog varchar(70) not null,
	valorcurso varchar(20) not null);

	insert into cursos_a
	(idcurso, nomecurso, cargahor, contprog, valorcurso)
	values(0001, 'Informática', '96 horas', 'Informática básica', 'R$ 250,00');

	insert into cursos_a
	(idcurso, nomecurso, cargahor, contprog, valorcurso)
	values(0002, 'Inglês', '96 horas', 'Inglês básico', 'R$ 250,00');

	insert into cursos_a
	(idcurso, nomecurso, cargahor, contprog, valorcurso)
	values(0003, 'Inglês 2', '192 horas', 'Inglês Intermediário', 'R$ 300,00');

	insert into cursos_a
	(idcurso, nomecurso, cargahor, contprog, valorcurso)
	values(0004, 'Inglês 3', '288 horas', 'Inglês Avançado', 'R$ 350,00');

	insert into cursos_a
	(idcurso, nomecurso, cargahor, contprog, valorcurso)
	values(0005, 'Espanhol', '96 horas', 'Espanhol básico', 'R$ 250,00');

	Select * from cursos_a;

create table turma
    (idturma int primary key,
	horainicio time not null, 
	horater time not null, 
	datainicio date not null, 
	datater date not null, 
	idcurso int, 
	idprof int,
	idenprof int foreign key (idenprof) references prof(idprof),
	idencurso int foreign key (idencurso) references cursos_a(idcurso));

	insert into turma
	(idturma, horainicio, horater, datainicio, datater, idenprof, idencurso)
	values(0010, '10:00', '12:00', '2023/02/06', '2023/12/01', 6566, 0001);

	insert into turma
	(idturma, horainicio, horater, datainicio, datater, idenprof, idencurso)
	values(0020, '10:00', '12:00', '2023/02/06', '2023/12/01', 5999, 0005);

	insert into turma
	(idturma, horainicio, horater, datainicio, datater, idenprof, idencurso)
	values(0030, '10:00', '12:00', '2023/02/06', '2024/11/29', 6566, 0003);

	insert into turma
	(idturma, horainicio, horater, datainicio, datater, idenprof, idencurso)
	values(0040, '10:00', '12:00', '2023/02/06', '2025/11/28', 6566, 0004);

	insert into turma
	(idturma, horainicio, horater, datainicio, datater, idenprof, idencurso)
	values(0050, '10:00', '12:00', '2023/02/06', '2023/12/01', 6566, 0001);

	Select * from turma;