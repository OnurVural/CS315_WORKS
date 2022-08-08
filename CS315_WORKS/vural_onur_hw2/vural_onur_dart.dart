void main(){
    print("Hello world from dart");
    print("");
    // 1.How are the boolean values represented?
    print("1.How are the boolean values represented?");
    bool truthyVal = true;
    bool falsyVal = false;
    print("truthy boolean values (bool type) are represented as: ");
    print(truthyVal);
    print("falsy boolean values (bool type) are represented as: ");
    print(falsyVal);
    print("");

    //2.What operators are short-circuited?
    print("2.What operators are short-circuited?");
    print("Short circuit operators are && and ||");
    print("&& operator demonstration: ");
    print("truthyVal && falsyVal is: ");
    print(truthyVal && falsyVal);
    print("falsyVal && truthyVal is: ");
    print(falsyVal && truthyVal);
    print("truthyVal && truthyVal is: ");
    print(truthyVal && truthyVal);
    print("falsyVal && falsyVal is: ");
    print(falsyVal && falsyVal);
    print("");

    print("|| operator demonstration: ");
    print("truthyVal || falsyVal is: ");
    print(truthyVal || falsyVal);
    print("falsyVal || truthyVal is: ");
    print(falsyVal || truthyVal);
    print("truthyVal || truthyVal is: ");
    print(truthyVal || truthyVal);
    print("falsyVal || falsyVal is: ");
    print(falsyVal || falsyVal);
    print("");

    //3.How are the results of short-circuited operators computed? (Consider also function calls)
    print("3.How are the results of short-circuited operators computed? (Consider also function calls)");
    print("x && y: if x is truthyVal than y, else x ");
    print("EXAMPLE-> falsyVal && truthyVal WILL have short circuiting, therefore DIRECTLY return value of falsyVal as:");
    print( falsyVal && truthyVal );
    print("EXAMPLE-> falsyVal && truthyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of falsyVal as:");
    print( falsyVal && truthyValReturner() );


    print("EXAMPLE-> truthyVal && falsyVal WILL NOT have short circuiting, therefore return value of falsyVal as:");
    print(truthyVal && falsyVal);
    print("EXAMPLE-> truthyVal && falsyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:");
    print(truthyVal && falsyValReturner());

    print("EXAMPLE-> falsyValReturner() && truthyValReturner() WILL have short circuiting, therefore only enter into first function as:");
    print( falsyValReturner() && truthyValReturner() );
    print("EXAMPLE-> truthyValReturner() && falsyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:");
    print( truthyValReturner() && falsyValReturner() );
    print("");

    print("x || y: if x is falsyVal than y, else x ");
    print("EXAMPLE-> truthyVal || falsyVal WILL have short circuiting, therefore DIRECTLY return value of truthyVal as:");
    print(truthyVal || falsyVal);
    print("EXAMPLE-> truthyVal || falsyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of truthyVal as:");
    print(truthyVal || falsyValReturner() );

    print("EXAMPLE-> falsyVal || truthyVal WILL NOT have short circuiting, therefore return value of truthyVal as:");
    print( falsyVal || truthyVal );
    print("EXAMPLE-> falsyVal || truthyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:");
    print(falsyVal || truthyValReturner());

    print("EXAMPLE-> truthyValReturner() || falsyValReturner() WILL have short circuiting, therefore only enter into first function as:");
    print( truthyValReturner() || falsyValReturner() );
    print("EXAMPLE-> falsyValReturner() || truthyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:");
    print( falsyValReturner() || truthyValReturner() );
    print("");

    //4.What are the advantages about short-circuit evaluation?
    print("4.What are the advantages about short-circuit evaluation?");
    print("");
    print("* short-circuit evaluation helps to efficiently go through decision statements, thus reducing the precious time loss");
    print(" by the help of short circuit evaluation, the second operand will only be evaluated when its necessary!");
    print("");
    print("EXAMPLE-> in expression haveEnoughMoney = haveEnoughMoneyInCard || checkYourPurse(10000)");
    print("No need to call checkYourPurse() if haveEnoughMoneyInCard has truthy value!!! ");
    bool haveEnoughMoneyInCard = true;
    bool haveEnoughMoney = haveEnoughMoneyInCard || checkYourPurse(10000);
    print("");
    print("EXAMPLE-> in expression (haveEnoughMoney && productIsAvailableInShelf(SMART_TV_LG_445677))");
    print("productIsAvailable() may have costly operations interacting with large data for example ");
    print("if haveEnoughMoney is false there is no need to evaluate productIsAvailableInShelf() thanks to short circuit evaluation");
    print("");
    print("When haveEnoughMoney is false:");
    haveEnoughMoney = false;



    checkBuying(haveEnoughMoney, "SMART_TV_LG_445677");
    print("");
    print("When haveEnoughMoney is true:");
    haveEnoughMoney = true;
    checkBuying(haveEnoughMoney, "SMART_TV_LG_445677");
    print("");

    print("** short-circuit evaluation helps to eliminate run-time errors");
    print("EXAMPLE-> in the expression (dangerousNumber != 0) && (1000/dangerousNumber > 100) ");
    print("(dangerousNumber != 0) may prevent evaluation of 1000/dangerousNumber thanks to short circuit evaluation!");
    int dangerousNumber = 0;

    if ((dangerousNumber != 0) && (1000/dangerousNumber > 100)){
        print("PROCESSING...");
    }
    else{
        print("PREVENTED: CANNOT DIVIDE BY " + dangerousNumber.toString());
    }
    print("");

    print("*** thanks to short-circuit evaluation, complex boolean expressions can be written inside if statements!");
    print( "if ((dangerousNumber != 0) && (1000/dangerousNumber > 100)) is simpler version of: ");
    print("if( dangerousNumber != 0 ){if (1000/dangerousNumber > 100){.....}}");

    // more complex form
    if ( dangerousNumber != 0 ){
      if (1000/dangerousNumber > 100)  {
        print("PROCESSING...");
      }
    }
    else{
        print("PREVENTED: CANNOT DIVIDE BY " + dangerousNumber.toString());
    }
    print("");



    //5.What are the potential problems about short-circuit evaluation?
    print("5.What are the potential problems about short-circuit evaluation?");
    print("* It can disregard functions that may completing a required part of the program overall... ");
    print("EXAMPLE-> in expression if ( checkStorageAvailability(1500) && checkResourceAvailability(1500))");
    print("Both functions need to make notify admin operation but due to short-circuit evaluation checkResourceAvailability(1500) is never evaluated" );
    print("");


    if ( checkStorageAvailability(1500) && checkResourceAvailability(1500)){
      print("System works properly");
    }
    else{
      print("System isn't working properly");
    }
    print("");
    print("** Efficency may decrease as well due to compiler to check for short-circuits which may result in additional cycles and time loss");

}

bool falsyValReturner() {
   print("in function falsyValReturner");
   return false;
}

bool truthyValReturner() {
   print("in function truthyValReturner");
   return true;
}

bool checkYourPurse(int amount){
  print("checking for money in the purse.................."  );
  if (amount > 1000){
    return false;
  }
  else{
    return true;
  }
}

bool productIsAvailableInShelf(String key){
  var tvShelf = ["SMART_TV_SM_447", "SMART_TV_V_445", "SMART_TV_LG_457", "SMART_TV_LG_445677"];
  for (int i = 0; i < tvShelf.length; i++){
    print("checking shelf item" + (i+1).toString());
    if(key == tvShelf[i]){
      print("found item!");
      return true;
    }
  }
  return false;

}

void checkBuying(bool haveEnoughMoney, String item){

  if( haveEnoughMoney && productIsAvailableInShelf(item) ){
      print("I bought the product!!! :)");
  }
  else{
        print("I didn't buy the product :(");
    }
}


bool checkStorageAvailability(int allocationSize){
  if(allocationSize < 1000){
     print("NO PROBLEM");
     return true;
  }
  else{
    print("NOTIFYING SYSTEM ADMIN ABOUT STORAGE PROBLEM....");
    // PROCESSING
    // notifyAdmin("msg: extension required for storage");
    return false;
  }
}

bool checkResourceAvailability(int resourceAmount){
  if(resourceAmount < 1000){
     print("NO PROBLEM");
     return true;
  }
  else{
    print("NOTIFYING SYSTEM ADMIN ABOUT RESOURCE PROBLEM....");
    // PROCESSING
    // notifyAdmin("msg: extension required for resources!!!");
    return false;
  }
}
