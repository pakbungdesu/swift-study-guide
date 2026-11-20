// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Unit1TheBasics {
    static func main() {
        // ============ 1. Declaration ============
        /* /* /* Nested comment */ */ */

        let turn = 10;
        print(turn); // 10
        print(turn + 1); // 11

        var narutoTurnWhenInSageMode = 1000
        var sasukeTurnWhenUseSusanoo: Int;

        // ERROR: variable is not initialized
        // print(sasukeTurnWhenUseSusanoo)

        sasukeTurnWhenUseSusanoo = narutoTurnWhenInSageMode - 1
        print(sasukeTurnWhenUseSusanoo)

        // ERROR: constant is not mutable
        /* turn += 1;
        print(turn);
        */

        // ERROR: found this namespace, even it's different data type
        /* var turn = 10;
        print(turn);
        */

        var maxTurn = 9 // Can omit ; 
        let minTurn: Int = 1; maxTurn += 1 // Use ; for many instructions in one line
        print(maxTurn) // 10

        print(maxTurn += 2) // ()
        print(maxTurn = maxTurn + 2) // ()
        // Assignment is void

        print(maxTurn) // 14
        print(minTurn) // 1

        let sakuraTurnWhenUseHundredSeal: Int;

        // ERROR: constant defined here
        // ERROR: constant used before being initialized
        // print(sakuraTurnWhenUseHundredSeal)
        sakuraTurnWhenUseHundredSeal = 700
        print(sakuraTurnWhenUseHundredSeal)

        var narutoX = 1.5, narutoY = 4.5, narutoZ = 10.8
        var sasukeX, sasukeY, sasukeZ: Double

        // ERROR: type annotation missing in pattern
        // var sakuraX, sakuraY = 10.5, sakuraZ: Double

        // ERROR: consecutive statements on a line must be separated by ';'
        // var sakuraX = 1.3, sakuraY = 10.5, sakuraZ = 7.8: Double
        var sakuraX = 1.3, sakuraY = 10.5, sakuraZ = 7.8
        sasukeX = 1.5; sasukeY = 10.6; sasukeZ = 1.9

        var naruto = "🍥🦊"

        // ERROR: invalid redeclaration
        // Constant and variable names can contain almost any character, including Unicode characters:
        // var 🍅 = "sasuke"
        let 🍅 = "Sasuke Tomato";
        let ซาสึเกะ = "Sasuke"
        print(🍅, ซาสึเกะ)
        var sakura: String;
        sakura = naruto + ซาสึเกะ
        print(sakura)

        let isNarutoFourthHokage = false
        var willNarutoandSasukeGetMarried : Bool
        willNarutoandSasukeGetMarried = isNarutoFourthHokage 

        // ============ 2. Print Function ============
        print("Is Naruto the fourth hokage?: \(isNarutoFourthHokage)");
        print("Will Naruto and Sasuke get married?: \(willNarutoandSasukeGetMarried)");

        print(narutoX, narutoY, narutoZ) // 1.5 4.5 10.8
        print(sasukeX, sasukeY, sasukeZ) // 1.5 10.6 1.9
        print(sakuraX, sakuraY, sakuraZ) // 1.3 10.5 7.8
        print("Naruto", "Sasuke", "Sakura", separator: "-") // Naruto-Sasuke-Sakura
        // Naruto...Sasuke🐈‍⬛🍅Sakura
        print("Naruto", terminator: "...")
        print("Sasuke", terminator: "🐈‍⬛🍅")
        print("Sakura", separator: "-")

        // Naruto loves ramen
        print("Naruto loves ramen");

        // ============ 3. Integer Bounds ============
        let minValue = UInt8.min
        print(minValue) // 0

        // ERROR: Stack dump
        // print(minValue - 1)

        var maxValue = UInt8.max
        print(maxValue) // 255

        // ERROR: Stack dump
        // maxValue += 1
        // print(maxValue)

        // ============ 4. Numeric Literals ============
        let decimalNarutoAge = 14
        let binaryNarutoAge = 0b01110       
        var octalNarutoAge = 0o16           
        var hexadecimalNarutoAge = 0x0E
        // 14 14 14 14
        print(decimalNarutoAge, binaryNarutoAge, octalNarutoAge, hexadecimalNarutoAge)

        octalNarutoAge = octalNarutoAge + 10
        print("octalNarutoAge: ", octalNarutoAge) // 24

        // ERROR: cannot convert value of type 'Double' to expected argument type 'Int'
        // octalNarutoAge += 3.4
        octalNarutoAge += decimalNarutoAge
        print("octalNarutoAge: ", octalNarutoAge) // 38

        let decimalNarutoMultiplier = 170.077897
        let exponentNarutoMultiplier = 1.70077897e2
        let hexadecimalNarutoMultiplier = 0x1.Cp0
        print(decimalNarutoMultiplier, exponentNarutoMultiplier) // 170.077897 170.077897
        print(hexadecimalNarutoMultiplier) // 1.75

        let paddedDecimalNarutoMultiplier = 00170.077897
        let underscoresDecimalNarutoMultiplier1 = 170.077_897
        let underscoresDecimalNarutoMultiplier2 = 000170.077_897

        var narutoMultiplier = paddedDecimalNarutoMultiplier * 2
        print("Naruto multiplier1: \(narutoMultiplier)") // 340.155794
        narutoMultiplier += underscoresDecimalNarutoMultiplier1
        print("Naruto multiplier2: \(narutoMultiplier)") // 510.233691
        narutoMultiplier += underscoresDecimalNarutoMultiplier2
        print("Naruto multiplier3: \(narutoMultiplier)") // 680.311588

        // 170.077897 170.077897 170.077897
        print(paddedDecimalNarutoMultiplier, underscoresDecimalNarutoMultiplier1, underscoresDecimalNarutoMultiplier2)
        // true true
        print(paddedDecimalNarutoMultiplier == underscoresDecimalNarutoMultiplier1, underscoresDecimalNarutoMultiplier1 == underscoresDecimalNarutoMultiplier2)

        // ============ 5. Type Conversion ============
        // ERROR: type annotation missing in pattern
        // var hinataX = 4.5; var hinataY = 9.6; var hinataZ;

        var hinataX = 4.5; var hinataY = 9.6; var hinataZ = 0;
        print(hinataX, hinataY, hinataZ) // 4.5 9.6 0

        // ERROR: cannot convert value of type 'Double' to expected argument type 'Int'
        /*hinataZ += hinataY;
        print(hinataZ)*/

        hinataX = hinataY + 3
        print("HinataX coordinate: ", hinataX) // HinataX coordinate:  12.6

        var hinataY2 = Int(hinataY) + 3
        print("hinataY2", hinataY2) // 12

        // ERROR: '+' cannot be applied to operands of type 'Int' and 'Double'
        // var hinataX2 = Int(hinataX) + hinataY

        var hinataX2 = Double(hinataZ) + hinataX
        print("hinataX2", hinataX2)
        print("type hinataX2: ", type(of: hinataX2))

        // ERROR: cannot assign value of type 'Int' to type 'Double'
        // hinataY = Int(hinataY)
        // print(hinataY)

        print("3 == 3.0", 3 == 3.0) // 3 == 3.0 true
        print("3 ", type(of: 3)) // Int
        print("3.0 ", type(of: 3.0)) // Double

        // ============ 5. Type Aliases ============
        typealias HokageInt = Int
        var NarutoHokage7th: HokageInt = 7;
        print("NarutoHokage7th", NarutoHokage7th) // 7
        narutoX += Double(NarutoHokage7th)
        print("new narutoX: ", narutoX) // 8.5

        // ============ 6. Boolean ============
        // ERROR: cannot be applied to operands of type 'Bool' and 'Int'
        // print(true == 1)

        // ERROR: no exact matches in call to initializer
        // print(Bool(1))

        // ERROR: expected condition type 'Bool'
        // if narutoX {
        //   print("Complete")
        // }

        // narutoX > 7.5
        if narutoX > 7.5 {
        print("narutoX > 7.5")
        }

        // narutoX > 8
        if narutoX > 8 {
        print("narutoX > 8")
        }

        // ERROR: binary operator '==' cannot be applied to operands of type 'String' and 'Bool'
        // print("naruto kung", "naruto" == true)

        // ERROR: cannot convert value of type 'String' to expected condition type 'Bool'
        // if "naruto" {
        //   print("print naruto")
        // }

        // ERROR: type 'Int' cannot be used as a boolean
        // if 1 {
        //   print("print 1")
        // }

        // ============ 7. Tuple ============
        let narutoInfo = ("naruto", "uzumaki", "ramen", 7, true)
        print(narutoInfo.0, narutoInfo.1, narutoInfo.2, narutoInfo.3, separator:", ")
        print(type(of: narutoInfo)) // (String, String, String, Int)
        print(type(of: narutoInfo.0)) // String

        // ERROR: tuples have a different number of elements
        // let (name, surname, favouriteFood, _) = narutoInfo

        let (name, surname, favouriteFood, _, _) = narutoInfo
        print(name, surname, favouriteFood, separator: "-") // naruto-uzumaki-ramen

        // ERROR: should use .0
        // print(narutoInfo[0])
        let sasukeInfo = ("sasuke", "uchiha", ("sharinkan", "susanoo", 007), false)
        print(sasukeInfo) // ("sasuke", "uchiha", ("sharinkan", "susanoo", 7), false)
        print(sasukeInfo.2) // ("sharinkan", "susanoo", 7)
        print(type(of: sasukeInfo.2)) // (String, String, Int)
        print(sasukeInfo.2.0) // sharinkan
        print(sasukeInfo.2.1) // susanoo
        print(sasukeInfo.2.2) // 7

        var sakuraInfo = (name: "sakura", surname: "haruto", sensei: (name:"tsunade", hokage:7), age:17)
        print(sakuraInfo.name) // sakura
        print(sakuraInfo.0) // sakura
        print(sakuraInfo.sensei) // (name: "tsunade", hokage: 7)
        print(sakuraInfo.sensei.name) // tsunade

        sakuraInfo.age = 20
        print(sakuraInfo.age) // 20

        // ERROR: error: expected ',' separator
        // var ninjaRankFrequency = (0: 100, 1: 1500, 2: 1_700)
        // print(ninjaRankFrequency)

        // ============ 8. Optional ============
        var sasukeAgeText = "38"
        var sasukeAgeInt = Int(sasukeAgeText)
        print(sasukeAgeText, sasukeAgeInt) // 38 Optional(38)

        guard let number = sasukeAgeInt else {
            fatalError("The number was invalid")
        }

        sasukeAgeText = "thirty-eight"
        sasukeAgeInt = Int(sasukeAgeText)
        print(sasukeAgeText, sasukeAgeInt) // thirty-eight nil

        // guard let number = sasukeAgeInt else {
        //     fatalError("The number was invalid") // Triggers here
        // }

        print(type(of: sasukeAgeText), type(of: sasukeAgeInt)) // String Optional<Int>
        print(sasukeAgeInt == 38) // true
        print(sasukeAgeInt == decimalNarutoAge) // false

        var narutoAgeText = "39"
        var narutoAgeInt = Int(narutoAgeText)

        // ERROR: binary operator '+' cannot be applied to two 'Int?' operands
        // var combineAge = sasukeAgeInt + narutoAgeInt
        // print("combineAge", combineAge)

        // ERROR: value of optional type 'Int?' must be unwrapped to a value of type 'Int'
        // var combineAge = sasukeAgeInt + 3
        // print("combineAge", combineAge)

        // ERROR: binary operator '>' cannot be applied to two 'Int?' operands
        // print(narutoAgeInt > sasukeAgeInt)

        sasukeAgeInt = 38
        print(sasukeAgeInt) // Optional(38)

        narutoAgeInt = narutoAgeInt!
        print("use!", narutoAgeInt) // use! Optional(39)

        // Pass
        guard let number = narutoAgeInt else {
            fatalError("The number was invalid")
        }

        let number2 = narutoAgeInt!
        print("let number: ", number2) // let number:  39
        print(narutoAgeInt == number2) // true

        // Pass
        guard let number = narutoAgeInt else {
            fatalError("The number was invalid")
        }


        // ERROR:  value of optional type 'Int?' must be unwrapped to a value of type 'Int'
        // print(sasukeAgeInt + 10)

        var sasukeDefault: Int? = 0
        sasukeDefault = nil
        print(sasukeDefault) // nil
        sasukeAgeInt = nil
        print(sasukeAgeInt) // nil

        var sasukeBornStatus: Int?;
        print(sasukeBornStatus) // nil

        // ERROR: use of '=' in a boolean context, did you mean '=='?
        // if sasukeAgeInt = Int(sasukeAgeText) {
        //   print("Try force upwrap")
        // }

        if let sasukeAgeInt = Int(sasukeAgeText) {
        print("try forced unwrapping 1")
        print("sasukeAgeInt in if",  sasukeAgeInt)
        print(sasukeAgeInt + 1) // 39
        // ERROR: constant is not mutable
        // sasukeAgeInt += 1
        // print(sasukeAgeInt)
        print(type(of: sasukeAgeInt)) // Int

        if sasukeAgeInt > 35 {
            print("sasukeAgeInt > 35 -> ", sasukeAgeInt) // sasukeAgeInt > 35 ->  38
        }
        }

        sasukeAgeInt = 17
        print(type(of: sasukeAgeInt), sasukeAgeInt) // Optional<Int> Optional(17)

        if let sasukeAgeInt {
        print("shorter spelling to unwrap an optional value")
        print(sasukeAgeInt) // 17
        }

        sasukeAgeInt = nil
        if let sasukeAgeInt {
        print("will not print")
        }

        if sasukeAgeInt != nil {
        print("will not print")
        }

        // ERROR: initializer for conditional binding must have Optional type, not 'Int'
        // if let sasukeAgeInt = 15 {
        //   print("sasukeAgeInt: ", sasukeAgeInt)
        // }

        if var sasukeNewAgeInt = Int(sasukeAgeText){
        print("try forced unwrapping 2")
        print("sasukeNewAgeInt in if 1",  sasukeNewAgeInt)
        sasukeNewAgeInt += 1
        print("sasukeNewAgeInt in if 2",  sasukeNewAgeInt)
        print(type(of: sasukeNewAgeInt)) // Int
        }

        // ERROR: cannot find 'sasukeNewAgeInt' in scope
        // print(sasukeNewAgeInt)

        // ERROR: value of optional type 'Int?' must be unwrapped to a value of type 'Int'
        // if var sasukeNewAgeInt = Int(sasukeAgeText) + 1{
        //   print("try forced unwrapping 3")
        //   print("sasukeNewAgeInt plus",  sasukeNewAgeInt)
        // }

        // ERROR: binary operator '+' cannot be applied to two 'Int?' operands
        // if var combinedAge = sasukeAgeInt + narutoAgeInt {
        //   print("combine successfully", combinedAge)
        // }

        // print("naruto, sasuke: ", narutoAgeInt, sasukeAgeInt)
        // if var combinedAge = sasukeAgeInt + narutoAgeInt {
        //   print("combine successfully", combinedAge)
        // }

        print("naruto, sasuke outside if: ", narutoAgeInt, sasukeAgeInt) // naruto, sasuke outside if:  Optional(39) nil

        if let narutoAgeInt = Int(narutoAgeText), let sasukeAgeInt = Int(sasukeAgeText) {
        print("naruto, sasuke inside if: ", narutoAgeInt, sasukeAgeInt) // will not print
        }

        print("naruto, sasuke after if: ", narutoAgeInt, sasukeAgeInt) // naruto, sasuke after if:  Optional(39) nil

        if let narutoAgeInt = Int(narutoAgeText), let sasukeAgeInt = Int(sasukeAgeText), narutoAgeInt > sasukeAgeInt {
        print("add condition: ", narutoAgeInt, sasukeAgeInt) // will not print
        }

        print("---")

        sasukeAgeText = "38"
        print(sasukeAgeText, sasukeAgeInt) // 38 nil
        print("naruto, sasuke outside if: ", narutoAgeInt, sasukeAgeInt) // naruto, sasuke outside if:  Optional(39) nil

        if let narutoAgeInt = Int(narutoAgeText), let sasukeAgeInt = Int(sasukeAgeText) {
        print("naruto, sasuke inside if: ", narutoAgeInt, sasukeAgeInt) // naruto, sasuke inside if:  39 38
        }

        print("naruto, sasuke after if: ", narutoAgeInt, sasukeAgeInt) // naruto, sasuke after if:  Optional(39) nil

        if let narutoAgeInt = Int(narutoAgeText), let sasukeAgeInt = Int(sasukeAgeText), narutoAgeInt > sasukeAgeInt {
        print("add condition: ", narutoAgeInt, sasukeAgeInt) // add condition:  39 38
        }

        //  cannot convert value of type 'Int' to expected argument type 'String'
        // let greeting = "hello, " + (sasukeBornStatus ?? "sasuke") + "!"
        // print(greeting)

        // ============ 9. Nil-Coalescing Pperator ============
        let hinata: String? = nil
        let greeting = "hello, " + (hinata ?? "empty hinata") + "!"
        print(greeting)

        // ============ 10. Implicitly Unwrapped Optionals ============
        var sasukeString: String? = "An optional sasuke."
        let forcedSasukeString: String = sasukeString! // Requires explicit unwrapping
        print(sasukeString,  forcedSasukeString, separator:": ") // Optional("An optional sasuke."): An optional sasuke.
        print(type(of: sasukeString), type(of: forcedSasukeString)) // Optional<String> String
        print(sasukeString == forcedSasukeString) // true
        print(sasukeString != nil) // true

        var sasukeAssumedString: String! = "An implicitly unwrapped optional string."
        let sasukeImplicitString: String = sasukeAssumedString

        // Optional("An implicitly unwrapped optional string."): An implicitly unwrapped optional string.
        print(sasukeAssumedString,  sasukeImplicitString, separator:": ")
        // Optional<String> String
        print(type(of: sasukeAssumedString), type(of: sasukeImplicitString))
        print(sasukeAssumedString == sasukeImplicitString) // true
        print(sasukeAssumedString != nil) // true

        if let definiteString = sasukeString {
            print(definiteString) // An optional sasuke.
        }

        // ERROR: initializer for conditional binding must have Optional type, not 'String'
        // if let definiteString = sasukeImplicitString {
        //     print(definiteString)
        // }

        sasukeString = "sasuke optional2"

        if let definiteString = sasukeString {
            print(definiteString) // sasuke optional2
        }

        sasukeString = "123"

        if let definiteString = sasukeString {
            print(definiteString) // 123
        }

        // ============ 11. Assertions ============
        var narutoChakra = 100
        assert(narutoChakra >= 0, "Naruto's chakra cannot be negative!")
        print("Chakra check 1 passed: \(narutoChakra)")

        narutoChakra = -50
        // CRASH
        // assert(narutoChakra >= 0, "Naruto's chakra cannot be negative!")

        if narutoChakra >= 0 {
            print("Ready for Rasengan!")
        } else {
            print("Out of chakra!")
            // CRASH
            // assertionFailure("Naruto ran out of chakra completely!")
        }

        var tailCount = 9
        precondition(tailCount > 0 && tailCount <= 9, "Invalid number of tailed beast tails.")
        print("Kurama tails verified: \(tailCount)")

        // ERROR: cannot convert value of type 'String' to expected argument type 'Bool'
        // precondition("Not empty string", "The string is not empty")

        // CRASH
        // precondition(false, "This is false")
    }
}
