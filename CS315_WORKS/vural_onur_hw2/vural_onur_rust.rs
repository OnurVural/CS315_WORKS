fn main() {
    println!("Hello world from Rust");
    println!("");
    // 1.How are the boolean values represented?
    println!("1.How are the boolean values represented?");
    let truthy_val = true;
    let falsy_val = false;
    println!("truthy boolean values are represented as: ");
    println!("{}", truthy_val);
    println!("falsy boolean values are represented as: ");
    println!("{}",falsy_val);
    println!("");


    //2.What operators are short-circuited?
    println!("2.What operators are short-circuited?");
    println!("Short circuit operators are && and ||");
    println!("&& operator demonstration: ");
    println!("truthyVal && falsyVal is: ");
    println!("{}", truthy_val && falsy_val);
    println!("falsyVal && truthyVal is: ");
    println!("{}", falsy_val && truthy_val);
    println!("truthyVal && truthyVal is: ");
    println!("{}", truthy_val && truthy_val);
    println!("falsyVal && falsyVal is: ");
    println!("{}", falsy_val && falsy_val);
    println!("");

    println!("|| operator demonstration: ");
    println!("truthyVal || falsyVal is: ");
    println!("{}", truthy_val || falsy_val);
    println!("falsyVal || truthyVal is: ");
    println!("{}", falsy_val || truthy_val);
    println!("truthyVal || truthyVal is: ");
    println!("{}",truthy_val || truthy_val);
    println!("falsyVal || falsyVal is: ");
    println!("{}", falsy_val || falsy_val);
    println!("");


    //3.How are the results of short-circuited operators computed? (Consider also function calls)
    println!("3.How are the results of short-circuited operators computed? (Consider also function calls)");
    println!("x && y: if x is truthyVal than y, else x ");
    println!("EXAMPLE-> falsyVal && truthyVal WILL have short circuiting, therefore DIRECTLY return value of falsyVal as:");
    println!( "{}", falsy_val && truthy_val );
    println!("EXAMPLE-> falsyVal && truthyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of falsyVal as:");
    println!( "{}", falsy_val && truthy_val_returner() );


    println!("EXAMPLE-> truthyVal && falsyVal WILL NOT have short circuiting, therefore return value of falsyVal as:");
    println!( "{}",truthy_val && falsy_val);
    println!("EXAMPLE-> truthyVal && falsyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:");
    println!( "{}", truthy_val && falsy_val_returner());

    println!("EXAMPLE-> falsyValReturner() && truthyValReturner() WILL have short circuiting, therefore only enter into first function as:");
    println!( "{}", falsy_val_returner() && truthy_val_returner() );
    println!("EXAMPLE-> ertruthyValReturner() && falsyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:");
    println!( "{}", truthy_val_returner() && falsy_val_returner() );
    println!("");

    println!("x || y: if x is falsyVal than y, else x ");
    println!("EXAMPLE-> truthyVal || falsyVal WILL have short circuiting, therefore DIRECTLY return value of truthyVal as:");
    println!( "{}", truthy_val || falsy_val);
    println!("EXAMPLE-> truthyVal || falsyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of truthyVal as:");
    println!("{}", truthy_val || falsy_val_returner() );

    println!("EXAMPLE-> falsyVal || truthyVal WILL NOT have short circuiting, therefore return value of truthyVal as:");
    println!( "{}", falsy_val || truthy_val );
    println!("EXAMPLE-> falsyVal || truthyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:");
    println!("{}", falsy_val || truthy_val_returner());

    println!("EXAMPLE-> truthyValReturner() || falsyValReturner() WILL have short circuiting, therefore only enter into first function as:");
    println!( "{}", truthy_val_returner() || falsy_val_returner() );
    println!("EXAMPLE-> falsyValReturner() || truthyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:");
    println!( "{}", falsy_val_returner() || truthy_val_returner() );
    println!("");


    //4.What are the advantages about short-circuit evaluation?
    println!("4.What are the advantages about short-circuit evaluation?");
    println!("");
    println!("* short-circuit evaluation helps to efficiently go through decision statements, thus reducing the precious time loss");
    println!(" by the help of short circuit evaluation, the second operand will only be evaluated when its necessary");
    println!("");
    println!("EXAMPLE-> in expression haveEnoughMoney = haveEnoughMoneyInCard || checkYourPurse(10000)");
    println!("No need to call checkYourPurse() if haveEnoughMoneyInCard has truthy value!!! ");
    let have_enough_money_in_card = true;
    let mut have_enough_money = have_enough_money_in_card || check_your_purse(10000);
    println!("");
    println!("EXAMPLE-> in expression (haveEnoughMoney && productIsAvailableInShelf(SMART_TV_LG_445677))");
    println!("productIsAvailable() may have costly operations interacting with large data for example ");
    println!("if haveEnoughMoney is false there is no need to evaluate productIsAvailableInShelf() thanks to short circuit evaluation");
    println!("");
    println!("When haveEnoughMoney is false:");
    have_enough_money = false;



    check_buying(have_enough_money, "SMART_TV_LG_445677".to_owned());
    println!("");
    println!("When haveEnoughMoney is true:");
    have_enough_money = true;
    check_buying(have_enough_money, "SMART_TV_LG_445677".to_owned());
    println!("");

    println!("** short-circuit evaluation helps to eliminate run-time errors");
    println!("EXAMPLE-> in the expression (dangerousNumber != 0) && (1000/dangerousNumber > 100) ");
    println!("(dangerousNumber != 0) may prevent evaluation of 1000/dangerousNumber thanks to short circuit evaluation!");
    let dangerous_number = 0;

    if (dangerous_number != 0) && (1000/dangerous_number > 100){
    println!("PROCESSING...");

    }
    else{
        println!("PREVENTED: CANNOT DIVIDE BY 0" );
    }
    println!("");

    println!("*** thanks to short-circuit evaluation, complex boolean expressions can be written inside if statements!");
    println!( "IF ((dangerousNumber != 0) && (1000/dangerousNumber > 100)) is simpler version of: ");
    println!("IF( dangerousNumber != 0 )IF (1000/dangerousNumber > 100)");

    // more complex form
    if  dangerous_number != 0 {
      if 1000/dangerous_number > 100 {
        println!("PROCESSING...");

      }
    }
    else{
        println!("PREVENTED: CANNOT DIVIDE BY 0");
    }
    println!("");



    //5.What are the potential problems about short-circuit evaluation?
    println!("5.What are the potential problems about short-circuit evaluation?");
    println!("* It can disregard functions that may completing a required part of the program overall... ");
    println!("EXAMPLE-> in expression if ( checkStorageAvailability(1500) && checkResourceAvailability(1500))");
    println!("Both functions need to make notify admin operation but due to short-circuit evaluation checkResourceAvailability(1500) is never evaluated" );
    println!("");


    if ( check_storage_availability(1500) && check_resource_availability(1500)){
      println!("System works properly");
    }
    else{
      println!("System isn't working properly");
    }
    println!("");
    println!("** Efficency may decrease as well due to compiler to check for short-circuits which may result in additional cycles and time loss");

}

fn falsy_val_returner() -> bool{
   println!("in function falsy_val_returner");
   return false;
}

fn truthy_val_returner() -> bool{
   println!("in function truthy_val_returner");
   return true;
}



fn check_your_purse( amount: i32 ) -> bool{
  println!("checking for money in the purse.................."  );
  if amount > 1000{
    return false;
  }
  else{
    return true;
  }
}

fn product_is_available_in_shelf( key: String ) -> bool{
  let tv_shelf = ["SMART_TV_SM_447", "SMART_TV_V_445", "SMART_TV_LG_457", "SMART_TV_LG_445677"];



  println!("checking shelf item");
  if key == "SMART_TV_LG_445677"{println!("found item!");}

  return true;

}

fn check_buying( have_enough_money: bool , item:  String ){

  if have_enough_money && product_is_available_in_shelf(item.to_owned()) {
      println!("I bought the product!!! :)");
  }
  else{
        println!("I didn't buy the product :(");
    }
}


fn check_storage_availability(allocation_size : i32) -> bool{
  if allocation_size < 1000 {
     println!("NO PROBLEM");
     return true;
  }
  else{
    println!("NOTIFYING SYSTEM ADMIN ABOUT STORAGE PROBLEM....");
    // PROCESSING
    // notifyAdmin("msg: extension required for storage");
    return false;
  }
}

fn check_resource_availability(resource_amount : i32) -> bool{
  if resource_amount < 1000 {
     println!("NO PROBLEM");
     return true;
  }
  else{
    println!("NOTIFYING SYSTEM ADMIN ABOUT RESOURCE PROBLEM....");
    // PROCESSING
    // notifyAdmin("msg: extension required for resources!!!");
    return false;
  }
  }
