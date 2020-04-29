# Project Template
This is an example project dir structure that should work for most projects. It attempts to standardize the project directory structures for easier navigation and collaborative cohesion. 

# Docker or Virtualenv Interpreter
You can build the docker container to create an environment with
```
docker build -t project_template -f Dockerfile .
```
and run it with
```
docker run -it -p 8000:8888 -v /Users/<you>/project_template:/project_template project_template bash
```
If you prefer to use virtualenv you can build one with
```
virtualenv --system-site-packages -p python3 ./.venv
```
and run it with
```
source .venv/bin/activate.fish
# install requirements and this package with
pip install -r requirements.txt
```

## Directory Structure

- `project_template/`: 
	- contains modules for models, dataset pipelines, performance, etc. 
	- should not contain critical scripts for reproducibility
	- modules are imported as import `project_template.module as ptm`
- `bin/`:
	- contains all scripts that train, create datasets, evaulate, etc.
	- scripts will heavily import from modules in `project_template/`
- `notebooks/`:
	- notebooks to train, create, datasets, evaluate, etc.
	- will also import most functionality from modules in `project_template/`
- `data/`: 
	- folder that contains data for project
	- everything in here will be ignored by .gitignore file
	- we do not want data pushed to repo
- `Dockerfile`: (optional)
	- if your project requires specific enviromnet, you can build an image with a dockerfile here
- `.gitignore`:
	- ignores the data dir contents
- `README.md`:
	- file explaining the project
	- perhaps demonstrates how to run code

## Coding Style
Please use the [google python coding style guide](http://google.github.io/styleguide/pyguide.html) for reference. 
