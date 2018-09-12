mail:
import re
with open('a.txt','r') as obj:
	contents=obj.readlines()
for line in contents:
    print re.findall("^([a-z0-9]+\@[a-z]+\.[a-z]{3})",line)
  
  from file:
  import re
with open('a.txt','r') as obj:
	contents=obj.readlines()
print re.findall("([A-Za-z]+)\s.*(\$[0-9]+).*",contents)


IP Matching:
	 ip='444.24.28.30'
	 re.findall('(^[0-2][0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})',ip)
credit card:
	re.findall('(^[456][0-9]{15})|(^[456][0-9]{3}-[0-9]{4}-[0-9]{4}-[0-9]{4})',s)
