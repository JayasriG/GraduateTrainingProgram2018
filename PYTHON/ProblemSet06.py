import pandas as pd
raw_data_1 = {
        'subject_id': ['1', '2', '3', '4', '5'],
        'first_name': ['Alex', 'Amy', 'Allen', 'Alice', 'Ayoung'], 
        'last_name': ['Anderson', 'Ackerman', 'Ali', 'Aoni', 'Atiches']}
data1 = pd.DataFrame(data=raw_data_1)
print data1
raw_data_2 = {
        'subject_id': ['4', '5', '6', '7', '8'],
        'first_name': ['Billy', 'Brian', 'Bran', 'Bryce', 'Betty'], 
        'last_name': ['Bonder', 'Black', 'Balwner', 'Brice', 'Btisan']}
data2 = pd.DataFrame(data=raw_data_2)
print data2
raw_data_3 = {
        'subject_id': ['1', '2', '3', '4', '5', '7', '8', '9', '10', '11'],
        'test_id': [51, 15, 15, 61, 16, 14, 15, 1, 61, 16]}
data3 = pd.DataFrame(data=raw_data_3)
print data3
print("two dataframes along rows")
all_data = data1.append(data2)
print all_data
print("two dataframes along columns")
all_data['all_data_col']=all_data['first_name']+all_data['last_name']
print all_data

print("to Merge only the data that has the same 'subject_id' on both data1 and data2")
print pd.merge(all_data,data3,on='subject_id')
print pd.merge(data1,data2,on='subject_id',how='inner')




import pandas as pd
import csv
chipo=pd.read_csv('chipotle.tsv', sep='\t')

print(chipo)
"""print pd.DataFrame(chipo,columns=['item_name','item_price'])
sorted = chipo.sort_values(by='item_name')
print sorted"""
print chipo['item_price'].max()
#print chipo['item_name']['Veggie Salad Bowl'].count()
sorted = chipo.sort_values(by='item_price')
print sorted
"""chipo['cnt']=chipo.groupby('item_name')['item_name'].transform('count')
print chipo"""
