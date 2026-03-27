/*
1. Basic Difference
| Feature  | LIKE                    | REGEXP                        |          |
| -------- | ----------------------- | ----------------------------- | -------- |
| Type     | Simple pattern matching | Advanced pattern matching     |          |
| Symbols  | `%`, `_`                | Full regex (`^`, `$`, `[]`, ` | `, etc.) |
| Power    | Limited                 | Very powerful                 |          |
| Use case | Basic search            | Complex conditions            |          |


2. Equivalent Patterns (IMPORTANT)
| Task              | LIKE           | REGEXP          |
| ----------------- | -------------- | --------------- |
| Contains "abc"    | `LIKE '%abc%'` | `REGEXP 'abc'`  |
| Starts with "abc" | `LIKE 'abc%'`  | `REGEXP '^abc'` |
| Ends with "abc"   | `LIKE '%abc'`  | `REGEXP 'abc$'` |
| Single character  | `LIKE '_a%'`   | `REGEXP '^.a'`  |


3. Character Matching
LIKE:
WHERE name LIKE '_a%';

Only ONE unknown character

REGEXP:
WHERE name REGEXP '[abc]';

Any of a, b, or c
Much more flexible

4. Multiple Conditions (VERY IMPORTANT)
LIKE ❌(messy):
WHERE name LIKE '%abc%' OR name LIKE '%xyz%'
REGEXP ✅ (clean):
WHERE name REGEXP 'abc|xyz'

Shortcut:
Use REGEXP when multiple OR conditions appear

5. Range Matching
REGEXP only:
WHERE name REGEXP '[a-h]'

✔ Matches letters from a → h

👉 LIKE ❌ cannot do this

6. Exact Match
LIKE:
WHERE name LIKE 'RAJAN'
REGEXP:
WHERE name REGEXP '^RAJAN$'

7. Complex Pattern Example
Requirement:

Names that:

start with A
end with N
contain E in between
REGEXP:
WHERE name REGEXP '^A.*E.*N$'

👉 LIKE ❌ cannot handle this cleanly
*/