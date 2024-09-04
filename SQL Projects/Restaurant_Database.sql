CREATE TABLE customers (
  customerid INT,
  firstname TEXT,
  lastname TEXT,
  country TEXT);

INSERT INTO customers VALUES
    (1, 'David','Brown','USA'),
    (2, 'Somchai','Rakkhun','Thailand'),
    (3, 'Joan','Iglesia','Spain'),
    (4, 'Mary','Doe','USA'),
    (5, 'Somjit','Wattana','Thailand'),
    (6, 'Hannah','Smith','USA'),
    (7, 'Teddy','Cornwall','USA'),
    (8, 'Paloma','Reyes','Spain'),
    (9, 'Jitta','Chopdee','Thailand'),
    (10, 'Jorge','Montez','Spain')

CREATE TABLE staffs (
  staffid INT,
  firstname TEXT,
  lastname TEXT,
  performance TEXT);

INSERT INTO staffs VALUES
    (1, 'George','Shawn','Average'),
    (2, 'Fiona','Grey','Excellent'),
    (3, 'Tom','Cook','Average'),
    (4, 'Uta','Heilmann','Execellent'),
    (5, 'Regina','Helles','Good')

CREATE TABLE orders (
  orderid INT,
  orderdate DATE,
  customerid INT,
  staffid INT,
  totalorder REAL)

  INSERT INTO orders VALUES
    (1, '2024-01-01', 8, 1, 500),
    (2, '2024-01-01', 3, 2, 350),
    (3, '2024-01-12', 10, 1, 60),
    (4, '2024-01-15', 8, 5, 290),
    (5, '2024-01-19', 1, 3, 800),
    (6, '2024-02-03',2, 3, 200),
    (7, '2024-02-07', 6,4, 900),
    (8, '2024-02-14',4, 4, 150),
    (9, '2024-02-20', 9, 2, 350),
    (10, '2024-02-22', 5, 5,120),
    (11, '2024-02-27',7,3,110),
    (12, '2024-03-02',10, 2, 400),
    (13, '2024-03-18',8,1,280),
    (14,'2024-03-20',3,5,570),
    (15,'2024-03-22',9,1,230),
    (16,'2024-03-24',2,2,340),
    (17,'2024-03-29',1,4,1500)

CREATE TABLE profit (
  orderid INT,
    profit REAL)

INSERT INTO profit VALUES
  (1, 200),
    (2, 300),
    (3, 10),
    (4, 150),
    (5, 650),
    (6, 100),
    (7, 850),
    (8, 100),
    (9, 300),
    (10, 110),
    (11, 40),
    (12, 200),
    (13, 105),
    (14, 455),
    (15, 195),
    (16, 285),
    (17, 1240)







