<!DOCTYPE html>
<html>
<body>

<?php

echo "Hello World! in PHP <br \>" . PHP_EOL;
echo "My list is: <br \>" . PHP_EOL;

// 1.How are the boolean values represented?
echo "1.How are the boolean values represented? <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "truthy boolean values are represented as: <br \>" . PHP_EOL;

echo "true is not case sensitive! <br \>" . PHP_EOL;
echo "True being a valid boolean value is checked by var_dump((bool) True) :";
var_dump((bool) true);
echo "<br \>" . PHP_EOL;

echo "true being a valid boolean value is checked by var_dump((bool) true) :";
var_dump((bool) true);
echo "<br \>" . PHP_EOL;

echo "TRue being a valid boolean value is checked by var_dump((bool) TRue) :";
var_dump((bool) TRue);
echo "<br \>" . PHP_EOL;

echo " -3 (any integer other than 0) being a valid boolean value is checked by var_dump((bool) -3 ) :";
var_dump((bool) -3 );
echo "<br \>" . PHP_EOL;


echo " anyString being a valid boolean value is checked by var_dump((bool) anyString ) :";
var_dump((bool) "anyString");
echo "<br \>" . PHP_EOL;


echo " array(3) being a valid boolean value is checked by var_dump((bool) array(3)) :";
var_dump((bool) array(3) );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;


echo "falsy boolean values are represented as: <br \>" . PHP_EOL;
echo "false is not case sensitive! <br \>" . PHP_EOL;
echo "False is checked by var_dump((bool) False) :";
var_dump((bool) False);
echo "<br \>" . PHP_EOL;

echo "false is checked by var_dump((bool) false) :";
var_dump((bool) false);
echo "<br \>" . PHP_EOL;

echo "FAlse is checked by var_dump((bool) FAlse) :";
var_dump((bool) FAlse);
echo "<br \>" . PHP_EOL;

echo " 0 is checked by var_dump((bool) 0 ) :";
var_dump((bool) 0 );
echo "<br \>" . PHP_EOL;

echo " 0.0 is checked by var_dump((bool) 0.0) :";
var_dump((bool) 0.0);
echo "<br \>" . PHP_EOL;

echo " '0' (string zero) is checked by var_dump((bool) '0') :";
var_dump((bool) '0');
echo "<br \>" . PHP_EOL;

echo " '' (empty string form) is checked by var_dump((bool) '' ) :";
var_dump((bool) '' );
echo "<br \>" . PHP_EOL;


echo " array() is checked by var_dump((bool) array()) :";
var_dump((bool) array() );
echo "<br \>" . PHP_EOL;

echo " NULL is checked by var_dump((bool) NULL) :";
var_dump((bool) NULL );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
//2.What operators are short-circuited?
echo "2.What operators are short-circuited? <br \>" . PHP_EOL;
echo "Short circuit operators are &&, AND, ||, OR, ?? <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "&&/AND operator demonstration: <br \>" . PHP_EOL;;
$truthyVal = true;
$falsyVal = false;
echo "truthyVal && falsyVal is: ";
var_dump($truthyVal && $falsyVal );
echo "<br \>" . PHP_EOL;
echo "falsyVal AND truthyVal is: ";
var_dump($falsyVal AND $truthyVal );
echo "<br \>" . PHP_EOL;
echo "truthyVal && truthyVal is: ";
var_dump($truthyVal && $truthyVal );
echo "<br \>" . PHP_EOL;
echo "falsyVal AND falsyVal is: ";
var_dump($falsyVal AND $falsyVal );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;


echo "||/OR operator demonstration: <br \>" . PHP_EOL;
echo "truthyVal || falsyVal is: ";
var_dump($truthyVal || $falsyVal );
echo "<br \>" . PHP_EOL;
echo "falsyVal OR truthyVal is: ";
var_dump($falsyVal OR $truthyVal );
echo "<br \>" . PHP_EOL;
echo "truthyVal || truthyVal is: ";
var_dump($truthyVal || $truthyVal );
echo "<br \>" . PHP_EOL;
echo "falsyVal OR falsyVal is: ";
var_dump($falsyVal OR $falsyVal );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "?? operator demonstration: <br \>" . PHP_EOL;
echo "when value is NULL, (myValue = value ?? 'Default Value') myValue will return: ";
$myValue = $value ?? "Default Value";
echo $myValue;
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;



//3.How are the results of short-circuited operators computed? (Consider also function calls)

function falsyValReturner() {
   echo "in function falsyValReturner<br \>" . PHP_EOL;
   return false;
}

function truthyValReturner() {
   echo "in function truthyValReturner<br \>" . PHP_EOL;
   return true;
}

echo "3.How are the results of short-circuited operators computed? (Consider also function calls)<br \>" . PHP_EOL;
echo "x && y: if x is truthyVal than y, else x <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> falsyVal && truthyVal WILL have short circuiting, therefore DIRECTLY return value of falsyVal as:";
echo "<br \>" . PHP_EOL;
var_dump($falsyVal && $truthyVal );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> falsyVal && truthyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of falsyVal as: ";
echo "<br \>" . PHP_EOL;
var_dump($falsyVal && truthyValReturner() );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

//----
echo "EXAMPLE-> truthyVal && falsyVal WILL NOT have short circuiting, therefore return value of falsyVal as:<br \>" . PHP_EOL;
var_dump($truthyVal && $falsyVal);
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> truthyVal && falsyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:<br \>" . PHP_EOL;
var_dump($truthyVal && falsyValReturner());
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> falsyValReturner() && truthyValReturner() WILL have short circuiting, therefore only enter into first function as:<br \>" . PHP_EOL;
var_dump( falsyValReturner() && truthyValReturner() );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo "EXAMPLE-> truthyValReturner() && falsyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:<br \>" . PHP_EOL;
var_dump( truthyValReturner() && falsyValReturner() );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
//----



echo "x || y: if x is falsyVal than y, else x <br \>" . PHP_EOL;
echo "EXAMPLE-> truthyVal || falsyVal WILL have short circuiting, therefore DIRECTLY return value of truthyVal as:<br \>" . PHP_EOL;;
var_dump( $truthyVal || $falsyVal);
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo "EXAMPLE-> truthyVal || falsyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of truthyVal as:<br \>" . PHP_EOL;
var_dump( $truthyVal || falsyValReturner() );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> falsyVal || truthyVal WILL NOT have short circuiting, therefore return value of truthyVal as:<br \>" . PHP_EOL;;
var_dump( $falsyVal || $truthyVal );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> falsyVal || truthyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:<br \>" . PHP_EOL;;
var_dump($falsyVal || truthyValReturner());
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> truthyValReturner() || falsyValReturner() WILL have short circuiting, therefore only enter into first function as:<br \>" . PHP_EOL;
var_dump( truthyValReturner() || falsyValReturner() );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> falsyValReturner() || truthyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:<br \>" . PHP_EOL;
var_dump( falsyValReturner() || truthyValReturner() );
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;



function defaultVal() {
    echo "I entered to the function defaultVal()<br \>" . PHP_EOL;
    return "DefVal";
}

echo " val ?? defaultVal() : if val not NULL return val else defaultVal()  <br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo " when val is null there WILL NOT be short circuiting" . PHP_EOL;

$myVal = $val ?? defaultVal();
echo $myVal;
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo " when val is null there WILL be short circuiting" . PHP_EOL;
$val = "VAL";
$myVal2 = $val ?? defaultVal();
echo $myVal2;
echo "<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;


//4.What are the advantages about short-circuit evaluation?
function checkYourPurse($amount){
	echo "checking for money in the purse..................<br \>" . PHP_EOL;
  	if ($amount > 1000){
    	return false;
  	}
  	else{
    	return true;
  	}
}

function productIsAvailableInShelf($key){
  $tvShelf = array("SMART_TV_SM_447", "SMART_TV_LG_445677");


  if (in_array($key, $tvShelf))
  {
    echo "checking shelf item <br \>" . PHP_EOL;
    echo "found item!<br \>" . PHP_EOL;
    return true;
  }
  else
  {
    return false;
  }

}

function checkBuying($haveEnoughMoney, $item){

  if( $haveEnoughMoney && productIsAvailableInShelf($item) ){
      echo "I bought the product!!! :)<br \>" . PHP_EOL;;
  }
  else{
        echo "I didn't buy the product :(<br \>" . PHP_EOL;
    }
}




echo "4.What are the advantages about short-circuit evaluation?<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo "* short-circuit evaluation helps to efficiently go through decision statements, thus reducing the precious time loss<br \>" . PHP_EOL;
echo " by the help of short circuit evaluation, the second operand will only be evaluated when its necessary!<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo"EXAMPLE-> in expression haveEnoughMoney = haveEnoughMoneyInCard || checkYourPurse(10000)<br \>" . PHP_EOL;
echo "No need to call checkYourPurse() if haveEnoughMoneyInCard has truthy value!!! <br \>" . PHP_EOL;
$haveEnoughMoneyInCard = true;
$haveEnoughMoney = $haveEnoughMoneyInCard || checkYourPurse(10000);
echo "<br \>" . PHP_EOL;

echo "EXAMPLE-> in expression (haveEnoughMoney && productIsAvailableInShelf(SMART_TV_LG_445677))<br \>" . PHP_EOL;
echo "productIsAvailable() may have costly operations interacting with large data for example <br \>" . PHP_EOL;
echo "if haveEnoughMoney is false there is no need to evaluate productIsAvailableInShelf() thanks to short circuit evaluation<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;

echo "When haveEnoughMoney is false:<br \>" . PHP_EOL;
$haveEnoughMoney = false;
checkBuying($haveEnoughMoney, "SMART_TV_LG_445677");
echo "<br \>" . PHP_EOL;

print("When haveEnoughMoney is true:");
$haveEnoughMoney = true;
checkBuying($haveEnoughMoney, "SMART_TV_LG_445677");
echo "<br \>" . PHP_EOL;

echo "** short-circuit evaluation helps to eliminate run-time errors<br \>" . PHP_EOL;
echo "EXAMPLE-> in the expression (dangerousNumber != 0) && (1000/dangerousNumber > 100) <br \>" . PHP_EOL;
echo "(dangerousNumber != 0) may prevent evaluation of 1000/dangerousNumber thanks to short circuit evaluation!<br \>" . PHP_EOL;
$dangerousNumber = 0;

if (($dangerousNumber != 0) && (1000/$dangerousNumber > 100)){
     echo "PROCESSING...<br \>" . PHP_EOL;
}
else{
    echo "PREVENTED: CANNOT DIVIDE BY 0<br \>" . PHP_EOL;
}
echo "<br \>" . PHP_EOL;

echo "*** thanks to short-circuit evaluation, complex boolean expressions can be written inside if statements!<br \>" . PHP_EOL;
echo "if ((dangerousNumber != 0) && (1000/dangerousNumber > 100)) is simpler version of: <br \>" . PHP_EOL;
echo "if( dangerousNumber != 0 ){if (1000/dangerousNumber > 100){.....}}<br \>" . PHP_EOL;

    // more complex form
    if ( $dangerousNumber != 0 ){
      if (1000/$dangerousNumber > 100)  {
        echo "PROCESSING...<br \>" . PHP_EOL;
      }
    }
    else{
        echo "PREVENTED: CANNOT DIVIDE BY 0<br \>" . PHP_EOL;
    }
echo "<br \>" . PHP_EOL;


//5.What are the potential problems about short-circuit evaluation?

function checkStorageAvailability($allocationSize){
  if($allocationSize < 1000){
     echo "NO PROBLEM<br \>" . PHP_EOL;
     return true;
  }
  else{
    echo "NOTIFYING SYSTEM ADMIN ABOUT STORAGE PROBLEM....<br \>" . PHP_EOL;
    // PROCESSING
    // notifyAdmin("msg: extension required for storage");
    return false;
  }
}

function checkResourceAvailability($resourceAmount){
  if($resourceAmount < 1000){
     echo "NO PROBLEM<br \>" . PHP_EOL;
     return true;
  }
  else{
    echo "NOTIFYING SYSTEM ADMIN ABOUT RESOURCE PROBLEM....<br \>" . PHP_EOL;
    // PROCESSING
    // notifyAdmin("msg: extension required for resources!!!");
    return false;
  }
}
echo "<br \>" . PHP_EOL;


echo "5.What are the potential problems about short-circuit evaluation?<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;
echo "* It can disregard functions that may completing a required part of the program overall... <br \>" . PHP_EOL;
echo "EXAMPLE-> in expression if ( checkStorageAvailability(1500) && checkResourceAvailability(1500))<br \>" . PHP_EOL;
echo "Both functions need to make notify admin operation but due to short-circuit evaluation checkResourceAvailability(1500) is never evaluated<br \>" . PHP_EOL;
echo "<br \>" . PHP_EOL;


if ( checkStorageAvailability(1500) && checkResourceAvailability(1500)){
      echo "System works properly<br \>" . PHP_EOL;
}
else{
      echo"System isn't working properly<br \>" . PHP_EOL;
}
echo "<br \>" . PHP_EOL;
echo"** Efficency may decrease as well due to compiler to check for short-circuits which may result in additional cycles and time loss<br \>" . PHP_EOL;












?>

</body>
</html>
