-- chapter  7 
-- 7.1 
select * from regions ; 

INSERT INTO regions (region_id,region_name)
values (5 , 'Central America' ) ; 


INSERT INTO regions (region_id,region_name)
values (6 , 'South America' ) ; 

update regions set region_name = 'South America' where region_name = 'Central America';

delete from regions where region_id = 6;

rollback;