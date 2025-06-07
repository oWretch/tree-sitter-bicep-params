from unittest import TestCase

import tree_sitter, tree_sitter_bicep_params


class TestLanguage(TestCase):
    def test_can_load_grammar(self):
        try:
            tree_sitter.Language(tree_sitter_bicep_params.language())
        except Exception:
            self.fail("Error loading Bicep Params grammar")

    def test_outline_query_available(self):
        """Test that the outline query is available and contains expected content."""
        outline_query = tree_sitter_bicep_params.OUTLINE_QUERY
        self.assertIsInstance(outline_query, str)
        self.assertIn("parameter_declaration", outline_query)
        self.assertIn("variable_declaration", outline_query)
        self.assertIn("type_declaration", outline_query)
        self.assertIn("@name", outline_query)
        self.assertIn("@context", outline_query)
        self.assertIn("@item", outline_query)
        self.assertIn("@annotation", outline_query)
