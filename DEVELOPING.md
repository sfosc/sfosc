# Developing

This document contains details on how `sfosc.org` is configured, tested, and deployed.
You might be interested in these procedures if you are interested in development of the site.

Brief overview:
- Static page generator: [hugo](https://gohugo.io/)
- Hosting: [GitHub pages](https://pages.github.com/)
- Build automation: [drone.io](https://drone.io/)

## Locally testing changes

Most often you'll want to test changes before committing changes for pull requests.

1. Check out the git repository with the branch/changes to be tested.
2. From the repository root, run [`hugo server`](https://gohugo.io/commands/hugo_server/) from a command line.

Or alternatively using a docker equivalent:

```sh
docker run --rm -ti \
	-p 1313:1313 \
	-v $(pwd):/src \
	klakegg/hugo:0.55.6 server
```

This will set up a preview at http://localhost:1313/ with automatic reloading on changes.

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
