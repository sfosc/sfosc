+++
title = "Business Models"
date = 2018-11-29T12:13:12-08:00
weight = 40 
+++

From the perspective of creating sustainable open source communities, clearly
it is better when we have more of the software in the open, not less, and the
finger points strongly at using not only copyleft licenses, but the strongest
possible variation that makes sense for the type of software we are building.
Where things get more complex is when we start to creep Rawls back in: we want
the primary good to increase, but we also want other things. Money, for example
- both directly in our own pockets, but also as a source of growth for the
software itself. While having software under a strong copyleft might be
appealing for some cases, clearly for other community use cases it closes the
door. When we start to look at these business personas, the question becomes:
how can we monetize the software in a just, sustainable way? There are eight
common models: the free software island, loose open core, tight open core, dual
licensing, as a service, donations, support only and the free software product
model. How does each fare?

### Free Software Island

The best example of the free software island model are The Apache Projects. The
Apache Software Foundation exists to provide a framework for creating free
software, ensuring that it remains focused on the software itself, and that it
remains free from direct commercialization. As a consequence, it holds tightly
to the trademarks for the Apache Projects, and does not allow them to be used
for commercial purposes. By creating a moat between the free software and the
commercial entities who might build businesses on top of it, the Foundation can
ensure that, on the island, the project is free to make the right decisions for
the software itself. This distinction is core to the model - Apache doesn’t
build products (those are what companies build), they build projects. This
makes Apache the upstream for many companies - a great example being Datastax
and Apache Cassandra. While Cassandra is the core of Datastax, Datastax itself
is increasingly proprietary software (Datastax Enterprise, or DSE) - it looks
at the value provided by Cassandra, and builds value on top of it. In their own
words:

> DSE goes beyond Apache Cassandra, delivering twice the performance and half the latency of open source Cassandra, as well as simplified operations management.

The combination of Apache Cassandra being under the permissive Apache 2.0
license means that everyone is free to use the software, and to incorporate it
into their derivative works, regardless of whether those works are themselves
free. Anyone can take Apache Cassandra, start a business, and build on top of
it. The Apache Cassandra community likely gets some benefit if they are
successful, since some of the work required for building Datastax is best
contained within the upstream Cassandra itself. However, in order to
distinguish themselves from the purely free (as in beer) Cassandra, Datastax
diverts some of their value into proprietary software - software that clearly
isn’t being used to further our sustainable open source community anymore. This
means that the model passes all of Rawls tests of fairness from the perspective
of the island itself: it doesn’t constrain our basic liberty, it is equally
applied to everyone, and whatever inequality might exist bends toward those
with the least. 

It has an unfortunate side effect, though: by segregating the community
responsibility on the island, it creates a dynamic that the downstream
companies will be best served by putting maximum effort into proprietary
extensions, and cooperating only where strictly necessary. If a downstream
company tried to ensure that all the work they did went to further sustaining
our open source community, they would quickly be overtaken by their
competitors, who would gain all the benefit of their engagement in the
community core, plus the benefit of their proprietary focus. An example is the
Apache Hadoop ecosystem, which generated two public companies, Cloudera and
Hortonworks - who merged as public companies at a 60/40 level. Cloudera was the
more proprietary of the two, and took a significantly larger share of the
market value, while clearly contributing less to the core of Hadoop. 

A free software island with different dynamics is Linux. Linux uses the GNU
Public License version 2 as the license for the software. The trademark is held
by Linus Torvalds, the creator of Linux, and administered on his behalf by The
Linux Foundation. Linux itself is an operating system kernel, not the entire
operating system - and the dynamic this creates is that many Linux
Distributions exist, ranging from completely free and open source (Debian
GNU/Linux) to fully proprietary (Red Hat Enterprise Linux). In all these cases,
the license of the Linux Kernel ensures that any downstream derivative of the
kernel will have its source made available. In practice, this means that the
vast bulk of work on the Linux kernel, and of monetization around the Linux
kernel, benefits the kernel community. There is no possibility of a downstream
proprietary Linux kernel. For purposes of evaluating the model as one of
sustainable open source monetization, the kernel model drives any downstream
monetization effort to collaboration on the kernel itself. As a case study in
monetization, it’s a great example of how license choice and type of software
make the difference in deciding if this model is a good fit. If Linux had ever
tried to expand beyond the kernel itself, the model falls apart. By drawing the
free software island around an indispensable, but insufficient, component of
the overall system, ensuring that use of that component will always result in
more contribution (or possible contribution) to the component through
licensing, and encouraging the growth of businesses around the component, the
kernel community is a deeply sustainable one (at least, from this point of
view; it fails many of our earlier tests.) 

### Loose Open Core

Switching gears, Loose Open Core means that you have a "core" of the software
which is open source, and you build products around (but not directly a part
of) the core. Chef Software and Puppet Labs are two examples of loose open core
companies. They both produce a large body of open source automation software,
released under the Apache 2.0 license. They add products like Puppet
Enterprise, or Chef Automate, which provide features that would be useful for
their target market (the large enterprise.) In this model, the business tries
to draw a line that says "you can use and be successful with our software, but
if you want this extra functionality around it, you need to pay us". This model
is trying to balance having thriving communities, both of users and of
customers, with the need to provide proprietary differentiation across the
product portfolio. The struggle here is usually that, for this model to work,
you need to have a project that generates a high volume of users - which means
the core product contains everything a user would need to be successful with
the software's primary use case. For Chef and Puppet, that primary use case is
at scale configuration management - in both cases, you can run massive
organizations, and solve huge configuration management problems, without
needing to purchase anything from either Chef Software or Puppet Labs. In our
examples above, both companies have taken significant venture capital, and are
the upstream of the project - there is no separation between Chef and Chef
Software, or Puppet and Puppet Labs.

Looking at things from our sustainable open source community perspective,
things get murky. Clearly, the software that is open source fulfills the basic
liberty; but in exchange for that software's continued development, we trade
some functionality (the enterprise features we build around the core) away from
that basic liberty - we make it proprietary. The lines of our community are
blurry: where does the Chef Community start, and Chef Software begin, when they
are so intermingled? If we draw a circle around the software, and say the
community exists only there, we get the same results to the free software
island model. If we extend it out to our full, expansive definition of
community, then it’s plain it no longer fits, as we have traded basic liberty
for more of the software. 

### Tight Open Core

This problem becomes most clear when we look at tight open core. Take, for
example, Elastic and Elasticsearch. Elasticsearch is open source software,
developed primarily by Elastic. Rather than put software around Elasticsearch
and monetize there, Elastic puts features needed by their target market in to
proprietary plugins. The results are that features such as authentication are
held back from the open source offering, in order to ensure an easier path to
monetization. This model can be highly effective (Elastic has a very tidy
business!), but it clearly is not one that creates a sustainable open source
community: what would the response be if, in order to have the software work
for your purposes, you desired authentication, and proposed adding that
capability in to core? This is another obvious moment: we've traded away our
basic liberty for software that is only useful for a fraction of our purpose.

### Dual Licensing

The open core models generally are paired with a non-copyleft license, since to
do otherwise would compromise your ability to produce derivative works without
copyright assignment. A particularly closed twist on this model is the one
employed by [MongoDB](https://www.mongodb.com/): they require contributors to
assign the rights to their copyright to MongoDB (the contributor also retains
their rights, a change to standard copyright assignment). This allows MongoDB
to create a tight open core model where they produce an open source version of
MongoDB under the [Affero GPL](https://www.gnu.org/licenses/agpl-3.0.en.html),
and retain the rights to create proprietary versions, or to sell a hosted
version without being forced to release it into open source MongoDB. This is
the dual licensing model at it's finest: you release the software under an
aggressive copyleft, but retain the rights to remove those restrictions for
yourself - the loophole that allows the company, and only the company, the
ability to monetize the software effectively. It fails our test on every
measure, since MongoDB holds rights for itself that the community can never
match, regardless of where we draw the lines for the community around the open
source software. 

### As a Service

With the rise of Software as a Service businesses, we have seen a similar rise
in open source communities adopting this as a model. In its purest form, the
software itself is made available under an open source license, which you could
take and run on your own systems, at your own expense. You could also purchase
the same from the business as a Software as a Service subscription. This was
the original model for Chef Software, as an example. MongoDB offers their
database as a service, Redis Labs offers their database as a service - the list
is long. The challenge with this model as a primary method is around whether
the value is captured by the community or not. Since the software in question
is open source, if the license is permissive enough, anyone can make it
available, with no obligations to contribute back. This becomes a variant of
the free software island problem - the upstream software is clearly open
source, but as we monetize the various services downstream, our incentive is to
keep less and less of the services functionality free, if we can. The Affero
GPL was created specifically to deal with this problem, and more recently you
have attempts like the [Commons Clause](https://commonsclause.com/), which make
a specific attempt to limit the ability for large service providers to monetize
open source communities. From a sustainability point of view, a model where the
software is 100% open source, and the only proprietary software is around the
specifics of a given service implementation meets all the criteria - anyone who
wanted to run the software as a service could, they need only put in the effort
to run the service itself. When we start to have competing services, we get the
same incentives we get with the permissive free software islands: the best
strategy is to differentiate your service through proprietary extensions, while
others build up the core. If instead we limit ability of community members to
launch competing services on the software, we run into trouble with our
conception of what a just and sustainable community is: we hold back the right
to monetize for a specific company, clearly a setup that fails the difference
principle.

Since I first wrote that paragraph, MongoDB has relicensed under an even
stronger version of copyleft, called the SSPL. This license requires not only
the application itself to be open sourced under the same license if it is
accessed over the network - it requires that the supporting software required
to build the service is open sourced as well. This is an even further extension
of the same problem - MongoDB's hosted service, Atlas, clearly isn't having the
same terms applied to it. If it was, our analysis would be different - it would
clearly pass this test, since there is equality in the application of the
license.

### Donations 

Donations are a classic model of funding open source. A great modern example of
this is [webpack](https://opencollective.com/webpack), which uses the [Open
Collective](https://opencollective.com/) platform to handle not only collecting
the donations, but how they are distributed amongst the contributors. This
makes it particularly attractive, from a Rawls perspective, due to the ability
for individual contributors to receive a portion of the collective funding.
Contributing to webpack immediately brings you to the table as a possible
recipient of benefit from webpack's donations. A more historical example is
[Vim](https://www.vim.org/sponsor/), which has long accepted donations
- originally to fund Vim's continued development by its primary author, Bram
Moolenaar, and once he had a stable job, funneled to a [charity for children in
Uganda](https://iccf-holland.org/). Clearly the model followed by webpack can
create a sustainable open source community under our terms so far. Vim is
a more interesting case - Bram Moolenaar is the sole primary developer of Vim,
and while he takes patches, it is clearly his project (and always has been.)
The result is that, if you wanted to grow in your ability to influence Vim, or
to grow to the level where you could take donations to fund your own work,
Vim's community model (or lack thereof) precludes you from doing so
effectively. For the donation model to be a component of a sustainable open
source community, it requires the kind of open ability to distribute the
funding seen with webpack, or at least an open enough governance model that
individuals could be funded for their work, with a reasonable ability to assume
it can be completed.

### Support

A similarly tested strategy is the support model. An example of this model was
the relationship between XenSource and Xen. Xen is an open source hypervisor
originally built by researchers at the University of Cambridge, along with
industry collaborators. XenSource was founded to commercialize the open source
Xen code, [and initially offered only paid support for the
hypervisor](https://www.brianmadden.com/opinion/A-brief-history-of-Xen-and-XenSource).
Over time, XenSource [moved to being a loose open
core](https://www.brianmadden.com/opinion/A-brief-history-of-Xen-and-XenSource)
company. The hypervisor itself remained free, but XenSource (and Citrix, after
their aquisition of XenSource in 2007) built proprietary products
that sat on top of it designed to appeal to the large enterprise. This is
a common transition with the support-only model: since the hope is that your
software will be useful, and will continue to improve, the business model of
selling support is directly at odds with the user experience of the software.
As we make it easier to use, we also make the need for support lower. As
a result this model has historically never been sustainable alone, if the goal
is to drive significant amounts of capital into the software. It instead morphs
into an open core strategy (by far the most common) or into a free software
product strategy. Clearly, the support model by itself meets all the
requirements of a sustainable open source community, at least for the core
project, but might not result in a sustainable business strategy, depending
on the growth requirements of the business or other ecosystem dynamics.

Citrix appears to have recognized this over time, as they announced that the
proprietary components built on top of the Xen project would
be released as open source on [June 24, 2013](https://xenserver.org/about-xenserver-open-source.html).
The community reaction was mixed, and one group announced that they would
[fork the XenServer code in 2017, creating XCP-ng](https://medium.com/@marc.pezin/xcp-ng-an-open-source-alternative-to-xenserver-29a7dc876af4).

### Free Software Product

Which brings us to the free software product model. This is the model that, in
my opinion, is the least understood in our current landscape. The best example
of a free software product company is Red Hat. They produce 100% free software,
but they produce only proprietary distributions of their software: they leave
the creation of 100% free distributions to others (there are community efforts
funded by Red Hat, such as Fedora, and most recently CentOS.) The side effect
is that Red Hat is always the upstream for their software, regardless of its
origin - Red Hat Enterprise Linux is a collection of free software, bundled
together, supported, and distributed by Red Hat, but with commercial terms
attached. You are free to make a derivative work of Red Hat Enterprise Linux
- provided you remove any of the Red Hat trademarks from your derivative. The
resulting work benefits from all the effort Red Hat puts in to Enterprise
Linux, but requires a reasonable amount of effort to produce (CentOS is one
example, Oracle Enterprise Linux is another.) You can see a similar
transformation take place with other products, even those not primarily
produced by Red Hat, such as Kubernetes. Red Hat’s Kubernetes distribution,
OpenShift, takes the upstream Kubernetes (itself a free software island) and
produces an open source derivative with extra functionality. They then sell
that distribution as commercial software - as a hosted service, and as on
premises software. By committing 100% of the software they produce into open
source, even when they create a proprietary distribution of a free software
island, they become a de-facto new upstream. 

No company has more mythology about why it is successful than Red Hat, and all
of them have some element of truth to them. Over the course of writing this
document, I’ve heard answers that range from “it works because it is so broad”,
“it works because IBM chose them”, “it works because people pay for operating
systems”, “it works because the enterprise needs one throat to choke”. All of
these things are real, but I think the root reason it works is because of the
dynamics above. Red Hat has all the benefits of a proprietary software company:
they sell 100% of the value of the software they produce, they provide
absolutely no support to non-paying customers, and you cannot receive their
valuable goods without paying them for the privilege. The also get all the
benefits of being a free and open source company: development can happen in the
open, they can build coalitions who contribute to moving the software forward
(which improves their proprietary distribution,) and they can create new
products when and wherever they wish, pulling directly from the existing free
software ecosystem. They produce proprietary distributions of free software
projects: they build free software products.

When organizations try and follow the “Red Hat Model”, they typically are
really following the support model. Indeed, that’s a part of the value
proposition for Red Hat products - but it isn’t the entire value proposition.
What differentiates the free software product model from a pure support model?

1. Free software products have trademarked, proprietary distributions, with
   commercial terms attached.
2. Free software products (may) have 100% open source distributions, but they
   must use different trademarks and naming conventions, and receive no direct
   customer support or interaction from the upstream. They are strictly
   downstream repackaging of the proprietary upstream distribution. This is
   true regardless of which source code repository is being committed to - the
   user relationship is defined in terms of the commercial product, not the
   free software project.

These two attributes are key to the free software product model. Red Hat
Enterprise Linux is a proprietary, commercial distribution of Linux. CentOS is
a 100% free distribution, derived from Red Hat Enterprise Linux. OpenShift is
a proprietary, commercial distribution of Kubernetes. OKD is a 100% free
community distribution of OpenShift. Important in these sentences is which
comes *first* - in all cases, the proprietary distribution is the upstream!
Anyone who is using CentOS would say they are using it *because* they want to
be using Red Hat Enterprise Linux: they just, for whatever reason, do not want
to pay the commercial terms required by Red Hat for the privilege. The same
would be true for OKD; no OpenShift user would say they are using the
commercial version of OKD. Instead, they would say they are using *the free
version of OpenShift*. This is the key element in a free software product
model, and it is the one that is the least understood in the industry broadly.

How does this model stack up, from a Rawls point of view? By committing 100% of
the software to open source, the model ensures basic liberty completely, and it
avoids any of the difficulties of drawing arbitrary lines around where the
community stops and the commercial interests begin we see with free software
islands or the open core models. Assuming the governance model meets our
earlier criteria, there is nothing in the model that doesn’t meet both the
equal liberty principle and the difference principle. If, for whatever reason,
you need to create a similarly proprietary distribution of the software, you
are completely free to do so, and you can do so regardless of the circumstances
you start out in. 

### Sustainable models

What attributes can we pull from this analysis? When it comes time to consider
how we will introduce capital into the system, we have to make a series of
choices (each of which assumes the project has clear and just governance, as we
discussed above):

* If the software is never intended or desired to be used in a direct business
  context, they should choose a transparent donation model.
* If the software is self contained, but useful primarily only as a component
  in a larger set of software, then they should choose to create a free
  software island with the strongest copyleft license that is applicable.
  Contributions flow back through downstream commercialization and the copyleft
  contribution incentives.
* If the software is broadly applicable, and intended to be used in a direct
  business context, they should choose the free software product model.
* If the software is broadly applicable, and intended to be used as a widely
  adopted standard, with multiple competing commercial offerings, they should
  choose free software island model with the strongest licensing model that
  supports the standards adoption.

From a sustainable open source community point of view, all the other models
leave something to be desired. They may require us to subdivide our community,
a-la the free software island approach applied to larger pieces of software, or
those with direct value. They lead to incentivizing the creation of proprietary
forks, pushing the project to be less free as more capital joins the system,
a-la the open core models and the SaaS model.

This leads to our final two principles of a sustainable open source community:

* Any commercial activity around the software must further the sustainability
  of the community, and the potential for commercial benefit must be available
  to all.
* The incentives in any commercial models must bend away from the creation of
  proprietary downstream software.

The second point merits more inspection. We see that when we create the lines
of our community such that no commercial interests are allowed to interfere
with it, we can create communities that meet all of our criteria - but that
start to fall down when we consider the second part of our communities desires,
which are "whatsoever else they might want". As community members, we might
very well decide that we want to benefit monetarily from the software - through
consulting, through starting a software business. Existing businesses want to
create communities around their software, like Kubernetes, in order to increase
their own competitive position. The lines are not clear here - how do we know,
in any given case, if the decisions we make will harm the long term
sustainability of our community?

It is to this end the second point exists. If we are going to have commercial
activity around the communities software, the incentives must lead towards the
creation of *more* of the software the community desires. If instead it
incentivizes the creation of proprietary software, then we likely end up in
a kind of open source stasis - either the upstream does not have valuable
features (who wouldn't, for example, want half the latency, twice the
performance, and simplified operations of Datastax compared to Cassandra), or
those features are hidden away behind competing as-a-service offerings. Our
community may be sustainable, but it will be comparatively anemic.

I stop short of advocating for copyleft in all situations. The reason, for me,
comes back around to Rawls. I don't know the situation of every person who may
need to join the community, and I don't know the conditions of their lives that
they wish to improve. What I do know is, if I use a strong copyleft, I'm
narrowing my conception of what's viable for them to do with the software,
frequently in a commercial context. I find the argument that we should limit
the terms of the software, in all cases, as copyleft does to be uncompelling in
those conditions - the difference principle might compel me to use a non
copyleft license, so that they have the freedom to make the decisions that best
benefit them. So the statement is that we must choose models that bend away
from the creation of proprietary software - where "bend" implies that we may,
in fact, not decide to completely remove that option, but instead to ensure the
incentives for that option are bad (as the free software product model does).


