# transform_w_dbt style guide 
This file contains guidelines on the style and conventiona to use for this dbt project. Please ensure your code matches the guielines outlined in each section. 

## Model Organization

Our models (typically) fit into two main categories:

| Category     | Description                                             |
| -------------| --------------------------------------------------------|
| Staging      | Contains models which clean and standardize data        |
| Intermediate | Contains modular models referenced in Marts             |
| Marts        | Contains models which combine or heavily transform data |

Things to note:
- Different types of models will exist in each of the above categories. 
- Facts exist in `Marts`

## Model Layers 
- Only models in staging should select from sources.
- Only models not in staging should select from other models. 

## Model Configurations

- Each model should have a primary key that can be used to identify a unique row, and should be named <object_id>.

- Staging models should always be views. 
- Intermediate views should be views unless there are performance issues. 
- Mart models should always be tables. 

## Naming Conventions

- All objects should be plural. 

- All models should have a prefix that indicates their DAG stage in the flow. 

- All models should use the naming convention <type/dag_stage>_<source/topic>_<additional_context>.

- Schema, table, and column names should be in `snake_case`. 

## Documentation

- Every source should include a description and all of its field name. 

- If a field is repeated more than once throughout the project, a doc block should be used to define it. 

- Doc blocks should be writen in models/docs in a file following the format `docs__<object>.yml`

- If a tool outside of dbt depends on a dbt model, that should be documented in `models/exposures.yml`.

# YAML

- Every subdirectory should contain its own `.yml` file(s) which contains configurations and documentation for the models in that subdirectory.

- YAML files should start with `_` to make them easier to find. 

- They should be named with the convention `_<description>_<config>`

## Testing 

- At a minimum, the primary key should always have a `not_null` and `unique` test
- Tests should be applied at the source and model level only, not on staging models. 

## SQL Guidelines 

- Do not optimize for fewer lines of code. 

- Use trailing commas. 

- Indents should be 4 spaces. 

- Always use CTEs over subqueries. 

- Use lowercase for field names but uppercase for functions and keywords. 

# CTEs

- CTEs that are duplicated across models should be pulled out and created as their own models.

- Opt for filtering within import CTEs rather than logical CTEs. 

- Your models should always end with a simple SELECT statement form the last CTE in order to make debugging easier. 
