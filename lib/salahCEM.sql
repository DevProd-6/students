--------------------------------------------------------
--  File created - Monday-January-17-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLASSE
--------------------------------------------------------

CREATE TABLE "SOFT"."CLASSE"
(
    "C_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "NAME" VARCHAR2(25 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table DIVISION
--------------------------------------------------------

CREATE TABLE "SOFT"."DIVISION"
(
    "D_ID"     NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "NAME"     VARCHAR2(25 BYTE),
    "C_ID"     NUMBER,
    "ACCURACY" NUMBER DEFAULT 0
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table EVALUATE
--------------------------------------------------------

CREATE TABLE "SOFT"."EVALUATE"
(
    "IV_ID"         NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "REMARK"        VARCHAR2(22 BYTE) DEFAULT 'weak',
    "TASK1"         NUMBER            DEFAULT 0,
    "TASK2"         NUMBER            DEFAULT 0,
    "EXAM"          NUMBER            DEFAULT 0,
    "EVALUATION"    NUMBER            DEFAULT 0,
    "AVERAGE"       NUMBER            DEFAULT 0,
    "RANKING"       NUMBER            DEFAULT 0,
    "RANKING_TOTAL" NUMBER            DEFAULT 0,
    "S_ID"          NUMBER
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table EVALUATE_MODULE
--------------------------------------------------------

CREATE TABLE "SOFT"."EVALUATE_MODULE"
(
    "EV_MO_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "M_ID"     NUMBER,
    "IV_ID"    NUMBER
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table MODULE
--------------------------------------------------------

CREATE TABLE "SOFT"."MODULE"
(
    "M_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "COIF" NUMBER DEFAULT 1,
    "C_ID" NUMBER,
    "NAME" VARCHAR2(25 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table PROF
--------------------------------------------------------

CREATE TABLE "SOFT"."PROF"
(
    "P_ID"   NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "NAME"   VARCHAR2(25 BYTE),
    "PRENOM" VARCHAR2(25 BYTE),
    "MODULE" VARCHAR2(25 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table PROF_INSCRIPTION
--------------------------------------------------------

CREATE TABLE "SOFT"."PROF_INSCRIPTION"
(
    "PR_IN" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "D_ID"  NUMBER,
    "P_ID"  NUMBER
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

CREATE TABLE "SOFT"."STUDENT"
(
    "S_ID"    NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE,
    "NAME"    VARCHAR2(25 BYTE),
    "PRENOM"  VARCHAR2(55 BYTE),
    "D_ID"    NUMBER,
    "RESULTS" NUMBER            DEFAULT 0,
    "REMARK"  VARCHAR2(22 BYTE) DEFAULT 'weak'
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE
(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
)
    TABLESPACE "USERS";
REM INSERTING into SOFT.CLASSE
SET DEFINE OFF;
Insert into SOFT.CLASSE (C_ID, NAME)
values (1, '1er');
Insert into SOFT.CLASSE (C_ID, NAME)
values (2, '2em');
Insert into SOFT.CLASSE (C_ID, NAME)
values (3, '3em');
Insert into SOFT.CLASSE (C_ID, NAME)
values (4, '4em');
REM INSERTING into SOFT.DIVISION
SET DEFINE OFF;
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (1, '1M1', 1, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (2, '1M2', 1, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (3, '1M3', 1, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (4, '1M4', 1, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (5, '1M5', 1, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (6, '2M1', 2, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (7, '2M2', 2, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (8, '2M3', 2, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (9, '2M4', 2, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (10, '2M5', 2, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (11, '3M1', 3, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (12, '3M2', 3, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (13, '3M3', 3, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (14, '3M4', 3, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (15, '3M5', 3, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (16, '4M1', 4, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (17, '4M2', 4, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (18, '4M3', 4, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (19, '4M4', 4, 0);
Insert into SOFT.DIVISION (D_ID, NAME, C_ID, ACCURACY)
values (20, '4M5', 4, 0);
REM INSERTING into SOFT.EVALUATE
SET DEFINE OFF;
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (1, 'weak', 6.5, null, 3.5, 13, 6, 0, 0, 3);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (2, 'weak', 8.5, null, 8.5, 15, 9.8, 0, 0, 4);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (3, 'average', 14, null, 11.5, 14, 12.5, 0, 0, 5);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (4, 'weak', 8.5, null, 8, 13, 9.1, 0, 0, 6);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (5, 'average', 4.5, null, 11, 13, 10.1, 0, 0, 7);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (6, 'average', 8, null, 11, 13, 10.8, 0, 0, 8);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (7, 'weak', 5, null, 8.5, 13, 8.7, 0, 0, 9);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (8, 'average', 10.5, null, 12, 13, 11.9, 0, 0, 10);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (9, 'weak', 13.5, null, 6.5, 13, 9.2, 0, 0, 11);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (10, 'weak', 2, null, 8, 13, 7.8, 0, 0, 12);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (11, 'weak', 6.5, null, 9, 13, 9.3, 0, 0, 13);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (12, 'average', 7.5, null, 10, 13, 10.1, 0, 0, 14);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (13, 'weak', 3, null, 5, 13, 6.2, 0, 0, 15);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (14, 'weak', 7.5, null, 9, 13, 9.5, 0, 0, 16);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (15, 'weak', 7, null, 7, 13, 8.2, 0, 0, 17);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (16, 'good', 17, null, 11.5, 17, 13.7, 0, 0, 18);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (17, 'weak', 6.5, null, 9, 13, 9.3, 0, 0, 19);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (18, 'good', 11, null, 16, 16, 15, 0, 0, 20);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (19, 'average', 10.5, null, 9, 13, 10.1, 0, 0, 21);
Insert into SOFT.EVALUATE (IV_ID, REMARK, TASK1, TASK2, EXAM, EVALUATION, AVERAGE, RANKING, RANKING_TOTAL, S_ID)
values (20, 'weak', 2.5, null, 8, 13, 7.9, 0, 0, 22);
REM INSERTING into SOFT.EVALUATE_MODULE
SET DEFINE OFF;
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (1, 21, 1);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (2, 21, 2);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (3, 21, 3);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (4, 21, 4);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (5, 21, 5);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (6, 21, 6);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (7, 21, 7);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (8, 21, 8);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (9, 21, 9);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (10, 21, 10);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (11, 21, 11);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (12, 21, 12);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (13, 21, 13);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (14, 21, 14);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (15, 21, 15);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (16, 21, 16);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (17, 21, 17);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (18, 21, 18);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (19, 21, 19);
Insert into SOFT.EVALUATE_MODULE (EV_MO_ID, M_ID, IV_ID)
values (20, 21, 20);
REM INSERTING into SOFT.MODULE
SET DEFINE OFF;
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (1, 2, 1, 'arabic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (2, 3, 2, 'arabic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (3, 3, 3, 'arabic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (4, 5, 4, 'arabic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (5, 1, 1, 'islamic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (6, 1, 2, 'islamic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (7, 1, 3, 'islamic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (8, 2, 4, 'islamic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (9, 2, 1, 'math');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (10, 3, 2, 'math');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (11, 3, 3, 'math');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (12, 4, 4, 'math');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (13, 1, 1, 'english');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (14, 1, 2, 'english');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (15, 1, 3, 'english');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (16, 2, 4, 'english');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (17, 1, 1, 'french');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (18, 2, 2, 'french');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (19, 2, 3, 'french');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (20, 3, 4, 'french');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (21, 1, 1, 'science');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (22, 2, 2, 'science');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (23, 2, 3, 'science');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (24, 2, 4, 'science');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (25, 1, 1, 'physic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (26, 2, 2, 'physic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (27, 2, 3, 'physic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (28, 2, 4, 'physic');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (29, 2, 1, 'history_geo');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (30, 2, 2, 'history_geo');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (31, 2, 3, 'history_geo');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (32, 3, 4, 'history_geo');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (33, 1, 1, 'civil-edu');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (34, 1, 2, 'civil-edu');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (35, 1, 3, 'civil-edu');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (36, 1, 4, 'civil-edu');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (37, 1, 1, 'Sport');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (38, 1, 2, 'Sport');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (39, 1, 3, 'Sport');
Insert into SOFT.MODULE (M_ID, COIF, C_ID, NAME)
values (40, 1, 4, 'Sport');
REM INSERTING into SOFT.PROF
SET DEFINE OFF;
Insert into SOFT.PROF (P_ID, NAME, PRENOM, MODULE)
values (1, 'zadi', 'salah', 'science');
REM INSERTING into SOFT.PROF_INSCRIPTION
SET DEFINE OFF;
Insert into SOFT.PROF_INSCRIPTION (PR_IN, D_ID, P_ID)
values (1, 1, 1);
REM INSERTING into SOFT.STUDENT
SET DEFINE OFF;
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (3, 'Adam', 'Marzouk', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (4, 'Belhadi', 'Fawzia', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (5, 'Boutaleb', 'Wissam Abdel Rahim', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (6, 'Bulanwar', 'Bilal', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (7, 'Junaidy', 'Maryam', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (8, 'Hegazy', 'Zakaria', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (9, 'Harzly', 'Kawthar', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (10, 'Hafsi ', 'Latifa', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (11, 'asalaef', 'hamami', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (12, 'Khalfaoui', 'Marwa', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (13, 'Rifas', 'Al-Mahdi', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (14, 'Sahnoun', 'Nasreen', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (15, 'Sharf', 'Yassin', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (16, 'Sadiq', 'Marwa Umm Kulthum', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (17, 'Tagine', 'kada', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (18, 'Abbad', 'Reham Faten', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (19, 'Laboukh', 'Wael Sayed Ahmed', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (20, 'Mann', 'Noor Al-Huda', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (21, 'Hilali', 'Nibal Yamina', 3, 0, 'weak');
Insert into SOFT.STUDENT (S_ID, NAME, PRENOM, D_ID, RESULTS, REMARK)
values (22, 'Najadi', 'Amal', 3, 0, 'weak');
--------------------------------------------------------
--  DDL for Index SYS_C0015359
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015359" ON "SOFT"."CLASSE" ("C_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015360
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015360" ON "SOFT"."CLASSE" ("NAME")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015376
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015376" ON "SOFT"."DIVISION" ("D_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015377
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015377" ON "SOFT"."DIVISION" ("NAME")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015371
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015371" ON "SOFT"."EVALUATE" ("IV_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015428
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015428" ON "SOFT"."EVALUATE_MODULE" ("EV_MO_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015409
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015409" ON "SOFT"."MODULE" ("M_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015365
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015365" ON "SOFT"."PROF" ("P_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015382
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015382" ON "SOFT"."PROF_INSCRIPTION" ("PR_IN")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index SYS_C0015369
--------------------------------------------------------

CREATE UNIQUE INDEX "SOFT"."SYS_C0015369" ON "SOFT"."STUDENT" ("S_ID")
    PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
    STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
    BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";
--------------------------------------------------------
--  Constraints for Table CLASSE
--------------------------------------------------------

ALTER TABLE "SOFT"."CLASSE"
    ADD UNIQUE ("NAME")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."CLASSE"
    ADD PRIMARY KEY ("C_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."CLASSE"
    MODIFY ("C_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIVISION
--------------------------------------------------------

ALTER TABLE "SOFT"."DIVISION"
    MODIFY ("ACCURACY" NOT NULL ENABLE);
ALTER TABLE "SOFT"."DIVISION"
    ADD UNIQUE ("NAME")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."DIVISION"
    ADD PRIMARY KEY ("D_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."DIVISION"
    MODIFY ("NAME" NOT NULL ENABLE);
ALTER TABLE "SOFT"."DIVISION"
    MODIFY ("D_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVALUATE
--------------------------------------------------------

ALTER TABLE "SOFT"."EVALUATE"
    ADD CHECK (average <= 20 and average >= 0) ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    ADD CHECK (evaluation <= 20 and evaluation >= 0) ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    ADD CHECK (remark in ('weak', 'average', 'good', 'excellent')) ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    ADD CHECK (exam <= 20 and exam >= 0) ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    ADD CHECK (task2 <= 20 and task2 >= 0) ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    ADD CHECK (task1 <= 20 and task1 >= 0) ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    MODIFY ("RANKING_TOTAL" NOT NULL ENABLE);
ALTER TABLE "SOFT"."EVALUATE"
    MODIFY ("RANKING" NOT NULL ENABLE);
ALTER TABLE "SOFT"."EVALUATE"
    ADD PRIMARY KEY ("IV_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."EVALUATE"
    MODIFY ("IV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVALUATE_MODULE
--------------------------------------------------------

ALTER TABLE "SOFT"."EVALUATE_MODULE"
    ADD PRIMARY KEY ("EV_MO_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."EVALUATE_MODULE"
    MODIFY ("EV_MO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MODULE
--------------------------------------------------------

ALTER TABLE "SOFT"."MODULE"
    MODIFY ("NAME" NOT NULL ENABLE);
ALTER TABLE "SOFT"."MODULE"
    ADD PRIMARY KEY ("M_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."MODULE"
    MODIFY ("COIF" NOT NULL ENABLE);
ALTER TABLE "SOFT"."MODULE"
    MODIFY ("M_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROF
--------------------------------------------------------

ALTER TABLE "SOFT"."PROF"
    ADD PRIMARY KEY ("P_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."PROF"
    MODIFY ("MODULE" NOT NULL ENABLE);
ALTER TABLE "SOFT"."PROF"
    MODIFY ("PRENOM" NOT NULL ENABLE);
ALTER TABLE "SOFT"."PROF"
    MODIFY ("NAME" NOT NULL ENABLE);
ALTER TABLE "SOFT"."PROF"
    MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROF_INSCRIPTION
--------------------------------------------------------

ALTER TABLE "SOFT"."PROF_INSCRIPTION"
    ADD PRIMARY KEY ("PR_IN")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."PROF_INSCRIPTION"
    MODIFY ("PR_IN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

ALTER TABLE "SOFT"."STUDENT"
    ADD CHECK (results <= 20 and results >= 0) ENABLE;
ALTER TABLE "SOFT"."STUDENT"
    ADD CHECK (remark in ('weak', 'average', 'good', 'excellent')) ENABLE;
ALTER TABLE "SOFT"."STUDENT"
    ADD PRIMARY KEY ("S_ID")
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE (INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
            TABLESPACE "USERS" ENABLE;
ALTER TABLE "SOFT"."STUDENT"
    MODIFY ("PRENOM" NOT NULL ENABLE);
ALTER TABLE "SOFT"."STUDENT"
    MODIFY ("NAME" NOT NULL ENABLE);
ALTER TABLE "SOFT"."STUDENT"
    MODIFY ("S_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DIVISION
--------------------------------------------------------

ALTER TABLE "SOFT"."DIVISION"
    ADD CONSTRAINT "SE_F_CL" FOREIGN KEY ("C_ID")
        REFERENCES "SOFT"."CLASSE" ("C_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVALUATE
--------------------------------------------------------

ALTER TABLE "SOFT"."EVALUATE"
    ADD CONSTRAINT "EV_FK_ST" FOREIGN KEY ("S_ID")
        REFERENCES "SOFT"."STUDENT" ("S_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVALUATE_MODULE
--------------------------------------------------------

ALTER TABLE "SOFT"."EVALUATE_MODULE"
    ADD CONSTRAINT "EV_MO_FK_IV" FOREIGN KEY ("IV_ID")
        REFERENCES "SOFT"."EVALUATE" ("IV_ID") ENABLE;
ALTER TABLE "SOFT"."EVALUATE_MODULE"
    ADD CONSTRAINT "EV_MO_FK_MO" FOREIGN KEY ("M_ID")
        REFERENCES "SOFT"."MODULE" ("M_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MODULE
--------------------------------------------------------

ALTER TABLE "SOFT"."MODULE"
    ADD CONSTRAINT "MO_FK1_CL" FOREIGN KEY ("C_ID")
        REFERENCES "SOFT"."CLASSE" ("C_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROF_INSCRIPTION
--------------------------------------------------------

ALTER TABLE "SOFT"."PROF_INSCRIPTION"
    ADD CONSTRAINT "PR_IN_F_DI" FOREIGN KEY ("D_ID")
        REFERENCES "SOFT"."DIVISION" ("D_ID") ENABLE;
ALTER TABLE "SOFT"."PROF_INSCRIPTION"
    ADD CONSTRAINT "PR_IN_F_PR" FOREIGN KEY ("P_ID")
        REFERENCES "SOFT"."PROF" ("P_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

ALTER TABLE "SOFT"."STUDENT"
    ADD CONSTRAINT "ST_FK_DI" FOREIGN KEY ("D_ID")
        REFERENCES "SOFT"."DIVISION" ("D_ID") ENABLE;