## Recommended installation

`wget -qO- https://raw.githubusercontent.com/Worie/docker-glyphhanger/master/install.sh | bash`

This will:
1. Create `.docker-glyphhanger` hidden directory in your home folder
2. Create an alias `glyphy` for containerized `glyphhanger` (.bashrc)
3. Check if you have `docker` cli installed
4. Pull the `wopolow/docker-glyphhanger` image from DockerHub

After successful install, you should see confirmation that you can use `glyphy` command from now on.

## Usage

`glyphy https://google.com --string`

Syntax supports everything that regular `glyphhanger` does.


## Details 
`setup-scripts` will be run during docker initialization, within newly created image
