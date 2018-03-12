from sklearn import datasets
from sklearn import svm

digits = datasets.load_digits()
clf = svm.SVC(gamma=0.001, C=100.)
print(digits.data)
print(digits.target)

clf.fit(digits.data[:-1], digits.target[:-1])  
clf.predict(digits.data[-1:])

