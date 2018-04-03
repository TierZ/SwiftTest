////: Playground - noun: a place where people can play
//
////基础部分 && 基本运算符 && “字符串和字符” && 集合类型 (Collection Types)
//
//
import UIKit
//
print("123132")
var str = "Hello, playground"

/*
基础部分
*/

//常量和变量
//“声明常量和变量”
let maximumNumberOfLoginAttempts = 10;
var currentLoginAttempt = 0;
var x = 0.0, y = 0.0, z = 0.0;

//类型标注
var welcomeString: String;
var red, green, blue: Double;

//“常量和变量的命名”
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//“输出常量和变量”
print(你好)

//“类型安全和类型推断”

//元组
let http404Error = (404, "not found")

let (statusCode,stateMessage) = http404Error
print("code is \(statusCode), message is \(stateMessage)")
print(http404Error.0)

//断言
var age = 33;
assert(age>0, "age can not less than zero")


/*
 基本运算符
 */

let defaultColor = "red";
var greenColor: String?;
var color = greenColor ?? defaultColor ;

for i in 1...5 {
    print("乘法1 \(i*5)")
}
for i in 1..<5 {
    print("乘法2 \(i*5)")
}


/*
 “字符串和字符”
*/

var str1 = "123"
var str2 = str1
str2 =  str2 + "456"
print(str1)
print(str2)
str2[str2.startIndex];
str2[str2.index(before: str2.endIndex)]
str2[str2.index(after: str2.startIndex)]
str2[str2.index(str2.startIndex, offsetBy: 3)]

for index in str2.indices {
    print(str2[index])
}

var quotation = """
你打上丽娜十多年那个卡是的呢感受到你欠我额
阿四大皆空家是哪的那个价是哪的感到gasd
男，你先，才能，纳斯卡捡到你哪个区文件
看看看到
""";

quotation.append(str2)
print(quotation)


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
];

var act1Count:Int = 0;
for act in romeoAndJuliet {
    if act.hasPrefix("Act 1") {
        act1Count += 1;
    }
}
print(act1Count);


/*
 “集合类型”
 */

var someInt = [Int]()
someInt.append(3)

var threeDoubles: [Double] = [1.0,2.0,3.0]
var fourDoubles = Array(repeatElement(0.0, count: 4))
var sevenArr = threeDoubles+fourDoubles


if sevenArr.isEmpty {
    print("空数组")
}else{
    print("里面有\(sevenArr.count)个数据")
}

sevenArr += [4.0,5.0,6.0]
var firstItem = sevenArr.first;
var lastItem = sevenArr.last

sevenArr[0] = 10.0
sevenArr[3...7] = [11.0,12.0,13.0,14.0]


sevenArr.insert(7.0, at: 9)
sevenArr.remove(at: 0)
print(sevenArr)

for numberDouble in sevenArr.enumerated() {
    print(numberDouble)
}


var letters = Set<Character>();
letters.insert("0")
letters = []

var favouriteGames: Set<String> = ["篮球","足球","乒乓球"]
favouriteGames.insert("羽毛球")

if let football = favouriteGames.remove("足球") {
    print("\(football) is removed")
}else{
    print("no this item")
}

if favouriteGames.contains("篮球") {
    print("favouriteGames 包含 篮球")
}

for ball in favouriteGames {
    print(ball)
}
for ball in favouriteGames.sorted() {
    print(ball)
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
print(oddDigits)
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()


var nameOfIntegers = [Int:String]()
nameOfIntegers = [1:"one",2:"two",3:"three"]

for (number,name) in nameOfIntegers {
    print("the number \(number) name is \(name)")
}




