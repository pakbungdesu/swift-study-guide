// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Unit3StringAndCharacters {
    static func main() {
    let multilineQuote1 = """
    My name is Sasuke Uchiha. I hate a lot of things, and I don't particularly like anything. What I have is not a dream, because I will make it a reality.
    """

    let multilineQuote2 = """
    My name is Sasuke Uchiha. I hate a lot of things, \
    and I don't particularly like anything. \
    What I have is not a dream, because I will make it a reality.
    """

    print(multilineQuote1)
    print(multilineQuote2)
    print(multilineQuote1 == multilineQuote2) // true

    let sasukeQuote1 = """
    My name is Sasuke Uchiha.
    """

    let sasukeQuote2 = """
    I hate a lot of things, and I don't particularly like anything.
    """

    let sasukeQuote3 = """
    What I have is not a dream, because I will make it a reality.
    """

    print(sasukeQuote1 + sasukeQuote2 + sasukeQuote3)
    /*My name is Sasuke Uchiha.I hate a lot of things, and I don't particularly like anything.What I have is not a dream, because I will make it a reality.
    */

    let sasukeQuote4 = """
    My name is Sasuke Uchiha.

    """

    let sasukeQuote5 = """
    I hate a lot of things, and I don't particularly like anything.

    """

    let sasukeQuote6 = """
    What I have is not a dream, because I will make it a reality.
    """

    let combinedSasukeQuote = sasukeQuote4 + sasukeQuote5 + sasukeQuote6

    /*
    My name is Sasuke Uchiha.
    I hate a lot of things, and I don't particularly like anything.
    What I have is not a dream, because I will make it a reality.
    */

    let testSasukeQuote = """
    My name is Sasuke Uchiha.
    I hate a lot of things, and I don't particularly like anything.
    What I have is not a dream, because I will make it a reality.
    """

    print(combinedSasukeQuote)
    print(testSasukeQuote)
    print("same sasuke's quote: ", combinedSasukeQuote == testSasukeQuote) // true

    let tryEscapingQuotation1 = """
    Love is the only thing that can heal \"""
    a shattered heart and make it whole again. 
    """

    let tryEscapingQuotation2 = """
    Love is the only thing that can heal \"\""
    a shattered heart and make it whole again. 
    """

    let tryEscapingQuotation3 = """
    Love is the only thing that can heal \"\"\"
    a shattered heart and make it whole again. 
    """

    print("tryEscapingQuotation1 & tryEscapingQuotation2 & tryEscapingQuotation3: ", tryEscapingQuotation1 == tryEscapingQuotation2, tryEscapingQuotation2 == tryEscapingQuotation3) // true, true

    let narutoQuote = """
    ----------------------------------
    Love is the only thing 
    that can heal a shattered heart 
        and make it whole again.
    ----------------------------------
    """

    print(narutoQuote)

    /*
    ----------------------------------
    Love is the only thing 
    that can heal a shattered heart 
        and make it whole again.
    ----------------------------------
    */

    let kanjiOne: Character = "\u{4E00}"          // 一
    let radicalOne: Character = "\u{2F00}"        // ⼀
    print(kanjiOne, radicalOne, kanjiOne == radicalOne)

    let precomposedGa: Character = "\u{304C}"           // が
    let decomposedGa: Character = "\u{304B}\u{3099}"    // か + ゙
    print(precomposedGa, decomposedGa, precomposedGa == decomposedGa)

    var emptyString = ""
    var anotherEmptyString = String()

    print("emptyString & anotherEmptyString: ", emptyString, anotherEmptyString) // will print empty string (empty)
    print(emptyString == anotherEmptyString) // true
    print(emptyString.isEmpty, anotherEmptyString.isEmpty) // true true


    var tryNil: String?
    // ERROR: value of optional type 'String?' must be unwrapped to refer to member 'isEmpty' of wrapped base type 'String'
    // print(tryNil.isEmpty)

    print(tryNil) // nil

    // ERROR: optional type 'String?' cannot be used as a boolean; test for '== nil' instead
    // print(!tryNil)

    // ERROR: Unexpectedly found nil while unwrapping an Optional value
    // print(tryNil!.isEmpty)

    var team7 = "Naruto"
    team7 += ", Sasuke"
    print(team7) // Naruto, Sasuke

    // ERROR: Fatal error: Unexpectedly found nil while unwrapping an Optional value
    // print(team7 + tryNil!)

    tryNil = ", Sakura"
    print(tryNil) // Optional(", Sakura")
    var unwrapTryNil = tryNil! 
    print(unwrapTryNil) // , Sakura
    print(team7 += unwrapTryNil) // ()
    // team 7:  Naruto, Sasuke, Sakura  count:  22
    print("team7:", team7, "count team7:", team7.count)
    print("team7: \(team7) count team7: \(team7.count)")
    print(#"team7: \#(team7) count team7: \#(team7.count)"#)

    var ninjaTitle = "🍥Naruto 火影!"
    let firstChar = ninjaTitle[ninjaTitle.startIndex] // 🍥
    let lastChar = ninjaTitle[ninjaTitle.index(before: ninjaTitle.endIndex)] // "!"
    let secondChar = ninjaTitle[ninjaTitle.index(after: ninjaTitle.startIndex)] // N

    let kanjiIndex = ninjaTitle.index(ninjaTitle.startIndex, offsetBy: 8)
    print("kanjiIndex:", kanjiIndex) // kanjiIndex: Index(_rawBits: 721671)
    let fireKanji = ninjaTitle[kanjiIndex] // 火

    // First: 🍥, Second: N, 9th: 火, Last: !
    print("First: \(firstChar), Second: \(secondChar), 9th: \(fireKanji), Last: \(lastChar)")

    // Characters:[🍥] [N] [a] [r] [u] [t] [o] [ ] [火] [影] [!]
    print("Characters:", terminator: "")
    for index in ninjaTitle.indices {
    print("[\(ninjaTitle[index])]", terminator: " ")
    }
    print()
    var jutsu = "Rasengan"
    jutsu.insert("🌀", at: jutsu.endIndex)
    print(jutsu) // Rasengan🌀
    jutsu.insert(contentsOf: "Odama ", at: jutsu.startIndex)
    print(jutsu) // Odama Rasengan🌀

    let beforeEmoji = jutsu.index(before: jutsu.endIndex)
    print("beforeEmoji:", beforeEmoji) // beforeEmoji: Index(_rawBits: 918535)
    jutsu.insert(contentsOf: " (大玉螺旋丸)", at: beforeEmoji)
    print(jutsu) // Odama Rasengan (大玉螺旋丸)🌀

    let removedEmoji = jutsu.remove(at: jutsu.index(before: jutsu.endIndex))
    print("removedEmoji:", removedEmoji)
    print("Removed: \(removedEmoji) -> \(jutsu)") // Odama Rasengan (大玉螺旋丸)

    let rangeToRemove = jutsu.index(jutsu.endIndex, offsetBy: -8)..<jutsu.endIndex
    print("rangeToRemove:", rangeToRemove) // rangeToRemove: Index(_rawBits: 917767)..<Index(_rawBits: 2097159)
    jutsu.removeSubrange(rangeToRemove)
    print(jutsu) // Odama Rasengan

    let missionReport = "Konohagakure: S-Rank Mission"
    let colonIndex = missionReport.firstIndex(of: ":") ?? missionReport.endIndex
    print(colonIndex) // Index(_rawBits: 786695)
    print(missionReport.firstIndex(of: ":")) // Optional(Swift.String.Index(_rawBits: 786695))

    let villageSlice: Substring = missionReport[..<colonIndex]
    print("Village: \(villageSlice)") // Village: Konohagakure
    let savedVillage: String = String(villageSlice)
    print("savedVillage: \(savedVillage)") // savedVillage: Konohagakure

    var rogueNinja = "Itachi Uchiha"
    if let commaIdx = rogueNinja.firstIndex(of: ",") {
    let part = String(rogueNinja[..<commaIdx])
    print("Found delimiter: \(part)")
    } else {
    print("No comma found in '\(rogueNinja)'") // print this
    }

    if let spaceIdx = rogueNinja.firstIndex(of: " ") {
    print("spaceIdx:", spaceIdx) // Index(_rawBits: 393479)
    let firstname = String(rogueNinja[..<spaceIdx])
    let lastnameIdx = rogueNinja.index(after: spaceIdx)
    print("lastnameIdx:", lastnameIdx) // Index(_rawBits: 459015)
    let lastname = String(rogueNinja[lastnameIdx...])
    print("First: \(firstname), Last: \(lastname)") // First: Itachi, Last: Uchiha
    } else {
    print("No ' ' found in '\(rogueNinja)'")
    }

    print("-------------------")
    rogueNinja = "Itachi Uchiha "
    if let spaceIdx = rogueNinja.lastIndex(of: " ") {
    print("spaceIdx:", spaceIdx) // Index(_rawBits: 852231)
    let firstname = String(rogueNinja[..<spaceIdx])
    let lastnameIdx = rogueNinja.index(after: spaceIdx)
    print("lastnameIdx:", lastnameIdx) // Index(_rawBits: 917511)
    let lastname = String(rogueNinja[lastnameIdx...])
    print("First: \(firstname), Last: \(lastname)") 
    // First: Itachi Uchiha, Last: 
    } else {
    print("No ' ' found in '\(rogueNinja)'")
    }

    let jutsuEntry = "Chidori⚡Lightning Blade"

    if let lightningIdx = jutsuEntry.firstIndex(of: "⚡") {
    let jutsuName: Substring = jutsuEntry[..<lightningIdx]
    let afterEmoji = jutsuEntry.index(after: lightningIdx)
    let englishName: Substring = jutsuEntry[afterEmoji...]
    
    // Jutsu: Chidori | Translation: Lightning Blade
    print("Jutsu: \(jutsuName) | Translation: \(englishName)")
    
    let storedJutsu = String(jutsuName)
    let storedTranslation = String(englishName)
    // Stored: Chidori -> Lightning Blade
    print("Stored: \(storedJutsu) -> \(storedTranslation)")
    }

    let narutoArcs = [
        "Part 1 Episode 1: Enter: Naruto Uzumaki! (Konoha)",
        "Part 1 Episode 19: The Demon in the Snow (Land of Waves)",
        "Part 1 Episode 48: Gaara vs. Rock Lee: The Power of Youth Explodes! (Konoha)",
        "Part 1 Episode 133: A Plea From a Friend (Valley of the End)",
        "Shippuden Episode 1: Homecoming (Konoha)",
        "Shippuden Episode 135: The Longest Moment (Uchiha Hideout)",
        "Shippuden Episode 163: Explode! Sage Mode (Konoha)",
        "Shippuden Episode 322: Madara Uchiha (Fourth Great Ninja War)",
        "Shippuden Episode 476: The Final Battle (Valley of the End)"
    ]

    var part1Count = 0
    var shippudenCount = 0

    let checkDataType = narutoArcs[0].hasPrefix("Part 1 ")
    print(checkDataType) // true

    for episode in narutoArcs {
        if episode.hasPrefix("Part 1 ") {
            part1Count += 1
        } else if episode.hasPrefix("Shippuden ") {
            shippudenCount += 1
        }
    }
    print("Part 1 episodes: \(part1Count) | Shippuden episodes: \(shippudenCount)")
    // Part 1 episodes: 4 | Shippuden episodes: 5


    var konohaCount = 0
    var valleyCount = 0
    var uchihaHideout = 0
    var fourthGreatNinjaWar = 0
    var etc = 0

    var narutoEpisodeArcs: [String: Int] = [:]


    for episode in narutoArcs {
        if episode.hasSuffix("(Konoha)") {
            konohaCount += 1
        } else if episode.hasSuffix("(Valley of the End)") {
            valleyCount += 1
        } else if episode.hasSuffix("(Uchiha Hideout)") {
            uchihaHideout += 1
        } else if episode.hasSuffix("(Fourth Great Ninja War)") {
            fourthGreatNinjaWar += 1
        } else {
        etc += 1
        }
    }

    narutoEpisodeArcs["Konoha"] = konohaCount
    narutoEpisodeArcs["Valley of the End"] = valleyCount
    narutoEpisodeArcs["Uchiha Hideout"] = uchihaHideout
    narutoEpisodeArcs["Fourth Great Ninja War"] = fourthGreatNinjaWar
    narutoEpisodeArcs["ETC"] = etc

    print(narutoEpisodeArcs)
    // ["Fourth Great Ninja War": 1, "Valley of the End": 2, "Konoha": 4, "ETC": 1, "Uchiha Hideout": 1]

    var hokageTitle: String? = "Seventh Hokage 🔥"
    print("Uppercased:", hokageTitle?.uppercased() as Any) // Optional("SEVENTH HOKAGE 🔥")
    print("Char count:", hokageTitle?.count ?? 0)         // 16

    hokageTitle = nil
    print("When nil:", hokageTitle?.uppercased() ?? "No Hokage assigned")

    var scrollText : String? = "Rasenshuriken 🌀"
    if let validJutsu = scrollText {
    print("validJutsu: \(validJutsu)!")
    }

    // Print nothing
    scrollText = nil
    if let validJutsu = scrollText {
    print("validJutsu: \(validJutsu)!")
    }

    let validRankNumber = Int("7")      // Optional(7)
    let invalidRankNumber = Int("Jonin") // nil
    print("Parsed numbers:", validRankNumber ?? -1, invalidRankNumber ?? -1) // 7 -1

    let konohaEpisodes: Int? = narutoEpisodeArcs["Konoha"]      // Optional(4)
    let sandEpisodes: Int? = narutoEpisodeArcs["Hidden Sand"]   // nil (key doesn't exist)

    // Konoha: 4 | Hidden Sand: 0
    print("Konoha:", konohaEpisodes ?? 0, "| Hidden Sand:", sandEpisodes ?? 0)

    print("\n----------------- utf part -----------------\n")
    let nameNaruto = "Naruto Uzumaki 🍥🦊🥷👊🍜🔥🌀"
    var testUTF8 = nameNaruto.utf8
    var testUTF16 = nameNaruto.utf16

    print("testUTF8", testUTF8) // Naruto Uzumaki 🍥🦊🥷👊🍜🔥🌀
    print("type(of:testUTF8)", type(of:testUTF8)) // UTF8View
    print("testUTF8.indices", testUTF8.indices)
    // _startIndex: Swift.String.Index(_rawBits: 15), _endIndex: Swift.String.Index(_rawBits: 2818055))
    print("type(of:testUTF8.indices)", type(of:testUTF8.indices)) // DefaultIndices<UTF8View>

    print("utf8 & utf16")
    //ERROR: binary operator '==' cannot be applied to operands of type 'String.UTF8View' and 'String.UTF16View'
    // print("testUTF8 == testUTF16", testUTF8 == testUTF16)

    //ERROR: binary operator '==' cannot be applied to operands of type 'DefaultIndices<String.UTF8View>' and 'DefaultIndices<String.UTF16View>'
    // print("testUTF8.indices == testUTF16.indices", testUTF8.indices == testUTF16.indices)
    print("UTF-8 count:", testUTF8.indices.count)     // 43
    print("UTF-16 count:", testUTF16.indices.count)   // 29
    print("Character count:", nameNaruto.indices.count) // 22

    print("Same length?", testUTF8.indices.count == testUTF16.indices.count) // false
    print("UTF-8 is longer than UTF-16:", testUTF8.indices.count > testUTF16.indices.count) // true

    print("\n----------------- nameNaruto.utf8 -----------------\n")
    for codeUnit in nameNaruto.utf8 {
        print("\(codeUnit) ", terminator: "")
    /*78 97 114 117 116 111 32 85 122 117 109 97 107 105 32 240 159 141 165 240 159 166 138 240 159 165 183 240 159 145 138 240 159 141 156 240 159 148 165 240 159 140 128 */
    }

    print("\n\n----------------- nameNaruto.utf8.indices -----------------\n")
    for index in nameNaruto.utf8.indices {
        print("\(index) ", terminator: "")
    /*
    Index(_rawBits: 15) Index(_rawBits: 65540) Index(_rawBits: 131076) Index(_rawBits: 196612) Index(_rawBits: 262148) Index(_rawBits: 327684) Index(_rawBits: 393220) Index(_rawBits: 458756) Index(_rawBits: 524292) Index(_rawBits: 589828) Index(_rawBits: 655364) Index(_rawBits: 720900) Index(_rawBits: 786436) Index(_rawBits: 851972) Index(_rawBits: 917508) Index(_rawBits: 983044) Index(_rawBits: 1048580) Index(_rawBits: 1114116) Index(_rawBits: 1179652) Index(_rawBits: 1245188) Index(_rawBits: 1310724) Index(_rawBits: 1376260) Index(_rawBits: 1441796) Index(_rawBits: 1507332) Index(_rawBits: 1572868) Index(_rawBits: 1638404) Index(_rawBits: 1703940) Index(_rawBits: 1769476) Index(_rawBits: 1835012) Index(_rawBits: 1900548) Index(_rawBits: 1966084) Index(_rawBits: 2031620) Index(_rawBits: 2097156) Index(_rawBits: 2162692) Index(_rawBits: 2228228) Index(_rawBits: 2293764) Index(_rawBits: 2359300) Index(_rawBits: 2424836) Index(_rawBits: 2490372) Index(_rawBits: 2555908) Index(_rawBits: 2621444) Index(_rawBits: 2686980) Index(_rawBits: 2752516) 
    */

    }

    print("\n\n----------------- nameNaruto.utf16 -----------------\n")
    for codeUnit in nameNaruto.utf16 {
        print("\(codeUnit) ", terminator: "")
    /*
    */

    }

    print("\n\n----------------- nameNaruto.utf16.indices -----------------\n")
    for index in nameNaruto.utf16.indices {
        print("\(index) ", terminator: "")
    /*
    Index(_rawBits: 15) Index(_rawBits: 65541) Index(_rawBits: 131077) Index(_rawBits: 196613) Index(_rawBits: 262149) Index(_rawBits: 327685) Index(_rawBits: 393221) Index(_rawBits: 458757) Index(_rawBits: 524293) Index(_rawBits: 589829) Index(_rawBits: 655365) Index(_rawBits: 720901) Index(_rawBits: 786437) Index(_rawBits: 851973) Index(_rawBits: 917509) Index(_rawBits: 983045) Index(_rawBits: 999428) Index(_rawBits: 1245189) Index(_rawBits: 1261572) Index(_rawBits: 1507333) Index(_rawBits: 1523716) Index(_rawBits: 1769477) Index(_rawBits: 1785860) Index(_rawBits: 2031621) Index(_rawBits: 2048004) Index(_rawBits: 2293765) Index(_rawBits: 2310148) Index(_rawBits: 2555909) Index(_rawBits: 2572292) 
    */

    }

    print("\n\n----------------- nameNaruto.unicodeScalars -----------------\n")
    let testScalars = nameNaruto.unicodeScalars
    print("type(of: testScalars):", type(of: testScalars))  // UnicodeScalarView
    print("type(of: testScalars.indices):", type(of: testScalars.indices)) // DefaultIndices<UnicodeScalarView>
    print("UnicodeScalars count:", testScalars.count) // 22

    print("\n--- Scalar Decimal & Hex Values ---")
    for scalar in nameNaruto.unicodeScalars {
        let hex = String(scalar.value, radix: 16, uppercase: true)
        print("\(scalar) -> decimal: \(scalar.value) | hex: U+\(hex)")
    }

    /*
    N -> decimal: 78 | hex: U+4E
    a -> decimal: 97 | hex: U+61
    r -> decimal: 114 | hex: U+72
    u -> decimal: 117 | hex: U+75
    t -> decimal: 116 | hex: U+74
    o -> decimal: 111 | hex: U+6F
    -> decimal: 32 | hex: U+20
    U -> decimal: 85 | hex: U+55
    z -> decimal: 122 | hex: U+7A
    u -> decimal: 117 | hex: U+75
    m -> decimal: 109 | hex: U+6D
    a -> decimal: 97 | hex: U+61
    k -> decimal: 107 | hex: U+6B
    i -> decimal: 105 | hex: U+69
    -> decimal: 32 | hex: U+20
    🍥 -> decimal: 127845 | hex: U+1F365
    🦊 -> decimal: 129418 | hex: U+1F98A
    🥷 -> decimal: 129399 | hex: U+1F977
    👊 -> decimal: 128074 | hex: U+1F44A
    🍜 -> decimal: 127836 | hex: U+1F35C
    🔥 -> decimal: 128293 | hex: U+1F525
    🌀 -> decimal: 127744 | hex: U+1F300
    */

    print("\n----------------- index : char : scalarValues : utf8 : utf16 -----------------\n")
    for index in nameNaruto.indices {
        let char = nameNaruto[index]
        let scalarValues = char.unicodeScalars.map { $0.value } // [UInt32]
        let utf8Units = Array(char.utf8)
        let utf16Units = Array(char.utf16)
        
        print("\(index) : \(char) : \(scalarValues) : \(utf8Units) : \(utf16Units)")
    }

    print("\n----------------- END -----------------\n")
    var testFirstEmoji1 = nameNaruto.index(nameNaruto.startIndex, offsetBy: 15)
    print(testFirstEmoji1, type(of:testFirstEmoji1)) // Index(_rawBits: 984071) Index
    print(nameNaruto[testFirstEmoji1]) // 🍥

    var testFirstEmoji2: String.Index?

    for idx in nameNaruto.unicodeScalars.indices {
        let scalar = nameNaruto.unicodeScalars[idx]
        // Check by hex Unicode value (🍥 is U+1F365)
        if scalar.value == 0x1F365 {
            testFirstEmoji2 = idx
            break
        }
    }

    if let foundIndex = testFirstEmoji2 {
        print("Found at:", foundIndex) // Index(_rawBits: 983045)
        print("Character:", nameNaruto[foundIndex]) // 🍥
        print("testFirstEmoji1 == foundIndex", testFirstEmoji1 == foundIndex) // true
    }

    var testFirstEmoji3: String.Index?

    for idx in nameNaruto.utf8.indices {
        if nameNaruto.utf8[idx] == 240 {
            testFirstEmoji3 = idx
            break
        }
    }

    if let foundUtf8Index = testFirstEmoji3 {
    print("foundUtf8Index:", foundUtf8Index) // Index(_rawBits: 983044)
        print("Found via UTF-8:", nameNaruto[foundUtf8Index]) // 🍥
        print("Equal to testFirstEmoji1:", testFirstEmoji1 == foundUtf8Index) // true
    }

    for codeUnit in nameNaruto.utf16 {
        print("\(codeUnit) ", terminator: "")
    }
    print()

    var testFirstEmoji4: String.Index?

    for idx in nameNaruto.utf16.indices {
        if nameNaruto.utf16[idx] == 0xD83C {
            testFirstEmoji4 = idx
            break
        }
    }

    if let foundUtf16Index = testFirstEmoji4 {
        print("foundUtf16Index:", foundUtf16Index)                 // Index(_rawBits: 983045)
        print("Found via UTF-16:", nameNaruto[foundUtf16Index])    // 🍥
        print("Equal to testFirstEmoji1:", testFirstEmoji1 == foundUtf16Index) // true
    }
    }
}
