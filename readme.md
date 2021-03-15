# lab06

## 1:

```sql
SELECT name,birthplace FROM artists;
```
|     name     |  birthplace   |
|--------------|---------------|
|Caravaggio   | Milan|
|Picasso      | Malaga|
|Leonardo     | Florence|
| Michelangelo | Arezzo|
|Josefa       | Seville|
|Hans Hofmann | Weisenburg|
| John         | San Francisco|

 
## 2:

```sql
SELECT title,price FROM 
artworks WHERE price > 1600;
```

|  title      |  price   |
|--------------|----------|
| The Cardsharps  | 40000.00|
|Three Musicians | 11000.00|
 
## 3:

```sql
SELECT title,type FROM artworks 
WHERE year=2000 
OR artist_name = 'Picasso';
```
|       title      |  type  |
|-----------------|--------|
| Three Musicians | Modern|

## 4:

```sql
select name,
    birthplace
from(
        select name,
            birthplace,
            extract(
                year
                from dateofbirth
            ) as year
        from artists
    ) as q1
where year > 1880
    and year < 1930;
```
|  name   |  birthplace   |
|---------|---------------|
|Picasso | Malaga|
| John    | San Francisco|
## 5:

```sql
SELECT name,
    country
from artists
WHERE style in 
('Baroque', 'Modern',
 'Renaissance')
;
``` 
|    name     | country |
|-------------|---------|
|Caravaggio   | 
|Leonardo     | Italy|
| Michelangelo | Italy|
|Josefa       | Spain|
|Hans Hofmann | Germany|
|John         | USA|

## 6:

```sql
SELECT * FROM artworks ORDER BY title;
```
|      title      | year |  type   |  price   |artist_name |
|-----------------|------|--------|------------|--------|
| The Cardsharps  | 1594 | Baroque | 40000.00 | Caravaggio|
| Three Musicians | 1921 | Modern  | 11000.00 | Picasso|
## 7:

```sql
SELECT customer_id,
    name
FROM customers
    JOIN likeartists ON 
    customers.id = likeartists.customer_id
WHERE artist_name = 'Picasso';
```
| customer_id | name  |
|-------------|-------|
|4     | Emre|
|5          | Saeid|

## 8:

```sql
SELECT customers.name
FROM customers
    JOIN likeartists ON 
    likeartists.customer_id = customers.id
    JOIN artists ON artists.name = artist_name
WHERE style = 'Renaissance'
    AND amount > 3000;
```
| name  |
|-------|
| Saeid|
