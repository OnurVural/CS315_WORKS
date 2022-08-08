<!DOCTYPE html>
<html>
<body>

<?php

echo "Hello World! in PHP <br \>" . PHP_EOL;
echo "My list is: <br \>" . PHP_EOL;

$myList = array(6, 5, 5, 3, 2, 1);
foreach ($myList as $key => $value){
echo "{$value}, ";
}
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

// 1) What types are legal for subscripts?
echo "1- What types are legal for subscripts?<br \>" . PHP_EOL;
$key = "myKey";
echo "The subscript can be integer or string, subscript operator is [] or {} <br \>" . PHP_EOL;
echo "Legal subscript usage is {integerNumber|stringKey}, [integerNumber|stringKey] <br \>" . PHP_EOL;
echo "EXAMPLE->myList{2} shows legal usage which gives : " ;
echo $myList{2};
echo "<br \>" . PHP_EOL;
echo "EXAMPLE->myList[2] also shows legal usage which gives : " ;
echo $myList[2];
$myList['myKey'] = 41;
echo "<br \>" . PHP_EOL;
echo "EXAMPLE->myList['myKey'] = 41 is also legal subscript usage as myList['myKey'] gives: ";
echo $myList['myKey'];
echo "<br \>" . PHP_EOL;
echo "EXAMPLE->myList[1.5] is also legal subscript usage where double is treated like integer and gets rounded to 2<br \>". PHP_EOL;
echo "myList[1.5] is therefore myList[2] which gives: ";
echo $myList[1.5];
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

// 2) Are subscripting expressions in element references range checked?
echo "2- Are subscripting expressions in element references range checked?<br \>" . PHP_EOL;
echo "Yes, trying to use subscript out of bounds produce null value but does not produce error!<br \>" . PHP_EOL;
echo "It simply gives-> PHP Notice:  Undefined offset: 7 in HelloWorld.php on line 42<br \>" . PHP_EOL;
echo "EXAMPLE-> Reaching out of bounds produces null value, myList[7] is: " ;
echo $myList[7];
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

// 3) When are subscript ranges bound?
echo "3- When are subscript ranges bound?<br \>" . PHP_EOL;
echo "Subscript ranges are bound at run-time/ dynamically bound in heap <br \>" . PHP_EOL;
echo "EXAMPLE-> For myList, subscript ranges are bound once again, at run-time, when it is reallocted <br \>" . PHP_EOL;

echo "My list is: <br \>" . PHP_EOL;

foreach ($myList as $key => $value){
echo "{$value}, ";
}
echo "<br \>" . PHP_EOL;
echo "After reallocation, my list is: <br \>" . PHP_EOL;
$myList = array(7, 2, 1, 1, 4);
foreach ($myList as $key => $value){
echo "{$value}, ";
}
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

// 4) When does allocation take place?
echo "4- When does allocation take place? <br \>" . PHP_EOL;
echo "Allocation takes place at run-time, in heap <br \>" . PHP_EOL;

echo "EXAMPLE-> Trying to reach an array before its creation returns NULL at RUN-TIME<br \>" . PHP_EOL;
// print_r($myProblematicList); // returs NULL
// $myProblematicList = array(1, 2, 3);
echo "print_r(myProblematicList) -> NULL<br \>" . PHP_EOL;

echo "EXAMPLE-> Same array, myList can be reallocated (see under 3 again)<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;



// 5) Are ragged or rectangular multidimensional arrays allowed, or both?
echo "5- Are ragged or rectangular multidimensional arrays allowed, or both? <br \>" . PHP_EOL;
echo "Both are allowed! <br \>" . PHP_EOL;
$rectArray = array(array(1,2,3), array(4,5,6), array(7,8,9));
echo "EXAMPLE-> Rectangular array is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($rectArray);
echo "<br \>" . PHP_EOL;
$raggedArray = array(array(1,2,3),array(4,5),array(6,7,8,9));
echo "EXAMPLE-> Ragged array is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($raggedArray);
echo "<br \>" . PHP_EOL;

// 6) Can array objects be initialized?
echo "6- Can array objects be initialized?<br \>" . PHP_EOL;
echo "Array objects can be initialized as following: <br \>" . PHP_EOL;

$myList = array(0,1,2,3,4);
echo "myList = array(...) <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

// 7) Are any kind of slices supported?
echo "7- Are any kind of slices supported?<br \>" . PHP_EOL;
echo "Slices are possible with array_slice(arrayName, start, end) <br \>" . PHP_EOL;
echo "EXAMPLE-> slice of myList demonstration is as follows... <br \>" . PHP_EOL;
echo "myList is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($myList);
echo "<br \>" . PHP_EOL;
$mySlice = array_slice($myList, 1, 3);
echo "array_slice(myList, 1, 3) is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($mySlice);
echo "<br \>" . PHP_EOL;

// 8) Which operators are provided?
echo "8- Which operators are provided? <br \>" . PHP_EOL;
echo "Provided operators are: [], =, +, ==, ===, !=, !==, <>  <br \>" . PHP_EOL;
echo "******************************************<br \>" . PHP_EOL;
echo "+ operator demonstration: <br \>" . PHP_EOL;
echo "myList is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($myList);
echo "<br \>" . PHP_EOL;
$yourList = [11,12,13,14,15,16,17];
echo "yourList is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($yourList);
echo "<br \>" . PHP_EOL;
$ourList = $myList + $yourList;
echo "myList + ourList is: <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
print_r($ourList);
echo "<br \>" . PHP_EOL;
echo "******************************************<br \>" . PHP_EOL;
echo "== operator demonstration: <br \>" . PHP_EOL;
echo "Are myList elements equal to yourList elements? -> (myList == yourList)<br \>" . PHP_EOL;
var_dump($myList == $yourList);
echo "******************************************<br \>" . PHP_EOL;
echo "=== operator demonstration: <br \>" . PHP_EOL;
echo "Are myList elements equal and in same order with yourList? -> (myList === yourList)<br \>" . PHP_EOL;
var_dump($myList === $yourList);
echo "******************************************<br \>" . PHP_EOL;
echo "!= operator demonstration: <br \>" . PHP_EOL;
echo "Are myList elements NOT equal to yourList elements? -> (myList != yourList)<br \>" . PHP_EOL;
var_dump($myList != $yourList);
echo "******************************************<br \>" . PHP_EOL;
echo "!== operator demonstration: <br \>" . PHP_EOL;
echo "Are myList elements NOT equal and NOT in same order with yourList? -> (myList !== yourList)<br \>" . PHP_EOL;
var_dump($myList !== $yourList);
echo "******************************************<br \>" . PHP_EOL;
echo "<> operator demonstration: <br \>" . PHP_EOL;
echo "Are myList elements NOT equal to yourList elements? -> (myList <> yourList)<br \>" . PHP_EOL;
var_dump($myList <> $yourList);







?>

</body>
</html>
