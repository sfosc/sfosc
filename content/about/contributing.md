+++
title = "Contributing"
date = 2018-12-06T12:27:40-08:00
weight = 5
+++

The community would love your participation to help us evolve the principles, write new social
contracts, and further explore what it means to create sustainable free and
open source communities.

In particular, we seek the following types of contributions:

 * ideas: participate in an issues thread or start your own to voice your idea
 * copy editing: contribute your expertise by helping us expand, clarify and proofing our content
 * code: improve the design, usability and functionality of the sfosc page
 * artwork: contribute graphics or any other artwork improving the presentation of sfosc

In these sections, we will cover how to do this.

1. [How to contribute ideas](#how-to-contribute-ideas)
1. [How to contribute code](#how-to-contribute-code)
1. [How to conduct yourself when contributing](#how-to-conduct-yourself-when-contributing)

## How to Contribute Ideas
**Prerequisites**: familiarity with [GitHub Issues](https://guides.github.com/features/issues/).

Our community mainly communicates over github issues threads. Please voice any idea,
criticism or feedback in them so we can have an open discussion. Of course you can
also feel free to contact any of our [members](https://github.com/sfosc/sfosc/blob/master/MEMBERSHIP.md)
privately if you think this is necessary.

## How to Contribute Code
**Prerequisites**: familiarity with [GitHub Pull Requests](https://help.github.com/articles/using-pull-requests)

If you want to contribute code, fork the repository and make a pull-request
with your changes.

If you want to view/test your changes locally before, you can build this static
web page with [hugo](https://gohugo.io/), please check their extensive documentation
on how to install and use this site generator.

A [sfosc member](https://github.com/sfosc/sfosc/blob/master/MEMBERSHIP.md)
will review your pull-request. And if the pull request gets a positive review
the reviewer will merge it.

However, please bear in mind the following things:

### Discuss Large Changes in Advance

If you see a glaring flaw within the SFOSC, resist the urge to jump into the
code and make sweeping changes right away. We know it can be tempting, but
especially for large, structural changes it's a wiser choice to first discuss
them in the [issue list](https://github.com/sfosc/sfosc/issues).
It may turn out that someone is already working on this or that someone already
has tried to solve this and hit a roadblock, maybe there even is a good reason
why that flaw exists. If nothing else, a discussion of the change will usually
familiarize the reviewer with your proposed changes and streamline the review
process when you finally create a pull request.

A good rule of thumb for when you should discuss on the issue list is to
estimate how much time would be wasted if the pull request was rejected. If
it's a couple of minutes then you can probably dive head first and eat the loss
in the worst case. Otherwise, making a quick check with the other developers
could save you lots of time down the line.

### Small Commits & Pull Request Scope

A commit should contain a single logical change, the scope should be as small
as possible. And a pull request should only consist of the commits that you
need for your change. If it's possible for you to split larger changes into
smaller blocks please do so.

Limiting the scope of commits/pull requests makes reviewing much easier.
Because it will usually mean each commit can be evaluated independently and a
smaller amount of commits per pull request usually also means a smaller amount
of code to be reviewed.

### Proper Commit Messages

We are keen on proper commit messages because they will help us to maintain
this in the future.

- The title of your commit should summarizes **what** has been done
  - If the title is to small to explain **what** you have done then elaborate on it in the body
- Explain **why** you have changed this instead of the *how*. This is the most important content of the message.
- Explain potential side-effects of this change, if there are any

Please also:

- **Leave a blank line between the commit subject and body**

  Tools like rebase could not work properly otherwise.

- **Mention related issues**

  If this commit fixes an issue you need to mention it like `Fixes #1234`

- **Give kudos to Co-authors**

  If the commit has more than one author tag them with `Co-authored-by: name <name@example.com>`.

- **Try that the commit subject is not longer than 50 characters**

- **Try that each line of the commit body is not longer than 72 characters**

## How to Conduct Yourself when Contributing
Please make sure that while contributing you follow our
[Contributor Covenant Code of Conduct](https://github.com/sfosc/sfosc/blob/master/CODE_OF_CONDUCT.md)!

Happy Hacking! - :heart: Your SFOSC Team
