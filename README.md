# docker-project-template-py

This is a Python project template using my Docker workflow.
(See [docker](https://github.com/zpz/docker) for more info.)

The main things in the project (or "repo") is a Python package located in the directory [src/](./src) and test code in [tests/](./tests). A top-level directory `bin` for scripts is often needed, although optional.

Pay attention to the config file `setup.cfg` and customize as needed.

The build script [`build-docker`](./build-docker) may need small adjustment per the need of the real project.