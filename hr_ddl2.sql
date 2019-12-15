CREATE TABLE benefits (
    benefit_id varchar2(3) not null primary key,
    benefit_name varchar2(25) ,
    benefit_type varchar2(20) default 'HEALTH CARE' ,
    benefit_effective_date Date,
    benefit_max_allowance number(8,2) not null
);


CREATE SEQUENCE seq_benefits
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 

INSERT INTO benefits values (seq_benefits.nextVal , '401k' , 'Retirement','01-Jan-2010',250000);

INSERT INTO benefits values (seq_benefits.nextVal , 'Medical PPO' , 'Health','01-Jan-2011',100000);

INSERT INTO benefits values (seq_benefits.nextVal , DEFAULT , 'Medical Ins','01-Jan-2012',125000);

select * from benefits ; 

INSERT INTO benefits values (seq_benefits.nextVal , 'No default name provided' , DEFAULT,'01-Jan-2013',150000);


select * from benefits ; 

commit ; 

CREATE OR REPLACE VIEW vw_h_b (benefit_id, benefit_name, benefit_type, benefit_max_allowance) AS
SELECT Benefit_id , benefit_Name , benefit_Type , benefit_max_allowance
FROM benefits 
where benefit_type like '%HEALTH%'; 


describe view vw_h_b ;

SELECT * FROM vw_h_b;

ALTER TABLE benefits ADD max_dependents1 number(8,2) not null;

Alter table benefits drop max_dependents number (8,2);


select * from benefits ; 

ALTER TABLE benefits modify  benefit_name VARCHAR2(50);

describe benefits;

ALTER TABLE benefits modify  benefit_name VARCHAR2(20);
-- "cannot decrease column length because some value is too big"

INSERT INTO benefits(
benefit_id ,
benefit_name,
benefit_type,
benefit_effective_date,
benefit_max_allowance,
max_dependents

)
SELECT  seq_benefits.NextVal,
benefit_name,
benefit_type,
benefit_effective_date,
benefit_max_allowance,
max_dependents
from benefits;


select * from benefits;

rollback;


INSERT INTO benefits(
benefit_id ,
benefit_name,
benefit_type,
benefit_effective_date,
benefit_max_allowance,
max_dependents

)
SELECT  seq_benefits.NextVal,
benefit_name,
benefit_type,
benefit_effective_date,
benefit_max_allowance,
max_dependents
from benefits;

select * from benefits;





