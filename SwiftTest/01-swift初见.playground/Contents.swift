//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
简单值
 **/
var myVariable = 42
myVariable = 40
let myConstant = 42
let fourDouble:Double = 4
let label = "this width is"
let width = 40
let widthLabel = label + String(width)
let apples = 3
let oranges = 5
let appleSummary = "i have \(apples) apples"
let fruitSummary = "i have \(apples+oranges) fruits"

//“使用\()来把一个浮点计算转换成字符串，并加上某人的名字，和他打个招呼。”
let weight:Double = 81.5
let helloDoctor = "hello doctor,my weight is\(weight*2)斤"

//数组创建 和修改
var shoppingList = ["catfish","water","blue paint","blue paint"]
shoppingList[1] = "bottom of water"

//字典创建和修改
var occupations = ["小明":"厨师","小红":"教师"]
occupations["小刚"] = "医生"

//创建空数组和空字典
let emptyArr = [String]()
let emptyDic = [String:Float]()

/**
 控制流  “使用if和switch来进行条件操作，使用for-in、for、while和repeat-while来进行循环。包裹条件和循环变量括号可以省略，但是语句体的大括号是必须的。”
  **/

let invalidateScores = [75,43,103,87,12]
var tempScore = 0
for score in invalidateScores {
    if score<50 {
        tempScore+=1
    }else if score<100{
        tempScore+=3
    }else{
        tempScore+=5
    }
}
print("tempScore = \(tempScore)")

var optionString:String? = "Hello"
print(optionString==nil)

var optionName:String? = nil
var greeting = "Hello"
if optionName==nil{
    greeting = "Hello friend"
}else{
    greeting = "Hello \(optionName!)"
}

//运算符 要有空格 没有空格会报错 （??）
let nickName:String? = nil
let fullName:String = "John"
let hiJohn:String = "hi \(nickName ?? fullName)"

let vegetable = "red papper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber","cucumber":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("papper"):
    print("Is it a spicy \(x)")
default:
    print("everything tastes good in soup")
}

let interestingNums = ["Prime":[2,3,5,7,11,13],"Fibonacci":[1,1,2,3,5,8],"Square":[1,4,9,16,25,36]];
var largestNum = 0
var largestKind:String = ""

for (kind,numbers) in interestingNums {
    print(kind)
    print(numbers)
    for number in numbers {
        if number>largestNum {
            largestNum = number
            largestKind = kind
        }
    }
}
print("largestNum is \(largestNum)")
print("largestKind is \(largestKind)")

var n = 2
while n<100 {
    n*=2;
}
print("n = \(n)")

var m = 2
repeat {
    m*=2;
}while m<100
print("m = \(m)")

var total = 0
for i in 0...4 {
    total+=i
}
print("total = \(total)")


func greeting(person:String,day:String,eat:String)->Void{
//    return
   print ("hello \(person),today is \(day), eat \(eat)")
}
greeting(person: "小明", day: "Tuesday", eat: "noodles")

func calculate(numbers:[Int])->(min:Int,max:Int,sum:Int){
    var minNum = numbers[0]
    var maxNum = numbers[0]
    var sumNum = 0
    
    for num in numbers {
        if num>maxNum {
            maxNum = num
        }
        if num<minNum {
            minNum = num
        }
        sumNum+=num
    }
    return(minNum,maxNum,sumNum)
}
 calculate(numbers: [1,3,6,4,10,0])

func avgNum(numbers:Int...)->Float{
    var sum = 0;
    for number in numbers {
        sum+=number
    }
    print(sum)
    return Float(sum/numbers.count)
}

avgNum(numbers: 1,3,5,7,9)


func averageNum(numbers:Int...)->Float{
    
    func summation()->Int{
        var summ = 0
        for number in numbers {
            summ+=number
        }
        return summ;
    }
    return Float(summation()/numbers.count)
}

averageNum(numbers: 1,3,5,7,9)


func makeIncrementer()->((Int)->Int){
    func addOne(number:Int)->(Int){
        return 1 + number;
    }
    return addOne
}
var incerase = makeIncrementer()
incerase(7)

func hasAnyMatches(list:[Int],condition:(Int)->Bool)->Bool{
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number:Int)->(Bool){
    return number<10
}
var numbers = [1,3,5,7,9,11,13]
hasAnyMatches(list: numbers, condition: lessThanTen)


numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    print(result)

    if result%2 != 0 {
        return 0
    }
    return result
    })


class Shape{
    var sidesNumber = 0
    let shapeName = "shape"
    
    func simpleDescription() -> String {
        return "shape has \(sidesNumber) sides"
    }
    
    func shapeColor(color:String) -> String {
        return "shape has a \(color) color"
    }
}

var shape = Shape.init()
shape.sidesNumber = 5;
var shapeDesc = shape.simpleDescription();
var shapeColor = shape.shapeColor(color: "red")

print(shapeDesc)
print(shapeColor)

class NamedShape {
    var sidesNumber: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(sidesNumber) sides."
    }
}

class Square: NamedShape{
    var sideLength: Double = 0.0
    init(sideLength: Double,name: String) {
        self.sideLength = sideLength;
        super.init(name: name);
        sidesNumber = 4;
    }
    
    func Area() -> Double {
        return sideLength*sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with side of length \(sideLength)"
    }
    
}

var test = Square.init(sideLength: 10.0, name: "test square");
test.Area();
test.simpleDescription();

class EquilateralTriangle: NamedShape{
    var sideLength: Double = 0.0
    init(sideLength: Double ,name: String) {
        self.sideLength = sideLength;
        super.init(name: name)
        sidesNumber = 3;
    }
    var perimeter: Double{
        get{
            return 3 * sideLength
        }
        set{
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


enum Rank: Int{
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jask, Queen, King
    
    func simpleDescription()-> String{
        switch self {
        case .Ace:
            return "ace"
        case .Jask:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

var ace = Rank.Ace
var aceStr = ace.simpleDescription()
ace = Rank.Five
aceStr = ace.simpleDescription()

if let convertRank = Rank(rawValue:1){
    print(convertRank.simpleDescription())
}


enum Suit:Int {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String{
        switch self {
        case .Spades,.Clubs:
            return "black"
        default:
            return "red"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let color = hearts.color()


enum ServiceResponse{
    case ResponseSuccess(String,String)
    case ResponseFail(String)
}
let success = ServiceResponse.ResponseSuccess("success", "good")
let fail = ServiceResponse.ResponseFail("failer")

switch fail {
case let .ResponseSuccess(sunrise, sunset):
    let serverResponse = "the result is \(sunrise) and  is  \(sunset)."
case let .ResponseFail(message):
    print("Failure...  \(message)")
}

struct Card{
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "the  \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    func PokeCard() -> [String] {
        var pokeArr = [String]()
        for i in 1...13 {
           let rank = Rank(rawValue:i)
            for j in 0..<4 {
                let suit = Suit(rawValue:j)
                pokeArr.append("card rank is\(rank!.simpleDescription())  suit is\(suit!.simpleDescription())")
            }
        }
        return pokeArr
    }
    
}

var threeOfSpades = Card(rank: .Three,suit:.Spades)
threeOfSpades.PokeCard()


protocol ExampleProtocal{
    var simpleDescription: String{ get }
    mutating func adjust()
}

class SimpleClass:ExampleProtocal{
    var simpleDescription: String = "this is a simple class"
    func adjust() {
        simpleDescription += " adjust ok"
    }
}

var a = SimpleClass();
a.adjust()
let description = a.simpleDescription
print(description)

extension Int: ExampleProtocal{
    var simpleDescription: String{
        return "the number :\(self)"
    }
   mutating func adjust() {
        self += 10;
    }
}
var ten: Int = 10;
print(ten.simpleDescription)
ten.adjust();
print(ten.simpleDescription)

enum PrinterError: Error{
    case OutPage;
    case NoToner;
    case OnFire;
}

func send(job: Int, toPrinter printName: String) throws -> String{
    if printName == "Never has Toner" {
        throw PrinterError.NoToner
    }else if printName == "onFire"{
        throw PrinterError.OnFire
    }
    return printName;
}
// var printName = send(job: 1, printName: "Job send")

do {
    let printerResponse = try send(job: 1, toPrinter: "onFire")
    print(printerResponse)
} catch  PrinterError.OnFire{
    print("onFire error")
}catch let printError as PrinterError{
    print("Printer error: \(printError).")
    
}catch{
    print(error)
}


let printerSuccess = try? send(job: 2, toPrinter: "print ok")
let printerFail = try?send(job: 3, toPrinter: "onFire")


var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("eggs")
print(fridgeIsOpen)
