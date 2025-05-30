; Scopes
[
  (infrastructure)
  (call_expression)
  (lambda_expression)
  (subscript_expression)
  (if_statement)
  (for_statement)
  (array)
  (object)
  (interpolation)
] @local.scope

; References
(property_identifier) @local.reference

(call_expression
  (identifier) @local.reference)

(object_property
  (_)
  ":"
  (identifier) @local.reference)

(resource_expression
  (identifier) @local.reference)

; Definitions
(type) @local.definition.associated

(object_property
  (identifier) @local.definition.field
  (_))

(object_property
  (compatible_identifier) @local.definition.field
  (_))

(parameter_declaration
  (identifier) @local.definition.parameter
  (_))

(type_declaration
  (identifier) @local.definition.type
  (_))

(variable_declaration
  (identifier) @local.definition.var
  (_))

(for_statement
  "for"
  (for_loop_parameters
    (loop_variable) @local.definition.var
    (loop_enumerator) @local.definition.var))
