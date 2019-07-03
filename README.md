## Recommended installation

`wget -qO- https://raw.githubusercontent.com/Worie/docker-glyphhanger/master/install.sh | bash`


## Details 
`setup-scripts` will be run during docker initialization, within newly created image

Go to the root directory of the repo and run: 
`docker image build -t glyphhanger .`

`docker container run -it --rm glyphhanger bash`

and then you can run

`glyphhanger google.com`

@TODO: allow easier usage (outputs of minified fonts)
@TODO: create a PR on glyphhanger to enable passing config into puppeteer config so no forks is needed

