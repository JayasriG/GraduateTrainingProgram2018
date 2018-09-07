Define a class named Shape and its subclass Square. The Square class has an init function which takes a length as argument. Both classes have a area function which can print the area of the shape where Shape's area is 0 by default.

class Shape:
	def area(self):
		print "Shape by Default :0"
class Square(Shape):
	def __init__(self,length):
		self.length = length
		Shape.area(self)
		self.area()
	def area(self):
		print "Area of Square is :",(self.length)**2	
if __name__ =="__main__":
	ip = input('Enter the value for Square :')
	s = Square(ip)

Define a class Person and its two child classes: Male and Female. All classes have a method "getGender" which can print "Male" for Male class and "Female" for Female class.

class Person:
	pass
class Male(Person):
	def getGender(self):
		print "Male"

class Female(Person):
	def getGender(self):
		print "Female"

if __name__ == "__main__":
	p = Person()
	m = Male()
	f = Female()
	m.getGender()
	f.getGender()


Design and implement a Money class that stores monetary values in dollars and cents. Special method init should have the following function header, def init(self, dollars, cents) Include special method repr (str) for displaying values in dollars and cents: $ 0.45, $ 1.00, $ 1.25. Also include special method add, and three getter methods that each provide the monetary value in another currency. Choose any three currencies to convert to.

class Money:
	def __init__(self,dollars,cent):
		self.dollars = dollars
		self.cent = cent
		dollar_string = '$'+str(self.dollars)+'.'+str(cent)
		self.repr(dollar_string)
	def repr(self,string):
		print "Dollar is :",string
		
	def add_india(self):
		rupee = self.dollars*71.87
		paise = self.cent*7.19	
		indian_rupee = rupee+paise
		return str(indian_rupee)
	
	def add_kuwait_dinar(self):
		dinar = self.dollars*0.30
		k_paise = self.cent*0.030
		k_dinar = dinar+k_paise
		return str(k_dinar)
		
	def add_canadian_dollar(self):
		c_dollar = self.dollars*1.31
		c_cent = self.cent*0.13
		canadian_dollar = c_dollar +c_cent
		return str(canadian_dollar)

if __name__ == "__main__":
	dol = raw_input('Enter the dollar and cent value :')
	li = map(int,dol.split('.'))
	obj = Money(li[0],li[1])
	
	india = obj.add_india()
	print "Indian Rupees is :",india
	
	kuwait = obj.add_kuwait_dinar()
	print "Kuwaiti Dinar is :",kuwait	
	
	canada = obj.add_canadian_dollar()
	print "Canadian Dollar is :",canada
	
	

Write both a nonrecursive and recursive function that displays the rows of asterisks given below,

            **
	   ****
          ******
        **********
       ************
      **************


Consider the following code
class Coordinate(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def getX(self):
        # Getter method for a Coordinate object's x coordinate.
        # Getter methods are better practice than just accessing an attribute directly
        return self.x

    def getY(self):
        # Getter method for a Coordinate object's y coordinate
        return self.y

    def __str__(self):
        return '<' + str(self.getX()) + ',' + str(self.getY()) + '>'
Your need to define the following two methods for the Coordinate class:

a) Add an eq method that returns True if coordinates refer to same point in the plane (i.e., have the same x and y coordinate).

b) Define repr, a special method that returns a string that looks like a valid Python expression that could be used to recreate an object with the same value. In other words, eval(repr(c)) == c given the definition of eq from part 1.

Develop an abstract class named Temperature that stores a single temperature. The class should have the following function header for special method init,
def __init__(self, temperature)
	'''The abstract class should contain the following methods:
	_str__ — should return a string of the form “75 degrees Fahrenheit”
	aboveFreezing() — returns True if temperature above the freezing point
	convertToFahren — returns a new Temperature object converted to degrees Fahrenheit
	convertToCelsius — returns a new Temperature object converted to degrees Celsius
	convertToKelvin — returns a new Temperature object converted to degrees Kelvin	
	'''
Develop the subclasses Fahrenheit, Celsius and Kelvin to appropriately implement each of the methods in the abstract Temperature class. (Note that when a meaningless conversion method is applied, for example, temp1.convertToFahrenheit() where temp1 is an object of type Fahrenheit, then a copy of the Temperature object should be returned.)

Demonstrate the correctness of your classes by doing the following:

Create a list of Temperature objects of a mix of Temperature types

Print out the value of each temperature in the list, and add “above freezing” if the temperature is above freezing (for the specifi c temperature scale).

Create a new list of temperatures containing each temperature of the original list converted to a common temperature scale (Fahrenheit, Celsius, or Kelvin).

For each temperature object in the new list, print out its temperature value, and if it is above the freezing point.
