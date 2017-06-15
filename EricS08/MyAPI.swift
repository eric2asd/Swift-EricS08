//
//  MyAPI.swift
//  EricS08
//
//  Created by 陳信毅 on 2017/6/15.
//  Copyright © 2017年 陳信毅. All rights reserved.
//

import Foundation

class c1 {
}

class c2{
    init(){
        print("init")
    }
}
class c3 {
    var x = 1
    var y = 1
    init(){
        
    }
}

class c4{
    var x : Int
    var y : Int
    init(x:Int,y:Int) {
        self.x = x;self.y = y
    }
    func m1()->Int{
        return 123
    }
    
}
class student{
    var sid : String
    var math : Int
    var ch : Int
    var en : Int
    init(_ sid:String,_ math:Int,_ ch:Int,_ en:Int) {
        self.sid = sid ; self.math = math ; self.ch = ch ; self.en = en
    }
    func sum() -> Int {
        
        return ch + math + en
    }
    func avg() -> Double{
        return Double(sum()) / 3
    }
}

class Bike{
    private var speed :Double
    
    init(speed:Double) {
        self.speed = speed
    }

    func upSpeed(){
        speed = speed < 1 ? 1 : speed * 1.2
    }
    func downSpeed() {
        speed = speed < 1 ? 0 : speed * 0.7
    }
    func getSpeed()->Double{
        return speed
    }
    func clone() -> Bike {
        return Bike(speed:speed)
    }
}

class c6{
    init(){
        print("c6:init()")
    }
    func m1(){
        print("c6:m1()")
    }
}

class c5 {
    var p1 = c6()
    lazy var p2: c6 = c6()
    func doSomething(){
        print("OK")
        p2.m1()
    }
}


struct MyClass3 {
    var x = 1
    var y = 1
}
struct MyClass4 {
    var v1 = MyClass3()
    var v2 : MyClass3{
        get{
            let newx = v1.x + 10
            let newy = v1.y + 20
            return MyClass3(x:newx,y:newy)
        }
        set{
            v1.x = newValue.x - 10
            v1.y = newValue.y - 30
        }
    }
    var v3 : MyClass3 {
        // {...}中可以使用原先定義的屬性
        // 定義getter & setter
        // 透過 v3 的 getter ==> xxx = v3
        // setter ==> v3 = xxx
        get{
            return MyClass3(x:1, y:2)
        }
//        set(aVar){
//            // aVar 一定是 MyClass3
//        }
        
        
    }
}


class MyScore {
    var x = 0,y = 0,z = 0
    var sum: Int { //  因 x, y, z 而不同
            return x+y+z
    }
 
    var avg: Double{
            return Double(sum)/3
    }
    
}

class MyClass5 {
    var x : Int = 0 {
        willSet(newx){
            print("before : \(x) --> \(newx)")
            
        }
        didSet {
            print("after: \(x)")
        }
        
    }
}
struct MyStruct1 {
    var a = 1
    mutating func f1(){
        a = 2
        print(a)
        self = MyStruct1(a:100)
    }
}

class MyClass1 {
    var a = 1
    func f1(){
        a = 2
        print(a)
    }
}
