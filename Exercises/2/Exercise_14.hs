module Exercise_14 where
	type Person = String
	type Book = String
	type Database = [(Person, Book)]

	exampleBase :: Database
   	exampleBase = [("Alicia","El nombre de la rosa"),("Juan","La hija del canibal"),("Pepe","Odesa"),("Alicia","La ciudad de las bestias")]

	obtain :: Database -> Person -> [Book]
	obtain dBase thisPerson = [book | (person,book) <- dBase, person == thisPerson]

	borrow :: Database -> Person -> Book -> Database
	borrow db book person = exampleBase ++ [(person,book)]

	return' :: Database -> (Person,Book) -> Database
	return' db borrow = [(person,book) | (person,book) <- db, borrow /= (person,book)] 