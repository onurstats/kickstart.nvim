; extends


(string_literal) @string
(number_literal) @number
(boolean_literal) @boolean

; == Mustache Statements ===

; Hightlight the whole statement, to color brackets and separators
(mustache_statement) @tag

(partial_path) @text.uri

; `this` should be highlighted as a built-in variable
((identifier) @variable.builtin
  (#match? @variable.builtin "this"))
