# VSCode Dev Containter for TLA+  

## What this is

- A TLA+ development environment through VSCode, Docker, and Dev Containers
- Good enough for this Gentle Introduction to TLA+: [https://www.youtube.com/watch?v=D_sh1nnX3zY]. 
- TLA+ environment based on this installer [https://github.com/lemmy/ewd998/blob/main/.devcontainer/install.sh]
- If you want to enable auto-parse-on-tla-file-save, you can, per the instructions that follow below
- Installed and running in a generic, official Ubuntu 22.04 container
- Tested on Windows and Intel Mac host machines.


## Dependencies

- Install and run Docker Desktop if you haven't already got it running
- Install VSCode if necessary, then open a new VSCode editor process
- Get yourself a GitHub account if you don't already have one and log in
- At GitHub, fork *this* repository into your GitHub account (do not skip)

## How to get it

- Launch a new VSCode window
- Install the remote containers extension if it's not already installed
- Use the remote-containers "Clone into container" command to clone *your fork* into our container
- Click in the lower right if you want to see the container build, which takes maybe 5-10 minutes.

## How to start using it
- Open the test/test.tla file in VSCode and the Gentle Introduction video linked above.
- The files you have are as *at the end* of the video tutorial.
- Right click in file area. Select Source Action then Parse Module. All should be well.
- Change the name of the color variable to colour. Save the file. Parse Module again. There should be an error.
- Fix the error by undoing the change in spelling. Save. Parse Module. All should be well again.
- Now start the video and follow along, emptying test.tla to follow along from the start of its development. 
- If you want to flag issues or suggest or contribute improvements, please use GitHub issues and send PRs. 

## Nice features (as you will see in the video)

- format and preview specifications in LaTeX
- generate and preview dot/graphviz state machine visualizations
- See the .devcontainer/Dockerfile for what's being set up

## To enable auto-parse on file save

- Follow these instructions: <https://github.com/tlaplus/vscode-tlaplus/wiki/Automatic-Module-Parsing> to configure your VSCode environment.

## Regarding bugs and suggested repairs

- Report issues using the issues tab in *this* GitHub-hosted repo
- Develop and test repairs/improvements then please send pull requests
