#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd
#from pandas.tools import plotting
import matplotlib.pyplot as plt
import numpy as np
from sklearn.model_selection import train_test_split, cross_val_score, KFold, GridSearchCV
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier,export_graphviz
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.ensemble import GradientBoostingClassifier, RandomForestClassifier


# In[3]:


#latihan pertama


# In[4]:


data_made = pd.read_csv('D:/prak8stat/houseprice.csv', sep=";")
data_made.head(5)


# In[5]:


col_list=['Price']
numhouse = data_made[data_made.columns[data_made.columns.isin(col_list)]]
plt.figure(figsize=(10,5))
numhouse.boxplot(sym='r*', grid=False)
plt.show()


# In[6]:


plt.figure(figsize=(15,5))
plt.subplot(121)
data_made['Price'].plot.hist(bins=10, title='Price')
plt.show()


# In[7]:


col_list=['Price', 'SqFt']
numhouse = data_made[data_made.columns[data_made.columns.isin(col_list)]]
numhouse.plot.scatter(x='SqFt', y='Price')


# In[8]:


col_list=['Price', 'Bedrooms']
numhouse = data_made[data_made.columns[data_made.columns.isin(col_list)]]
plt.figure(figsize=(15,5))
numhouse.boxplot(by='Bedrooms')
plt.show()


# In[9]:


#latihan kedua


# In[13]:


col_list=['Bedrooms', 'Price']
numhouse = data_made[data_made.columns[data_made.columns.isin(col_list)]]
numhouse.plot.scatter(x='Bedrooms', y='Price')


# In[16]:


col_list=['Bathrooms', 'Price']
numhouse = data_made[data_made.columns[data_made.columns.isin(col_list)]]
numhouse.plot.scatter(x='Bathrooms', y='Price')


# In[17]:


col_list=['Bathrooms', 'Price']
numhouse = data_made[data_made.columns[data_made.columns.isin(col_list)]]
plt.figure(figsize=(15,5))
numhouse.boxplot(by='Bathrooms')
plt.show()


# In[ ]:




