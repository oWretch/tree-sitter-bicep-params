; Outline queries for Bicep Parameter files
; These queries extract the main constructs for outline/symbol views

; Parameters
(parameter_declaration
  (identifier) @name
  (type) @detail
  (#set! "kind" "parameter")) @definition.parameter

; Variables  
(variable_declaration
  (identifier) @name
  (#set! "kind" "variable")) @definition.variable

; Type declarations
(type_declaration
  (identifier) @name
  (#set! "kind" "type")) @definition.type

; Import statements
(import_statement
  (string) @detail
  (identifier)? @name
  (#set! "kind" "import")) @definition.import

; Import with statements
(import_with_statement
  (string) @detail
  (identifier)? @name
  (#set! "kind" "import")) @definition.import

; Import functionality (destructuring imports)
(import_functionality
  (string) @detail
  (#set! "kind" "import")) @definition.import

; Using statements
(using_statement
  (string) @detail
  (#set! "kind" "using")) @definition.using