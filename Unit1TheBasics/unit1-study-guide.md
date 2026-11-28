
# Unit 1: The Basics

### 1. Declarations, Constants & Variables

* **`let` vs. `var`:** `let` creates immutable constants (`turn`), while `var` creates mutable variables (`maxTurn`). Prefer `let` by default.
* **Definite Initialization:** Swift requires variables and constants to hold a value before you read them (`sasukeTurnWhenUseSusanoo` cannot be printed until assigned).
* **Assignments Return Void:** An assignment like `maxTurn += 2` evaluates to `()` (`Void`), not the new number—unlike in C or Python.
* **Type Annotations:** You can declare multiple variables of the same type on one line (`var sasukeX, sasukeY, sasukeZ: Double`), and identifier names support full Unicode (`🍅`, `ซาสึเกะ`).
* **Comments:** Unlike most languages, Swift allows nested multi-line comments (`/* /* ... */ */`).

### 2. Printing & String Interpolation

* **`\()` Interpolation:** Embeds variables directly into strings (`"\(isNarutoFourthHokage)"`).
* **`separator` & `terminator`:** `separator` changes what goes *between* multiple arguments (default is `" "`), while `terminator` changes what prints at the *end* (default is newline `"\n"`).

### 3. Integer Bounds & Overflow

* Fixed-width integers have strict limits (`UInt8.min` is `0`, `UInt8.max` is `255`).
* Exceeding these bounds at runtime triggers an immediate crash (stack dump) rather than silently wrapping around.

### 4. Numeric Literals

* **Bases:** Swift supports decimal (`14`), binary (`0b01110`), octal (`0o16`), and hexadecimal (`0x0E`) literals—all evaluating to the same `Int` value.
* **Formatting & Exponents:** Leading zeros (`00170.077897`) and underscores (`170.077_897`) improve readability without changing the number. `e2` multiplies by $10^2$, while `0x1.Cp0` represents hex floating-point ($1.75 \times 2^0$).

### 5. Type Safety, Conversion & Type Aliases

* **No Implicit Casting:** Swift never automatically converts between numeric types. You cannot add an `Int` and a `Double` directly—you must explicitly convert one (`Double(hinataZ) + hinataX`).
* **Literals vs. Variables:** Untyped literals can be compared directly (`3 == 3.0` is `true`), even though variables of `Int` and `Double` cannot.
* **`typealias`:** Creates a readable alternative name for an existing type (`typealias HokageInt = Int`).

### 6. Booleans

* **Strict `Bool` Conditions:** Conditions in `if` statements must strictly evaluate to `true` or `false`. Truthy/falsy values like `1`, `0`, or non-empty strings (`if "naruto"`) cause compiler errors.

### 7. Tuples

* **Grouping Values:** Tuples group multiple values of different types into one compound value (`narutoInfo`).
* **Access & Decomposition:** Access elements by zero-based index (`.0`, `.2.1`), by named labels (`sakuraInfo.sensei.name`), or unpack them into separate constants using `_` to ignore unwanted values.

### 8. Optionals (`?`) & Unwrapping

* **Safety Wrapper:** An optional (`Int?`) represents either a wrapped value (`Optional(38)`) or `nil` (absence of a value), such as when `Int("thirty-eight")` fails.
* **No Direct Operations:** You cannot perform math (`+`) or comparisons (`>`) on optionals until they are unwrapped.
* **Unwrapping Methods:**
    1. **Optional Binding (`if let` / `if var`):** Safely unwraps the value into a temporary local variable inside the `if` block (supports shorthand `if let sasukeAgeInt`).
    2. **Early Exit (`guard let`):** Unwraps the value for the rest of the current scope, or exits early via `return` or `fatalError` if `nil`.
    3. **Force Unwrapping (`!`):** Extracts the value directly (`narutoAgeInt!`), crashing at runtime if it is `nil`.
* **More rules about unwrapping:**
    1. **Under the hood, it is always `Optional<String>` (until forced into a `String`)**
        * Checking `type(of: sasukeAssumedString)` always returns `Optional<String>` (there is no longer a separate `ImplicitlyUnwrappedOptional` type).
        * When passed into a function that accepts `Any` parameters, such as `print(...)`, it does not auto-unwrap and instead prints as `Optional("...")`.


    2. **Two-Step Type Checking Mechanism (Converted to `String` only when necessary)**
        Swift always treats a `String!` variable as `Optional<String>` first, and only auto-unwraps it into a `String` when the context does not support an Optional:
        * **Operator `+`:** Only accepts `String + String` (not Optionals), so the system immediately auto-unwraps them, making `sasukeAssumedString + sasukeAssumedString2` evaluate to a `String`.
        * **Operators `==` and `!= nil`:** Already support Optionals, so the system does not need to unwrap them and can compare them directly as Optionals.


    3. **The Destination Variable's Type Determines Its State**
        * If explicitly annotated as `String!` (such as `temptString1` or `sasukeAssumedString3`), even if the value on the right is a plain `String`, the system still re-wraps it into an `Optional<String>`.
        * Conversely, if the destination variable is a `String` (such as `sasukeImplicitString`), the system immediately auto-unwraps it.


    4. **Type Inference (`var x = ...`) Follows the Unwrapped Value**
        * In the line `var sasukeAssumedString4 = sasukeAssumedString!`, the `!` forces the expression on the right to become a `String`. Since no explicit type is specified for `sasukeAssumedString4`, the compiler infers it as a regular `String` (not `String!`).


    5. **A Single `!` Unwraps Completely (Do Not Use `!!`)**
        * Appending `!` (`sasukeAssumedString!`) immediately converts the value from `Optional<String>` to `String`.


### 9. Nil-Coalescing Operator (`??`)

* Provides a concise fallback value when an optional is `nil` (`hinata ?? "empty hinata"`). Both sides must match in type.

### 10. Implicitly Unwrapped Optionals (`!`)

* Declared with `!` (`String!`), these behave like normal optionals under the hood (`Optional<String>`) but automatically unwrap when assigned to a non-optional type (`let sasukeImplicitString: String = sasukeAssumedString`).

### 11. Assertions & Preconditions

* **Runtime Sanity Checks:** Both halt execution when a condition evaluates to `false`, taking a strict `Bool` condition and a failure message.
* **`assert` / `assertionFailure`:** Active only in **Debug** builds to catch developer mistakes during testing.
* **`precondition` / `preconditionFailure`:** Active in both **Debug and Release** builds to enforce critical rules in production.
