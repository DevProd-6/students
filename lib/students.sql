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
    `gender`    varchar(1),
    `module`    varchar(15)
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
    `design_moy`       varchar(13),
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
create table `notes_dv2`
(
    `stu_id`      int,
    `math_dv2`    double,
    `arabic_dv2`  double,
    `french_dv2`  double,
    `english_dv2` double,
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
    `design_cc`       double,
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
create table coef
(
    modul varchar(12),
    niv   int,
    coef  int
);

# Math coef
insert into coef
values ('math', 1, 2);
insert into coef
values ('math', 2, 3);
insert into coef
values ('math', 3, 3);
insert into coef
values ('math', 4, 4);
# Arabic coef
insert into coef
values ('arabic', 1, 2);
insert into coef
values ('arabic', 2, 3);
insert into coef
values ('arabic', 3, 3);
insert into coef
values ('arabic', 4, 5);
# French coef
insert into coef
values ('french', 1, 1);
insert into coef
values ('french', 2, 2);
insert into coef
values ('french', 3, 2);
insert into coef
values ('french', 4, 3);
# English coef
insert into coef
values ('english', 1, 1);
insert into coef
values ('english', 2, 1);
insert into coef
values ('english', 3, 1);
insert into coef
values ('english', 4, 2);
# Islamic coef
insert into coef
values ('islamic', 1, 1);
insert into coef
values ('islamic', 2, 1);
insert into coef
values ('islamic', 3, 1);
insert into coef
values ('islamic', 4, 2);
# Civil coef
insert into coef
values ('civil', 1, 1);
insert into coef
values ('civil', 2, 1);
insert into coef
values ('civil', 3, 1);
insert into coef
values ('civil', 4, 1);
# Geo_histo coef
insert into coef
values ('geo_histo', 1, 2);
insert into coef
values ('geo_histo', 2, 2);
insert into coef
values ('geo_histo', 3, 2);
insert into coef
values ('geo_histo', 4, 3);
# Sport coef
insert into coef
values ('sport', 1, 1);
insert into coef
values ('sport', 2, 1);
insert into coef
values ('sport', 3, 1);
insert into coef
values ('sport', 4, 1);
# Physics coef
insert into coef
values ('physics', 1, 1);
insert into coef
values ('physics', 2, 2);
insert into coef
values ('physics', 3, 2);
insert into coef
values ('physics', 4, 2);
# Science coef
insert into coef
values ('science', 1, 1);
insert into coef
values ('science', 2, 2);
insert into coef
values ('science', 3, 2);
insert into coef
values ('science', 4, 2);
# Informatique coef
insert into coef
values ('informatique', 1, 1);
insert into coef
values ('informatique', 2, 1);
insert into coef
values ('informatique', 3, 1);
insert into coef
values ('informatique', 4, 1);
# Music coef
insert into coef
values ('music', 1, 1);
insert into coef
values ('music', 2, 1);
insert into coef
values ('music', 3, 1);
insert into coef
values ('music', 4, 1);
# design coef
insert into coef
values ('design', 1, 1);
insert into coef
values ('design', 2, 1);
insert into coef
values ('design', 3, 1);
insert into coef
values ('design', 4, 1);
