//: Playground - noun: a place where people can play

import UIKit

func myFunction(){
    print("Hello")
}

myFunction()

func sumFunc(x: Int, y:Int) -> Int{
    return x+y
}

sumFunc(x: 5, y: 10)

func myLogic(x: Int, y:Int)-> Bool{
    
    if(x>y){
        return true;
    }else{
        return false;
    }
    
}

myLogic(x: 11, y: 10)
