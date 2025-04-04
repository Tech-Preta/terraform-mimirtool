package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformModule(t *testing.T) {
	opts := &terraform.Options{
		TerraformDir: "./modules/mimirtool",
	}

	defer terraform.Destroy(t, opts)
	terraform.InitAndApply(t, opts)
}
