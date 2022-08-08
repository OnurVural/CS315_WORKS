package main

import "fmt"

func main() {
	fmt.Println("Hello From Go")
	fmt.Println("1) Nested subprogram definitions")
	// First subprogram defininiton
	func1 := func() {
		fmt.Println("HELLO...From func1")
		// Nested subprogram definition
		func2 := func() {
			fmt.Println("HELLO...From func2")
		}

		fmt.Println("func2 (nested inside func1) called: ")
		func2()
	}
	fmt.Println("func1 (nested inside main) called: ")
	func1()
	fmt.Println(" ")

	fmt.Println("2) Scope of local variables")
	outer := func() { // Scope of myVar1 (72) and myVar2 (27) starts here
		var myVar1, myVar2 int
		myVar1 = 72
		myVar2 = 27

		fmt.Printf("myVar1 accessed from outer is: myVar1 = %d", myVar1)
		fmt.Println(" ")
		fmt.Printf("myVar2 accessed from outer is: myVar2 = %d", myVar2)
		fmt.Println(" ")
		inner := func() { // Scope of  myVar2 (44) and myVar3 (88) starts here
			var myVar2, myVar3 int
			myVar2 = 44
			myVar3 = 88
			fmt.Printf("myVar1 accessed from inner is: myVar1 = %d", myVar1)
			fmt.Println(" ")
			fmt.Printf("myVar2 accessed from inner is: myVar2 = %d", myVar2)
			fmt.Println(" ")
			fmt.Printf("myVar3 accessed from inner is: myVar3 = %d", myVar3)
			fmt.Println(" ")
		} // Scope of  myVar2 (44) and myVar3 (88) ends here
		inner()
		//fmt.Printf("myVar3 accessed from outer is: myVar3 = %d", myVar3) // ERROR: undefined: myVar3
	} // Scope of myVar1 (72) and myVar2 (27) ends here
	outer()
	fmt.Println(" ")

	fmt.Println("3) Parameter passing methods")
	fmt.Println("-->Pass by value example: ")
	var x int
	x = 4

	fmt.Printf("x before accessPassByValue is : x = %d\n", x)
	accessPassByValue := func(x int) {
		x = x + 1
		fmt.Printf("x inside accessPassByValue is : x = %d\n", x)
	}
	// passing x by value
	accessPassByValue(x)
	fmt.Printf("x after accessPassByValue is : x = %d\n", x)
	fmt.Println(" ")

	fmt.Println("-->Pass by reference example: ")
	fmt.Printf("x before accessPassByReference is : x = %d\n", x)
	accessPassByReference := func(x *int) {
		*x = *x + 1
		fmt.Printf("x inside accessPassByReference is : x = %d\n", *x)
	}
	// passing x by reference
	accessPassByReference(&x)
	fmt.Printf("x after accessPassByReferencee is : x = %d\n", x)
	fmt.Println(" ")

	fmt.Println("-->Swap trial: ")
	var a, b int
	a = 2
	b = 7
	fmt.Printf("a is: a = %d / b is: b = %d", a, b)
	fmt.Println(" ")
	swapPassByValue := func(a int, b int) {
		var temp int
		temp = a
		a = b
		b = temp
	}
	fmt.Println("After passing the parameters by value: ")
	swapPassByValue(a, b)
	fmt.Printf("a is: a = %d / b is: b = %d", a, b)
	fmt.Println(" ")

	swapPassByRef := func(a *int, b *int) {
		var temp int
		temp = *a
		*a = *b
		*b = temp
	}
	fmt.Println("After passing the parameters by reference: ")
	swapPassByRef(&a, &b)
	fmt.Printf("a is: a = %d / b is: b = %d", a, b)
	fmt.Println(" ")
	fmt.Println(" ")

	fmt.Println("4) Keyword and default parameters")
	fmt.Println("-->Keyword param simulation: ")
	//plt.Plot(xs, ys, "r", &plt.PlotKwargs{Lw: 3, Ls: "--", Antialiased: true})
	//plt.Plot(xs, ys, "r", plt.Lw, 3, plt.Ls, "--", plt.Antialiased, true)

	car := func(brand string, price float64, model string) {
		fmt.Printf("brand is : %s / price is : %f/ model  is :  %s\n", brand, price, model)
	}

	type namedParamsOfCar struct {
		price float64
		model string
	}
	fmt.Println(" By using namedParamsOfCar struct as namedParamsOfCar{price: 148.000, model: windsor 1948 saloon} ")
	fmt.Println(" car(Chrysler, namedP.price, namedP.model) gives: ")
	var namedP = namedParamsOfCar{price: 148.000, model: "Windsor 1948 Salon"}
	car("Chrysler", namedP.price, namedP.model)

	fmt.Println(" ")
	fmt.Println("-->Default param simulation: ")
	defParamFunc := func(i int, args ...int) (int, int, int) {
		j := 1
		k := 2
		if len(args) == 2 {
			j = args[0]
			k = args[1]
		}
		if len(args) == 1 {
			j = args[0]
		}
		fmt.Printf("i is: i = %d / j is: j = %d / k is: k = %d\n", i, j, k)
		return i, j, k
	}

	fmt.Println("defParamFunc(1) gives: ")
	defParamFunc(1)
	fmt.Println("defParamFunc(3, 5) gives: ")
	defParamFunc(3, 5)
	fmt.Println("defParamFunc(3, 5, 7) gives: ")
	defParamFunc(3, 5, 7)
	fmt.Println(" ")

	fmt.Println("5) Closures")
	caller := func(param string) func() {
		var arg string
		arg = param
		callee := func() {
			fmt.Printf("arg is: %s\n", arg)
		}
		return callee
	}
	// anonymous function is assigned
	myFun := caller("This message demonstrates the usage of closures!!!")
	myFun() // anonymous function is called and it can reach into arg variable although it is defined on outer function!!!
	myFun()
	myFun2 := caller("Hello world!!!")
	myFun2()

}
