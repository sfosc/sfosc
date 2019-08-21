---
title: "Contribution and Distribution"
linkTitle: "Contribution and Distribution"
date: 2018-11-29T14:37:03-08:00
weight: 35
description: >
  How is work contributed, and distributed?
---

{{% pageinfo %}}
  How is work contributed, and distributed?
{{% /pageinfo %}}


Having established the rules for governance and behavior for the community at
large, we can turn to the terms under which work is contributed to the
community, and how it is distributed to others. To cover this, we need to
introduce the different levers at our disposal: copyrights, trademarks,
patents, terms of distribution (end user license agreements, or EULAs), and
terms of service.

(As an aside: these terms are not defined or enforced in the same way around
the globe. Rather than have an intensive debate about the particulars of any
given nation's stance, I’ve stuck to the terms as widely understood in the
United States. While other nations might behave differently, for the terms of
discussing what the attributes of a sustainable open source community are,
I think they serve just fine.)

Copyright is the idea that, as the creator of something, you have the right to
decide how it will (or won’t) be used. Trademark is the idea that, if we both
create similar things, I can’t pretend that my thing is your thing (if we both
make Cola, I can’t say my Cola is Coca-Cola; because only Coca-Cola can be
Coca-Cola). Patents are how we say that we have a special way of creating our
goods (while we both create cola, I have a *special* way of making cola, and
only I am allowed to make cola that way, unless I give you permission).
Distribution terms mean that, while we might both make identical items, *this*
particular set of things comes from me, and has some terms attached that
I desire. Terms of Service allow you to set terms on how someone uses your
goods as a service (such as when you use a website, or use a managed service.)
When you are allowed to take another persons work, and combine it to create
your own work, you create what is known as a "derivative work".

Starting with the clearest item, in Rawls terms, first: Patents. Given the
requirements of meeting the four freedoms as a guarantee of our basic liberty,
it’s clear that we need to have the right to both use a patent directly, and to
create a derivative work that contains a patent. Otherwise, our community might
not be able to exist, or certain contributors could use their proprietary
patented method to exclude others in the community. So we can add another
attribute:

* Any patents included in the software must be granted under the terms of the
  open source license.

In the copyright model, each individual contributor retains their copyright
over the work they have created. Let's say you create a piece of software called
"Kitten", and you decide to publish its source code under the terms of the
Apache License 2.0, and create a binary distribution of the software under the
same terms. Your work is useful, and someone else decides to modify the program
for their own benefit. They now have a new, derivative work of Kitten, whose
copyright consists of your work and theirs. We can now consider your version as
"upstream", and their version as "downstream". They decide that they want to
contribute their modifications to the program back to you, so that you (and
others) can benefit. They would then license their work back to you, under the
same terms (Apache License 2.0). Assuming you accept it into your distribution
of Kitten, the resulting release of Kitten is covered by copyrights owned by
both you and them.

A corner case exists here we must address - you can assign your copyright to
others. Assume in the story above, the upstream might decide that, in order to
incorporate the downstream changes back into its distribution, the downstream
needs to assign the copyright to the upstream. This grants the upstream broad
latitude to do whatever it likes with the combined work - up to, and including,
re-licensing it under different terms. This is the primary lever of the "dual
licensing" model - companies require copyright assignment, then sell the
software under multiple sets of terms: one for an open source version, and
another for commercial use or integration. These schemes uphold our basic
liberty, assuming one of the licenses it is released under is a free and open
source license (in a pinch, we could always fork the software). However, they
do pose issues with fair equality of opportunity: since the ultimate copyright
holder is the only one who can re-license the software, they reserve for
themselves a level of status that is unattainable by any other persona in the
community.

The other use case for copyright assignment is giving the software to
a foundation, such as the Free Software Foundation. In this case, the intent is
to ensure a single entity has the ability to enforce the copyright license.
There remains some debate about whether this is necessary - but, regardless,
these organizations make commitments about the use of the copyright (they will
use it only for enforcement, not to relicense the software.) This gives us two
attributes about copyrights:

* All contributors must retain their copyright, unless the software is being
  managed by a foundation for the purposes of license enforcement
* All contributors intending to have their work incorporated into
  a distribution must contribute their work under the same terms as the
  software license they received it under.

Let’s take a different tack - assume in the story above, the downstream decided
to continue forward, but not to contribute back. This would be a "fork" - a new
distribution, with a shared origin, but now divergent from the upstream. How
the community feels about this is one of the primary drivers of license choice
- the copyleft licenses put the requirement for downstream works as a viral
component of their liberty: you can take the work, you can create a derivative,
but you must ensure the same freedoms for your derivative as those you
enjoyed. The non-copyleft licenses vary widely in what they cover, but the
commonality is that they put no such requirement on the recipient: while you
may decide to contribute, or you may decide to publish your work under similar
terms, you don’t have to. The door is open to creating derivative works that do
not share the freedoms of the upstream.

{{% nextprev %}}
