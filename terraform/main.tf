resource "databricks_schema" "engineering_demo" {
  catalog_name = var.catalog_name
  name = "engineering_demo"
}

resource "databricks_directory" "workspace" {
  path="/Shared/GitHubActionsDemo"
}

resource "databricks_notebook" "pipeline" {
  path="/Shared/GitHubActionsDemo/employee_pipeline"
  language="PYTHON"
  content_base64=base64encode(file("${path.module}/../notebooks/employee_pipeline.py"))
}

output "schema" {
  value=databricks_schema.engineering_demo.name
}
