//: Playground - noun: a place where people can play

import UIKit

/*
 控制流 && 函数（Functions）
 */

var str = "Hello, playground"

let names = ["Allen","Bell","Candy","Dassy"]
for name in names {
    print("name is \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animale,leg) in numberOfLegs {
    print("\(animale) has \(leg) legs");
}

let minutes = 60;
let minuteInterval = 5

for tickMark in 0..<minutes {
    print("每分钟渲染一个刻度 \(tickMark)")
}

for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("每5分钟渲染一个刻度 \(tickMark)")

}


let character: Character = "Z"
switch character {
case "a","A":
    print("first character")
case "z","Z":
    print("last character")
default:
    print("other character")
}

let score: Int = 90;
switch score {
case 0:
    print("o my god");
case 1..<60:
    print("too low");
case 60..<90:
    print("just soso");
case 90..<100:
    print("good")
case 100:
    print("prefect")
default:
    print("some error")
}

let point = (1,1)
switch point {
case (0,0):
    print("原点")
case (_,0):
    print("x轴")
case (0,_):
    print("y 轴")
case (-5...5,-5...5):
    print("在正方形呢")
default:
    print("在区域外")
}

switch point {
case let (x,y) where x==y:
    print("x==y")
case (_,0):
    print("x轴")
case (0,_):
    print("y 轴")
case (-5...5,-5...5):
    print("在正方形呢")
default:
    print("在区域外")
}

let x = point.0;

func greeting(person: [String:String]){
    guard let name = person["name"] else {
        print("no name")
        return
    }
    print("name is \(name)")
    
    guard let position = person["position"] else {
        print("no position")
        return;
    }
    print("position is \(position)")
}

greeting(person: ["name": "小明","position": "北京"]);

if #available(iOS 10, *) {
    print("使用ios 10 及以上的 api")
}


/*
 函数（Functions）
*/








