print("Hello world in Python")


def falsyValReturner() :
   print("in function falsyValReturner")
   return False


def truthyValReturner() :
   print("in function truthyValReturner")
   return 1


def checkYourPurse(amount) :
  print("checking for money in the purse.................."  )
  if amount > 1000 :
        return False
  else:
      return True



def productIsAvailableInShelf(key):
  tvShelf = ["SMART_TV_SM_447", "SMART_TV_V_445", "SMART_TV_LG_457", "SMART_TV_LG_445677"]
  for i in tvShelf:
    print("checking shelf item" )
    if(key == i):
      print("found item!")
      return True
  return False


def checkBuying(haveEnoughMoney, item):

  if( haveEnoughMoney and productIsAvailableInShelf(item) ):
      print("I bought the product!!! :)")
  else:
        print("I didn't buy the product :(")

def checkStorageAvailability(allocationSize):
  if(allocationSize < 1000):
     print("NO PROBLEM")
     return True
  else:
    print("NOTIFYING SYSTEM ADMIN ABOUT STORAGE PROBLEM....")
    # PROCESSING
    # notifyAdmin("msg: extension required for storage")
    return False

def checkResourceAvailability(resourceAmount):
  if(resourceAmount < 1000):
     print("NO PROBLEM")
     return True
  else:
    print("NOTIFYING SYSTEM ADMIN ABOUT RESOURCE PROBLEM....")
    # PROCESSING
    # notifyAdmin("msg: extension required for resources!!!")
    return False




print("")
# 1.How are the boolean values represented?
print("1.How are the boolean values represented?")
print("falsy boolean values (bool type) are represented as: ")
falsyVal = False
print(falsyVal)
falsyVal = 0
print(falsyVal)
falsyVal = ""
print(falsyVal + "(empty string)")
falsyVal = []
print(falsyVal)
falsyVal = ()
print(falsyVal)
falsyVal = {}
print(falsyVal)
falsyVal = None
print(falsyVal)
print("")

print("truthy boolean values (bool type) are represented as: ")
truthyVal = True
print(truthyVal)
truthyVal = 1
print(truthyVal, "(any other than 0)")
truthyVal = "anyNonEmptyString"
print(truthyVal)
truthyVal = ["anyNonEmptyList", 3, "sfgsdg"]
print(truthyVal)
truthyVal = ("anyNonEmptyTuple", 3, "sfgsdg")
print(truthyVal)
print("")

#2.What operators are short-circuited?
truthyVal = True
falsyVal = False

print("2.What operators are short-circuited?")
print("Short circuit operators are and, or, not, <, >, >=, <=,")
print("and operator demonstration: ")
print("truthyVal and falsyVal is: ")
print(truthyVal and falsyVal)
print("falsyVal and truthyVal is: ")
print(falsyVal and truthyVal)
print("truthyVal and truthyVal is: ")
print(truthyVal and truthyVal)
print("falsyVal and falsyVal is: ")
print(falsyVal and falsyVal)
print("")

print("or operator demonstration: ")
print("truthyVal or falsyVal is: ")
print(truthyVal or falsyVal)
print("falsyVal or truthyVal is: ")
print(falsyVal or truthyVal)
print("truthyVal or truthyVal is: ")
print(truthyVal or truthyVal)
print("falsyVal or falsyVal is: ")
print(falsyVal or falsyVal)
print("")

print("not operator demonstration: ")
print("not falsyVal is: ")
print(not falsyVal)
print("not truthyVal is: ")
print(not truthyVal)

print("conditional operators: <, >, >=, <= demonstration: ")
print("7 > 8 >= 9 is: ")
print( 7 > 8 >= 9 )
print("")

# 3.How are the results of short-circuited operators computed? (Consider also function calls)
print("3.How are the results of short-circuited operators computed? (Consider also function calls)")
truthyVal = "abc"
falsyVal = 0
print(" truthyVal = abc, falsyVal = 0 ")
print("x and y: if x is truthyVal than y, else x ")
print("EXAMPLE-> falsyVal and truthyVal WILL have short circuiting, therefore DIRECTLY return value of falsyVal as:")
print( falsyVal and truthyVal )
print("EXAMPLE-> falsyVal and truthyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of falsyVal as:")
print( falsyVal and truthyValReturner() )


print("EXAMPLE-> truthyVal and falsyVal WILL NOT have short circuiting, therefore return value of falsyVal as:")
print(truthyVal and falsyVal)
print("EXAMPLE-> truthyVal and falsyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:")
print(truthyVal and falsyValReturner())

print("EXAMPLE-> falsyValReturner() and truthyValReturner() WILL have short circuiting, therefore only enter into first function as:")
print( falsyValReturner() and truthyValReturner() )
print("EXAMPLE-> truthyValReturner() and falsyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:")
print( truthyValReturner() and falsyValReturner() )
print("")

print("x or y: if x is falsyVal than y, else x ")
print("EXAMPLE-> truthyVal || falsyVal WILL have short circuiting, therefore DIRECTLY return value of truthyVal as:")
print(truthyVal or falsyVal)
print("EXAMPLE-> truthyVal or falsyValReturner() WILL have short circuiting, therefore WILL NOT enter to function, DIRECTLY return value of truthyVal as:")
print(truthyVal or falsyValReturner() )

print("EXAMPLE-> falsyVal or truthyVal WILL NOT have short circuiting, therefore return value of truthyVal as:")
print( falsyVal or truthyVal )
print("EXAMPLE-> falsyVal or truthyValReturner() WILL NOT have short circuiting, therefore WILL enter to function as:")
print(falsyVal or truthyValReturner())

print("EXAMPLE-> truthyValReturner() or falsyValReturner() WILL have short circuiting, therefore only enter into first function as:")
print( truthyValReturner() or falsyValReturner() )
print("EXAMPLE-> falsyValReturner() or truthyValReturner() WILL NOT have short circuiting, therefore enter into BOTH functions as:")
print( falsyValReturner() or truthyValReturner() )
print("")


print("not x: x is True return False, else return True ")
print("EXAMPLE-> not falsyVal is: ")
print(not falsyVal )
print("EXAMPLE-> not truthyVal is: ")
print(not truthyVal )
print("")

print("For conditional operators the operation is divided:")
print("EXAMPLE-> ( 5 <= 4 < 2) is divided to 5 <= 4 and 4 < 2, where 5 <= 4 is evaluated first as" )
print( 5 <= 4 < 2)
print("")

#4.What are the advantages about short-circuit evaluation?
print("4.What are the advantages about short-circuit evaluation?")
print("")
print("* short-circuit evaluation helps to efficiently go through decision statements, thus reducing the precious time loss")
print(" by the help of short circuit evaluation, the second operand will only be evaluated when its necessary!")
print("")
print("EXAMPLE-> in expression haveEnoughMoney = haveEnoughMoneyInCard or checkYourPurse(10000)")
print("No need to call checkYourPurse() if haveEnoughMoneyInCard has truthy value!!! ")
haveEnoughMoneyInCard = True
haveEnoughMoney = haveEnoughMoneyInCard or checkYourPurse(10000)
print("")
print("EXAMPLE-> in expression (haveEnoughMoney and productIsAvailableInShelf(SMART_TV_LG_445677))")
print("productIsAvailable() may have costly operations interacting with large data for example ")
print("if haveEnoughMoney is false there is no need to evaluate productIsAvailableInShelf() thanks to short circuit evaluation")
print("")
print("When haveEnoughMoney is False:")
haveEnoughMoney = False
checkBuying(haveEnoughMoney, "SMART_TV_LG_445677")
print("")
print("When haveEnoughMoney is True:")
haveEnoughMoney = True
checkBuying(haveEnoughMoney, "SMART_TV_LG_445677")
print("")

print("** short-circuit evaluation helps to eliminate run-time errors")
print("EXAMPLE-> in the expression (dangerousNumber != 0) and (1000/dangerousNumber > 100) ")
print("(dangerousNumber != 0) may prevent evaluation of 1000/dangerousNumber thanks to short circuit evaluation!")
dangerousNumber = 0

if ((dangerousNumber != 0) and (1000/dangerousNumber > 100)):
    print("PROCESSING...")

else:
    print("PREVENTED: CANNOT DIVIDE BY " , dangerousNumber)

print("")

print("*** thanks to short-circuit evaluation, complex boolean expressions can be written inside if statements!")
print( "if ((dangerousNumber != 0) and (1000/dangerousNumber > 100)) is simpler version of: ")
print("if( dangerousNumber != 0 ){if (1000/dangerousNumber > 100){.....}}");

#more complex form
if ( dangerousNumber != 0 ):
    if (1000/dangerousNumber > 100):
        print("PROCESSING...")

else:
    print("PREVENTED: CANNOT DIVIDE BY ", dangerousNumber)

print("")

#5.What are the potential problems about short-circuit evaluation?
print("5.What are the potential problems about short-circuit evaluation?")
print("* It can disregard functions that may completing a required part of the program overall... ")
print("EXAMPLE-> in expression if ( checkStorageAvailability(1500) and checkResourceAvailability(1500))")
print("Both functions need to make notify admin operation but due to short-circuit evaluation checkResourceAvailability(1500) is never evaluated" )
print("")


if ( checkStorageAvailability(1500) and checkResourceAvailability(1500)):
      print("System works properly")

else:
      print("System isn't working properly")
print("")
print("** Efficency may decrease as well due to compiler to check for short-circuits which may result in additional cycles and time loss")
