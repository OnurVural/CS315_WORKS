import numpy as np
print("Hello word from Python")
myList = np.array([6, 5, 5, 3, 2, 1])
print("My list is: ")
print(myList)
print("")

# 1) What types are legal for subscripts?
print("1- What types are legal for subscripts?")
integerNum = 2
doubleNum = 2.0
print("The subscript can only be integer, subscript operator is [] " )
print("Legal subscript usage is [integerNumber]")
print("EXAMPLE->List[2] shows legal usage which gives :", end= " ")
print(myList[integerNum])
# print(myList[doubleNum]) # CT ERROR: TypeError: list indices must be integers or slices, not float
# print(myList(integerNum)) # CT ERROR: TypeError: 'list' object is not callable
print("")

# 2) Are subscripting expressions in element references range checked?
print("2- Are subscripting expressions in element references range checked?")
offBoundNumber = 7
# print(myList[offBoundNumber]) # RT ERROR: IndexError: list index out of range
print("Yes, trying to use subscript out of bounds produce RT Error")
print("EXAMPLE-> Reaching myList[7] produces following error, IndexError: list index out of range" )
print("")

# 3) When are subscript ranges bound?
print("3- When are subscript ranges bound?")
print("Subscript ranges are bound at run-time/ dynamically bound in heap ")
print("EXAMPLE-> For myList, subscript ranges are bound once again, at run-time, when it is reallocted")

print("My list is: ")
print(myList)
print("After reallocation, my list is: ");
myList = np.array([7, 2, 1, 1, 4])
print(myList)
print("")

# 4) When does allocation take place?
print("4- When does allocation take place?")
print("Allocation takes place at run-time, in heap ")


print("EXAMPLE-> Trying to reach an array before its creation gives error at RUN-TIME" )
# print(myProblematicList) # NameError: name 'myProblematicList' is not defined
# myProblematicList = np.array([1,2,3])
print("print(myProblematicList) -> NameError: name 'myProblematicList' is not defined" )

print("EXAMPLE-> Same array, myList can be reallocated (see under 3 again)")
print("")

# 5) Are ragged or rectangular multidimensional arrays allowed, or both?
print("5- Are ragged or rectangular multidimensional arrays allowed, or both?")
print("Both are allowed!")
rectArray = np.array([[1,2,3],[4,5,6],[7,8,9]])
print("EXAMPLE-> Rectangular array is: ");
print(rectArray);
#raggedArray = np.array([[1,2,3],[4,5],[6,7,8,9]], dtype=object)
raggedArray = np.array( [np.array([1,2,3]), np.array([4,5]), np.array([6,7,8,9])], dtype=object )
print("EXAMPLE-> Ragged array is: ")
print(raggedArray)
print("")

# 6) Can array objects be initialized?
print("6- Can array objects be initialized?")
print("Array objects can be initialized as following: ")
myList = np.array([0,1,2,3,4,5,6,7,8,9,10])
print("myList = np.array([...])")
print("")

# 7) Are any kind of slices supported?
print("7- Are any kind of slices supported?")
print("Slices are possible with [start: end-excluded] ")
print("EXAMPLE-> slice of myList demonstration is as follows...")
print("myList is: " )
print(myList)
print("sublist(1,3) is: ")
print(myList[1 : 3])
print("")

# 8) Which operators are provided?
print("8- Which operators are provided?")
print("Provided operators are: +, ==, [], []=, +=, !=, *, *=, [:], **, @ ")
print("******************************************")
print("+ operator demonstration:")
print("myList is: " )
print(myList)
yourList = np.array([11,12,13,14,15,16,17,18,19,20,21])
print("yourList is: ")
print(yourList)
ourList = myList + yourList
print("myList + ourList is: ")
print(ourList)
print("******************************************")
print("== operator demonstration:")
print("Is myList equal to yourList? -> (myList == yourList)")
print(myList == yourList)
print("******************************************")
print("[] operator demonstration:")
print("myList[index] retrieves the object at given index")
print("myList[2] is: ", end= " ")
print(myList[2])
print("******************************************")
print("[]= operator demonstration:")
print("myList[index]= is used to assign a value according to index")
print("myList[5] is: ", end= " ")
print(myList[5])
myList[5]= 55
print("After (myList[5]= 55) myList[5] is: ", end= " ")
print(myList[5])
print("******************************************")
print("+= operator demonstration:")
print("+= is used to elementwise add the items of lval and rval")
print("theList is: " )
theList = [66,777,8888,1,1,1,1,1,1,1,1]
print(theList)
print("yourList is: ")
print(yourList)
print("theList += yourList is: ")
theList += yourList
print(theList)
print("******************************************")
print("!= operator demonstration:")
print("Is myList not equal to yourList? -> (myList != yourList)")
print(myList != yourList)
print("******************************************")
print("*, *= operator demonstration:")
print("*, *= is used to multiply elements of the list with given constant")
print("yourList is: ")
print(yourList)
print("yourList after (yourList = yourList * 3) OR (yourList *= 3) is: ")
yourList = yourList * 3
print(yourList)
print("******************************************")
print("******************************************")
print("[:] operator demonstration:")
print("myList[1:3] is: " )
print(myList[1:3])
print("******************************************")
print("ADDITIONAL IMPORTANT NUMPY ARRAY OPERATORS")
print("----numpyArr is: ")
numpyArr = np.array([1, 2, 3])
print(numpyArr)
print("numpyArr + 2 is: ")
print(numpyArr + 2)
print("numpyArr - 2 is: ")
print(numpyArr - 2)
print("numpyArr * 2 is: ")
print(numpyArr * 2)
print("numpyArr ** 2 is: ")
print(numpyArr ** 2)
numpyArr2 = np.array([4, 5, 6])
print("----numpyArr2 is: ")
print(numpyArr2)
print("numpyArr2 + numpyArr is")
print(numpyArr2 + numpyArr)
print("numpyArr2 - numpyArr is")
print(numpyArr2 - numpyArr)
print("")
numpyMatrix1 = np.array([[1, 2], [4, 5]])
print("numpyMatrix1 is: ")
print(numpyMatrix1)
print("")
print("numpyMatrix2 is: ")
numpyMatrix2 = np.array([[1, 3], [2, 4]])
print(numpyMatrix2)
print("numpyMatrix1 @ numpyMatrix2 is: ")
print("matrixMultResult is: ")
matrixMultResult = numpyMatrix1 @ numpyMatrix2
print(matrixMultResult)
