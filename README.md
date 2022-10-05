# VSCode Dev Containter for TLA+  

## How to use

- Fork this repository (don't skip this step)
- Install and run Docker Desktop if you haven't already got it running
- Install VSCode if necessary, then open a new VSCode editor process
- Install the remote containers extension if it's not already installed
- Use the remote-containers "Clone into container" command to clone *your fork* into a new container
- Click in the lower right if you want to see the container build. It takes 5-10 minutes.
- Open the test/test.tla file. Right click in file area. Select Source Action then Parse Module.
- Develop as you wish and use your own repo for version control

## Nice features
- pretty print specifications in LaTeX
- generate and view dot/graphviz visualizations
- See the .devcontainer/Dockerfile for what's being set up
- tested on Windows and Intel Mac (please let me know if you test on Linux or Apple Silicon)

## To auto-parse on file save

- Follow these instructions: https://github.com/tlaplus/vscode-tlaplus/wiki/Automatic-Module-Parsing to configure your VSCode environment.

## Regarding bugs and suggested repairs

- Report issues using the issues tab in *this* GitHub-hosted repo
- Develop and test repairs/improvements then please send pull requests
