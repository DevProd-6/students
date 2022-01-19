drop
    database if exists students;
create
    database if not exists students;
use
    students;
create table `users`
(
    `usr` varchar(25),
    `pwd` varchar(50)
);
insert into `users`
values ('admin', 'admin');
create table `EnsiegnantsList`
(
    `id`        int auto_increment primary key,
    `name`      varchar(30),
    `last_name` varchar(30),
    `date_nais` date,
    `email`     varchar(50),
    `num_tel`   varchar(10),
    `gender`    varchar(1)
);
create table `ens_class`
(
    `ens_id`   int,
    `niv_scho` int(1),
    `class`    int(2),
    foreign key (`ens_id`) references EnsiegnantsList (`id`)
);

create table StudentsList
(
    `id`        int auto_increment primary key,
    `name`      varchar(35),
    `last_name` varchar(35),
    `date_nais` date,
    `gender`    varchar(1)
);
create table `stu_class`
(
    `stu_id`   int,
    `niv_scho` int(1),
    `class`    int(2),
    foreign key (`stu_id`) references StudentsList (`id`)
);
create table `notes_moy`
(
    `stu_id`           int,
    `math_moy`         double,
    `arabic_moy`       double,
    `french_moy`       double,
    `english_moy`      double,
    `islamic_moy`      double,
    `music_moy`        double,
    `geo_histo_moy`    double,
    `sport_moy`        double,
    `physics_moy`      double,
    `science_moy`      double,
    `informatique_moy` double,
    `civil_moy`        double,
    foreign key (`stu_id`) references StudentsList (`id`)
);
create table `notes_exmn`
(
    `stu_id`          int,
    `math_ex`         double,
    `arabic_ex`       double,
    `french_ex`       double,
    `english_ex`      double,
    `islamic_ex`      double,
    `music_ex`        double,
    `geo_histo_ex`    double,
    `sport_ex`        double,
    `physics_ex`      double,
    `science_ex`      double,
    `informatique_ex` double,
    `civil_ex`        double,
    `design_ex`       double,
    foreign key (`stu_id`) references StudentsList (`id`)
);
create table `notes_dv`
(
    `stu_id`          int,
    `math_dv`         double,
    `arabic_dv`       double,
    `french_dv`       double,
    `english_dv`      double,
    `islamic_dv`      double,
    `music_dv`        double,
    `geo_histo_dv`    double,
    `sport_dv`        double,
    `physics_dv`      double,
    `science_dv`      double,
    `informatique_dv` double,
    `civil_dv`        double,
    `design_dv`       double,
    foreign key (`stu_id`) references StudentsList (`id`)
);
create table `notes_cc`
(
    `stu_id`          int,
    `math_cc`         double,
    `arabic_cc`       double,
    `french_cc`       double,
    `english_cc`      double,
    `islamic_cc`      double,
    `civil_cc`        double,
    `geo_histo_cc`    double,
    `sport_cc`        double,
    `physics_cc`      double,
    `science_cc`      double,
    `informatique_cc` double,
    `music_cc`        double,
    `design_c`        double,
    foreign key (`stu_id`) references StudentsList (`id`)
);
create table `remark`
(
    `stu_id`           int,
    `math_rem`         varchar(13),
    `arabic_rem`       varchar(13),
    `french_rem`       varchar(13),
    `english_rem`      varchar(13),
    `islamic_rem`      varchar(13),
    `civil_rem`        varchar(13),
    `geo_histo_rem`    varchar(13),
    `sport_rem`        varchar(13),
    `physics_rem`      varchar(13),
    `science_rem`      varchar(13),
    `informatique_rem` varchar(13),
    `music_rem`        varchar(13),
    `design_rem`       varchar(13),
    foreign key (`stu_id`) references StudentsList (`id`)
);

/* Insert Students names*/
insert into StudentsList (`name`, `last_name`)
values ('Dorene', 'Dorene');
insert into StudentsList (`name`, `last_name`)
values ('Doretha', 'Doretha');
insert into StudentsList (`name`, `last_name`)
values ('Dorethea', 'Dorethea');
insert into StudentsList (`name`, `last_name`)
values ('Doretta', 'Doretta');
insert into StudentsList (`name`, `last_name`)
values ('Dori', 'Dori');
insert into StudentsList (`name`, `last_name`)
values ('Doria', 'Doria');
insert into StudentsList (`name`, `last_name`)
values ('Dorian', 'Dorian');
insert into StudentsList (`name`, `last_name`)
values ('Dorie', 'Dorie');
insert into StudentsList (`name`, `last_name`)
values ('Dorinda', 'Dorinda');
insert into StudentsList (`name`, `last_name`)
values ('Dorine', 'Dorine');
insert into StudentsList (`name`, `last_name`)
values ('Doris', 'Doris');
insert into StudentsList (`name`, `last_name`)
values ('Dorla', 'Dorla');
insert into StudentsList (`name`, `last_name`)
values ('Dorotha', 'Dorotha');
insert into StudentsList (`name`, `last_name`)
values ('Dorothea', 'Dorothea');
insert into StudentsList (`name`, `last_name`)
values ('Dorothy', 'Dorothy');
insert into StudentsList (`name`, `last_name`)
values ('Dorris', 'Dorris');
insert into StudentsList (`name`, `last_name`)
values ('Dorsey', 'Dorsey');
insert into StudentsList (`name`, `last_name`)
values ('Dortha', 'Dortha');
insert into StudentsList (`name`, `last_name`)
values ('Dorthea', 'Dorthea');
insert into StudentsList (`name`, `last_name`)
values ('Dorthey', 'Dorthey');
insert into StudentsList (`name`, `last_name`)
values ('Dorthy', 'Dorthy');
insert into StudentsList (`name`, `last_name`)
values ('Dot', 'Dot');
insert into StudentsList (`name`, `last_name`)
values ('Dottie', 'Dottie');
insert into StudentsList (`name`, `last_name`)
values ('Dotty', 'Dotty');
insert into StudentsList (`name`, `last_name`)
values ('Doug', 'Doug');
insert into StudentsList (`name`, `last_name`)
values ('Douglas', 'Douglas');
insert into StudentsList (`name`, `last_name`)
values ('Douglass', 'Douglass');
insert into StudentsList (`name`, `last_name`)
values ('Dovie', 'Dovie');
insert into StudentsList (`name`, `last_name`)
values ('Doyle', 'Doyle');
insert into StudentsList (`name`, `last_name`)
values ('Dreama', 'Dreama');
insert into StudentsList (`name`, `last_name`)
values ('Drema', 'Drema');
insert into StudentsList (`name`, `last_name`)
values ('Drew', 'Drew');
insert into StudentsList (`name`, `last_name`)
values ('Drucilla', 'Drucilla');
insert into StudentsList (`name`, `last_name`)
values ('Drusilla', 'Drusilla');
insert into StudentsList (`name`, `last_name`)
values ('Duane', 'Duane');
insert into StudentsList (`name`, `last_name`)
values ('Dudley', 'Dudley');
insert into StudentsList (`name`, `last_name`)
values ('Dulce', 'Dulce');
insert into StudentsList (`name`, `last_name`)
values ('Dulcie', 'Dulcie');
insert into StudentsList (`name`, `last_name`)
values ('Duncan', 'Duncan');
insert into StudentsList (`name`, `last_name`)
values ('Dung', 'Dung');
insert into StudentsList (`name`, `last_name`)
values ('Dusti', 'Dusti');
insert into StudentsList (`name`, `last_name`)
values ('Dustin', 'Dustin');
insert into StudentsList (`name`, `last_name`)
values ('Dusty', 'Dusty');
insert into StudentsList (`name`, `last_name`)
values ('Dwain', 'Dwain');
insert into StudentsList (`name`, `last_name`)
values ('Dwana', 'Dwana');
insert into StudentsList (`name`, `last_name`)
values ('Dwayne', 'Dwayne');
insert into StudentsList (`name`, `last_name`)
values ('Dwight', 'Dwight');
insert into StudentsList (`name`, `last_name`)
values ('Dyan', 'Dyan');
insert into StudentsList (`name`, `last_name`)
values ('Dylan', 'Dylan');
insert into StudentsList (`name`, `last_name`)
values ('Earl', 'Earl');
insert into StudentsList (`name`, `last_name`)
values ('Earle', 'Earle');
insert into StudentsList (`name`, `last_name`)
values ('Earlean', 'Earlean');
insert into StudentsList (`name`, `last_name`)
values ('Earleen', 'Earleen');
insert into StudentsList (`name`, `last_name`)
values ('Earlene', 'Earlene');
insert into StudentsList (`name`, `last_name`)
values ('Earlie', 'Earlie');
insert into StudentsList (`name`, `last_name`)
values ('Earline', 'Earline');
insert into StudentsList (`name`, `last_name`)
values ('Earnest', 'Earnest');
insert into StudentsList (`name`, `last_name`)
values ('Earnestine', 'Earnestine');
insert into StudentsList (`name`, `last_name`)
values ('Eartha', 'Eartha');
insert into StudentsList (`name`, `last_name`)
values ('Easter', 'Easter');
insert into StudentsList (`name`, `last_name`)
values ('Eboni', 'Eboni');
insert into StudentsList (`name`, `last_name`)
values ('Ebonie', 'Ebonie');
insert into StudentsList (`name`, `last_name`)
values ('Ebony', 'Ebony');
insert into StudentsList (`name`, `last_name`)
values ('Echo', 'Echo');
insert into StudentsList (`name`, `last_name`)
values ('Ed', 'Ed');
insert into StudentsList (`name`, `last_name`)
values ('Eda', 'Eda');
insert into StudentsList (`name`, `last_name`)
values ('Edda', 'Edda');
insert into StudentsList (`name`, `last_name`)
values ('Eddie', 'Eddie');
insert into StudentsList (`name`, `last_name`)
values ('Eddy', 'Eddy');
insert into StudentsList (`name`, `last_name`)
values ('Edelmira', 'Edelmira');
insert into StudentsList (`name`, `last_name`)
values ('Eden', 'Eden');
insert into StudentsList (`name`, `last_name`)
values ('Edgar', 'Edgar');
insert into StudentsList (`name`, `last_name`)
values ('Edgardo', 'Edgardo');
insert into StudentsList (`name`, `last_name`)
values ('Edie', 'Edie');
insert into StudentsList (`name`, `last_name`)
values ('Edison', 'Edison');
insert into StudentsList (`name`, `last_name`)
values ('Edith', 'Edith');
insert into StudentsList (`name`, `last_name`)
values ('Edmond', 'Edmond');
insert into StudentsList (`name`, `last_name`)
values ('Edmund', 'Edmund');
insert into StudentsList (`name`, `last_name`)
values ('Edmundo', 'Edmundo');
insert into StudentsList (`name`, `last_name`)
values ('Edna', 'Edna');
insert into StudentsList (`name`, `last_name`)
values ('Edra', 'Edra');
insert into StudentsList (`name`, `last_name`)
values ('Edris', 'Edris');
insert into StudentsList (`name`, `last_name`)
values ('Eduardo', 'Eduardo');
insert into StudentsList (`name`, `last_name`)
values ('Edward', 'Edward');
insert into StudentsList (`name`, `last_name`)
values ('Edwardo', 'Edwardo');
insert into StudentsList (`name`, `last_name`)
values ('Edwin', 'Edwin');
insert into StudentsList (`name`, `last_name`)
values ('Edwina', 'Edwina');
insert into StudentsList (`name`, `last_name`)
values ('Edyth', 'Edyth');
insert into StudentsList (`name`, `last_name`)
values ('Edythe', 'Edythe');
insert into StudentsList (`name`, `last_name`)
values ('Effie', 'Effie');
insert into StudentsList (`name`, `last_name`)
values ('Efrain', 'Efrain');
insert into StudentsList (`name`, `last_name`)
values ('Efren', 'Efren');
insert into StudentsList (`name`, `last_name`)
values ('Ehtel', 'Ehtel');
insert into StudentsList (`name`, `last_name`)
values ('Eileen', 'Eileen');
insert into StudentsList (`name`, `last_name`)
values ('Eilene', 'Eilene');
insert into StudentsList (`name`, `last_name`)
values ('Ela', 'Ela');
insert into StudentsList (`name`, `last_name`)
values ('Eladia', 'Eladia');
insert into StudentsList (`name`, `last_name`)
values ('Elaina', 'Elaina');
insert into StudentsList (`name`, `last_name`)
values ('Elaine', 'Elaine');
insert into StudentsList (`name`, `last_name`)
values ('Elana', 'Elana');
insert into StudentsList (`name`, `last_name`)
values ('Elane', 'Elane');
insert into StudentsList (`name`, `last_name`)
values ('Elanor', 'Elanor');
insert into StudentsList (`name`, `last_name`)
values ('Elayne', 'Elayne');
insert into StudentsList (`name`, `last_name`)
values ('Elba', 'Elba');
insert into StudentsList (`name`, `last_name`)
values ('Elbert', 'Elbert');
insert into StudentsList (`name`, `last_name`)
values ('Elda', 'Elda');
insert into StudentsList (`name`, `last_name`)
values ('Elden', 'Elden');
insert into StudentsList (`name`, `last_name`)
values ('Eldon', 'Eldon');
insert into StudentsList (`name`, `last_name`)
values ('Eldora', 'Eldora');
insert into StudentsList (`name`, `last_name`)
values ('Eldridge', 'Eldridge');
insert into StudentsList (`name`, `last_name`)
values ('Eleanor', 'Eleanor');
insert into StudentsList (`name`, `last_name`)
values ('Eleanora', 'Eleanora');
insert into StudentsList (`name`, `last_name`)
values ('Eleanore', 'Eleanore');
insert into StudentsList (`name`, `last_name`)
values ('Elease', 'Elease');
insert into StudentsList (`name`, `last_name`)
values ('Elena', 'Elena');
insert into StudentsList (`name`, `last_name`)
values ('Elene', 'Elene');
insert into StudentsList (`name`, `last_name`)
values ('Eleni', 'Eleni');
insert into StudentsList (`name`, `last_name`)
values ('Elenor', 'Elenor');
insert into StudentsList (`name`, `last_name`)
values ('Elenora', 'Elenora');
insert into StudentsList (`name`, `last_name`)
values ('Elenore', 'Elenore');
insert into StudentsList (`name`, `last_name`)
values ('Eleonor', 'Eleonor');
insert into StudentsList (`name`, `last_name`)
values ('Eleonora', 'Eleonora');
insert into StudentsList (`name`, `last_name`)
values ('Eleonore', 'Eleonore');
insert into StudentsList (`name`, `last_name`)
values ('Elfreda', 'Elfreda');
insert into StudentsList (`name`, `last_name`)
values ('Elfrieda', 'Elfrieda');
insert into StudentsList (`name`, `last_name`)
values ('Elfriede', 'Elfriede');
insert into StudentsList (`name`, `last_name`)
values ('Eli', 'Eli');
insert into StudentsList (`name`, `last_name`)
values ('Elia', 'Elia');
insert into StudentsList (`name`, `last_name`)
values ('Eliana', 'Eliana');
insert into StudentsList (`name`, `last_name`)
values ('Elias', 'Elias');
insert into StudentsList (`name`, `last_name`)
values ('Elicia', 'Elicia');
insert into StudentsList (`name`, `last_name`)
values ('Elida', 'Elida');
insert into StudentsList (`name`, `last_name`)
values ('Elidia', 'Elidia');
insert into StudentsList (`name`, `last_name`)
values ('Elijah', 'Elijah');
insert into StudentsList (`name`, `last_name`)
values ('Elin', 'Elin');
insert into StudentsList (`name`, `last_name`)
values ('Elina', 'Elina');
insert into StudentsList (`name`, `last_name`)
values ('Elinor', 'Elinor');
insert into StudentsList (`name`, `last_name`)
values ('Elinore', 'Elinore');
insert into StudentsList (`name`, `last_name`)
values ('Elisa', 'Elisa');
insert into StudentsList (`name`, `last_name`)
values ('Elisabeth', 'Elisabeth');
insert into StudentsList (`name`, `last_name`)
values ('Elise', 'Elise');
insert into StudentsList (`name`, `last_name`)
values ('Eliseo', 'Eliseo');
insert into StudentsList (`name`, `last_name`)
values ('Elisha', 'Elisha');
insert into StudentsList (`name`, `last_name`)
values ('Elissa', 'Elissa');
insert into StudentsList (`name`, `last_name`)
values ('Eliz', 'Eliz');
insert into StudentsList (`name`, `last_name`)
values ('Eliza', 'Eliza');
insert into StudentsList (`name`, `last_name`)
values ('Elizabet', 'Elizabet');
insert into StudentsList (`name`, `last_name`)
values ('Elizabeth', 'Elizabeth');
insert into StudentsList (`name`, `last_name`)
values ('Elizbeth', 'Elizbeth');
insert into StudentsList (`name`, `last_name`)
values ('Elizebeth', 'Elizebeth');
insert into StudentsList (`name`, `last_name`)
values ('Elke', 'Elke');
insert into StudentsList (`name`, `last_name`)
values ('Ella', 'Ella');
insert into StudentsList (`name`, `last_name`)
values ('Ellamae', 'Ellamae');
insert into StudentsList (`name`, `last_name`)
values ('Ellan', 'Ellan');
insert into StudentsList (`name`, `last_name`)
values ('Ellen', 'Ellen');
insert into StudentsList (`name`, `last_name`)
values ('Ellena', 'Ellena');
insert into StudentsList (`name`, `last_name`)
values ('Elli', 'Elli');
insert into StudentsList (`name`, `last_name`)
values ('Ellie', 'Ellie');
insert into StudentsList (`name`, `last_name`)
values ('Elliot', 'Elliot');
insert into StudentsList (`name`, `last_name`)
values ('Elliott', 'Elliott');
insert into StudentsList (`name`, `last_name`)
values ('Ellis', 'Ellis');
insert into StudentsList (`name`, `last_name`)
values ('Ellsworth', 'Ellsworth');
insert into StudentsList (`name`, `last_name`)
values ('Elly', 'Elly');
insert into StudentsList (`name`, `last_name`)
values ('Ellyn', 'Ellyn');
insert into StudentsList (`name`, `last_name`)
values ('Elma', 'Elma');
insert into StudentsList (`name`, `last_name`)
values ('Elmer', 'Elmer');
insert into StudentsList (`name`, `last_name`)
values ('Elmira', 'Elmira');
insert into StudentsList (`name`, `last_name`)
values ('Elmo', 'Elmo');
insert into StudentsList (`name`, `last_name`)
values ('Elna', 'Elna');
insert into StudentsList (`name`, `last_name`)
values ('Elnora', 'Elnora');
insert into StudentsList (`name`, `last_name`)
values ('Elodia', 'Elodia');
insert into StudentsList (`name`, `last_name`)
values ('Elois', 'Elois');
insert into StudentsList (`name`, `last_name`)
values ('Eloisa', 'Eloisa');
insert into StudentsList (`name`, `last_name`)
values ('Eloise', 'Eloise');
insert into StudentsList (`name`, `last_name`)
values ('Elouise', 'Elouise');
insert into StudentsList (`name`, `last_name`)
values ('Eloy', 'Eloy');
insert into StudentsList (`name`, `last_name`)
values ('Elroy', 'Elroy');
insert into StudentsList (`name`, `last_name`)
values ('Elsa', 'Elsa');
insert into StudentsList (`name`, `last_name`)
values ('Else', 'Else');
insert into StudentsList (`name`, `last_name`)
values ('Elsie', 'Elsie');
insert into StudentsList (`name`, `last_name`)
values ('Elsy', 'Elsy');
insert into StudentsList (`name`, `last_name`)
values ('Elton', 'Elton');
insert into StudentsList (`name`, `last_name`)
values ('Elva', 'Elva');
insert into StudentsList (`name`, `last_name`)
values ('Elvera', 'Elvera');
insert into StudentsList (`name`, `last_name`)
values ('Elvia', 'Elvia');
insert into StudentsList (`name`, `last_name`)
values ('Elvie', 'Elvie');
insert into StudentsList (`name`, `last_name`)
values ('Elvin', 'Elvin');
insert into StudentsList (`name`, `last_name`)
values ('Elvina', 'Elvina');
insert into StudentsList (`name`, `last_name`)
values ('Elvira', 'Elvira');
insert into StudentsList (`name`, `last_name`)
values ('Elvis', 'Elvis');
insert into StudentsList (`name`, `last_name`)
values ('Elwanda', 'Elwanda');
insert into StudentsList (`name`, `last_name`)
values ('Elwood', 'Elwood');
insert into StudentsList (`name`, `last_name`)
values ('Elyse', 'Elyse');
insert into StudentsList (`name`, `last_name`)
values ('Elza', 'Elza');
insert into StudentsList (`name`, `last_name`)
values ('Ema', 'Ema');
insert into StudentsList (`name`, `last_name`)
values ('Emanuel', 'Emanuel');
insert into StudentsList (`name`, `last_name`)
values ('Emelda', 'Emelda');
insert into StudentsList (`name`, `last_name`)
values ('Emelia', 'Emelia');
insert into StudentsList (`name`, `last_name`)
values ('Emelina', 'Emelina');
insert into StudentsList (`name`, `last_name`)
values ('Emeline', 'Emeline');
insert into StudentsList (`name`, `last_name`)
values ('Emely', 'Emely');
insert into StudentsList (`name`, `last_name`)
values ('Emerald', 'Emerald');
insert into StudentsList (`name`, `last_name`)
values ('Emerita', 'Emerita');
insert into StudentsList (`name`, `last_name`)
values ('Emerson', 'Emerson');
insert into StudentsList (`name`, `last_name`)
values ('Emery', 'Emery');
insert into StudentsList (`name`, `last_name`)
values ('Emiko', 'Emiko');
insert into StudentsList (`name`, `last_name`)
values ('Emil', 'Emil');
insert into StudentsList (`name`, `last_name`)
values ('Emile', 'Emile');
insert into StudentsList (`name`, `last_name`)
values ('Emilee', 'Emilee');
insert into StudentsList (`name`, `last_name`)
values ('Emilia', 'Emilia');
insert into StudentsList (`name`, `last_name`)
values ('Emilie', 'Emilie');
insert into StudentsList (`name`, `last_name`)
values ('Emilio', 'Emilio');
insert into StudentsList (`name`, `last_name`)
values ('Emily', 'Emily');
insert into StudentsList (`name`, `last_name`)
values ('Emma', 'Emma');
insert into StudentsList (`name`, `last_name`)
values ('Emmaline', 'Emmaline');
insert into StudentsList (`name`, `last_name`)
values ('Emmanuel', 'Emmanuel');
insert into StudentsList (`name`, `last_name`)
values ('Emmett', 'Emmett');
insert into StudentsList (`name`, `last_name`)
values ('Emmie', 'Emmie');
insert into StudentsList (`name`, `last_name`)
values ('Emmitt', 'Emmitt');
insert into StudentsList (`name`, `last_name`)
values ('Emmy', 'Emmy');
insert into StudentsList (`name`, `last_name`)
values ('Emogene', 'Emogene');
insert into StudentsList (`name`, `last_name`)
values ('Emory', 'Emory');
insert into StudentsList (`name`, `last_name`)
values ('Ena', 'Ena');
insert into StudentsList (`name`, `last_name`)
values ('Enda', 'Enda');
insert into StudentsList (`name`, `last_name`)
values ('Enedina', 'Enedina');
insert into StudentsList (`name`, `last_name`)
values ('Eneida', 'Eneida');
insert into StudentsList (`name`, `last_name`)
values ('Enid', 'Enid');
insert into StudentsList (`name`, `last_name`)
values ('Enoch', 'Enoch');
insert into StudentsList (`name`, `last_name`)
values ('Enola', 'Enola');
insert into StudentsList (`name`, `last_name`)
values ('Enrique', 'Enrique');
insert into StudentsList (`name`, `last_name`)
values ('Enriqueta', 'Enriqueta');
insert into StudentsList (`name`, `last_name`)
values ('Epifania', 'Epifania');
insert into StudentsList (`name`, `last_name`)
values ('Era', 'Era');
insert into StudentsList (`name`, `last_name`)
values ('Erasmo', 'Erasmo');
insert into StudentsList (`name`, `last_name`)
values ('Eric', 'Eric');
insert into StudentsList (`name`, `last_name`)
values ('Erica', 'Erica');
insert into StudentsList (`name`, `last_name`)
values ('Erich', 'Erich');
insert into StudentsList (`name`, `last_name`)
values ('Erick', 'Erick');
insert into StudentsList (`name`, `last_name`)
values ('Ericka', 'Ericka');
insert into StudentsList (`name`, `last_name`)
values ('Erik', 'Erik');
insert into StudentsList (`name`, `last_name`)
values ('Erika', 'Erika');
insert into StudentsList (`name`, `last_name`)
values ('Erin', 'Erin');
insert into StudentsList (`name`, `last_name`)
values ('Erinn', 'Erinn');
insert into StudentsList (`name`, `last_name`)
values ('Erlene', 'Erlene');
insert into StudentsList (`name`, `last_name`)
values ('Erlinda', 'Erlinda');
insert into StudentsList (`name`, `last_name`)
values ('Erline', 'Erline');
insert into StudentsList (`name`, `last_name`)
values ('Erma', 'Erma');
insert into StudentsList (`name`, `last_name`)
values ('Ermelinda', 'Ermelinda');
insert into StudentsList (`name`, `last_name`)
values ('Erminia', 'Erminia');
insert into StudentsList (`name`, `last_name`)
values ('Erna', 'Erna');
insert into StudentsList (`name`, `last_name`)
values ('Ernest', 'Ernest');
insert into StudentsList (`name`, `last_name`)
values ('Ernestina', 'Ernestina');
insert into StudentsList (`name`, `last_name`)
values ('Ernestine', 'Ernestine');
insert into StudentsList (`name`, `last_name`)
values ('Ernesto', 'Ernesto');
insert into StudentsList (`name`, `last_name`)
values ('Ernie', 'Ernie');
insert into StudentsList (`name`, `last_name`)
values ('Errol', 'Errol');
insert into StudentsList (`name`, `last_name`)
values ('Ervin', 'Ervin');
insert into StudentsList (`name`, `last_name`)
values ('Erwin', 'Erwin');
insert into StudentsList (`name`, `last_name`)
values ('Eryn', 'Eryn');
insert into StudentsList (`name`, `last_name`)
values ('Esmeralda', 'Esmeralda');
insert into StudentsList (`name`, `last_name`)
values ('Esperanza', 'Esperanza');
insert into StudentsList (`name`, `last_name`)
values ('Essie', 'Essie');
insert into StudentsList (`name`, `last_name`)
values ('Esta', 'Esta');
insert into StudentsList (`name`, `last_name`)
values ('Esteban', 'Esteban');
insert into StudentsList (`name`, `last_name`)
values ('Estefana', 'Estefana');
insert into StudentsList (`name`, `last_name`)
values ('Estela', 'Estela');
insert into StudentsList (`name`, `last_name`)
values ('Estell', 'Estell');
insert into StudentsList (`name`, `last_name`)
values ('Estella', 'Estella');
insert into StudentsList (`name`, `last_name`)
values ('Estelle', 'Estelle');
insert into StudentsList (`name`, `last_name`)
values ('Ester', 'Ester');
insert into StudentsList (`name`, `last_name`)
values ('Esther', 'Esther');
insert into StudentsList (`name`, `last_name`)
values ('Estrella', 'Estrella');
insert into StudentsList (`name`, `last_name`)
values ('Etha', 'Etha');
insert into StudentsList (`name`, `last_name`)
values ('Ethan', 'Ethan');
insert into StudentsList (`name`, `last_name`)
values ('Ethel', 'Ethel');
insert into StudentsList (`name`, `last_name`)
values ('Ethelene', 'Ethelene');
insert into StudentsList (`name`, `last_name`)
values ('Ethelyn', 'Ethelyn');
insert into StudentsList (`name`, `last_name`)
values ('Ethyl', 'Ethyl');
insert into StudentsList (`name`, `last_name`)
values ('Etsuko', 'Etsuko');
insert into StudentsList (`name`, `last_name`)
values ('Etta', 'Etta');
insert into StudentsList (`name`, `last_name`)
values ('Ettie', 'Ettie');
insert into StudentsList (`name`, `last_name`)
values ('Eufemia', 'Eufemia');
insert into StudentsList (`name`, `last_name`)
values ('Eugena', 'Eugena');
insert into StudentsList (`name`, `last_name`)
values ('Eugene', 'Eugene');
insert into StudentsList (`name`, `last_name`)
values ('Eugenia', 'Eugenia');
insert into StudentsList (`name`, `last_name`)
values ('Eugenie', 'Eugenie');
insert into StudentsList (`name`, `last_name`)
values ('Eugenio', 'Eugenio');
insert into StudentsList (`name`, `last_name`)
values ('Eula', 'Eula');
insert into StudentsList (`name`, `last_name`)
values ('Eulah', 'Eulah');
insert into StudentsList (`name`, `last_name`)
values ('Eulalia', 'Eulalia');
insert into StudentsList (`name`, `last_name`)
values ('Eun', 'Eun');
insert into StudentsList (`name`, `last_name`)
values ('Euna', 'Euna');
insert into StudentsList (`name`, `last_name`)
values ('Eunice', 'Eunice');
insert into StudentsList (`name`, `last_name`)
values ('Eura', 'Eura');
insert into StudentsList (`name`, `last_name`)
values ('Eusebia', 'Eusebia');
insert into StudentsList (`name`, `last_name`)
values ('Eusebio', 'Eusebio');
insert into StudentsList (`name`, `last_name`)
values ('Eustolia', 'Eustolia');
insert into StudentsList (`name`, `last_name`)
values ('Eva', 'Eva');
insert into StudentsList (`name`, `last_name`)
values ('Evalyn', 'Evalyn');
insert into StudentsList (`name`, `last_name`)
values ('Evan', 'Evan');
insert into StudentsList (`name`, `last_name`)
values ('Evangelina', 'Evangelina');
insert into StudentsList (`name`, `last_name`)
values ('Evangeline', 'Evangeline');
insert into StudentsList (`name`, `last_name`)
values ('Eve', 'Eve');
insert into StudentsList (`name`, `last_name`)
values ('Evelia', 'Evelia');
insert into StudentsList (`name`, `last_name`)
values ('Evelin', 'Evelin');
insert into StudentsList (`name`, `last_name`)
values ('Evelina', 'Evelina');
insert into StudentsList (`name`, `last_name`)
values ('Eveline', 'Eveline');
insert into StudentsList (`name`, `last_name`)
values ('Evelyn', 'Evelyn');
insert into StudentsList (`name`, `last_name`)
values ('Evelyne', 'Evelyne');
insert into StudentsList (`name`, `last_name`)
values ('Evelynn', 'Evelynn');
insert into StudentsList (`name`, `last_name`)
values ('Everett', 'Everett');
insert into StudentsList (`name`, `last_name`)
values ('Everette', 'Everette');
insert into StudentsList (`name`, `last_name`)
values ('Evette', 'Evette');
insert into StudentsList (`name`, `last_name`)
values ('Evia', 'Evia');
insert into StudentsList (`name`, `last_name`)
values ('Evie', 'Evie');
insert into StudentsList (`name`, `last_name`)
values ('Evita', 'Evita');
insert into StudentsList (`name`, `last_name`)
values ('Evon', 'Evon');
insert into StudentsList (`name`, `last_name`)
values ('Evonne', 'Evonne');
insert into StudentsList (`name`, `last_name`)
values ('Ewa', 'Ewa');
insert into StudentsList (`name`, `last_name`)
values ('Exie', 'Exie');
insert into StudentsList (`name`, `last_name`)
values ('Ezekiel', 'Ezekiel');
insert into StudentsList (`name`, `last_name`)
values ('Ezequiel', 'Ezequiel');
insert into StudentsList (`name`, `last_name`)
values ('Ezra', 'Ezra');
insert into StudentsList (`name`, `last_name`)
values ('Fabian', 'Fabian');
insert into StudentsList (`name`, `last_name`)
values ('Fabiola', 'Fabiola');
insert into StudentsList (`name`, `last_name`)
values ('Fae', 'Fae');
insert into StudentsList (`name`, `last_name`)
values ('Fairy', 'Fairy');
insert into StudentsList (`name`, `last_name`)
values ('Faith', 'Faith');
insert into StudentsList (`name`, `last_name`)
values ('Fallon', 'Fallon');
insert into StudentsList (`name`, `last_name`)
values ('Fannie', 'Fannie');
insert into StudentsList (`name`, `last_name`)
values ('Fanny', 'Fanny');
insert into StudentsList (`name`, `last_name`)
values ('Farah', 'Farah');
insert into StudentsList (`name`, `last_name`)
values ('Farrah', 'Farrah');
insert into StudentsList (`name`, `last_name`)
values ('Fatima', 'Fatima');
insert into StudentsList (`name`, `last_name`)
values ('Fatimah', 'Fatimah');
insert into StudentsList (`name`, `last_name`)
values ('Faustina', 'Faustina');
insert into StudentsList (`name`, `last_name`)
values ('Faustino', 'Faustino');
insert into StudentsList (`name`, `last_name`)
values ('Fausto', 'Fausto');
insert into StudentsList (`name`, `last_name`)
values ('Faviola', 'Faviola');
insert into StudentsList (`name`, `last_name`)
values ('Fawn', 'Fawn');
insert into StudentsList (`name`, `last_name`)
values ('Fay', 'Fay');
insert into StudentsList (`name`, `last_name`)
values ('Faye', 'Faye');
insert into StudentsList (`name`, `last_name`)
values ('Fe', 'Fe');
insert into StudentsList (`name`, `last_name`)
values ('Federico', 'Federico');
insert into StudentsList (`name`, `last_name`)
values ('Felecia', 'Felecia');
insert into StudentsList (`name`, `last_name`)
values ('Felica', 'Felica');
insert into StudentsList (`name`, `last_name`)
values ('Felice', 'Felice');
insert into StudentsList (`name`, `last_name`)
values ('Felicia', 'Felicia');
insert into StudentsList (`name`, `last_name`)
values ('Felicidad', 'Felicidad');
insert into StudentsList (`name`, `last_name`)
values ('Felicita', 'Felicita');
insert into StudentsList (`name`, `last_name`)
values ('Felicitas', 'Felicitas');
insert into StudentsList (`name`, `last_name`)
values ('Felipa', 'Felipa');
insert into StudentsList (`name`, `last_name`)
values ('Felipe', 'Felipe');
insert into StudentsList (`name`, `last_name`)
values ('Felisa', 'Felisa');
insert into StudentsList (`name`, `last_name`)
values ('Felisha', 'Felisha');
insert into StudentsList (`name`, `last_name`)
values ('Felix', 'Felix');
insert into StudentsList (`name`, `last_name`)
values ('Felton', 'Felton');
insert into StudentsList (`name`, `last_name`)
values ('Ferdinand', 'Ferdinand');
insert into StudentsList (`name`, `last_name`)
values ('Fermin', 'Fermin');
insert into StudentsList (`name`, `last_name`)
values ('Fermina', 'Fermina');
insert into StudentsList (`name`, `last_name`)
values ('Fern', 'Fern');
insert into StudentsList (`name`, `last_name`)
values ('Fernanda', 'Fernanda');
insert into StudentsList (`name`, `last_name`)
values ('Fernande', 'Fernande');
insert into StudentsList (`name`, `last_name`)
values ('Fernando', 'Fernando');
insert into StudentsList (`name`, `last_name`)
values ('Ferne', 'Ferne');
insert into StudentsList (`name`, `last_name`)
values ('Fidel', 'Fidel');
insert into StudentsList (`name`, `last_name`)
values ('Fidela', 'Fidela');
insert into StudentsList (`name`, `last_name`)
values ('Fidelia', 'Fidelia');
insert into StudentsList (`name`, `last_name`)
values ('Filiberto', 'Filiberto');
insert into StudentsList (`name`, `last_name`)
values ('Filomena', 'Filomena');
insert into StudentsList (`name`, `last_name`)
values ('Fiona', 'Fiona');
insert into StudentsList (`name`, `last_name`)
values ('Flavia', 'Flavia');
insert into StudentsList (`name`, `last_name`)
values ('Fleta', 'Fleta');
insert into StudentsList (`name`, `last_name`)
values ('Fletcher', 'Fletcher');
insert into StudentsList (`name`, `last_name`)
values ('Flo', 'Flo');
insert into StudentsList (`name`, `last_name`)
values ('Flor', 'Flor');
insert into StudentsList (`name`, `last_name`)
values ('Flora', 'Flora');
insert into StudentsList (`name`, `last_name`)
values ('Florance', 'Florance');
insert into StudentsList (`name`, `last_name`)
values ('Florence', 'Florence');
insert into StudentsList (`name`, `last_name`)
values ('Florencia', 'Florencia');
insert into StudentsList (`name`, `last_name`)
values ('Florencio', 'Florencio');
insert into StudentsList (`name`, `last_name`)
values ('Florene', 'Florene');
insert into StudentsList (`name`, `last_name`)
values ('Florentina', 'Florentina');
insert into StudentsList (`name`, `last_name`)
values ('Florentino', 'Florentino');
insert into StudentsList (`name`, `last_name`)
values ('Floretta', 'Floretta');
insert into StudentsList (`name`, `last_name`)
values ('Floria', 'Floria');
insert into StudentsList (`name`, `last_name`)
values ('Florida', 'Florida');
insert into StudentsList (`name`, `last_name`)
values ('Florinda', 'Florinda');
insert into StudentsList (`name`, `last_name`)
values ('Florine', 'Florine');
insert into StudentsList (`name`, `last_name`)
values ('Florrie', 'Florrie');
insert into StudentsList (`name`, `last_name`)
values ('Flossie', 'Flossie');
insert into StudentsList (`name`, `last_name`)
values ('Floy', 'Floy');
insert into StudentsList (`name`, `last_name`)
values ('Floyd', 'Floyd');
insert into StudentsList (`name`, `last_name`)
values ('Fonda', 'Fonda');
insert into StudentsList (`name`, `last_name`)
values ('Forest', 'Forest');
insert into StudentsList (`name`, `last_name`)
values ('Forrest', 'Forrest');
insert into StudentsList (`name`, `last_name`)
values ('Foster', 'Foster');
insert into StudentsList (`name`, `last_name`)
values ('Fran', 'Fran');
insert into StudentsList (`name`, `last_name`)
values ('France', 'France');
insert into StudentsList (`name`, `last_name`)
values ('Francene', 'Francene');
insert into StudentsList (`name`, `last_name`)
values ('Frances', 'Frances');
insert into StudentsList (`name`, `last_name`)
values ('Francesca', 'Francesca');
insert into StudentsList (`name`, `last_name`)
values ('Francesco', 'Francesco');
insert into StudentsList (`name`, `last_name`)
values ('Franchesca', 'Franchesca');
insert into StudentsList (`name`, `last_name`)
values ('Francie', 'Francie');
insert into StudentsList (`name`, `last_name`)
values ('Francina', 'Francina');
insert into StudentsList (`name`, `last_name`)
values ('Francine', 'Francine');
insert into StudentsList (`name`, `last_name`)
values ('Francis', 'Francis');
insert into StudentsList (`name`, `last_name`)
values ('Francisca', 'Francisca');
insert into StudentsList (`name`, `last_name`)
values ('Francisco', 'Francisco');
insert into StudentsList (`name`, `last_name`)
values ('Francoise', 'Francoise');
insert into StudentsList (`name`, `last_name`)
values ('Frank', 'Frank');
insert into StudentsList (`name`, `last_name`)
values ('Frankie', 'Frankie');
insert into StudentsList (`name`, `last_name`)
values ('Franklin', 'Franklin');
insert into StudentsList (`name`, `last_name`)
values ('Franklyn', 'Franklyn');
insert into StudentsList (`name`, `last_name`)
values ('Fransisca', 'Fransisca');
insert into StudentsList (`name`, `last_name`)
values ('Fred', 'Fred');
insert into StudentsList (`name`, `last_name`)
values ('Freda', 'Freda');
insert into StudentsList (`name`, `last_name`)
values ('Fredda', 'Fredda');
insert into StudentsList (`name`, `last_name`)
values ('Freddie', 'Freddie');
insert into StudentsList (`name`, `last_name`)
values ('Freddy', 'Freddy');
insert into StudentsList (`name`, `last_name`)
values ('Frederic', 'Frederic');
insert into StudentsList (`name`, `last_name`)
values ('Frederica', 'Frederica');
insert into StudentsList (`name`, `last_name`)
values ('Frederick', 'Frederick');
insert into StudentsList (`name`, `last_name`)
values ('Fredericka', 'Fredericka');
insert into StudentsList (`name`, `last_name`)
values ('Fredia', 'Fredia');
insert into StudentsList (`name`, `last_name`)
values ('Fredric', 'Fredric');
insert into StudentsList (`name`, `last_name`)
values ('Fredrick', 'Fredrick');
insert into StudentsList (`name`, `last_name`)
values ('Fredricka', 'Fredricka');
insert into StudentsList (`name`, `last_name`)
values ('Freeda', 'Freeda');
insert into StudentsList (`name`, `last_name`)
values ('Freeman', 'Freeman');
insert into StudentsList (`name`, `last_name`)
values ('Freida', 'Freida');
insert into StudentsList (`name`, `last_name`)
values ('Frida', 'Frida');
insert into StudentsList (`name`, `last_name`)
values ('Frieda', 'Frieda');
insert into StudentsList (`name`, `last_name`)
values ('Fritz', 'Fritz');
insert into StudentsList (`name`, `last_name`)
values ('Fumiko', 'Fumiko');
insert into StudentsList (`name`, `last_name`)
values ('Gabriel', 'Gabriel');
insert into StudentsList (`name`, `last_name`)
values ('Gabriela', 'Gabriela');
insert into StudentsList (`name`, `last_name`)
values ('Gabriele', 'Gabriele');
insert into StudentsList (`name`, `last_name`)
values ('Gabriella', 'Gabriella');
insert into StudentsList (`name`, `last_name`)
values ('Gabrielle', 'Gabrielle');
insert into StudentsList (`name`, `last_name`)
values ('Gail', 'Gail');
insert into StudentsList (`name`, `last_name`)
values ('Gala', 'Gala');
insert into StudentsList (`name`, `last_name`)
values ('Gale', 'Gale');
insert into StudentsList (`name`, `last_name`)
values ('Galen', 'Galen');
insert into StudentsList (`name`, `last_name`)
values ('Galina', 'Galina');
insert into StudentsList (`name`, `last_name`)
values ('Garfield', 'Garfield');
insert into StudentsList (`name`, `last_name`)
values ('Garland', 'Garland');
insert into StudentsList (`name`, `last_name`)
values ('Garnet', 'Garnet');
insert into StudentsList (`name`, `last_name`)
values ('Garnett', 'Garnett');
insert into StudentsList (`name`, `last_name`)
values ('Garret', 'Garret');
insert into StudentsList (`name`, `last_name`)
values ('Garrett', 'Garrett');
insert into StudentsList (`name`, `last_name`)
values ('Garry', 'Garry');
insert into StudentsList (`name`, `last_name`)
values ('Garth', 'Garth');
insert into StudentsList (`name`, `last_name`)
values ('Gary', 'Gary');
insert into StudentsList (`name`, `last_name`)
values ('Gaston', 'Gaston');
insert into StudentsList (`name`, `last_name`)
values ('Gavin', 'Gavin');
insert into StudentsList (`name`, `last_name`)
values ('Gay', 'Gay');
insert into StudentsList (`name`, `last_name`)
values ('Gaye', 'Gaye');
insert into StudentsList (`name`, `last_name`)
values ('Gayla', 'Gayla');
insert into StudentsList (`name`, `last_name`)
values ('Gayle', 'Gayle');
insert into StudentsList (`name`, `last_name`)
values ('Gaylene', 'Gaylene');
insert into StudentsList (`name`, `last_name`)
values ('Gaylord', 'Gaylord');
insert into StudentsList (`name`, `last_name`)
values ('Gaynell', 'Gaynell');
insert into StudentsList (`name`, `last_name`)
values ('Gaynelle', 'Gaynelle');
insert into StudentsList (`name`, `last_name`)
values ('Gearldine', 'Gearldine');
insert into StudentsList (`name`, `last_name`)
values ('Gema', 'Gema');
insert into StudentsList (`name`, `last_name`)
values ('Gemma', 'Gemma');
insert into StudentsList (`name`, `last_name`)
values ('Gena', 'Gena');
insert into StudentsList (`name`, `last_name`)
values ('Genaro', 'Genaro');
insert into StudentsList (`name`, `last_name`)
values ('Gene', 'Gene');
insert into StudentsList (`name`, `last_name`)
values ('Genesis', 'Genesis');
insert into StudentsList (`name`, `last_name`)
values ('Geneva', 'Geneva');
insert into StudentsList (`name`, `last_name`)
values ('Genevie', 'Genevie');
insert into StudentsList (`name`, `last_name`)
values ('Genevieve', 'Genevieve');
insert into StudentsList (`name`, `last_name`)
values ('Genevive', 'Genevive');
insert into StudentsList (`name`, `last_name`)
values ('Genia', 'Genia');
insert into StudentsList (`name`, `last_name`)
values ('Genie', 'Genie');
insert into StudentsList (`name`, `last_name`)
values ('Genna', 'Genna');
insert into StudentsList (`name`, `last_name`)
values ('Gennie', 'Gennie');
insert into StudentsList (`name`, `last_name`)
values ('Genny', 'Genny');
insert into StudentsList (`name`, `last_name`)
values ('Genoveva', 'Genoveva');
insert into StudentsList (`name`, `last_name`)
values ('Geoffrey', 'Geoffrey');
insert into StudentsList (`name`, `last_name`)
values ('Georgann', 'Georgann');
insert into StudentsList (`name`, `last_name`)
values ('George', 'George');
insert into StudentsList (`name`, `last_name`)
values ('Georgeann', 'Georgeann');
insert into StudentsList (`name`, `last_name`)
values ('Georgeanna', 'Georgeanna');
insert into StudentsList (`name`, `last_name`)
values ('Georgene', 'Georgene');
insert into StudentsList (`name`, `last_name`)
values ('Georgetta', 'Georgetta');
insert into StudentsList (`name`, `last_name`)
values ('Georgette', 'Georgette');
insert into StudentsList (`name`, `last_name`)
values ('Georgia', 'Georgia');
insert into StudentsList (`name`, `last_name`)
values ('Georgiana', 'Georgiana');
insert into StudentsList (`name`, `last_name`)
values ('Georgiann', 'Georgiann');
insert into StudentsList (`name`, `last_name`)
values ('Georgianna', 'Georgianna');
insert into StudentsList (`name`, `last_name`)
values ('Georgianne', 'Georgianne');
insert into StudentsList (`name`, `last_name`)
values ('Georgie', 'Georgie');
insert into StudentsList (`name`, `last_name`)
values ('Georgina', 'Georgina');
insert into StudentsList (`name`, `last_name`)
values ('Georgine', 'Georgine');
insert into StudentsList (`name`, `last_name`)
values ('Gerald', 'Gerald');
insert into StudentsList (`name`, `last_name`)
values ('Geraldine', 'Geraldine');
insert into StudentsList (`name`, `last_name`)
values ('Geraldo', 'Geraldo');
insert into StudentsList (`name`, `last_name`)
values ('Geralyn', 'Geralyn');
insert into StudentsList (`name`, `last_name`)
values ('Gerard', 'Gerard');
insert into StudentsList (`name`, `last_name`)
values ('Gerardo', 'Gerardo');
insert into StudentsList (`name`, `last_name`)
values ('Gerda', 'Gerda');
insert into StudentsList (`name`, `last_name`)
values ('Geri', 'Geri');
insert into StudentsList (`name`, `last_name`)
values ('Germaine', 'Germaine');
insert into StudentsList (`name`, `last_name`)
values ('German', 'German');
insert into StudentsList (`name`, `last_name`)
values ('Gerri', 'Gerri');
insert into StudentsList (`name`, `last_name`)
values ('Gerry', 'Gerry');
insert into StudentsList (`name`, `last_name`)
values ('Gertha', 'Gertha');
insert into StudentsList (`name`, `last_name`)
values ('Gertie', 'Gertie');
insert into StudentsList (`name`, `last_name`)
values ('Gertrud', 'Gertrud');
insert into StudentsList (`name`, `last_name`)
values ('Gertrude', 'Gertrude');
insert into StudentsList (`name`, `last_name`)
values ('Gertrudis', 'Gertrudis');
insert into StudentsList (`name`, `last_name`)
values ('Gertude', 'Gertude');
insert into StudentsList (`name`, `last_name`)
values ('Ghislaine', 'Ghislaine');
insert into StudentsList (`name`, `last_name`)
values ('Gia', 'Gia');
insert into StudentsList (`name`, `last_name`)
values ('Gianna', 'Gianna');
insert into StudentsList (`name`, `last_name`)
values ('Gidget', 'Gidget');
insert into StudentsList (`name`, `last_name`)
values ('Gigi', 'Gigi');
insert into StudentsList (`name`, `last_name`)
values ('Gil', 'Gil');
insert into StudentsList (`name`, `last_name`)
values ('Gilbert', 'Gilbert');
insert into StudentsList (`name`, `last_name`)
values ('Gilberte', 'Gilberte');
insert into StudentsList (`name`, `last_name`)
values ('Gilberto', 'Gilberto');
insert into StudentsList (`name`, `last_name`)
values ('Gilda', 'Gilda');
insert into StudentsList (`name`, `last_name`)
values ('Gillian', 'Gillian');
insert into StudentsList (`name`, `last_name`)
values ('Gilma', 'Gilma');
insert into StudentsList (`name`, `last_name`)
values ('Gina', 'Gina');
insert into StudentsList (`name`, `last_name`)
values ('Ginette', 'Ginette');
insert into StudentsList (`name`, `last_name`)
values ('Ginger', 'Ginger');
insert into StudentsList (`name`, `last_name`)
values ('Ginny', 'Ginny');
insert into StudentsList (`name`, `last_name`)
values ('Gino', 'Gino');
insert into StudentsList (`name`, `last_name`)
values ('Giovanna', 'Giovanna');
insert into StudentsList (`name`, `last_name`)
values ('Giovanni', 'Giovanni');
insert into StudentsList (`name`, `last_name`)
values ('Gisela', 'Gisela');
insert into StudentsList (`name`, `last_name`)
values ('Gisele', 'Gisele');
insert into StudentsList (`name`, `last_name`)
values ('Giselle', 'Giselle');
insert into StudentsList (`name`, `last_name`)
values ('Gita', 'Gita');
insert into StudentsList (`name`, `last_name`)
values ('Giuseppe', 'Giuseppe');
insert into StudentsList (`name`, `last_name`)
values ('Giuseppina', 'Giuseppina');
insert into StudentsList (`name`, `last_name`)
values ('Gladis', 'Gladis');
insert into StudentsList (`name`, `last_name`)
values ('Glady', 'Glady');
insert into StudentsList (`name`, `last_name`)
values ('Gladys', 'Gladys');
insert into StudentsList (`name`, `last_name`)
values ('Glayds', 'Glayds');
insert into StudentsList (`name`, `last_name`)
values ('Glen', 'Glen');
insert into StudentsList (`name`, `last_name`)
values ('Glenda', 'Glenda');
insert into StudentsList (`name`, `last_name`)
values ('Glendora', 'Glendora');
insert into StudentsList (`name`, `last_name`)
values ('Glenn', 'Glenn');
insert into StudentsList (`name`, `last_name`)
values ('Glenna', 'Glenna');
insert into StudentsList (`name`, `last_name`)
values ('Glennie', 'Glennie');
insert into StudentsList (`name`, `last_name`)
values ('Glennis', 'Glennis');
insert into StudentsList (`name`, `last_name`)
values ('Glinda', 'Glinda');
insert into StudentsList (`name`, `last_name`)
values ('Gloria', 'Gloria');
insert into StudentsList (`name`, `last_name`)
values ('Glory', 'Glory');
insert into StudentsList (`name`, `last_name`)
values ('Glynda', 'Glynda');
insert into StudentsList (`name`, `last_name`)
values ('Glynis', 'Glynis');
insert into StudentsList (`name`, `last_name`)
values ('Golda', 'Golda');
insert into StudentsList (`name`, `last_name`)
values ('Golden', 'Golden');
insert into StudentsList (`name`, `last_name`)
values ('Goldie', 'Goldie');
insert into StudentsList (`name`, `last_name`)
values ('Gonzalo', 'Gonzalo');
insert into StudentsList (`name`, `last_name`)
values ('Gordon', 'Gordon');
insert into StudentsList (`name`, `last_name`)
values ('Grace', 'Grace');
insert into StudentsList (`name`, `last_name`)
values ('Gracia', 'Gracia');
insert into StudentsList (`name`, `last_name`)
values ('Gracie', 'Gracie');
insert into StudentsList (`name`, `last_name`)
values ('Graciela', 'Graciela');
insert into StudentsList (`name`, `last_name`)
values ('Grady', 'Grady');
insert into StudentsList (`name`, `last_name`)
values ('Graham', 'Graham');
insert into StudentsList (`name`, `last_name`)
values ('Graig', 'Graig');
insert into StudentsList (`name`, `last_name`)
values ('Grant', 'Grant');
insert into StudentsList (`name`, `last_name`)
values ('Granville', 'Granville');
insert into StudentsList (`name`, `last_name`)
values ('Grayce', 'Grayce');
insert into StudentsList (`name`, `last_name`)
values ('Grazyna', 'Grazyna');
insert into StudentsList (`name`, `last_name`)
values ('Greg', 'Greg');
insert into StudentsList (`name`, `last_name`)
values ('Gregg', 'Gregg');
insert into StudentsList (`name`, `last_name`)
values ('Gregoria', 'Gregoria');
insert into StudentsList (`name`, `last_name`)
values ('Gregorio', 'Gregorio');
insert into StudentsList (`name`, `last_name`)
values ('Gregory', 'Gregory');
insert into StudentsList (`name`, `last_name`)
values ('Greta', 'Greta');
insert into StudentsList (`name`, `last_name`)
values ('Gretchen', 'Gretchen');
insert into StudentsList (`name`, `last_name`)
values ('Gretta', 'Gretta');
insert into StudentsList (`name`, `last_name`)
values ('Gricelda', 'Gricelda');
insert into StudentsList (`name`, `last_name`)
values ('Grisel', 'Grisel');
insert into StudentsList (`name`, `last_name`)
values ('Griselda', 'Griselda');
insert into StudentsList (`name`, `last_name`)
values ('Grover', 'Grover');
insert into StudentsList (`name`, `last_name`)
values ('Guadalupe', 'Guadalupe');
insert into StudentsList (`name`, `last_name`)
values ('Gudrun', 'Gudrun');
insert into StudentsList (`name`, `last_name`)
values ('Guillermina', 'Guillermina');
insert into StudentsList (`name`, `last_name`)
values ('Guillermo', 'Guillermo');
insert into StudentsList (`name`, `last_name`)
values ('Gus', 'Gus');
insert into StudentsList (`name`, `last_name`)
values ('Gussie', 'Gussie');
insert into StudentsList (`name`, `last_name`)
values ('Gustavo', 'Gustavo');
insert into StudentsList (`name`, `last_name`)
values ('Guy', 'Guy');
insert into StudentsList (`name`, `last_name`)
values ('Gwen', 'Gwen');
insert into StudentsList (`name`, `last_name`)
values ('Gwenda', 'Gwenda');
insert into StudentsList (`name`, `last_name`)
values ('Gwendolyn', 'Gwendolyn');
insert into StudentsList (`name`, `last_name`)
values ('Gwenn', 'Gwenn');
insert into StudentsList (`name`, `last_name`)
values ('Gwyn', 'Gwyn');
insert into StudentsList (`name`, `last_name`)
values ('Gwyneth', 'Gwyneth');
insert into StudentsList (`name`, `last_name`)
values ('Ha', 'Ha');
insert into StudentsList (`name`, `last_name`)
values ('Hae', 'Hae');
insert into StudentsList (`name`, `last_name`)
values ('Hai', 'Hai');
insert into StudentsList (`name`, `last_name`)
values ('Hailey', 'Hailey');
insert into StudentsList (`name`, `last_name`)
values ('Hal', 'Hal');
insert into StudentsList (`name`, `last_name`)
values ('Haley', 'Haley');
insert into StudentsList (`name`, `last_name`)
values ('Halina', 'Halina');
insert into StudentsList (`name`, `last_name`)
values ('Halley', 'Halley');
insert into StudentsList (`name`, `last_name`)
values ('Hallie', 'Hallie');
insert into StudentsList (`name`, `last_name`)
values ('Han', 'Han');
insert into StudentsList (`name`, `last_name`)
values ('Hana', 'Hana');
insert into StudentsList (`name`, `last_name`)
values ('Hang', 'Hang');
insert into StudentsList (`name`, `last_name`)
values ('Hanh', 'Hanh');
insert into StudentsList (`name`, `last_name`)
values ('Hank', 'Hank');
insert into StudentsList (`name`, `last_name`)
values ('Hanna', 'Hanna');
insert into StudentsList (`name`, `last_name`)
values ('Hannah', 'Hannah');
insert into StudentsList (`name`, `last_name`)
values ('Hannelore', 'Hannelore');
insert into StudentsList (`name`, `last_name`)
values ('Hans', 'Hans');
insert into StudentsList (`name`, `last_name`)
values ('Harlan', 'Harlan');
insert into StudentsList (`name`, `last_name`)
values ('Harland', 'Harland');
insert into StudentsList (`name`, `last_name`)
values ('Harley', 'Harley');
insert into StudentsList (`name`, `last_name`)
values ('Harmony', 'Harmony');
insert into StudentsList (`name`, `last_name`)
values ('Harold', 'Harold');
insert into StudentsList (`name`, `last_name`)
values ('Harriet', 'Harriet');
insert into StudentsList (`name`, `last_name`)
values ('Harriett', 'Harriett');
insert into StudentsList (`name`, `last_name`)
values ('Harriette', 'Harriette');
insert into StudentsList (`name`, `last_name`)
values ('Harris', 'Harris');
insert into StudentsList (`name`, `last_name`)
values ('Harrison', 'Harrison');
insert into StudentsList (`name`, `last_name`)
values ('Harry', 'Harry');
insert into StudentsList (`name`, `last_name`)
values ('Harvey', 'Harvey');
insert into StudentsList (`name`, `last_name`)
values ('Hassan', 'Hassan');
insert into StudentsList (`name`, `last_name`)
values ('Hassie', 'Hassie');
insert into StudentsList (`name`, `last_name`)
values ('Hattie', 'Hattie');
insert into StudentsList (`name`, `last_name`)
values ('Haydee', 'Haydee');
insert into StudentsList (`name`, `last_name`)
values ('Hayden', 'Hayden');
insert into StudentsList (`name`, `last_name`)
values ('Hayley', 'Hayley');
insert into StudentsList (`name`, `last_name`)
values ('Haywood', 'Haywood');
insert into StudentsList (`name`, `last_name`)
values ('Hazel', 'Hazel');
insert into StudentsList (`name`, `last_name`)
values ('Heath', 'Heath');
insert into StudentsList (`name`, `last_name`)
values ('Heather', 'Heather');
insert into StudentsList (`name`, `last_name`)
values ('Hector', 'Hector');
insert into StudentsList (`name`, `last_name`)
values ('Hedwig', 'Hedwig');
insert into StudentsList (`name`, `last_name`)
values ('Hedy', 'Hedy');
insert into StudentsList (`name`, `last_name`)
values ('Hee', 'Hee');
insert into StudentsList (`name`, `last_name`)
values ('Heide', 'Heide');
insert into StudentsList (`name`, `last_name`)
values ('Heidi', 'Heidi');
insert into StudentsList (`name`, `last_name`)
values ('Heidy', 'Heidy');
insert into StudentsList (`name`, `last_name`)
values ('Heike', 'Heike');
insert into StudentsList (`name`, `last_name`)
values ('Helaine', 'Helaine');
insert into StudentsList (`name`, `last_name`)
values ('Helen', 'Helen');
insert into StudentsList (`name`, `last_name`)
values ('Helena', 'Helena');
insert into StudentsList (`name`, `last_name`)
values ('Helene', 'Helene');
insert into StudentsList (`name`, `last_name`)
values ('Helga', 'Helga');
insert into StudentsList (`name`, `last_name`)
values ('Hellen', 'Hellen');
insert into StudentsList (`name`, `last_name`)
values ('Henrietta', 'Henrietta');
insert into StudentsList (`name`, `last_name`)
values ('Henriette', 'Henriette');
insert into StudentsList (`name`, `last_name`)
values ('Henry', 'Henry');
insert into StudentsList (`name`, `last_name`)
values ('Herb', 'Herb');
insert into StudentsList (`name`, `last_name`)
values ('Herbert', 'Herbert');
insert into StudentsList (`name`, `last_name`)
values ('Heriberto', 'Heriberto');
insert into StudentsList (`name`, `last_name`)
values ('Herlinda', 'Herlinda');
insert into StudentsList (`name`, `last_name`)
values ('Herma', 'Herma');
insert into StudentsList (`name`, `last_name`)
values ('Herman', 'Herman');
insert into StudentsList (`name`, `last_name`)
values ('Hermelinda', 'Hermelinda');
insert into StudentsList (`name`, `last_name`)
values ('Hermila', 'Hermila');
insert into StudentsList (`name`, `last_name`)
values ('Hermina', 'Hermina');
insert into StudentsList (`name`, `last_name`)
values ('Hermine', 'Hermine');
insert into StudentsList (`name`, `last_name`)
values ('Herminia', 'Herminia');
insert into StudentsList (`name`, `last_name`)
values ('Herschel', 'Herschel');
insert into StudentsList (`name`, `last_name`)
values ('Hershel', 'Hershel');
insert into StudentsList (`name`, `last_name`)
values ('Herta', 'Herta');
insert into StudentsList (`name`, `last_name`)
values ('Hertha', 'Hertha');
insert into StudentsList (`name`, `last_name`)
values ('Hester', 'Hester');
insert into StudentsList (`name`, `last_name`)
values ('Hettie', 'Hettie');
insert into StudentsList (`name`, `last_name`)
values ('Hiedi', 'Hiedi');
insert into StudentsList (`name`, `last_name`)
values ('Hien', 'Hien');
insert into StudentsList (`name`, `last_name`)
values ('Hilaria', 'Hilaria');
insert into StudentsList (`name`, `last_name`)
values ('Hilario', 'Hilario');
insert into StudentsList (`name`, `last_name`)
values ('Hilary', 'Hilary');
insert into StudentsList (`name`, `last_name`)
values ('Hilda', 'Hilda');
insert into StudentsList (`name`, `last_name`)
values ('Hilde', 'Hilde');
insert into StudentsList (`name`, `last_name`)
values ('Hildegard', 'Hildegard');
insert into StudentsList (`name`, `last_name`)
values ('Hildegarde', 'Hildegarde');
insert into StudentsList (`name`, `last_name`)
values ('Hildred', 'Hildred');
insert into StudentsList (`name`, `last_name`)
values ('Hillary', 'Hillary');
insert into StudentsList (`name`, `last_name`)
values ('Hilma', 'Hilma');
insert into StudentsList (`name`, `last_name`)
values ('Hilton', 'Hilton');
insert into StudentsList (`name`, `last_name`)
values ('Hipolito', 'Hipolito');
insert into StudentsList (`name`, `last_name`)
values ('Hiram', 'Hiram');
insert into StudentsList (`name`, `last_name`)
values ('Hiroko', 'Hiroko');
insert into StudentsList (`name`, `last_name`)
values ('Hisako', 'Hisako');
insert into StudentsList (`name`, `last_name`)
values ('Hoa', 'Hoa');
insert into StudentsList (`name`, `last_name`)
values ('Hobert', 'Hobert');
insert into StudentsList (`name`, `last_name`)
values ('Holley', 'Holley');
insert into StudentsList (`name`, `last_name`)
values ('Holli', 'Holli');
insert into StudentsList (`name`, `last_name`)
values ('Hollie', 'Hollie');
insert into StudentsList (`name`, `last_name`)
values ('Hollis', 'Hollis');
insert into StudentsList (`name`, `last_name`)
values ('Holly', 'Holly');
insert into StudentsList (`name`, `last_name`)
values ('Homer', 'Homer');
insert into StudentsList (`name`, `last_name`)
values ('Honey', 'Honey');
insert into StudentsList (`name`, `last_name`)
values ('Hong', 'Hong');
insert into StudentsList (`name`, `last_name`)
values ('Hope', 'Hope');
insert into StudentsList (`name`, `last_name`)
values ('Horace', 'Horace');
insert into StudentsList (`name`, `last_name`)
values ('Horacio', 'Horacio');
insert into StudentsList (`name`, `last_name`)
values ('Hortencia', 'Hortencia');
insert into StudentsList (`name`, `last_name`)
values ('Hortense', 'Hortense');
insert into StudentsList (`name`, `last_name`)
values ('Hortensia', 'Hortensia');
insert into StudentsList (`name`, `last_name`)
values ('Hosea', 'Hosea');
insert into StudentsList (`name`, `last_name`)
values ('Houston', 'Houston');
insert into StudentsList (`name`, `last_name`)
values ('Howard', 'Howard');
insert into StudentsList (`name`, `last_name`)
values ('Hoyt', 'Hoyt');
insert into StudentsList (`name`, `last_name`)
values ('Hsiu', 'Hsiu');
insert into StudentsList (`name`, `last_name`)
values ('Hubert', 'Hubert');
insert into StudentsList (`name`, `last_name`)
values ('Hue', 'Hue');
insert into StudentsList (`name`, `last_name`)
values ('Huey', 'Huey');
insert into StudentsList (`name`, `last_name`)
values ('Hugh', 'Hugh');
insert into StudentsList (`name`, `last_name`)
values ('Hugo', 'Hugo');
insert into StudentsList (`name`, `last_name`)
values ('Hui', 'Hui');
insert into StudentsList (`name`, `last_name`)
values ('Hulda', 'Hulda');
insert into StudentsList (`name`, `last_name`)
values ('Humberto', 'Humberto');
insert into StudentsList (`name`, `last_name`)
values ('Hung', 'Hung');
insert into StudentsList (`name`, `last_name`)
values ('Hunter', 'Hunter');
insert into StudentsList (`name`, `last_name`)
values ('Huong', 'Huong');
insert into StudentsList (`name`, `last_name`)
values ('Hwa', 'Hwa');
insert into StudentsList (`name`, `last_name`)
values ('Hyacinth', 'Hyacinth');
insert into StudentsList (`name`, `last_name`)
values ('Hye', 'Hye');
insert into StudentsList (`name`, `last_name`)
values ('Hyman', 'Hyman');
insert into StudentsList (`name`, `last_name`)
values ('Hyo', 'Hyo');
insert into StudentsList (`name`, `last_name`)
values ('Hyon', 'Hyon');
insert into StudentsList (`name`, `last_name`)
values ('Hyun', 'Hyun');
insert into StudentsList (`name`, `last_name`)
values ('Ian', 'Ian');
insert into StudentsList (`name`, `last_name`)
values ('Ida', 'Ida');
insert into StudentsList (`name`, `last_name`)
values ('Idalia', 'Idalia');
insert into StudentsList (`name`, `last_name`)
values ('Idell', 'Idell');
insert into StudentsList (`name`, `last_name`)
values ('Idella', 'Idella');
insert into StudentsList (`name`, `last_name`)
values ('Iesha', 'Iesha');
insert into StudentsList (`name`, `last_name`)
values ('Ignacia', 'Ignacia');
insert into StudentsList (`name`, `last_name`)
values ('Ignacio', 'Ignacio');
insert into StudentsList (`name`, `last_name`)
values ('Ike', 'Ike');
insert into StudentsList (`name`, `last_name`)
values ('Ila', 'Ila');
insert into StudentsList (`name`, `last_name`)
values ('Ilana', 'Ilana');
insert into StudentsList (`name`, `last_name`)
values ('Ilda', 'Ilda');
insert into StudentsList (`name`, `last_name`)
values ('Ileana', 'Ileana');
insert into StudentsList (`name`, `last_name`)
values ('Ileen', 'Ileen');
insert into StudentsList (`name`, `last_name`)
values ('Ilene', 'Ilene');
insert into StudentsList (`name`, `last_name`)
values ('Iliana', 'Iliana');
insert into StudentsList (`name`, `last_name`)
values ('Illa', 'Illa');
insert into StudentsList (`name`, `last_name`)
values ('Ilona', 'Ilona');
insert into StudentsList (`name`, `last_name`)
values ('Ilse', 'Ilse');
insert into StudentsList (`name`, `last_name`)
values ('Iluminada', 'Iluminada');
insert into StudentsList (`name`, `last_name`)
values ('Ima', 'Ima');
insert into StudentsList (`name`, `last_name`)
values ('Imelda', 'Imelda');
insert into StudentsList (`name`, `last_name`)
values ('Imogene', 'Imogene');
insert into StudentsList (`name`, `last_name`)
values ('In', 'In');
insert into StudentsList (`name`, `last_name`)
values ('Ina', 'Ina');
insert into StudentsList (`name`, `last_name`)
values ('India', 'India');
insert into StudentsList (`name`, `last_name`)
values ('Indira', 'Indira');
insert into StudentsList (`name`, `last_name`)
values ('Inell', 'Inell');
insert into StudentsList (`name`, `last_name`)
values ('Ines', 'Ines');
insert into StudentsList (`name`, `last_name`)
values ('Inez', 'Inez');
insert into StudentsList (`name`, `last_name`)
values ('Inga', 'Inga');
insert into StudentsList (`name`, `last_name`)
values ('Inge', 'Inge');
insert into StudentsList (`name`, `last_name`)
values ('Ingeborg', 'Ingeborg');
insert into StudentsList (`name`, `last_name`)
values ('Inger', 'Inger');
insert into StudentsList (`name`, `last_name`)
values ('Ingrid', 'Ingrid');
insert into StudentsList (`name`, `last_name`)
values ('Inocencia', 'Inocencia');
insert into StudentsList (`name`, `last_name`)
values ('Iola', 'Iola');
insert into StudentsList (`name`, `last_name`)
values ('Iona', 'Iona');
insert into StudentsList (`name`, `last_name`)
values ('Ione', 'Ione');
insert into StudentsList (`name`, `last_name`)
values ('Ira', 'Ira');
insert into StudentsList (`name`, `last_name`)
values ('Iraida', 'Iraida');
insert into StudentsList (`name`, `last_name`)
values ('Irena', 'Irena');
insert into StudentsList (`name`, `last_name`)
values ('Irene', 'Irene');
insert into StudentsList (`name`, `last_name`)
values ('Irina', 'Irina');
insert into StudentsList (`name`, `last_name`)
values ('Iris', 'Iris');
insert into StudentsList (`name`, `last_name`)
values ('Irish', 'Irish');
insert into StudentsList (`name`, `last_name`)
values ('Irma', 'Irma');
insert into StudentsList (`name`, `last_name`)
values ('Irmgard', 'Irmgard');
insert into StudentsList (`name`, `last_name`)
values ('Irvin', 'Irvin');
insert into StudentsList (`name`, `last_name`)
values ('Irving', 'Irving');
insert into StudentsList (`name`, `last_name`)
values ('Irwin', 'Irwin');
insert into StudentsList (`name`, `last_name`)
values ('Isa', 'Isa');
insert into StudentsList (`name`, `last_name`)
values ('Isaac', 'Isaac');
insert into StudentsList (`name`, `last_name`)
values ('Isabel', 'Isabel');
insert into StudentsList (`name`, `last_name`)
values ('Isabell', 'Isabell');
insert into StudentsList (`name`, `last_name`)
values ('Isabella', 'Isabella');
insert into StudentsList (`name`, `last_name`)
values ('Isabelle', 'Isabelle');
insert into StudentsList (`name`, `last_name`)
values ('Isadora', 'Isadora');
insert into StudentsList (`name`, `last_name`)
values ('Isaiah', 'Isaiah');
insert into StudentsList (`name`, `last_name`)
values ('Isaias', 'Isaias');
insert into StudentsList (`name`, `last_name`)
values ('Isaura', 'Isaura');
insert into StudentsList (`name`, `last_name`)
values ('Isela', 'Isela');
insert into StudentsList (`name`, `last_name`)
values ('Isiah', 'Isiah');
insert into StudentsList (`name`, `last_name`)
values ('Isidra', 'Isidra');
insert into StudentsList (`name`, `last_name`)
values ('Isidro', 'Isidro');
insert into StudentsList (`name`, `last_name`)
values ('Isis', 'Isis');
insert into StudentsList (`name`, `last_name`)
values ('Ismael', 'Ismael');
insert into StudentsList (`name`, `last_name`)
values ('Isobel', 'Isobel');
insert into StudentsList (`name`, `last_name`)
values ('Israel', 'Israel');
insert into StudentsList (`name`, `last_name`)
values ('Isreal', 'Isreal');
insert into StudentsList (`name`, `last_name`)
values ('Issac', 'Issac');
insert into StudentsList (`name`, `last_name`)
values ('Iva', 'Iva');
insert into StudentsList (`name`, `last_name`)
values ('Ivan', 'Ivan');
insert into StudentsList (`name`, `last_name`)
values ('Ivana', 'Ivana');
insert into StudentsList (`name`, `last_name`)
values ('Ivelisse', 'Ivelisse');
insert into StudentsList (`name`, `last_name`)
values ('Ivette', 'Ivette');
insert into StudentsList (`name`, `last_name`)
values ('Ivey', 'Ivey');
insert into StudentsList (`name`, `last_name`)
values ('Ivonne', 'Ivonne');
insert into StudentsList (`name`, `last_name`)
values ('Ivory', 'Ivory');
insert into StudentsList (`name`, `last_name`)
values ('Ivy', 'Ivy');
insert into StudentsList (`name`, `last_name`)
values ('Izetta', 'Izetta');
insert into StudentsList (`name`, `last_name`)
values ('Izola', 'Izola');
insert into StudentsList (`name`, `last_name`)
values ('Ja', 'Ja');
insert into StudentsList (`name`, `last_name`)
values ('Jacalyn', 'Jacalyn');
insert into StudentsList (`name`, `last_name`)
values ('Jacelyn', 'Jacelyn');
insert into StudentsList (`name`, `last_name`)
values ('Jacinda', 'Jacinda');
insert into StudentsList (`name`, `last_name`)
values ('Jacinta', 'Jacinta');
insert into StudentsList (`name`, `last_name`)
values ('Jacinto', 'Jacinto');
insert into StudentsList (`name`, `last_name`)
values ('Jack', 'Jack');
insert into StudentsList (`name`, `last_name`)
values ('Jackeline', 'Jackeline');
insert into StudentsList (`name`, `last_name`)
values ('Jackelyn', 'Jackelyn');
insert into StudentsList (`name`, `last_name`)
values ('Jacki', 'Jacki');
insert into StudentsList (`name`, `last_name`)
values ('Jackie', 'Jackie');
insert into StudentsList (`name`, `last_name`)
values ('Jacklyn', 'Jacklyn');
insert into StudentsList (`name`, `last_name`)
values ('Jackqueline', 'Jackqueline');
insert into StudentsList (`name`, `last_name`)
values ('Jackson', 'Jackson');
insert into StudentsList (`name`, `last_name`)
values ('Jaclyn', 'Jaclyn');
insert into StudentsList (`name`, `last_name`)
values ('Jacob', 'Jacob');
insert into StudentsList (`name`, `last_name`)
values ('Jacqualine', 'Jacqualine');
insert into StudentsList (`name`, `last_name`)
values ('Jacque', 'Jacque');
insert into StudentsList (`name`, `last_name`)
values ('Jacquelin', 'Jacquelin');
insert into StudentsList (`name`, `last_name`)
values ('Jacqueline', 'Jacqueline');
insert into StudentsList (`name`, `last_name`)
values ('Jacquelyn', 'Jacquelyn');
insert into StudentsList (`name`, `last_name`)
values ('Jacquelyne', 'Jacquelyne');
insert into StudentsList (`name`, `last_name`)
values ('Jacquelynn', 'Jacquelynn');
insert into StudentsList (`name`, `last_name`)
values ('Jacques', 'Jacques');
insert into StudentsList (`name`, `last_name`)
values ('Jacquetta', 'Jacquetta');
insert into StudentsList (`name`, `last_name`)
values ('Jacqui', 'Jacqui');
insert into StudentsList (`name`, `last_name`)
values ('Jacquie', 'Jacquie');
insert into StudentsList (`name`, `last_name`)
values ('Jacquiline', 'Jacquiline');
insert into StudentsList (`name`, `last_name`)
values ('Jacquline', 'Jacquline');
insert into StudentsList (`name`, `last_name`)
values ('Jacqulyn', 'Jacqulyn');
insert into StudentsList (`name`, `last_name`)
values ('Jada', 'Jada');
insert into StudentsList (`name`, `last_name`)
values ('Jade', 'Jade');
insert into StudentsList (`name`, `last_name`)
values ('Jadwiga', 'Jadwiga');
insert into StudentsList (`name`, `last_name`)
values ('Jae', 'Jae');
insert into StudentsList (`name`, `last_name`)
values ('Jaime', 'Jaime');
insert into StudentsList (`name`, `last_name`)
values ('Jaimee', 'Jaimee');
insert into StudentsList (`name`, `last_name`)
values ('Jaimie', 'Jaimie');
insert into StudentsList (`name`, `last_name`)
values ('Jake', 'Jake');
insert into StudentsList (`name`, `last_name`)
values ('Jaleesa', 'Jaleesa');
insert into StudentsList (`name`, `last_name`)
values ('Jalisa', 'Jalisa');
insert into StudentsList (`name`, `last_name`)
values ('Jama', 'Jama');
insert into StudentsList (`name`, `last_name`)
values ('Jamaal', 'Jamaal');
insert into StudentsList (`name`, `last_name`)
values ('Jamal', 'Jamal');
insert into StudentsList (`name`, `last_name`)
values ('Jamar', 'Jamar');
insert into StudentsList (`name`, `last_name`)
values ('Jame', 'Jame');
insert into StudentsList (`name`, `last_name`)
values ('Jamee', 'Jamee');
insert into StudentsList (`name`, `last_name`)
values ('Jamel', 'Jamel');
insert into StudentsList (`name`, `last_name`)
values ('James', 'James');
insert into StudentsList (`name`, `last_name`)
values ('Jamey', 'Jamey');
insert into StudentsList (`name`, `last_name`)
values ('Jami', 'Jami');
insert into StudentsList (`name`, `last_name`)
values ('Jamie', 'Jamie');
insert into StudentsList (`name`, `last_name`)
values ('Jamika', 'Jamika');
insert into StudentsList (`name`, `last_name`)
values ('Jamila', 'Jamila');
insert into StudentsList (`name`, `last_name`)
values ('Jamison', 'Jamison');
insert into StudentsList (`name`, `last_name`)
values ('Jammie', 'Jammie');
insert into StudentsList (`name`, `last_name`)
values ('Jan', 'Jan');
insert into StudentsList (`name`, `last_name`)
values ('Jana', 'Jana');
insert into StudentsList (`name`, `last_name`)
values ('Janae', 'Janae');
insert into StudentsList (`name`, `last_name`)
values ('Janay', 'Janay');
insert into StudentsList (`name`, `last_name`)
values ('Jane', 'Jane');
insert into StudentsList (`name`, `last_name`)
values ('Janean', 'Janean');
insert into StudentsList (`name`, `last_name`)
values ('Janee', 'Janee');
insert into StudentsList (`name`, `last_name`)
values ('Janeen', 'Janeen');
insert into StudentsList (`name`, `last_name`)
values ('Janel', 'Janel');
insert into StudentsList (`name`, `last_name`)
values ('Janell', 'Janell');
insert into StudentsList (`name`, `last_name`)
values ('Janella', 'Janella');
insert into StudentsList (`name`, `last_name`)
values ('Janelle', 'Janelle');
insert into StudentsList (`name`, `last_name`)
values ('Janene', 'Janene');
insert into StudentsList (`name`, `last_name`)
values ('Janessa', 'Janessa');
insert into StudentsList (`name`, `last_name`)
values ('Janet', 'Janet');
insert into StudentsList (`name`, `last_name`)
values ('Janeth', 'Janeth');
insert into StudentsList (`name`, `last_name`)
values ('Janett', 'Janett');
insert into StudentsList (`name`, `last_name`)
values ('Janetta', 'Janetta');
insert into StudentsList (`name`, `last_name`)
values ('Janette', 'Janette');
insert into StudentsList (`name`, `last_name`)
values ('Janey', 'Janey');
insert into StudentsList (`name`, `last_name`)
values ('Jani', 'Jani');
insert into StudentsList (`name`, `last_name`)
values ('Janice', 'Janice');
insert into StudentsList (`name`, `last_name`)
values ('Janie', 'Janie');
insert into StudentsList (`name`, `last_name`)
values ('Janiece', 'Janiece');
insert into StudentsList (`name`, `last_name`)
values ('Janina', 'Janina');
insert into StudentsList (`name`, `last_name`)
values ('Janine', 'Janine');
insert into StudentsList (`name`, `last_name`)
values ('Janis', 'Janis');
insert into StudentsList (`name`, `last_name`)
values ('Janise', 'Janise');
insert into StudentsList (`name`, `last_name`)
values ('Janita', 'Janita');
insert into StudentsList (`name`, `last_name`)
values ('Jann', 'Jann');
insert into StudentsList (`name`, `last_name`)
values ('Janna', 'Janna');
insert into StudentsList (`name`, `last_name`)
values ('Jannet', 'Jannet');
insert into StudentsList (`name`, `last_name`)
values ('Jannette', 'Jannette');
insert into StudentsList (`name`, `last_name`)
values ('Jannie', 'Jannie');
insert into StudentsList (`name`, `last_name`)
values ('January', 'January');
insert into StudentsList (`name`, `last_name`)
values ('Janyce', 'Janyce');
insert into StudentsList (`name`, `last_name`)
values ('Jaqueline', 'Jaqueline');
insert into StudentsList (`name`, `last_name`)
values ('Jaquelyn', 'Jaquelyn');
insert into StudentsList (`name`, `last_name`)
values ('Jared', 'Jared');
insert into StudentsList (`name`, `last_name`)
values ('Jarod', 'Jarod');
insert into StudentsList (`name`, `last_name`)
values ('Jarred', 'Jarred');
insert into StudentsList (`name`, `last_name`)
values ('Jarrett', 'Jarrett');
insert into StudentsList (`name`, `last_name`)
values ('Jarrod', 'Jarrod');
insert into StudentsList (`name`, `last_name`)
values ('Jarvis', 'Jarvis');
insert into StudentsList (`name`, `last_name`)
values ('Jasmin', 'Jasmin');
insert into StudentsList (`name`, `last_name`)
values ('Jasmine', 'Jasmine');
insert into StudentsList (`name`, `last_name`)
values ('Jason', 'Jason');
insert into StudentsList (`name`, `last_name`)
values ('Jasper', 'Jasper');
insert into StudentsList (`name`, `last_name`)
values ('Jaunita', 'Jaunita');
insert into StudentsList (`name`, `last_name`)
values ('Javier', 'Javier');
insert into StudentsList (`name`, `last_name`)
values ('Jay', 'Jay');
insert into StudentsList (`name`, `last_name`)
values ('Jaye', 'Jaye');
insert into StudentsList (`name`, `last_name`)
values ('Jayme', 'Jayme');
insert into StudentsList (`name`, `last_name`)
values ('Jaymie', 'Jaymie');
insert into StudentsList (`name`, `last_name`)
values ('Jayna', 'Jayna');
insert into StudentsList (`name`, `last_name`)
values ('Jayne', 'Jayne');
insert into StudentsList (`name`, `last_name`)
values ('Jayson', 'Jayson');
insert into StudentsList (`name`, `last_name`)
values ('Jazmin', 'Jazmin');
insert into StudentsList (`name`, `last_name`)
values ('Jazmine', 'Jazmine');
insert into StudentsList (`name`, `last_name`)
values ('Jc', 'Jc');
insert into StudentsList (`name`, `last_name`)
values ('Jean', 'Jean');
insert into StudentsList (`name`, `last_name`)
values ('Jeana', 'Jeana');
insert into StudentsList (`name`, `last_name`)
values ('Jeane', 'Jeane');
insert into StudentsList (`name`, `last_name`)
values ('Jeanelle', 'Jeanelle');
insert into StudentsList (`name`, `last_name`)
values ('Jeanene', 'Jeanene');
insert into StudentsList (`name`, `last_name`)
values ('Jeanett', 'Jeanett');
insert into StudentsList (`name`, `last_name`)
values ('Jeanetta', 'Jeanetta');
insert into StudentsList (`name`, `last_name`)
values ('Jeanette', 'Jeanette');
insert into StudentsList (`name`, `last_name`)
values ('Jeanice', 'Jeanice');
insert into StudentsList (`name`, `last_name`)
values ('Jeanie', 'Jeanie');
insert into StudentsList (`name`, `last_name`)
values ('Jeanine', 'Jeanine');
insert into StudentsList (`name`, `last_name`)
values ('Jeanmarie', 'Jeanmarie');
insert into StudentsList (`name`, `last_name`)
values ('Jeanna', 'Jeanna');
insert into StudentsList (`name`, `last_name`)
values ('Jeanne', 'Jeanne');
insert into StudentsList (`name`, `last_name`)
values ('Jeannetta', 'Jeannetta');
insert into StudentsList (`name`, `last_name`)
values ('Jeannette', 'Jeannette');
insert into StudentsList (`name`, `last_name`)
values ('Jeannie', 'Jeannie');
insert into StudentsList (`name`, `last_name`)
values ('Jeannine', 'Jeannine');
insert into StudentsList (`name`, `last_name`)
values ('Jed', 'Jed');
insert into StudentsList (`name`, `last_name`)
values ('Jeff', 'Jeff');
insert into StudentsList (`name`, `last_name`)
values ('Jefferey', 'Jefferey');
insert into StudentsList (`name`, `last_name`)
values ('Jefferson', 'Jefferson');
insert into StudentsList (`name`, `last_name`)
values ('Jeffery', 'Jeffery');
insert into StudentsList (`name`, `last_name`)
values ('Jeffie', 'Jeffie');
insert into StudentsList (`name`, `last_name`)
values ('Jeffrey', 'Jeffrey');
insert into StudentsList (`name`, `last_name`)
values ('Jeffry', 'Jeffry');
insert into StudentsList (`name`, `last_name`)
values ('Jen', 'Jen');
insert into StudentsList (`name`, `last_name`)
values ('Jena', 'Jena');
insert into StudentsList (`name`, `last_name`)
values ('Jenae', 'Jenae');
insert into StudentsList (`name`, `last_name`)
values ('Jene', 'Jene');
insert into StudentsList (`name`, `last_name`)
values ('Jenee', 'Jenee');
insert into StudentsList (`name`, `last_name`)
values ('Jenell', 'Jenell');
insert into StudentsList (`name`, `last_name`)
values ('Jenelle', 'Jenelle');
insert into StudentsList (`name`, `last_name`)
values ('Jenette', 'Jenette');
insert into StudentsList (`name`, `last_name`)
values ('Jeneva', 'Jeneva');
insert into StudentsList (`name`, `last_name`)
values ('Jeni', 'Jeni');
insert into StudentsList (`name`, `last_name`)
values ('Jenice', 'Jenice');
insert into StudentsList (`name`, `last_name`)
values ('Jenifer', 'Jenifer');
insert into StudentsList (`name`, `last_name`)
values ('Jeniffer', 'Jeniffer');
insert into StudentsList (`name`, `last_name`)
values ('Jenine', 'Jenine');
insert into StudentsList (`name`, `last_name`)
values ('Jenise', 'Jenise');
insert into StudentsList (`name`, `last_name`)
values ('Jenna', 'Jenna');
insert into StudentsList (`name`, `last_name`)
values ('Jennefer', 'Jennefer');
insert into StudentsList (`name`, `last_name`)
values ('Jennell', 'Jennell');
insert into StudentsList (`name`, `last_name`)
values ('Jennette', 'Jennette');
insert into StudentsList (`name`, `last_name`)
values ('Jenni', 'Jenni');
insert into StudentsList (`name`, `last_name`)
values ('Jennie', 'Jennie');
insert into StudentsList (`name`, `last_name`)
values ('Jennifer', 'Jennifer');
insert into StudentsList (`name`, `last_name`)
values ('Jenniffer', 'Jenniffer');
insert into StudentsList (`name`, `last_name`)
values ('Jennine', 'Jennine');
insert into StudentsList (`name`, `last_name`)
values ('Jenny', 'Jenny');
insert into StudentsList (`name`, `last_name`)
values ('Jerald', 'Jerald');
insert into StudentsList (`name`, `last_name`)
values ('Jeraldine', 'Jeraldine');
insert into StudentsList (`name`, `last_name`)
values ('Jeramy', 'Jeramy');
insert into StudentsList (`name`, `last_name`)
values ('Jere', 'Jere');
insert into StudentsList (`name`, `last_name`)
values ('Jeremiah', 'Jeremiah');
insert into StudentsList (`name`, `last_name`)
values ('Jeremy', 'Jeremy');
insert into StudentsList (`name`, `last_name`)
values ('Jeri', 'Jeri');
insert into StudentsList (`name`, `last_name`)
values ('Jerica', 'Jerica');
insert into StudentsList (`name`, `last_name`)
values ('Jerilyn', 'Jerilyn');
insert into StudentsList (`name`, `last_name`)
values ('Jerlene', 'Jerlene');
insert into StudentsList (`name`, `last_name`)
values ('Jermaine', 'Jermaine');
insert into StudentsList (`name`, `last_name`)
values ('Jerold', 'Jerold');
insert into StudentsList (`name`, `last_name`)
values ('Jerome', 'Jerome');
insert into StudentsList (`name`, `last_name`)
values ('Jeromy', 'Jeromy');
insert into StudentsList (`name`, `last_name`)
values ('Jerrell', 'Jerrell');
insert into StudentsList (`name`, `last_name`)
values ('Jerri', 'Jerri');
insert into StudentsList (`name`, `last_name`)
values ('Jerrica', 'Jerrica');
insert into StudentsList (`name`, `last_name`)
values ('Jerrie', 'Jerrie');
insert into StudentsList (`name`, `last_name`)
values ('Jerrod', 'Jerrod');
insert into StudentsList (`name`, `last_name`)
values ('Jerrold', 'Jerrold');
insert into StudentsList (`name`, `last_name`)
values ('Jerry', 'Jerry');
insert into StudentsList (`name`, `last_name`)
values ('Jesenia', 'Jesenia');
insert into StudentsList (`name`, `last_name`)
values ('Jesica', 'Jesica');
insert into StudentsList (`name`, `last_name`)
values ('Jess', 'Jess');
insert into StudentsList (`name`, `last_name`)
values ('Jesse', 'Jesse');
insert into StudentsList (`name`, `last_name`)
values ('Jessenia', 'Jessenia');
insert into StudentsList (`name`, `last_name`)
values ('Jessi', 'Jessi');
insert into StudentsList (`name`, `last_name`)
values ('Jessia', 'Jessia');
insert into StudentsList (`name`, `last_name`)
values ('Jessica', 'Jessica');
insert into StudentsList (`name`, `last_name`)
values ('Jessie', 'Jessie');
insert into StudentsList (`name`, `last_name`)
values ('Jessika', 'Jessika');
insert into StudentsList (`name`, `last_name`)
values ('Jestine', 'Jestine');
insert into StudentsList (`name`, `last_name`)
values ('Jesus', 'Jesus');
insert into StudentsList (`name`, `last_name`)
values ('Jesusa', 'Jesusa');
insert into StudentsList (`name`, `last_name`)
values ('Jesusita', 'Jesusita');
insert into StudentsList (`name`, `last_name`)
values ('Jetta', 'Jetta');
insert into StudentsList (`name`, `last_name`)
values ('Jettie', 'Jettie');
insert into StudentsList (`name`, `last_name`)
values ('Jewel', 'Jewel');
insert into StudentsList (`name`, `last_name`)
values ('Jewell', 'Jewell');
insert into StudentsList (`name`, `last_name`)
values ('Ji', 'Ji');
insert into StudentsList (`name`, `last_name`)
values ('Jill', 'Jill');
insert into StudentsList (`name`, `last_name`)
values ('Jillian', 'Jillian');
insert into StudentsList (`name`, `last_name`)
values ('Jim', 'Jim');
insert into StudentsList (`name`, `last_name`)
values ('Jimmie', 'Jimmie');
insert into StudentsList (`name`, `last_name`)
values ('Jimmy', 'Jimmy');
insert into StudentsList (`name`, `last_name`)
values ('Jin', 'Jin');
insert into StudentsList (`name`, `last_name`)
values ('Jina', 'Jina');
insert into StudentsList (`name`, `last_name`)
values ('Jinny', 'Jinny');
insert into StudentsList (`name`, `last_name`)
values ('Jo', 'Jo');
insert into StudentsList (`name`, `last_name`)
values ('Joan', 'Joan');
insert into StudentsList (`name`, `last_name`)
values ('Joana', 'Joana');
insert into StudentsList (`name`, `last_name`)
values ('Joane', 'Joane');
insert into StudentsList (`name`, `last_name`)
values ('Joanie', 'Joanie');
insert into StudentsList (`name`, `last_name`)
values ('Joann', 'Joann');
insert into StudentsList (`name`, `last_name`)
values ('Joanna', 'Joanna');
insert into StudentsList (`name`, `last_name`)
values ('Joanne', 'Joanne');
insert into StudentsList (`name`, `last_name`)
values ('Joannie', 'Joannie');
insert into StudentsList (`name`, `last_name`)
values ('Joaquin', 'Joaquin');
insert into StudentsList (`name`, `last_name`)
values ('Joaquina', 'Joaquina');
insert into StudentsList (`name`, `last_name`)
values ('Jocelyn', 'Jocelyn');
insert into StudentsList (`name`, `last_name`)
values ('Jodee', 'Jodee');
insert into StudentsList (`name`, `last_name`)
values ('Jodi', 'Jodi');
insert into StudentsList (`name`, `last_name`)
values ('Jodie', 'Jodie');
insert into StudentsList (`name`, `last_name`)
values ('Jody', 'Jody');
insert into StudentsList (`name`, `last_name`)
values ('Joe', 'Joe');
insert into StudentsList (`name`, `last_name`)
values ('Joeann', 'Joeann');
insert into StudentsList (`name`, `last_name`)
values ('Joel', 'Joel');
insert into StudentsList (`name`, `last_name`)
values ('Joella', 'Joella');
insert into StudentsList (`name`, `last_name`)
values ('Joelle', 'Joelle');
insert into StudentsList (`name`, `last_name`)
values ('Joellen', 'Joellen');
insert into StudentsList (`name`, `last_name`)
values ('Joesph', 'Joesph');
insert into StudentsList (`name`, `last_name`)
values ('Joetta', 'Joetta');
insert into StudentsList (`name`, `last_name`)
values ('Joette', 'Joette');
insert into StudentsList (`name`, `last_name`)
values ('Joey', 'Joey');
insert into StudentsList (`name`, `last_name`)
values ('Johana', 'Johana');
insert into StudentsList (`name`, `last_name`)
values ('Johanna', 'Johanna');
insert into StudentsList (`name`, `last_name`)
values ('Johanne', 'Johanne');
insert into StudentsList (`name`, `last_name`)
values ('John', 'John');
insert into StudentsList (`name`, `last_name`)
values ('Johna', 'Johna');
insert into StudentsList (`name`, `last_name`)
values ('Johnathan', 'Johnathan');
insert into StudentsList (`name`, `last_name`)
values ('Johnathon', 'Johnathon');
insert into StudentsList (`name`, `last_name`)
values ('Johnetta', 'Johnetta');
insert into StudentsList (`name`, `last_name`)
values ('Johnette', 'Johnette');
insert into StudentsList (`name`, `last_name`)
values ('Johnie', 'Johnie');
insert into StudentsList (`name`, `last_name`)
values ('Johnna', 'Johnna');
insert into StudentsList (`name`, `last_name`)
values ('Johnnie', 'Johnnie');
insert into StudentsList (`name`, `last_name`)
values ('Johnny', 'Johnny');
insert into StudentsList (`name`, `last_name`)
values ('Johnsie', 'Johnsie');
insert into StudentsList (`name`, `last_name`)
values ('Johnson', 'Johnson');
insert into StudentsList (`name`, `last_name`)
values ('Joi', 'Joi');
insert into StudentsList (`name`, `last_name`)
values ('Joie', 'Joie');
insert into StudentsList (`name`, `last_name`)
values ('Jolanda', 'Jolanda');
insert into StudentsList (`name`, `last_name`)
values ('Joleen', 'Joleen');
insert into StudentsList (`name`, `last_name`)
values ('Jolene', 'Jolene');
insert into StudentsList (`name`, `last_name`)
values ('Jolie', 'Jolie');
insert into StudentsList (`name`, `last_name`)
values ('Joline', 'Joline');
insert into StudentsList (`name`, `last_name`)
values ('Jolyn', 'Jolyn');
insert into StudentsList (`name`, `last_name`)
values ('Jolynn', 'Jolynn');
insert into StudentsList (`name`, `last_name`)
values ('Jon', 'Jon');
insert into StudentsList (`name`, `last_name`)
values ('Jona', 'Jona');
insert into StudentsList (`name`, `last_name`)
values ('Jonah', 'Jonah');
insert into StudentsList (`name`, `last_name`)
values ('Jonas', 'Jonas');
insert into StudentsList (`name`, `last_name`)
values ('Jonathan', 'Jonathan');
insert into StudentsList (`name`, `last_name`)
values ('Jonathon', 'Jonathon');
insert into StudentsList (`name`, `last_name`)
values ('Jone', 'Jone');
insert into StudentsList (`name`, `last_name`)
values ('Jonell', 'Jonell');
insert into StudentsList (`name`, `last_name`)
values ('Jonelle', 'Jonelle');
insert into StudentsList (`name`, `last_name`)
values ('Jong', 'Jong');
insert into StudentsList (`name`, `last_name`)
values ('Joni', 'Joni');
insert into StudentsList (`name`, `last_name`)
values ('Jonie', 'Jonie');
insert into StudentsList (`name`, `last_name`)
values ('Jonna', 'Jonna');
insert into StudentsList (`name`, `last_name`)
values ('Jonnie', 'Jonnie');
insert into StudentsList (`name`, `last_name`)
values ('Jordan', 'Jordan');
insert into StudentsList (`name`, `last_name`)
values ('Jordon', 'Jordon');
insert into StudentsList (`name`, `last_name`)
values ('Jorge', 'Jorge');
insert into StudentsList (`name`, `last_name`)
values ('Jose', 'Jose');
insert into StudentsList (`name`, `last_name`)
values ('Josef', 'Josef');
insert into StudentsList (`name`, `last_name`)
values ('Josefa', 'Josefa');
insert into StudentsList (`name`, `last_name`)
values ('Josefina', 'Josefina');
insert into StudentsList (`name`, `last_name`)
values ('Josefine', 'Josefine');
insert into StudentsList (`name`, `last_name`)
values ('Joselyn', 'Joselyn');
insert into StudentsList (`name`, `last_name`)
values ('Joseph', 'Joseph');
insert into StudentsList (`name`, `last_name`)
values ('Josephina', 'Josephina');
insert into StudentsList (`name`, `last_name`)
values ('Josephine', 'Josephine');
insert into StudentsList (`name`, `last_name`)
values ('Josette', 'Josette');
insert into StudentsList (`name`, `last_name`)
values ('Josh', 'Josh');
insert into StudentsList (`name`, `last_name`)
values ('Joshua', 'Joshua');
insert into StudentsList (`name`, `last_name`)
values ('Josiah', 'Josiah');
insert into StudentsList (`name`, `last_name`)
values ('Josie', 'Josie');
insert into StudentsList (`name`, `last_name`)
values ('Joslyn', 'Joslyn');
insert into StudentsList (`name`, `last_name`)
values ('Jospeh', 'Jospeh');
insert into StudentsList (`name`, `last_name`)
values ('Josphine', 'Josphine');
insert into StudentsList (`name`, `last_name`)
values ('Josue', 'Josue');
insert into StudentsList (`name`, `last_name`)
values ('Jovan', 'Jovan');
insert into StudentsList (`name`, `last_name`)
values ('Jovita', 'Jovita');
insert into StudentsList (`name`, `last_name`)
values ('Joy', 'Joy');
insert into StudentsList (`name`, `last_name`)
values ('Joya', 'Joya');
insert into StudentsList (`name`, `last_name`)
values ('Joyce', 'Joyce');
insert into StudentsList (`name`, `last_name`)
values ('Joycelyn', 'Joycelyn');
insert into StudentsList (`name`, `last_name`)
values ('Joye', 'Joye');
insert into StudentsList (`name`, `last_name`)
values ('Juan', 'Juan');
insert into StudentsList (`name`, `last_name`)
values ('Juana', 'Juana');
insert into StudentsList (`name`, `last_name`)
values ('Juanita', 'Juanita');
insert into StudentsList (`name`, `last_name`)
values ('Jude', 'Jude');
insert into StudentsList (`name`, `last_name`)
values ('Judi', 'Judi');
insert into StudentsList (`name`, `last_name`)
values ('Judie', 'Judie');
insert into StudentsList (`name`, `last_name`)
values ('Judith', 'Judith');
insert into StudentsList (`name`, `last_name`)
values ('Judson', 'Judson');
insert into StudentsList (`name`, `last_name`)
values ('Judy', 'Judy');
insert into StudentsList (`name`, `last_name`)
values ('Jule', 'Jule');
insert into StudentsList (`name`, `last_name`)
values ('Julee', 'Julee');
insert into StudentsList (`name`, `last_name`)
values ('Julene', 'Julene');
insert into StudentsList (`name`, `last_name`)
values ('Jules', 'Jules');
insert into StudentsList (`name`, `last_name`)
values ('Juli', 'Juli');
insert into StudentsList (`name`, `last_name`)
values ('Julia', 'Julia');
insert into StudentsList (`name`, `last_name`)
values ('Julian', 'Julian');
insert into StudentsList (`name`, `last_name`)
values ('Juliana', 'Juliana');
insert into StudentsList (`name`, `last_name`)
values ('Juliane', 'Juliane');
insert into StudentsList (`name`, `last_name`)
values ('Juliann', 'Juliann');
insert into StudentsList (`name`, `last_name`)
values ('Julianna', 'Julianna');
insert into StudentsList (`name`, `last_name`)
values ('Julianne', 'Julianne');
insert into StudentsList (`name`, `last_name`)
values ('Julie', 'Julie');
insert into StudentsList (`name`, `last_name`)
values ('Julieann', 'Julieann');
insert into StudentsList (`name`, `last_name`)
values ('Julienne', 'Julienne');
insert into StudentsList (`name`, `last_name`)
values ('Juliet', 'Juliet');
insert into StudentsList (`name`, `last_name`)
values ('Julieta', 'Julieta');
insert into StudentsList (`name`, `last_name`)
values ('Julietta', 'Julietta');
insert into StudentsList (`name`, `last_name`)
values ('Juliette', 'Juliette');
insert into StudentsList (`name`, `last_name`)
values ('Julio', 'Julio');
insert into StudentsList (`name`, `last_name`)
values ('Julissa', 'Julissa');
insert into StudentsList (`name`, `last_name`)
values ('Julius', 'Julius');
insert into StudentsList (`name`, `last_name`)
values ('June', 'June');
insert into StudentsList (`name`, `last_name`)
values ('Jung', 'Jung');
insert into StudentsList (`name`, `last_name`)
values ('Junie', 'Junie');
insert into StudentsList (`name`, `last_name`)
values ('Junior', 'Junior');
insert into StudentsList (`name`, `last_name`)
values ('Junita', 'Junita');
insert into StudentsList (`name`, `last_name`)
values ('Junko', 'Junko');
insert into StudentsList (`name`, `last_name`)
values ('Justa', 'Justa');
insert into StudentsList (`name`, `last_name`)
values ('Justin', 'Justin');
insert into StudentsList (`name`, `last_name`)
values ('Justina', 'Justina');
insert into StudentsList (`name`, `last_name`)
values ('Justine', 'Justine');
insert into StudentsList (`name`, `last_name`)
values ('Jutta', 'Jutta');
insert into StudentsList (`name`, `last_name`)
values ('Ka', 'Ka');
insert into StudentsList (`name`, `last_name`)
values ('Kacey', 'Kacey');
insert into StudentsList (`name`, `last_name`)
values ('Kaci', 'Kaci');
insert into StudentsList (`name`, `last_name`)
values ('Kacie', 'Kacie');
insert into StudentsList (`name`, `last_name`)
values ('Kacy', 'Kacy');
insert into StudentsList (`name`, `last_name`)
values ('Kai', 'Kai');
insert into StudentsList (`name`, `last_name`)
values ('Kaila', 'Kaila');
insert into StudentsList (`name`, `last_name`)
values ('Kaitlin', 'Kaitlin');
insert into StudentsList (`name`, `last_name`)
values ('Kaitlyn', 'Kaitlyn');
insert into StudentsList (`name`, `last_name`)
values ('Kala', 'Kala');
insert into StudentsList (`name`, `last_name`)
values ('Kaleigh', 'Kaleigh');
insert into StudentsList (`name`, `last_name`)
values ('Kaley', 'Kaley');
insert into StudentsList (`name`, `last_name`)
values ('Kali', 'Kali');
insert into StudentsList (`name`, `last_name`)
values ('Kallie', 'Kallie');
insert into StudentsList (`name`, `last_name`)
values ('Kalyn', 'Kalyn');
insert into StudentsList (`name`, `last_name`)
values ('Kam', 'Kam');
insert into StudentsList (`name`, `last_name`)
values ('Kamala', 'Kamala');
insert into StudentsList (`name`, `last_name`)
values ('Kami', 'Kami');
insert into StudentsList (`name`, `last_name`)
values ('Kamilah', 'Kamilah');
insert into StudentsList (`name`, `last_name`)
values ('Kandace', 'Kandace');
insert into StudentsList (`name`, `last_name`)
values ('Kandi', 'Kandi');
insert into StudentsList (`name`, `last_name`)
values ('Kandice', 'Kandice');
insert into StudentsList (`name`, `last_name`)
values ('Kandis', 'Kandis');
insert into StudentsList (`name`, `last_name`)
values ('Kandra', 'Kandra');
insert into StudentsList (`name`, `last_name`)
values ('Kandy', 'Kandy');
insert into StudentsList (`name`, `last_name`)
values ('Kanesha', 'Kanesha');
insert into StudentsList (`name`, `last_name`)
values ('Kanisha', 'Kanisha');
insert into StudentsList (`name`, `last_name`)
values ('Kara', 'Kara');
insert into StudentsList (`name`, `last_name`)
values ('Karan', 'Karan');
insert into StudentsList (`name`, `last_name`)
values ('Kareem', 'Kareem');
insert into StudentsList (`name`, `last_name`)
values ('Kareen', 'Kareen');
insert into StudentsList (`name`, `last_name`)
values ('Karen', 'Karen');
insert into StudentsList (`name`, `last_name`)
values ('Karena', 'Karena');
insert into StudentsList (`name`, `last_name`)
values ('Karey', 'Karey');
insert into StudentsList (`name`, `last_name`)
values ('Kari', 'Kari');
insert into StudentsList (`name`, `last_name`)
values ('Karie', 'Karie');
insert into StudentsList (`name`, `last_name`)
values ('Karima', 'Karima');
insert into StudentsList (`name`, `last_name`)
values ('Karin', 'Karin');
insert into StudentsList (`name`, `last_name`)
values ('Karina', 'Karina');
insert into StudentsList (`name`, `last_name`)
values ('Karine', 'Karine');
insert into StudentsList (`name`, `last_name`)
values ('Karisa', 'Karisa');
insert into StudentsList (`name`, `last_name`)
values ('Karissa', 'Karissa');
insert into StudentsList (`name`, `last_name`)
values ('Karl', 'Karl');
insert into StudentsList (`name`, `last_name`)
values ('Karla', 'Karla');
insert into StudentsList (`name`, `last_name`)
values ('Karleen', 'Karleen');
insert into StudentsList (`name`, `last_name`)
values ('Karlene', 'Karlene');
insert into StudentsList (`name`, `last_name`)
values ('Karly', 'Karly');
insert into StudentsList (`name`, `last_name`)
values ('Karlyn', 'Karlyn');
insert into StudentsList (`name`, `last_name`)
values ('Karma', 'Karma');
insert into StudentsList (`name`, `last_name`)
values ('Karmen', 'Karmen');
insert into StudentsList (`name`, `last_name`)
values ('Karol', 'Karol');
insert into StudentsList (`name`, `last_name`)
values ('Karole', 'Karole');
insert into StudentsList (`name`, `last_name`)
values ('Karoline', 'Karoline');
insert into StudentsList (`name`, `last_name`)
values ('Karolyn', 'Karolyn');
insert into StudentsList (`name`, `last_name`)
values ('Karon', 'Karon');
insert into StudentsList (`name`, `last_name`)
values ('Karren', 'Karren');
insert into StudentsList (`name`, `last_name`)
values ('Karri', 'Karri');
insert into StudentsList (`name`, `last_name`)
values ('Karrie', 'Karrie');
insert into StudentsList (`name`, `last_name`)
values ('Karry', 'Karry');
insert into StudentsList (`name`, `last_name`)
values ('Kary', 'Kary');
insert into StudentsList (`name`, `last_name`)
values ('Karyl', 'Karyl');
insert into StudentsList (`name`, `last_name`)
values ('Karyn', 'Karyn');
insert into StudentsList (`name`, `last_name`)
values ('Kasandra', 'Kasandra');
insert into StudentsList (`name`, `last_name`)
values ('Kasey', 'Kasey');
insert into StudentsList (`name`, `last_name`)
values ('Kasha', 'Kasha');
insert into StudentsList (`name`, `last_name`)
values ('Kasi', 'Kasi');
insert into StudentsList (`name`, `last_name`)
values ('Kasie', 'Kasie');
insert into StudentsList (`name`, `last_name`)
values ('Kassandra', 'Kassandra');
insert into StudentsList (`name`, `last_name`)
values ('Kassie', 'Kassie');
insert into StudentsList (`name`, `last_name`)
values ('Kate', 'Kate');
insert into StudentsList (`name`, `last_name`)
values ('Katelin', 'Katelin');
insert into StudentsList (`name`, `last_name`)
values ('Katelyn', 'Katelyn');
insert into StudentsList (`name`, `last_name`)
values ('Katelynn', 'Katelynn');
insert into StudentsList (`name`, `last_name`)
values ('Katerine', 'Katerine');
insert into StudentsList (`name`, `last_name`)
values ('Kathaleen', 'Kathaleen');
insert into StudentsList (`name`, `last_name`)
values ('Katharina', 'Katharina');
insert into StudentsList (`name`, `last_name`)
values ('Katharine', 'Katharine');
insert into StudentsList (`name`, `last_name`)
values ('Katharyn', 'Katharyn');
insert into StudentsList (`name`, `last_name`)
values ('Kathe', 'Kathe');
insert into StudentsList (`name`, `last_name`)
values ('Katheleen', 'Katheleen');
insert into StudentsList (`name`, `last_name`)
values ('Katherin', 'Katherin');
insert into StudentsList (`name`, `last_name`)
values ('Katherina', 'Katherina');
insert into StudentsList (`name`, `last_name`)
values ('Katherine', 'Katherine');
insert into StudentsList (`name`, `last_name`)
values ('Kathern', 'Kathern');
insert into StudentsList (`name`, `last_name`)
values ('Katheryn', 'Katheryn');
insert into StudentsList (`name`, `last_name`)
values ('Kathey', 'Kathey');
insert into StudentsList (`name`, `last_name`)
values ('Kathi', 'Kathi');
insert into StudentsList (`name`, `last_name`)
values ('Kathie', 'Kathie');
insert into StudentsList (`name`, `last_name`)
values ('Kathleen', 'Kathleen');
insert into StudentsList (`name`, `last_name`)
values ('Kathlene', 'Kathlene');
insert into StudentsList (`name`, `last_name`)
values ('Kathline', 'Kathline');
insert into StudentsList (`name`, `last_name`)
values ('Kathlyn', 'Kathlyn');
insert into StudentsList (`name`, `last_name`)
values ('Kathrin', 'Kathrin');
insert into StudentsList (`name`, `last_name`)
values ('Kathrine', 'Kathrine');
insert into StudentsList (`name`, `last_name`)
values ('Kathryn', 'Kathryn');
insert into StudentsList (`name`, `last_name`)
values ('Kathryne', 'Kathryne');
insert into StudentsList (`name`, `last_name`)
values ('Kathy', 'Kathy');
insert into StudentsList (`name`, `last_name`)
values ('Kathyrn', 'Kathyrn');
insert into StudentsList (`name`, `last_name`)
values ('Kati', 'Kati');
insert into StudentsList (`name`, `last_name`)
values ('Katia', 'Katia');
insert into StudentsList (`name`, `last_name`)
values ('Katie', 'Katie');
insert into StudentsList (`name`, `last_name`)
values ('Katina', 'Katina');
insert into StudentsList (`name`, `last_name`)
values ('Katlyn', 'Katlyn');
insert into StudentsList (`name`, `last_name`)
values ('Katrice', 'Katrice');
insert into StudentsList (`name`, `last_name`)
values ('Katrina', 'Katrina');
insert into StudentsList (`name`, `last_name`)
values ('Kattie', 'Kattie');
insert into StudentsList (`name`, `last_name`)
values ('Katy', 'Katy');
insert into StudentsList (`name`, `last_name`)
values ('Kay', 'Kay');
insert into StudentsList (`name`, `last_name`)
values ('Kayce', 'Kayce');
insert into StudentsList (`name`, `last_name`)
values ('Kaycee', 'Kaycee');
insert into StudentsList (`name`, `last_name`)
values ('Kaye', 'Kaye');
insert into StudentsList (`name`, `last_name`)
values ('Kayla', 'Kayla');
insert into StudentsList (`name`, `last_name`)
values ('Kaylee', 'Kaylee');
insert into StudentsList (`name`, `last_name`)
values ('Kayleen', 'Kayleen');
insert into StudentsList (`name`, `last_name`)
values ('Kayleigh', 'Kayleigh');
insert into StudentsList (`name`, `last_name`)
values ('Kaylene', 'Kaylene');
insert into StudentsList (`name`, `last_name`)
values ('Kazuko', 'Kazuko');
insert into StudentsList (`name`, `last_name`)
values ('Kecia', 'Kecia');
insert into StudentsList (`name`, `last_name`)
values ('Keeley', 'Keeley');
insert into StudentsList (`name`, `last_name`)
values ('Keely', 'Keely');
insert into StudentsList (`name`, `last_name`)
values ('Keena', 'Keena');
insert into StudentsList (`name`, `last_name`)
values ('Keenan', 'Keenan');
insert into StudentsList (`name`, `last_name`)
values ('Keesha', 'Keesha');
insert into StudentsList (`name`, `last_name`)
values ('Keiko', 'Keiko');
insert into StudentsList (`name`, `last_name`)
values ('Keila', 'Keila');
insert into StudentsList (`name`, `last_name`)
values ('Keira', 'Keira');
insert into StudentsList (`name`, `last_name`)
values ('Keisha', 'Keisha');
insert into StudentsList (`name`, `last_name`)
values ('Keith', 'Keith');
insert into StudentsList (`name`, `last_name`)
values ('Keitha', 'Keitha');
insert into StudentsList (`name`, `last_name`)
values ('Keli', 'Keli');
insert into StudentsList (`name`, `last_name`)
values ('Kelle', 'Kelle');
/* Insert students */
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (1, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (2, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (3, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (4, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (5, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (6, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (7, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (8, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (9, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (10, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (11, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (12, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (13, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (14, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (15, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (16, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (17, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (18, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (19, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (20, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (21, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (22, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (23, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (24, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (25, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (26, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (27, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (28, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (29, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (39, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (31, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (32, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (33, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (34, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (35, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (36, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (37, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (38, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (39, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (30, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (41, 1, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (42, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (43, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (44, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (45, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (46, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (47, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (48, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (49, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (50, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (51, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (52, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (53, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (54, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (55, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (56, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (57, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (58, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (59, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (60, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (61, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (62, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (63, 1, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (64, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (65, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (66, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (67, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (68, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (69, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (70, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (71, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (72, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (73, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (74, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (75, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (76, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (77, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (78, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (79, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (80, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (81, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (82, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (83, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (84, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (85, 1, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (86, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (87, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (88, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (89, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (90, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (91, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (92, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (93, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (94, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (95, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (96, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (97, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (98, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (99, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (100, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (101, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (102, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (103, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (104, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (105, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (106, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (107, 2, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (108, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (109, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (110, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (111, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (112, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (113, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (114, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (115, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (116, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (117, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (118, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (119, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (120, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (121, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (122, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (123, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (124, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (125, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (126, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (127, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (128, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (129, 2, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (130, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (131, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (132, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (133, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (134, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (135, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (136, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (137, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (138, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (139, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (140, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (141, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (142, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (143, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (144, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (145, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (146, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (147, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (148, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (149, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (150, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (151, 2, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (152, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (153, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (154, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (155, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (156, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (157, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (158, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (159, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (160, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (161, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (162, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (163, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (164, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (165, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (166, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (167, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (168, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (169, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (170, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (171, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (172, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (173, 2, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (174, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (175, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (176, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (177, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (178, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (179, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (180, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (181, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (182, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (183, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (184, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (185, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (186, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (187, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (188, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (189, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (190, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (191, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (192, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (193, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (194, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (195, 2, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (196, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (197, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (198, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (199, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (200, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (201, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (202, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (203, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (204, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (205, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (206, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (207, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (208, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (209, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (210, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (211, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (212, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (213, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (214, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (215, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (216, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (217, 3, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (218, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (219, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (210, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (221, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (222, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (223, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (224, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (225, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (226, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (227, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (228, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (229, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (220, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (231, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (232, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (233, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (234, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (235, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (236, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (237, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (238, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (239, 3, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (230, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (241, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (242, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (243, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (244, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (245, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (246, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (247, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (248, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (249, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (240, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (251, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (252, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (253, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (254, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (255, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (256, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (257, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (258, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (259, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (250, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (261, 3, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (262, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (263, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (264, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (265, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (266, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (267, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (268, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (269, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (260, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (271, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (272, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (273, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (274, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (275, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (276, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (277, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (278, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (279, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (280, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (281, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (282, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (283, 3, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (284, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (285, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (286, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (287, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (288, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (289, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (290, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (291, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (292, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (293, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (294, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (295, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (296, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (297, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (298, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (299, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (300, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (301, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (302, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (303, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (304, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (305, 3, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (306, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (307, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (308, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (309, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (310, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (311, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (312, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (313, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (314, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (315, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (316, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (317, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (318, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (319, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (320, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (321, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (322, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (323, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (324, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (325, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (326, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (327, 4, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (328, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (329, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (330, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (331, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (332, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (333, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (334, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (335, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (336, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (337, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (338, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (339, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (340, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (341, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (342, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (343, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (344, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (345, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (346, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (347, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (348, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (349, 4, 2);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (350, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (351, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (352, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (353, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (354, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (355, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (356, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (357, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (358, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (359, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (360, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (361, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (362, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (363, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (364, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (365, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (366, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (367, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (368, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (369, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (370, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (371, 4, 3);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (372, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (373, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (374, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (375, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (376, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (377, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (378, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (379, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (380, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (381, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (382, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (383, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (384, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (385, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (386, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (387, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (388, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (389, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (390, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (391, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (392, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (393, 4, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (394, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (395, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (396, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (397, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (398, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (399, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (400, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (401, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (402, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (403, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (404, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (405, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (406, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (407, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (408, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (409, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (410, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (411, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (412, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (413, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (414, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (415, 4, 5);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (416, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (417, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (418, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (419, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (420, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (421, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (422, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (423, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (424, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (425, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (426, 1, 4);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (427, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (428, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (429, 1, 1);
insert into `stu_class` (`stu_id`, `niv_scho`, `class`)
values (430, 1, 1);
