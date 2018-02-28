//: Playground - noun: a place where people can play

import UIKit

//? opsiyonel demek
//! işareti değerin geleceğinden emin olmak

var myName : String?

myName?.uppercased()


var myAge = "5"
if let number = Int(myAge){
    let myResult = number * 5
    print(myResult)
}

