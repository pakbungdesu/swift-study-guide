// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Unit2BasicOperators {
    static func main() {
        // =========== 1. Arithmatic Operators ===========
        print(1 + 2)       // 3
        print(5 - 3)       // 2
        print(2 * 3)       // 6
        print(10.0 / 2.5)  // 4.0

        print(1 + 2.0)   // 3.0
        print(5 - 3.0)   // 2.0
        print(2 * 3.0)   // 6.0
        print(10.0 / 2)  // 5.0

        var narutoW = 1 + 2.0
        var narutoX = 5 - 3.0
        var narutoY = 2 * 3.0
        var narutoZ = 10.0 / 2 
        print(narutoW, narutoX, narutoY, narutoZ) // 3.0 2.0 6.0 5.0

        var w = 2, x = 3, y = 4, z = 5;
        // ERROR: cannot convert value of type 'Int' to expected argument type 'Double'
        // narutoW += w
        // narutoX += x
        // narutoY += y
        // narutoZ += z

        // ERROR: binary operator '+' cannot be applied to operands of type 'Double' and 'Int'
        // print(narutoW + w, narutoX + x, narutoY + y, narutoZ + z)

        // 5.0 5.0 10.0 10.0
        print(narutoW + 2, narutoX + 3, narutoY + 4, narutoZ + 5)

        var w1 = 2.0
        // ERROR: '%' is unavailable: For floating point numbers use truncatingRemainder instead
        // narutoW = narutoW % w1
        // narutoX = narutoX % w1
        // narutoY = narutoY % w1
        // narutoZ = narutoZ % w1

        narutoW = narutoW.truncatingRemainder(dividingBy: w1)
        narutoX = narutoX.truncatingRemainder(dividingBy: w1)
        narutoY = narutoY.truncatingRemainder(dividingBy: w1)
        narutoZ = narutoZ.truncatingRemainder(dividingBy: w1)
        print(".truncatingRemainder")
        // 1.0 0.0 0.0 1.0
        print(narutoW, narutoX, narutoY, narutoZ)

        w = 3
        print("w: ", w)
        var narutoW1 = 10, narutoX1 = 12, narutoY1 = 20, narutoZ1 = 17
        narutoW1 = narutoW1 % w
        narutoX1 = narutoX1 % w
        narutoY1 = narutoY1 % w
        narutoZ1 = narutoZ1 % w

        // 1 0 2 2
        print(narutoW1, narutoX1, narutoY1, narutoZ1)

        narutoW1 *= z
        narutoX1 += z
        narutoY1 = -narutoY1 * z
        narutoZ1 *= -z

        // 5 5 -10 -10
        print(narutoW1, narutoX1, narutoY1, narutoZ1)

        w = 3
        narutoW1 = narutoW1 % w
        narutoX1 = narutoX1 % -w
        narutoY1 = narutoY1 % w
        narutoZ1 = narutoZ1 % -w

        // 2 2 -1 -1
        print(narutoW1, narutoX1, narutoY1, narutoZ1)

        // var w2 = 2
        // ERROR: cannot convert value of type 'Int' to expected argument type 'Double'
        // narutoW = narutoW % w2
        // narutoX = narutoX % w2
        // narutoY = narutoY % w2
        // narutoZ = narutoZ % w2

        print("w1, -w1: ", w1, -w1) // 2.0 -2.0
        w1 = -w1
        print("w1, -w1: ", w1, -w1) // -2.0 2.0
        w1 = +w1
        print("w1: ", w1) // -2.0

        // ERROR: cannot find operator '--' in scope; did you mean '-= 1'?
        // print("--w1: ", --w1)

        // print("-(2+3) = ", -(2 + 3)) // -5
        print("-(2+3) = ", -Int(2 + 3))

        w = x + y * 2
        print("w = x + y * 2 = ", w) // 11

        w = x + y * 2 / z
        print("w = x + y * 2 / z = ", w) // 4

        w = y * z + x
        print("w = y * z + x = ", w) // 23

        w = y * (z + x)
        print("w = y * (z + x) = ", w) // 32

        // =========== 2. Comparison Operators ===========
        let (baseAttack, baseHeal) = (1000, 20.0)
        print(type(of: (baseAttack, baseHeal)))  // (Int, Double)
        print(type(of: baseAttack)) // Int
        print(type(of: baseHeal)) // Double

        var narutoInfo = (baseAttack, baseHeal)
        print(narutoInfo.0, narutoInfo.1) // 1000 20.0

        // ERROR: use of '=' in a boolean context
        // if narutoInfo = (1500, 25.0) {
        //   print("Do something")
        // }

        // Do something 1
        if narutoInfo < (1000, 25.0) {
        print("Do something 1")
        }

        // Do something 2
        if narutoInfo < (1000, 25) {
        print("Do something 2")
        }

        // ERROR: cannot assign value of type '(Int, Double, String)' to type '(Int, Double)'
        // narutoInfo = (baseAttack, baseHeal, "Rasengan")
        // print(narutoInfo)

        var sasukeInfo = (1000, 15.0)
        print(narutoInfo > sasukeInfo) // true

        sasukeInfo = (1500, 20.0)
        print(narutoInfo > sasukeInfo) // false

        var narutoFood = ("milk", "ramen")
        var sasukeFood = ("onigiri", "tomato")
        print(narutoFood > sasukeFood) // false

        sasukeFood.0 = "matcha"
        print(sasukeFood) // ("matcha", "tomato")
        print(narutoFood > sasukeFood) // true
        print("milk" > "matcha") // true
        print("milk" > "miak") // true
        print("milk" > "mi") // true
        print("milk" > "mj") // false

        // ERROR: value of type 'String' has no member '1'
        // print(sasukeFood.1.1)

        var allFood = (narutoFood, sasukeFood)
        print(allFood) // (("milk", "ramen"), ("matcha", "tomato"))
        print(allFood.0.0) // milk
        allFood.1.0 = "onigiri"
        print(allFood) // (("milk", "ramen"), ("onigiri", "tomato"))

        var ninjaFood1 = ("ramen", "khaki", "onigiri")
        var ninjaFood2 = ("ramen", "khaki", "onion")

        // short circuit
        print(ninjaFood1 < ninjaFood2) // true

        // =========== 3. Ternary Conditional Operator  ===========
        // ERROR
        // var ninjaNutrient = (ninjaFood1 < ninjaFood2)? 30: 50

        var ninjaNutrient = ninjaFood1 < ninjaFood2 ? 30: 50
        print(ninjaNutrient) // 30

        ninjaNutrient = (narutoInfo > sasukeInfo) ? 30: 50
        print(ninjaNutrient) // 50

        var sakuraFood = ("salad", "khaki")

        // ERROR: adjacent operators are in non-associative precedence group 'ComparisonPrecedence'
        // print(sasukraFood > sasukeFood > narutoFood)

        // ERROR: cannot convert value of type 'Bool' to expected argument type '(String, String)'
        // print((sasukraFood > sasukeFood) > narutoFood)

        print(narutoFood, sasukeFood, sakuraFood)
        if sakuraFood > sasukeFood {
        if sasukeFood > narutoFood {
            print("sakuraFood > sasukeFood > narutoFood")
        } else {
            print("sakuraFood > narutoFood > sasukeFood") // print this
        }
        } else {
        if sakuraFood > narutoFood {
            print("sasukeFood > sakuraFood > narutoFood")
        } else {
            print("sasukeFood > narutoFood > sakuraFood")
        }
        }

        // nested ternary operator
        var result = 
            sakuraFood > sasukeFood
                ? (sasukeFood > narutoFood ? "sakuraFood > sasukeFood > narutoFood" : "sakuraFood > narutoFood > sasukeFood")
                : (sakuraFood > narutoFood ? "sasukeFood > sakuraFood > narutoFood" : "sasukeFood > narutoFood > sakuraFood")

        print(result) // sakuraFood > narutoFood > sasukeFood

        let chakra = 85

        let rank = chakra >= 90 ? "Kage" :
                chakra >= 70 ? "Jonin" :
                chakra >= 40 ? "Chunin" : "Genin"

        print(rank) // "Jonin"

        // ERROR: error: binary operator '>' cannot be applied to two 'Bool' operands
        // print(true > false)
        // print(true == 1)
        print(3 == 3.0) // true
        print(3.5 > 3) // true

        // =========== 5. Nil-Coalescing Operator  ===========

        let defaultDamage = 1000
        var bonusDamage: Int?   // defaults to nil

        print(bonusDamage, type(of: bonusDamage)) // nil Optional<Int>

        var damage1 = bonusDamage ?? defaultDamage
        var damage2 = bonusDamage != nil ? bonusDamage : defaultDamage
        // 1000 Optional(1000)
        print("damage 1 & 2: ", damage1, damage2)

        // ERROR: Fatal error: Unexpectedly found nil while unwrapping an Optional value
        // print(bonusDamage!)
        var testDamage2 = bonusDamage != nil ? bonusDamage! : defaultDamage
        print("testDamage2: ", testDamage2) // 1000

        bonusDamage = 500
        var damage3 = bonusDamage ?? defaultDamage
        var damage4 = bonusDamage != nil ? bonusDamage : defaultDamage
        // 500 Optional(500)
        print("damage 3 & 4: ", damage3, damage4)

        var test1 = bonusDamage != nil ? damage4 : defaultDamage
        print(test1) // Optional(500)

        var test2 = bonusDamage != nil ? damage4! : defaultDamage
        print(test2) // 500

        var test3 = bonusDamage != nil ? defaultDamage : damage2
        print(test3) // Optional(1000)

        let testDamage = 500
        var test4 = bonusDamage != nil ? defaultDamage : testDamage
        print(test4) // 1000

        // ERROR: value of optional type 'Int?' must be unwrapped to a value of type 'Int'
        // damage1 = damage4

        damage1 = damage4!
        print(damage1) // 500
        print(damage4) // Optional(500)

        damage1 = damage2! + damage4!
        print(damage1) // 1500

        // ERROR: binary operator '+' cannot be applied to two 'Int?' operands
        // damage1 = (damage2 + damage4)!

        var temptDamage = damage2
        // Optional(1000) Optional<Int>
        print(temptDamage, type(of: temptDamage), temptDamage != nil)

        // ERROR: initializer for conditional binding must have Optional type, not 'Int'
        // if var temptDamage = damage2 ?? defaultDamage {
        //   print("temptDamage inside if: ", temptDamage)
        // }

        if var temptDamage = damage2 != nil ? bonusDamage : defaultDamage {
        print("temptDamage inside if: ", temptDamage) // 500
        }

        print("temptDamage outside if: ", temptDamage) // Optional(1000)

        var assumedDamage: Int! = 300
        // assumedDamage != nil:  true
        print("assumedDamage != nil: ", assumedDamage != nil)

        var damage5 = assumedDamage ?? defaultDamage
        print("damage5", damage5) // damage5 300

        var temptDamage2 = temptDamage ?? 700
        print(temptDamage2, type(of: temptDamage2)) // 1000 Int

        print("--- tempt3 ---")
        // damage2 is opptional int
        var temptDamage3 = temptDamage ?? damage2
        print(temptDamage3, type(of: temptDamage3)) // Optional(1000) Optional<Int>

        print("--- tempt4 ---")
        var temptDamage4 = (temptDamage ?? damage2)!
        print(temptDamage4, type(of: temptDamage4)) // 1000 Int

        print("--- tempt5 ---")
        var temptDamage5 = temptDamage ?? damage2!
        print(temptDamage5, type(of: temptDamage5)) // 1000 Int

        damage2 = damage2!
        print("damage2: ", damage2) // Optional(1000)
        print(damage2!) // 1000

        print("--- tempt6 ---")
        print(temptDamage, damage2) // Optional(1000) Optional(1000)
        var temptDamage6 = temptDamage ?? damage2 ?? 600
        print(temptDamage6) // 1000

        print("--- tempt7 ---")
        print(temptDamage2, damage2) // 1000 Optional(1000)
        var temptDamage7 = temptDamage2 ?? damage2 ?? 600
        print(temptDamage7) // 1000

        print("--- tempt8 ---")
        print(temptDamage, damage2) // Optional(1000) Optional(1000)
        var temptDamage8 = temptDamage ?? damage2 ?? 600
        print(temptDamage8) // 1000

        print("--- tempt9 ---")
        print(temptDamage2, damage2, damage4) // 1000 Optional(1000) Optional(500)
        var temptDamage9 = temptDamage2 ?? damage2 ?? damage4
        print(temptDamage9) // Optional(1000)

        print("--- total ---")
        print(damage1, damage3)

        var total = damage1 + damage3 ?? 0
        print("total = ", total)

        total = damage1 + damage3 * 2 ?? 0
        print("total = ", total)

        print("--- total 3 & 4 ---")
        var baseDamage = 400
        print(baseDamage, bonusDamage) // 400 Optional(500)

        var total3 = baseDamage + (bonusDamage ?? 0)
        print("total3 = ", total3)

        var total4 = baseDamage + bonusDamage! ?? 0
        print("total4 = ", total4)

        // =========== 6. Range Operators ===========
        for ninja in 1...5 {
            print("Ninja \(ninja): \(ninja * 2)")
            /*
        Ninja 1: 2
        Ninja 2: 4
        Ninja 3: 6
        Ninja 4: 8
        Ninja 5: 10
        */
        }

        // ERROR
        // for ninja in "a"..."d" {
        //     print("Ninja \(ninja)")
        // }

        for ninja in "abcd" {
            print(ninja) // a, b, c, d
        }

        let team7Ninja = ["naruto", "sasuke", "sakura", "kakashi"]
        let count = team7Ninja.count
        for i in 0..<count {
            print("Person \(i + 1) is called \(team7Ninja[i])")
        /*
        Person 1 is called naruto
        Person 2 is called sasuke
        Person 3 is called sakura
        Person 4 is called kakashi
        */
        }

        let team7Names = ("naruto", "sasuke", "sakura", "kakashi")
        // ERROR: '==' cannot be applied to operands of type '[String]' and '(String, String, String, String)'
        // print(team7Ninja == team7Names)
        print(team7Ninja[0] == team7Names.0) // true

        for i in 0..<team7Ninja.count {
        print("\(i), \(team7Ninja[i])")
        /*
        0, naruto
        1, sasuke
        2, sakura
        3, kakashi
        */
        //ERROR: print("\(team7Names.i)")
        }

        print("start at 1")
        for i in 1..<team7Ninja.count {
        print("\(i), \(team7Ninja[i])")
        /*
        1, sasuke
        2, sakura
        3, kakashi
        */
        }

        // One-Sided Ranges
        for ninja in team7Ninja[1...] {
        print("\(ninja)")
        /*
        sasuke
        sakura
        kakashi
        */
        }

        print("------------")

        for ninja in team7Ninja[...2] {
        print("\(ninja)")
        /*
        naruto
        sasuke
        sakura
        */
        }

        print("---- Test Nested For Loop & One Sideed Ranges")
        for ninja1 in team7Ninja[...2] {
        for ninja2 in team7Ninja[1...] {
            print("\(ninja1), \(ninja2)")
        }
        }

        print("---- range 1 ----")
        let range1 = ...5
        print(range1.contains(7))   // false
        print(range1.contains(4))   // true
        print(range1.contains(-1))  // true

        print("---- range 2 ----")
        let range2 = team7Ninja[...2]
        print(range2.contains("naruto")) // true
        print(range2.contains("Naruto")) // false
        print(range2.contains("sai")) // false

        // ERROR: 'nil' is not compatible with expected argument type 'String'
        // print(range2.contains(nil))
        var optionalNaruto: String? = "naruto"
        print(optionalNaruto) // Optional("naruto")

        // ERROR: value of optional type 'String?' must be unwrapped to a value of type 'String'
        // print(range2.contains(optionalNaruto))

        print(range2.contains(optionalNaruto!)) // true

        var testOptionalNaruto = optionalNaruto ?? "naruto"
        print(testOptionalNaruto) // naruto
        print(range2.contains(testOptionalNaruto)) // true
        print(range2.contains(optionalNaruto ?? "naruto")) // true

        // ERROR: cannot use optional chaining on non-optional value of type 'String'
        // var testOptionalNaruto2 = "naruto"?? optionalNaruto

        var optionalNaruto2: String? = "narutoo"
        print(optionalNaruto2) // Optional("narutoo")
        var testOptionalNaruto2 = optionalNaruto2 ?? optionalNaruto
        print(testOptionalNaruto2) // Optional("narutoo")

        // ERROR: 'String?' must be unwrapped to a value of type 'String'
        // print(range2.contains(testOptionalNaruto2))
        print(range2.contains(testOptionalNaruto2 ?? testOptionalNaruto2!)) // false


        // =========== 7. Logical Operators ===========

        print("\n=== LOGICAL NOT (!) ===")
        let isGenjutsuActive = false
        print("!isGenjutsuActive:", !isGenjutsuActive)   // true

        // ERROR unary operators must not be juxtaposed; parenthesize inner expression
        // print("!!isGenjutsuActive:", !!isGenjutsuActive)
        print("!(!isGenjutsuActive):", !(!isGenjutsuActive)) // false

        let missionRank: String? = "S-Rank"
        print("Force unwrap vs NOT:", !(missionRank == nil)) // true


        print("\n=== SHORT-CIRCUIT ===")

        var narutoChecked = false
        var sasukeChecked = true
        var sakuraChecked = false
        var kakashiChecked = true

        print("sasukeChecked && kakashiChecked ")
        if sasukeChecked && kakashiChecked {
            print("Mission Start") // print this
        } else {
            print("Mission Aborted")
        }

        // && Stop at the first false
        print("sasukeChecked && kakashiChecked && sakuraChecked")
        if sasukeChecked && kakashiChecked && sakuraChecked {
            print("Mission Start")
        } else {
            print("Mission Aborted") // print this
        }

        print("sasukeChecked && kakashiChecked && sakuraChecked && narutoChecked")
        if sasukeChecked && kakashiChecked && sakuraChecked && narutoChecked {
            print("Mission Start")
        } else {
            print("Mission Aborted") // print this
        }

        print("sasukeChecked || kakashiChecked ")
        if sasukeChecked || kakashiChecked {
            print("Mission Start") // print this
        } else {
            print("Mission Aborted")
        }

        // || Stop at the first true
        print("sasukeChecked || kakashiChecked || sakuraChecked")
        if sasukeChecked || kakashiChecked || sakuraChecked {
            print("Mission Start") // print this
        } else {
            print("Mission Aborted")
        }

        print("sasukeChecked || kakashiChecked || sakuraChecked || narutoChecked")
        if sasukeChecked || kakashiChecked || sakuraChecked || narutoChecked {
            print("Mission Start") // print this
        } else {
            print("Mission Aborted")
        }

        // Grouping (&& first)
        print("sasukeChecked && kakashiChecked || sakuraChecked")
        print(sasukeChecked && kakashiChecked || sakuraChecked) // true

        print("sasukeChecked && (kakashiChecked || sakuraChecked)")
        print(sasukeChecked && (kakashiChecked || sakuraChecked)) // true

        print("sakuraChecked || sasukeChecked && kakashiChecked")
        print(sakuraChecked || sasukeChecked && kakashiChecked) // true

        print("(sakuraChecked || sasukeChecked) && kakashiChecked")
        print((sakuraChecked || sasukeChecked) && kakashiChecked) // true

        print("sasukeChecked || kakashiChecked && sakuraChecked")
        print(sasukeChecked || kakashiChecked && sakuraChecked) // true

        print("(sasukeChecked || kakashiChecked) && sakuraChecked")
        print((sasukeChecked || kakashiChecked) && sakuraChecked) // false

        print("sasukeChecked || sakuraChecked && kakashiChecked")
        print(sasukeChecked || sakuraChecked && kakashiChecked) // true

        print("sasukeChecked || (sakuraChecked && kakashiChecked)")
        print(sasukeChecked || (sakuraChecked && kakashiChecked)) // true

        print("(sasukeChecked || sakuraChecked) && kakashiChecked")
        print((sasukeChecked || sakuraChecked) && kakashiChecked) // true

        print("(sasukeChecked || sakuraChecked) && !kakashiChecked")
        print((sasukeChecked || sakuraChecked) && !kakashiChecked) // false

        let team7 = ["Naruto", "Sasuke", "Sakura"]
        let index = 5

        if index < team7.count && team7[index] == "Kakashi" {
            print("Found Kakashi")
        } else {
            print("Not crashing")
        }

        var scrollSecret: String? = nil
        if scrollSecret != nil && scrollSecret!.count > 0 {
            print("Secret read")
        } else {
            print("Not crashing!")
        }

        print(narutoChecked && sasukeChecked || sakuraChecked && kakashiChecked) // false
        // false || (true && false) || true  -->  true
        print(narutoChecked || sasukeChecked && sakuraChecked || kakashiChecked) // true
        // (false || true) && (false || true)  -->  true && true  -->  true
        print((narutoChecked || sasukeChecked) && (sakuraChecked || kakashiChecked)) // true
        // (false && (true || false)) && true  -->  false
        print((narutoChecked && (sasukeChecked || sakuraChecked)) && kakashiChecked) // false
        // false && (true || (false && true))  -->  false
        print(narutoChecked && (sasukeChecked || sakuraChecked && kakashiChecked)) // false

        let expr1 = !(sasukeChecked && kakashiChecked) // !(true && true) -> false
        let expr2 = !sasukeChecked || !kakashiChecked  // false || false -> false
        print("De Morgan AND:", expr1 == expr2, expr1, expr2) // true false false

        // !(A || B) is identical to (!A && !B)
        let expr3 = !(narutoChecked || sakuraChecked)  // !(false || false) -> true
        let expr4 = !narutoChecked && !sakuraChecked   // true && true -> true
        print("De Morgan OR:", expr3 == expr4, expr3, expr4)  // true true true

        print(!narutoChecked && !sakuraChecked && (sasukeChecked || !kakashiChecked)) // true
    }
}
