a)Given the following dictionary:
      inventory = {
                   'gold' : 500,
                   'pouch' : ['flint', 'twine', 'gemstone'],
                   'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']
                }
       Try to do the followings:
       i)Add a key to inventory called 'pocket'.
       ii)Set the value of 'pocket' to be a list consisting of the strings 'seashell', 'strange berry', and 'lint'.
       iii).sort()the items in the list stored under the 'backpack' key.
       iv)Then .remove('dagger') from the list of items stored under the 'backpack' key.
       v)Add 50 to the number stored under the 'gold' key.
 
inventory={'gold':500,'pouch':['flint','twine', 'gemstone'],'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']}
for k,v in inventory.iteritems():
	print(k,v)
	if isinstance(v,list):
		for a in v:
			print a
inventory['pocket']=[]
print inventory
inventory['pocket'].extend(['seashell', 'strange berry','lint'])
print inventory
inventory['backpack'].sort()
print inventory
inventory['backpack'].remove('dagger')
print inventory
#inventory['gold'].append(50)
print type(inventory['gold'])
inventory['gold']=inventory['gold']+50
print inventory

Answer:
('backpack', ['xylophone', 'dagger', 'bedroll', 'bread loaf'])
xylophone
dagger
bedroll
bread loaf
('pouch', ['flint', 'twine', 'gemstone'])
flint
twine
gemstone
('gold', 500)
{'pocket': [], 'backpack': ['xylophone', 'dagger', 'bedroll', 'bread loaf'], 'pouch': ['flint', 'twine', 'gemstone'], 'gold': 500}
{'pocket': ['seashell', 'strange berry', 'lint'], 'backpack': ['xylophone', 'dagger', 'bedroll', 'bread loaf'], 'pouch': ['flint', 'twine', 'gemstone'], 'gold': 500}
{'pocket': ['seashell', 'strange berry', 'lint'], 'backpack': ['bedroll', 'bread loaf', 'dagger', 'xylophone'], 'pouch': ['flint', 'twine', 'gemstone'], 'gold': 500}
{'pocket': ['seashell', 'strange berry', 'lint'], 'backpack': ['bedroll', 'bread loaf', 'xylophone'], 'pouch': ['flint', 'twine', 'gemstone'], 'gold': 500}
<type 'int'>
{'pocket': ['seashell', 'strange berry', 'lint'], 'backpack': ['bedroll', 'bread loaf', 'xylophone'], 'pouch': ['flint', 'twine', 'gemstone'], 'gold': 550}

b) create a student details dictionary having {'student1':[marks1,marks2, marks3],'student2':[marks1,marks2,marks3]}
       i)Create the dictionary as mentioned above
       ii) need to perform total and average of the marks for each student

student={}
cnt=input("enter how many values")
x=int(cnt)
for a in range(x):
	keys=input("enter key name:")
	count=input("enter how many values for a key")
	values=[]
	for y in range(count):
		y=y+1
		value=input("enter marks for subject"+str(y)+":")
		values.append(value)
		student[keys]=values
print student
for k,v in stud
for k,v in student.iteritems():
	print(k,v)
	if isinstance(v,list):
		s=sum(student[k])
		l=len(student[k])
		avg=s/l
		print("avg is:"+str(avg))
		print("sum is:"+str(s))
Answer:
<type 'dict'>
('student2', [25, 50, 25])
avg is:33
sum is:100
('student1', [30, 40, 40])
avg is:36
sum is:110

c)  write the below contents to  a file named 'marks.txt' using python script
science = 50|maths = 90
english = 85
tamil = 92

       i) read the file and calculate the total sum of marks available there
f=open("marks.txt","r")
if f.mode=='r':
	contents=f.read()
	a=contents.split("\n")
	print a
	total=0
	for x in a:
		c=str(x)
		#print type(c)
		a=c.split("=")
		print a
		total=total+int(a[-1])
	print total
	
Answer:
['science = 50', 'maths = 90', 'english = 85', 'tamil = 92', 'telugu=100']
['science ', ' 50']
['maths ', ' 90']
['english ', ' 85']
['tamil ', ' 92']
['telugu', '100']
417
