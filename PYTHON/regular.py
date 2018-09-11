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
