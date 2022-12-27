CREATE TABLE Items (
	Id INT PRIMARY KEY,
	"itemName" TEXT
);

INSERT INTO Items
VALUES
	(1, 'Something'),
	(2, 'Something2'),
	(3, 'Something3'),
  (4, 'Something4'),
  (5, 'Something5');

CREATE TABLE Category (
	Id INT PRIMARY KEY,
	"categoryName" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'SomeCategory'),
	(2, 'SomeCategory2'),
	(3, 'SomeCategory3');

CREATE TABLE ItemsCategory (
	ItemId INT FOREIGN KEY REFERENCES Items(Id),
	CategoryId INT FOREIGN KEY REFERENCES Category(Id),
	PRIMARY KEY (ItemId, CategoryId)
);

INSERT INTO ItemsCategory
VALUES
	(1, 1),
	(1, 3),
	(2, 2),
  (3, 3),
  (4, 3),
  (5, 1);

SELECT I."Name", C."Name"
FROM Items I
LEFT JOIN ItemsCategory IC
	ON I.Id = IC.ItemId
LEFT JOIN Categories C
	ON IC.CategoryId = C.Id;
