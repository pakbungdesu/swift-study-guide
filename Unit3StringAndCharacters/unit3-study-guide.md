
# Unit 3: String And Characters
### 1. Multiline Strings & Escaping

* **Whitespace & Line Breaks:** Closing `"""` dictates indentation stripping. A trailing `\` joins lines without inserting a newline (`multilineQuote1 == multilineQuote2`), while blank lines preserve line breaks.
* **Escaping:** Inside `"""..."""`, use `\"""` (or escape at least one quote) to include literal triple quotes, and use `#"... \#(var) ..."#` for extended delimiters.

### 2. Extended Grapheme Clusters & Canonical Equivalence

* **Visual vs. Code Point Equality:** Swift compares `Character`s by canonical equivalence, not raw scalars. Precomposed `が` (`\u{304C}`) equals decomposed `か` + `゙` (`\u{304B}\u{3099}`).
* **Lookalikes Differ:** Visually similar characters with different meanings (CJK `一` `\u{4E00}` vs. Kangxi radical `⼀` `\u{2F00}`) evaluate to `false`.

### 3. Indexing & Slicing (`String.Index` & `Substring`)

* **No Integer Subscripting:** Because characters have variable byte lengths, Swift forbids `str[0]`. Navigate safely using `startIndex`, `endIndex`, `index(after:)`, `index(before:)`, `index(_:offsetBy:)`, and `firstIndex(of:)` / `lastIndex(of:)`.
* **Memory-Safe Slicing:** Slicing (`missionReport[..<colonIndex]`) produces a `Substring` sharing the original string's memory. Convert it to `String(...)` for long-term storage.
* **Prefix/Suffix Checks:** `hasPrefix(_:)` and `hasSuffix(_:)` cleanly inspect string boundaries.

### 4. Optionals & String Safety

* **Unwrapping Required:** Accessing properties like `.isEmpty` or concatenating requires unwrapping (`!`, `if let`, optional chaining `?.`, or nil-coalescing `??`).
* **Failable Type Conversion:** `Int("7")` returns `Optional(7)`, while non-numeric strings like `Int("Jonin")` safely return `nil`.

### 5. Unicode Representations (`utf8`, `utf16`, `unicodeScalars`)

* **Different Lengths, Same String:** In `"Naruto Uzumaki 🍥🦊🥷👊🍜🔥🌀"`:
* `Character` & `unicodeScalars` count = **22** (each emoji is 1 scalar).
* `utf16` count = **29** (emojis above `U+FFFF` use 2 surrogate code units).
* `utf8` count = **43** (each emoji uses 4 bytes).


* **Cross-View Index Equality:** Even though `String.Index` stores different `_rawBits` metadata depending on which view created it (`Character`, `unicodeScalars`, `utf8`, or `utf16`), indices pointing to the start of the same character evaluate as equal (`==`) and resolve to the exact same `Character`.