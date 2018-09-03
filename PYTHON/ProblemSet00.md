1)get first name and last name from user and print your full name 

n1=raw_input("enter first name: ")
n2=raw_input("enter last name: ")
name=n1+" "+n2
print("name is "+name)

2) get ur full name, age as input from user and print first name and last name , age using string slicing
 i) 2 raw_input get name  and age 
 ii) print first name and last name and age 
 iii) WHEN age >= 18 , he/she is eligible to vote
 iv) WHEN age < 18 , he/she is not eligible to vote


name=raw_input("enter ur name")
age=input("enter ur age")
a=name.split(" ")
print("first name is: "+a[0])
print("last name is: "+a[1])
print("age is: "+str(age))
if(age>=18):
	print("he/she is eligible to vote")
elif(age<18):
	print("he/she is not eligible to vote")
else:
	print("enter valid age")

3)Calculating your birth number in numerology
26/11/1978
2+6+1+1+1+7+8 = 8

4) Write a Python program to perform sum of three given integers. 
       However, if any of the two values are equal then sum will be zero (eg : 2+1+1 = 0)

a=input("value a")
b=input("value b")
c=input("value c")
if(a==b or b==c or c==a):
	sum=0
	print(sum)
else:
	sum=int(a)+int(b)+int(c)
	print("sum of integers is %d"%sum)

5) Write a Python program to check whether a year is leap year or not

b=input("enter year")
a=int(b)
f=0
if(a%4==0):
	f=1
	if(a%100==0):
		if(a%400==0):
			f=1
		else:
			f=0
else:
	f=0
if(f==1):
	print("leap year")
else:
	print("not a leap year")
6)
Write a program that accepts a sentence and calculate the number of upper case letters and lower case letters.

Suppose the following input is supplied to the program:

Hello world!

Then, the output should be:

UPPER CASE 1

LOWER CASE 9

x=raw_input("enter word")
count1=0
count2=0
for a in x:
  if(a.islower()):
    count1=count1+1
  elif(a.isupper()):
    count2=count2+1
print("count of lower case letters is :"+str(count1))
print("count of upper case letters is :"+str(count2))

7)  write a python script to validate the strong password (combination of characters alphabets and numbers,special characters in it. if not weak password)
eg: Acc9876$
it is strong password
abcd
it is weak password

a=input("enter password")
lower=0
upper=0
alnum=0
special=0
for x in a:
  if x.islower():
	lower=lower+1
  elif x.isupper():
    upper=upper+1
  elif x.isalnum():
    alnum=alnum+1
  else:
    special=special+1
if(lower>=1 and upper>=1 and alnum>=1 and special>=1):
  print("strong password")
else:
	print("weak password")

8) declare a list containing numbers
    a) get only even numbers
    b) perform sum of those even numbers
a=range(10)
even=[]
odd=[]
for x in a:
  if(x%2==0):
	  even.append(x)
print(even)
sum=sum(even)
print(sum)

9) Write a program which accepts a sequence of comma-separated numbers from console and generate a list and a tuple which 
contains every number.

Suppose the following input is supplied to the program:
34,67,55,33,12,98


Then, the output should be:
['34', '67', '55', '33', '12', '98']
('34', '67', '55', '33', '12', '98')
a = input("Input comma seprated numbers : ")
list = a.split(",")
tuple = tuple(list)
print('List : ',list)
print('Tuple : ',tuple)
