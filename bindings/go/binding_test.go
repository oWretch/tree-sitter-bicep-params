package tree_sitter_bicep_params_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_bicep_params "github.com/oWretch/tree-sitter-bicep-params/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_bicep_params.Language())
	if language == nil {
		t.Errorf("Error loading Bicep Params grammar")
	}
}
