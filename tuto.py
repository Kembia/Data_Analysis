import pandas as pd

data = pd.read_excel('titanic.xls')
data.head()
data.shape

data = data.drop(['body']) 
data.describe()
data.columns