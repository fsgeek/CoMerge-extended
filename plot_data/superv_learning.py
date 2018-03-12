import os, sys, re, csv
import matplotlib.pyplot as plt
import numpy as np
from sklearn import metrics
from sklearn.cross_validation import train_test_split
from sklearn.neighbors import KNeighborsClassifier
# Load libraries
import pandas
from pandas.tools.plotting import scatter_matrix
import matplotlib.pyplot as plt
from sklearn import model_selection
from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix
from sklearn.metrics import accuracy_score
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
from sklearn.naive_bayes import GaussianNB
from sklearn.svm import SVC

### Read input ###
data = []
f = open(sys.argv[1], 'r')
r = csv.reader(f ,delimiter=',')
for row in r:
    data.append(row) 

### Parse input ###a
array = np.transpose(np.array(data))
bench = array[1:,0]
features = array[0, 2:]
target = array[1:,1].astype(np.int)
data_2d = array[1:, 2:].astype(np.float)

print(data_2d)
print(target)

### Split dataset into training and test ###
validation_size = 1/3
seed = 7
#X_train, X_validation, Y_train, Y_validation = model_selection.train_test_split(data_2d, target, test_size=validation_size, random_state=seed)

#[0 0 0 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3]

t = [0, 1, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14, 15, 16, 21, 22, 23, 24, 25, 26]
v = [2, 7, 8, 17, 18, 19 ,20, 27, 28, 29]
X_train = np.array([data_2d[i] for i in t])
Y_train = np.array([target[i] for i in t])
X_validation = np.array([data_2d[i] for i in v])
Y_validation = np.array([target[i] for i in v])

print(X_train)
print(Y_train)


# Test options and evaluation metric
seed = 7
scoring = 'accuracy'

# Spot Check Algorithms
models = []
models.append(('LR', LogisticRegression()))
models.append(('LDA', LinearDiscriminantAnalysis()))
models.append(('KNN', KNeighborsClassifier()))
models.append(('CART', DecisionTreeClassifier()))
models.append(('NB', GaussianNB()))
models.append(('SVM', SVC()))
# evaluate each model in turn
results = []
names = []
for name, model in models:
	kfold = model_selection.KFold(n_splits=10, random_state=seed)
	cv_results = model_selection.cross_val_score(model, X_train, Y_train, cv=kfold, scoring=scoring)
	results.append(cv_results)
	names.append(name)
	msg = "%s: %f (%f)" % (name, cv_results.mean(), cv_results.std())
	print(msg)

# Compare Algorithms
fig = plt.figure()
fig.suptitle('Algorithm Comparison')
ax = fig.add_subplot(111)
plt.boxplot(results)
ax.set_xticklabels(names)
plt.show()

# Make predictions on validation dataset
#knn = KNeighborsClassifier()
knn = DecisionTreeClassifier()
knn.fit(X_train, Y_train)
predictions = knn.predict(X_validation)
#print(accuracy_score(Y_validation, predictions))
#print(confusion_matrix(Y_validation, predictions))
print(classification_report(Y_validation, predictions))

print(X_validation)
print(Y_validation)
print(predictions)

'''
knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(data_2d, target)
y_pred = knn.predict(data_2d)
print(y_pred)
y_pred = knn.predict(data_2d)
print(y_pred)
print(target)
print(metrics.accuracy_score(target, y_pred))


labels = data[0]
data_array = np.array(data[1:])
features = np.transpose(data_array)[0]
data_2d = np.transpose(data_array)[1:]
data_2d = data_2d.astype(np.float)

### Print ###
print(labels)
print(features)
print(data_2d)

target_all = data_2d[0][:]
print(target_all)
data_all = data_2d[:][1:]
print(data_all)
'''
