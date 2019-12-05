delimiter $$
drop procedure if exists raise_doctor;

create procedure raise_doctor (x integer)

begin
    update employee e, permanent_doctor p

    set e.employee_salary =

        (select employee_salary * if(count(distinct c.VAT_doctor, c.date_timestamp) > 100, 1.1, 1.05)
         from consultation c, permanent_doctor p
         where c.VAT_doctor = p.VAT_permanent AND p.years_of_experience > x
         group by c.VAT_doctor)

    where e.employee_VAT = p.VAT_permanent AND p.years_of_experience > x;
end$$

delimiter ;

