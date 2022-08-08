void main(){
    print("Hello world from dart");
    List<int> myList = [6, 5, 5, 3, 2, 1];
    print("My list is: ");
    print(myList);
    print("");

    // 1) What types are legal for subscripts?
    print("1- What types are legal for subscripts?");
    int integerNum = 2;
    double doubleNum = 2.0;
    print("The subscript can only be integer, subscript operator is [] " );
    print("Legal subscript usage is [integerNumber]");
    print("EXAMPLE->List[2] shows legal usage which gives :" + myList[integerNum].toString());
    //print(myList[doubleNum]); // CT ERROR: The argument type 'double' can't be assigned to the parameter type 'int'
    //print(myList(integerNum)); // CT ERROR: using () for subscript is not acceptable
    print("");

    // 2) Are subscripting expressions in element references range checked?
    print("2- Are subscripting expressions in element references range checked?");
    int offBoundNumber = 7;
    //print(myList[offBoundNumber]); // RT ERROR: RangeError (index): Index out of range: index should be less than 6: 7
    print("Yes, trying to use subscript out of bounds produce RT Error");
    print("EXAMPLE-> Reaching myList[7] produces following error,RangeError (index): Index out of range: index should be less than 6: 7" );
    print("");

    //3) When are subscript ranges bound?
    print("3- When are subscript ranges bound?");
    print("Subscript ranges are bound at run-time/ dynamically bound in heap ");
    print("EXAMPLE-> For myList, subscript ranges are bound once again, at run-time, when it is reallocted");

    print("My list is: ");
    print(myList);
    print("After reallocation, my list is: ");
    myList = [7, 2, 1, 1, 4]; //
    print(myList);
    print("");



    // 4) When does allocation take place?
    print("4- When does allocation take place?");
    print("Allocation takes place at run-time, in heap ");
    print("EXAMPLE-> Trying to reach an array before its creation gives error at RUN-TIME" );
    //print(myProblematicList);
    //var myProblematicList = [1,2,3];
    print("print(myProblematicList) -> Getter not found: 'myProblematicList" );

    print("EXAMPLE-> Same array, myList can be reallocated (see under 3 again)");
    print("");


    // 5) Are ragged or rectangular multidimensional arrays allowed, or both?
    print("5- Are ragged or rectangular multidimensional arrays allowed, or both?");
    print("Both are allowed!");
    List<List<int>> rectArray = [[1,2,3],[4,5,6],[7,8,9]];
    print("EXAMPLE-> Rectangular array is: ");
    print(rectArray);
    List<List<int>> raggedArray = [[1,2,3],[4,5],[6,7,8,9]];
    print("EXAMPLE-> Ragged array is: ");
    print(raggedArray);
    print("");


    // 6) Can array objects be initialized?
    print("6- Can array objects be initialized?");
    print("Array objects can be initialized as following: ");
    myList = [0,1,2,3,4,5,6,7,8,9,10];
    print("myList = [...]");
    print("");

    // 7) Are any kind of slices supported?
    print("7- Are any kind of slices supported?");
    print("Slices are possible with sublist(start, end-excluded) or sublist(start)");
    print("EXAMPLE-> slice of myList demonstration is as follows...");
    print("myList is: " );
    print(myList);
    print("sublist(1,3) is: ");
    print(myList.sublist(1,3));
    print("");

    // 8) Which operators are provided?
    print("8- Which operators are provided?");
    print("Provided operators are: +, ==, !=, [], []=");
    print("******************************************");
    print("+ operator demonstration:");
    print("myList is: " );
    print(myList);
    List<int> yourList = [11,12,13,14,15,16,17];
    print("yourList is: ");
    print(yourList);
    List<int> ourList = myList + yourList;
    print("myList + ourList is: ");
    print(ourList);
    print("******************************************");
    print("== operator demonstration:");
    print("Is myList equal to yourList? -> (myList == yourList)");
    print(myList == yourList);
    print("******************************************");
    print("!= operator demonstration:");
    print("Is myList NOT equal to yourList? -> (myList != yourList)");
    print(myList != yourList);
    print("******************************************");
    print("[] operator demonstration:");
    print("myList[index] retrieves the object at given index");
    print("myList[2] is: " + myList[2].toString());
    print("******************************************");
    print("[]= operator demonstration:");
    print("myList[index]= is used to assign a value according to index");
    print("myList[5] is: " + myList[5].toString());
    myList[5]= 55;
    print("After (myList[5]= 55) myList[5] is: " + myList[5].toString());
}
