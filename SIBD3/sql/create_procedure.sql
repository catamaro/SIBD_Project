use SIBD;

create procedure raise_doctor (in x integer)

begin
    update employee set employee_salary =
        (select employee_salary * if(count(distinct c.VAT_doctor, c.date_timestamp) > 100, 1.1, 1.05)
         from permanent_doctor, consultation c, employee
         where years_of_experience > x and VAT_doctor = VAT_permanent
         group by VAT_doctor);
end

