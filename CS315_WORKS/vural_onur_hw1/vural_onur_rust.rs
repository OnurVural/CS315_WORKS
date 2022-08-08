fn main() {
    println!("Hello world in rust");
    let my_list: [i32; 6] = [6, 5, 5, 3, 2, 1];
    println!("My list is: ");
    println!("{:?}", my_list);
    println!(" ");

    // 1) What types are legal for subscripts?
    println!("1- What types are legal for subscripts?");
    println!("The subscript can only be integer, subscript operator is [] " );
    println!("Legal subscript usage is [integerNumber]");
    print!("EXAMPLE->List[2] shows legal usage which gives :");
    print!("{:?}", my_list[2]);
    println!("");
    println!("");
    // print!("{:?}", my_list[doubleNum]) # RT ERROR: slice indices are of type `usize` or ranges of `usize`


    // 2) Are subscripting expressions in element references range checked?
    println!("2- Are subscripting expressions in element references range checked?");
    //print!("{:?}", my_list[7]); // CT ERROR: index out of bounds: the len is 6 but the index is 7
    println!("Yes, trying to use subscript out of bounds produce CT Error");
    println!("EXAMPLE-> Reaching my_list[7] produces following error, index out of bounds: the len is 6 but the index is 7" );
    println!("");

    // 3) When are subscript ranges bound?
    println!("3- When are subscript ranges bound?");
    println!("Subscript ranges are bound at compile-time in stack ");
    println!("EXAMPLE-> For myList, subscript ranges CANNOT bound once again, since subcscript ranges are bound at COMPILE-TIME");

    println!("My list is: ");
    println!("{:?}", my_list);
    println!("EXAMPLE DEMO-> Trying to assign my_list again as my_list = [7, 2, 1, 1, 4] produces following error: ");
    println!("error[E0308]: mismatched types expected an array with a fixed size of 6 elements, found one with 5 elements");
    //my_list = [7, 2, 1, 1, 4]; // mismatched types expected an array with a fixed size of 6 elements, found one with 5 elements
    println!("");

    // 4) When does allocation take place?
    println!("4- When does allocation take place?");
    println!("Allocation takes place at compile-time, in stack ");

    println!("EXAMPLE-> Trying to reach an array before its creation gives error at COMPILE-TIME" );
    //println!("{:?}",my_problematic_list); // error[E0425]: cannot find value `my_problematic_list` in this scope
    //let my_problematic_list: [i32; 3] = [0,0,0];
    println!("trying to print my_problematic_list gives -> error[E0425]: cannot find value `my_problematic_list` in this scope" );
    println!("");
    println!("EXAMPLE-> Same array, my_list can't be reallocated (see under 3 again) or items of it cannot be changed after alloc");
    print!("2'nd element of the array, my_list[1] is: ");
    print!("{:?}", my_list[1]);
    println!("");
    // my_list[1] = 48;
    println!( "EXAMPLE DEMO-> Trying to change 2'nd element of the array, my_list[1] = 48 gives following error: ");
    println!("error[E0594]: cannot assign to immutable indexed content `my_list[..]: cannot mutably borrow immutable field");
    println!("");

    // 5) Are ragged or rectangular multidimensional arrays allowed, or both?
    println!("5- Are ragged or rectangular multidimensional arrays allowed, or both?");

    let rect_array: [[i32; 3]; 3] = [[1,2,3],[4,5,6],[7,8,9]];
    println!("EXAMPLE-> Rectangular array is: ");
    println!("{:?}", rect_array);

    println!("");
    println!("***Basic array structure of Rust does not function to create jagged array essentailly but this can be accomplished via using vectors or crates like Rust's jagged_array crate");
    //let ragged_array: Vec<Vec<u8>> = vec![vec![0; 3], vec![0; 2], vec![0; 1]];
    //println!("EXAMPLE-> Ragged array is: ");
    //println!("{:?}",ragged_array);
    println!("");


    // 6) Can array objects be initialized?
    println!("6- Can array objects be initialized?");
    println!("Array objects can be initialized as following: ");
    let my_list2: [i32; 3] = [1, 2, 3];
    println!("let my_list2: [i32; arrayLength] = [....];");
    println!("");

    // 7) Are any kind of slices supported?
    println!("7- Are any kind of slices supported?");
    println!("Slices are possible with &arrayName[start..end-excluded] ");
    println!("EXAMPLE-> slice of myList demonstration is as follows...");
    println!("my_list is: " );
    println!("{:?}", my_list);
    println!("&my_list[1..3] is: ");
    let my_slice = &my_list[1..3];
    println!("{:?}", my_slice);
    println!("");

    // 8) Which operators are provided?
    println!("8- Which operators are provided?");
    println!("Provided operators are: [], []=, [T; N], [x;N],  &, ==, !=, ",);
    println!("******************************************");
    println!("[] operator demonstration:");
    println!("my_list[index] retrieves the object at given index");
    print!("myList[2] is: ");
    print!("{:?}", my_list[2]);
    println!("");

    println!("******************************************");
    println!("[]= operator demonstration:");
    println!("myList[index]= is used to assign a value according to index");
    let mut my_list3: [i32; 3] = [0,0,0];
    println!("my_list3[1] is: ");
    println!("{:?}", my_list3[1]);
    my_list3[1]= 1;
    println!("After (my_list3[1]= 1;) my_list3[1] is: ");
    println!("{:?}", my_list3[1]);

    println!("******************************************");
    println!("[T:N] operator demonstration:");
    println!("T means the type, n means the size in this context");
    let my_list4: [i32; 2] = [1,2];
    println!("When stating -> my_list4: [i32; 2] = [1,2], i32 defines integer, 2 defines size");

    println!("******************************************");
    println!("[x;N] operator demonstration:");
    println!("x is initializing constant, N is size");
    let arr_c: [i32;10] = [72; 10];
    println!("let arr_c: [i32;10] = [72; 10] produces:");
    println!("{:?}", arr_c);

    println!("******************************************");
    println!("& operator demonstration:");
    println!("& used to copy the values in slice");
    let my_slice2 = &my_list3[..];
    println!("When stating -> let my_slice2 = &my_list3[..], & suggests to get copies of values in slice");

    println!("******************************************");
    println!("== operator demonstration:");
    let arr1: [i32; 3] = [1,2,3];
    println!("arr1 is {:?}", arr1);
    let arr2: [i32; 3] = [2,2,3];
    println!("arr2 is {:?}", arr2);
    println!("Is arr1 equal to arr2? -> (arr1 == arr2)");
    let truth_equals = arr1 == arr2;
    println!("{:?}", truth_equals);

    println!("******************************************");
    println!("!= operator demonstration:");
    println!("arr1 is {:?}", arr1);
    println!("arr2 is {:?}", arr2);
    println!("Is arr1 NOT equal to arr2? -> (arr1 != arr2)");
    let truth_not_equals = arr1 != arr2;
    println!("{:?}", truth_not_equals);


}
