/*
Бобоев Jамшед

1. Создайте многострочный комментарий со следующей информацией:
ваши имя и фамилия
описание задачи

2. Напишите код, который вернёт из таблицы track поля name и genreid

3. Напишите код, который вернёт из таблицы track поля name, composer,
unitprice. Переименуйте поля на song, author и price соответственно.
Расположите поля так, чтобы сначало следовало название произведения,
далее его цена и в конце список авторов.

4. Напишите код, который вернёт из таблицы track название произведения и его длительность в минутах.

5. Напишите код, который вернёт из таблицы track поля name и genreid, и только первые 15 строк.

6. Напишите код, который вернёт из таблицы track все поля и все строки начиная с 50-й строки.

7. Напишите код, который вернёт из таблицы track названия всех произведений, чей объём больше 100 мегабайт.
8. Напишите код, который вернёт из таблицы track поля name и composer, где composer не равен "U2".
Код должен вернуть записи с 10 по 20-й включительно.

9. Напишите код, который из таблицы invoice вернёт дату самой первой и самой последней покупки.

10. Напишите код, который вернёт размер среднего чека для покупок из США.

11. Напишите код, который вернёт список городов в которых имеется более одного клиента.

12. В репозитории, который вы создавали для предыдущего урока,
создайте новую ветку и сохраните файл с кодом решения перечисленных задач в эту ветку.

Сделайте коммит, пуш и создайте pull request.
В классруме прикрепите скриншот вкладки files changed вашего pull request-а.
*/

-- 2
select
	name
	, genre_id
from
	track;

-- 3
select
	name as song
	, unit_price as price
	, composer as author
from
	track;

-- 4
select
	name
	, round(milliseconds/60000., 2) as minutes
from track
order by minutes desc;

-- 5
select
	name
	, genre_id
from
	track
limit 15;

-- 6
select *
from track
offset 50;

-- 7
select name
from track
where bytes / (1024*1024) > 100;

-- 8
select
	name
	, composer
from
	track
where
	composer != 'U2'
limit 11
offset 9;

-- 9
select
	min(invoice_date) as first
	, max(invoice_date) as last
from
	invoice;

-- 10
select 
	round(avg(total), 3) as avg_total_USA
from
	invoice
where
	billing_country = 'USA'
group by
	billing_country;

-- 11
select
	billing_city
from
	invoice
group by
	billing_city
having
	count(customer_id) > 1;