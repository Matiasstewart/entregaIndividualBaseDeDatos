CREATE TABLE `users` (
   `id(pk)` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(40) NOT NULL,
   `e-mail` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id(pk)`)
);

CREATE TABLE `notes` (
   `id(pk)` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(100) NOT NULL,
   `creation_date` DATE NOT NULL,
   `modification_date` DATE,
   `description` TEXT,
   `user_id(fk)` INT NOT NULL,
   `erasable` TINYINT NOT NULL,
   PRIMARY KEY (`id(pk)`)
);

CREATE TABLE `categories_notes` (
   `id(pk)` INT NOT NULL AUTO_INCREMENT,
   `category_id(fk)` INT NOT NULL,
   `note_id(fk)` INT NOT NULL,
   PRIMARY KEY (`id(pk)`)
);

CREATE TABLE `categories` (
   `id(pk)` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(40) NOT NULL,
   PRIMARY KEY (`id(pk)`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_9d36fcbc-bc87-4b99-9155-65553edc873f` FOREIGN KEY (`user_id(fk)`) REFERENCES `users`(`id(pk)`)  ;

ALTER TABLE `categories_notes` ADD CONSTRAINT `FK_8731e40c-7e46-4d0c-bcb1-927009b03c0f` FOREIGN KEY (`category_id(fk)`) REFERENCES `categories`(`id(pk)`)  ;

ALTER TABLE `categories_notes` ADD CONSTRAINT `FK_5084ceec-e98e-427a-ba36-b656c2b89769` FOREIGN KEY (`note_id(fk)`) REFERENCES `notes`(`id(pk)`)  ;


INSERT INTO `users` VALUES (default,'Juan Gomez','jgomez@gmail.com'),(default,'Mariana Tobal','marianat@hotmail.com'),(default,'Micaela Suarez','micasuarez@gmail.com'),(default,'Mariano Perez','marianrock@outlookmail.com'),(default,'Matias Troyano','maticarp@gmail.com'),(default,'Horacio Martinez','horam@hotmail.com'),(default,'Miguel Barreto','miguelitocabj@outlook.com'),(default,'Pablo Perez','pablope@gmail.com'),(default,'Luciana Cabrera','lulicabre@hotmail.com'),(default,'Monica Bayer','monicb@gmail.com') ;

-- select *
-- from users 

INSERT INTO `notes` VALUES (default,'Valorant','2021-02-12','2021-07-13','Jugar al Valorant con los pibes',8,1),(default,'Declaracion de amor','2020-05-15','2020-05-15','Amo a Juan',3,1),(default,'Canada','2019-12-03','2019-12-07','Conocer Candada',10,0),(default,'Guitarra','2018-06-29','2019-05-11','Comprar una guitarra nueva',4,1),(default,'Sueño','2020-02-20','2020-02-21','Saltar en paracaidas',7,0),(default,'Pizza','2021-10-02','2021-10-02','Hacer pizza casera',2,1),(default,'Mustang','2020-02-14','2020-04-06','Ahorrar para comprar un Ford Mustang',6,0),(default,'Proximamente','2021-09-17','2021-09-22','Ir al Parque de la Costa',1,1),(default,'Jueves a la tarde','2017-01-18','2019-02-02','Jugar al voley con las chicas',9,1),(default,'App','2020-02-12','2020-07-23','Terminar detalles en la aplicacion',5,0);

-- select *
-- from notes

INSERT INTO `categories` VALUES (default,'Love'),(default,'Fun'),(default,'Sports'),(default,'Cars'),(default,'Games'),(default,'Music'),(default,'IT'),(default,'Food'),(default,'To do'),(default,'Places');

-- select *
-- from categories 

INSERT INTO `categories_notes` VALUES (default,1,2),(default,2,8),(default,5,1),(default,3,9),(default,4,7),(default,10,3),(default,9,5),(default,8,6),(default,7,10),(default,6,4)

-- select *
-- from categories_notes 