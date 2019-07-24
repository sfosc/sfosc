# Developing

This document contains details on how `sfosc.org` is configured, tested, and deployed.
You might be interested in these procedures if you are interested in development of the site.

Brief overview:
- Static page generator: [hugo](https://gohugo.io/)
- Hosting: [GitHub pages](https://pages.github.com/)
- Build automation: [drone.io](https://drone.io/)

## Dependencies

### Submodules

Aside from hugo, we're using the [google/docsy](https://github.com/google/docsy) theme.

The theme is referenced as a git submodule. So you can make sure you have the correct version using:

```sh
# Update our submodules recursively, initializing as necessary.
git submodule update --init --recursive
```

We are using recursive here as docsy uses git submodules for tracking further dependencies (currently bootstrap and font awesome).

### Hugo extended

For hugo, we need an extended version that can handle sass processing.
If you get [this error](https://gohugo.io/troubleshooting/faq/#i-get-this-feature-is-not-available-in-your-current-hugo-version)
then you'll need to follow the instructions linked to install the extended version.

Keep in mind, if you have already installed a local hugo (non-extended) version you may need to uninstall it to avoid conflicts.

I wound up doing this:

```bash
# Move to GOPATH google directory (create if doesn't exist)
$ cd $GOPATH/src/github.com/google

# Source code for latest release https://github.com/gohugoio/hugo/releases
$ wget https://github.com/gohugoio/hugo/archive/v0.55.6.tar.gz

# Extract, rename and clean up
$ tar -xzvf v0.55.6.tar.gz && mv hugo-0.55.6/ hugo
$ rm v0.55.6.tar.gz 
$ cd hugo/

# Install the sass processing library
$ go get github.com/wellington/go-libsass

# Install hugo with extended tag
$ go install --tags extended

# Verify new install is extended
$ which hugo
/home/vanessa/Documents/Dropbox/Code/Google/go/bin/hugo
$ hugo version
Hugo Static Site Generator v0.56.0-DEV/extended linux/amd64 BuildDate: unknown
```

### Node and npm packages

When creating production builds of the static website, docsy uses [PostCSS](https://gohugo.io/hugo-pipes/postcss/).
As well as `autoprefixer`. Both of which should be installed from npm packages and require node to run.

You _may be able to_ avoid installing this, because it's not required for `hugo server` style development previews.
But for a final build using `hugo` or `./deploy.sh` you will need them.

Make sure you have node and npm installed and run `npm install`.
Note: as we've committed a `package-lock.json` file we recommend using npm over yarn.

### Git

You probably have git on your local machine, as previous steps require this.
But it's worth noting when you're using docker containers or CI builds, git is a requirement.

It's used for the hugo `enableGitInfo = true` setting.
Which the docsy theme uses to add "last modified" footers based on the git history of the content files.

## Quick Tips using the docsy theme

 - Each header section can support a background color, if you look for block/cover, and then notice that I chose "blue."
 - Each folder under [content/en/](content/en) can also support a featured-background.jpg. If you add it, it will magically show up. I removed them all (breakfast cereal?) in favor of a clean, blue background.

## Locally testing changes

Most often you'll want to test changes before committing changes for pull requests.

1. Check out the git repository with the branch/changes to be tested.
2. From the repository root, run [`hugo server`](https://gohugo.io/commands/hugo_server/) from a command line.

Or alternatively using a docker equivalent:

```sh
docker run --rm -ti \
	-p 1313:1313 \
	-v $(pwd):/src \
	-w /src \
	-u $(id -u):$(id -g) \
	cibuilds/hugo:0.55.6 hugo server --bind 0.0.0.0
```

This will set up a preview at http://localhost:1313/ with automatic reloading on changes.

_Note: the `cibuilds/hugo` docker image does not include node, so it won't work for a final build._

## Deployments to `sfosc.org`

`sfosc.org` is hosted using GitHub pages on the `master` branch of https://github.com/sfosc/sfosc.github.io.

There are two ways of deploying changes there.

1. Manually.
2. Through an automated deployment.

Both approaches are simplified using the [`deploy.sh`](./deploy.sh) script.
For `sfosc.org` you normally want to rely on the automated deployments triggered
by merging pull requests to the `master` branch.

### Automated deployment process

When new changes arrive on the `master` branch, https://cloud.drone.io/sfosc/sfosc will start a new build.
This looks at the `.drone.yml` file for it's build steps.

#### Deploy key

It relies on a [deploy key](https://developer.github.com/v3/guides/managing-deploy-keys/#deploy-keys)
configured as a drone secret `SSH_DEPLOY_KEY`.
This secret needs to hold the _private key_ part, and should be RSA only.
The public part of the key is configured at https://github.com/sfosc/sfosc.github.io/settings/keys.

You can generate a new RSA keypair using `ssh-keygen -f deploy-key`.

#### Submodule

The main repository references the `/public` submodule in all scripts instead of the
[sfosc/sfosc.github.io](https://github.com/sfosc/sfosc.github.io) github repository.

This would allow you to change the target of a deployment by:

1. Changing the `public` submodule to point to a different repository.
1. Setting up GitHub pages on the root of the master branch for this repository.
1. Setting a new the deploy key on GitHub and Drone.
1. Changing `config.toml`'s `baseURL = "https://sfosc.org/"` to the URL of your new target.