import UIKit

/*var greeting = "Hello, playground"

var a = 100

for i in 1...10{
    a += i
    print(a)
    
    let street: String = "5th Avenue"
    var number: Int
    
    
    number = 10
}*/

var array1: Array<String>
var array2: [String]
var array3 = ["Apple", "Pear", "Orange"]

array3.append("Cherry")
array3.count

array3.isEmpty

var dictionary4 = [0: "Apple", 1: "Pear", 2: "Orange"]
let fruit = dictionary4[0]

var set3: Set = ["apple", "pear", "orange"]
set3.count
set3.contains("apple")

var currency = ("EUR", 0.81)
var time = (Date(), "This is my message.")
var email = ("Bart Jacobs", "bart@example.com")

var rate = currency.1
var message = time.1
var name = email.0
