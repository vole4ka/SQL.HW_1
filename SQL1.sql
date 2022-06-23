select * from students;                           --1. Вывести все поля и все строки.
select students from students;                    --2. Вывести всех студентов в таблице
select ID from students;                          --3. Вывести только Id пользователей
select name from students;                        --4. Вывести только имя пользователей
select email from students;                       --5. Вывести только email пользователей
select name, email from students;                 --6. Вывести имя и email пользователей
select ID, name, email, created_on from students; --7. Вывести id, имя, email и дату создания пользователей

         --8. Вывести пользователей где password 12333
select students from students where password = '12333';

         --9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
select students from students where created_on = '2021-03-26 00:00:00';

         --10. Вывести пользователей где в имени есть слово Анна
select students from students where name like '%Aнна%';

         --11. Вывести пользователей где в имени в конце есть 8 
select students from students where name like '%8';

         --12. Вывести пользователей где в имени в есть буква а
select students from students where name like '%a%';

         --13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
select students from students where created_on = '2021-07-12 00:00:00';

         --14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select students from students where created_on = '2021-07-12 00:00:00' and password = '1m313';

         --15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select students from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

         --16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select students from students where created_on = '2021-07-12 00:00:00' and name like '%8%';

select students from students where ID = 110;   --17. Вывести пользователя у которых id равен 110
select students from students where ID = 156;   --18. Вывести пользователя у которых id равен 153
select students from students where ID > 140;   --19. Вывести пользователя у которых id больше 140
select students from students where ID < 130;   --20. Вывести пользователя у которых id меньше 130

         --21. Вывести пользователя у которых id меньше 127 или больше 188
select students from students where (ID < 127 or ID > 188);

select students from students where ID <= 137;  --22. Вывести пользователя у которых id меньше либо равно 137
select students from students where ID >= 137;  --23. Вывести пользователя у которых id больше либо равно 137

         --24. Вывести пользователя у которых id больше 180 но меньше 190
select students from students where ID > 180 and ID < 190;

         --25. Вывести пользователя у которых id между 180 и 190
select students from students where ID between 180 and 190;

         --26. Вывести пользователей где password равен 12333, 1m313, 123313
select students from students where password  in ('12333', '1m313', '123313');

         --27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select students from students where created_on  in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

select MIN(ID) from students;                   --28. Вывести минимальный id             
select MAX(ID) from students;                   --29. Вывести максимальный.
select COUNT(students) from students;           --30. Вывести количество пользователей

         --31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select ID, name, email, created_on from students Order by created_on;

         --32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select ID, name, email, created_on from students Order by created_on DESC;


