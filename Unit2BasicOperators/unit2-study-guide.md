
# Unit 2: Basic Operators

### 1. Arithmetic & Type Safety

* **Strict Numeric Types:** Swift never implicitly converts between `Int` and `Double` for variables (`Double + Int` fails). Literals (`1 + 2.0`) work only because numeric literals have no fixed type until evaluated.
* **Remainder (`%`):** Works only on integers and takes the **sign of the dividend** (ignoring the divisor's sign: `5 % -3 == 2`, `-10 % 3 == -1`). For floating-point numbers, use `.truncatingRemainder(dividingBy:)`.
* **Unary & Increment Operators:** Unary `+x` returns the value unchanged without toggling sign; `++` and `--` do not exist in Swift (use `+= 1` or `-= 1`).
* **Operator Precedence:** Multiplication and division (`*`, `/`, `%`) bind tighter than addition and subtraction (`+`, `-`).

### 2. Comparison & Tuple Ordering

* **No Chaining:** Comparison operators are non-associative—writing `a > b > c` is a compile error; combine them with `&&` instead.
* **Tuples:** Compared **lexicographically** (left-to-right, stopping at the first unequal element). Only tuples with matching element counts and types can be compared, and `Bool` values cannot be compared with `<` or `>`.

### 3. Ternary Conditional (`a ? b : c`)

* **Spacing Matters:** Always leave a space before `?` (e.g., `cond ? x : y`); attaching `?` directly to an expression (`(cond)?`) is parsed as optional chaining and causes a syntax error.
* **Type Promotion:** If one branch is `Int` and the other is `Int?`, the result is promoted to `Int?`.
* **Chain Ternary:** Swift groups chained ternaries from right to left (cond1 ? val1 : (cond2 ? val2 : val3)), making it work cleanly like an else-if ladder

    ```
    let chakra = 85
    let rank = chakra >= 90 ? "Kage" :
            chakra >= 70 ? "Jonin" :
            chakra >= 40 ? "Chunin" : "Genin"

    print(rank) // "Jonin"
    ```

### 4. Nil-Coalescing (`a ?? b`)

* **Two-Step Resolution:** Unwraps `a` if non-nil; otherwise evaluates and returns `b`.
* **Chaining & Precedence:** Right-associative (`a ?? b ?? c` groups as `a ?? (b ?? c)`). If `b` is still an `Optional` and no non-optional fallback follows, the result remains `Optional`. Arithmetic (`+`, `*`) has higher precedence than `??`, so parenthesize `(opt ?? 0)` when adding.

### 5. Range Operators

* **Types:** Closed (`a...b`), half-open (`a..<b`), and one-sided (`a...`, `...b`, `..<b`).
* **Usage:** Strings cannot form ranges directly (`"a"..."d"` fails), and `.contains(_:)` requires a non-optional value matching the range's element type.

### 6. Logical Operators & Short-Circuiting

* **Precedence:** `!` (highest) $\rightarrow$ `&&` $\rightarrow$ `||` (lowest). Adjacent `!` operators (`!!x`) must be parenthesized (`!(!x)`).
* **Short-Circuit Evaluation:** `&&` stops at the first `false`, and `||` stops at the first `true`. Use this to guard unsafe operations on the right (e.g., `index < array.count && array[index] == ...` or `opt != nil && opt!.count > 0`).
* **De Morgan's Laws:** `!(A && B)` equals `!A || !B`, and `!(A || B)` equals `!A && !B`.