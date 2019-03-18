+++
title = "Motivations"
date = 2018-11-29T12:13:12-08:00
weight = 10
+++

For my own part, I started my journey with Free Software in 1994, with a copy
of Slackware I installed from floppies. I had been running a Bulletin board
system (BBS) for years, and I had become an operating system nerd because I
wanted true multi-tasking. I was so proud of running a copy of OS/2 Warp.
Slackware changed everything for me - I could see the source code, read the
man pages. I could do anything I wanted. I was one of the first people in my
circle with dial up internet - so I let my friends call my BBS, enter a
passphrase, and then use Linux to dial out via my ISP. It was awesome, and I
was all in on Linux.

That led me to a career as a systems administrator. I worked for a series of
regional internet service providers, and then for a series of web companies.
Throughout, the free software community supported me and mentored me. The Perl
community, particularly on Internet Relay Communications (IRC), taught me how to
be a programmer. The CFEngine and Puppet communities taught me how to think
about automation and scale. No matter what was happening in my career, the
software communities I was a part of always supported me. When I struggled,
there was always someone who was willing to help, to explain, to show me another
path. I don't know what my life would be like without those communities in it -
but I know that I would be less for their absence.

I started an open source configuration management project called Chef a decade
ago. It quickly grew beyond my own consulting company into a venture backed
startup. Chef--contributors, users, and friends--has grown quite large since
then. My business has grown with it. As a venture backed startup, Chef is
a success. It is also a success as an open source community - there is a steady
stream of people who contribute, who use it in their work, and who help each
other with their problems.

Out of all that I've done, I'm most proud of the Chef Community and the way it
has taken care of all the different people who have joined it. I am sustained
by the memories of people who have come up to me and told me how Chef changed
their lives. How *I* changed their lives. They have also changed mine in
immeasurable ways. My daughter looks at me differently, because she has seen
strangers come up to me and tell me about that impact. I have seen people
flourish, grow and change, as people, as engineers. It has been one of the best
things I have experienced in my life, and I cherish it.

That community exists because Chef is open source. But not everything we do is
open source - we offer proprietary software on top of our open source base.
This is what’s termed "open core". We create a base of open source software,
which everyone is free to use, and which the broader community collaborates
with us on. We also create proprietary software on top of that base, which we
sell to customers for money. "Open core" is the dominant model of using open
source in business today.

We add value on top of Chef's core value proposition, but we never get in the
way of that core value proposition. This has an upside - there is zero friction
to using Chef to solve your problem. This creates a large “top of funnel” for
our business. We have lots of Chef users, who we then try and convince to use
our proprietary software as well. The most difficult part of the process is
deciding what is the core value, and what is proprietary. When we get it wrong,
we either frustrate our community or hamper our ability to monetize.

Here is an example. One recent company, who is in the Fortune 50, sent us an
email that went something like this:

> Congratulations! Chef is the exclusive configuration management system for us.
> However, we are not going to enter into a commercial relationship with you,
> because your business model is bullshit. Love, Massive Company.

I have many problems with that email, but here is the biggest one. That
organization is going to use Chef to generate many, many billions of dollars of
revenue. We have spent more than a hundred million dollars into the development
of Chef. The vast majority of that effort is in open source software. We have
grown and nurtured a community I am immensely proud of. Because the tilt of
what is free and what is proprietary didn't convince a Fortune 50 company, they
are going to gain all the benefit of that work: for nothing. There is no
question that what we have built is valuable. It's that what we hold back
wasn't enough.

Now, dear reader, I hear you saying to me - "Well, Adam, them’s the breaks!
Sounds like your business model *is* bullshit!". Which, okay, fine - I accept
your premise. The only rational response to it is that I should create *more*
proprietary software. That I should make the open source part of what I do less
valuable, so that companies like that have no choice but to pay us.

Another reader: "You still benefit - they will participate in your community!".
Pretty unlikely. If they do, it will be to show up and ask questions. In
channels populated with employees Chef pays. With community members dedicated
to sustaining the software. This sucks for me, but it sucks worse for those who
volunteer their time and effort. How is it a good idea that the community
doesn't get back improvements to the software, directly or indirectly, in
return for their efforts? This isn't helping a single individual over the hump
- this is supporting billion dollar revenue streams, with "free" labor, because
that's the way it is.

Here is another true story from Chef: Over the years, many businesses have
integrated Chef into their platforms. Many of them created their own
proprietary layer on top of Chef, in direct competition with us. An example of
such a business was AWS OpsWorks - a hosted management platform built on Chef
- which was created by a team in Germany, and then bought by AWS. It's the
nightmare scenario of the people behind the Commons Clause - the fear that AWS
would destroy my business, which is funding the software, by launching
a competitor.

Lucky for us, that's not quite what happened. It turns out that, while our
stance on what was open was bad in the first example, it's perfect in this one.
Chef continued to evolve the software, in the open, at a rapid pace. OpsWorks
was always behind. Some of their features were not supported; some of their
workflows worked, others did not. This caused significant demand on AWS to
align their service with what we produce. As a result, AWS has now launched
Chef's commercial product as a service. We share in the revenue. The original
OpsWorks is no longer pushed strongly as a competitor. The Chef
Community--contributors, users, and friends--was the protection we had against
the most voracious force the software industry has ever seen.

My entire life in software is possible because I have been a part of incredible
communities. Chef is an open source company because I believe in the power of
communities. I also took venture capital, and have a responsibility to turn
that capital into a thriving business. Looking at it from only that
perspective, it is clear what I should do: I should create more proprietary
software. I should stop participating in the community, if it means supporting
people who don't pay me.

There's strong evidence that the more closed companies are, the better they
perform. The revenue--and exits--of open source companies is tracked in the
[Commercial Open Source Software Company Index](http://oss.cash/). These are
not exact numbers - these are mainly private companies. Regardless, the trend
is clear: The companies with the best business performances are the most
closed. They may have large user bases - but they don't have thriving open
source communities. What's more, in markets where there is competition between
open source companies, the most closed company wins.

Clearly, as an open core business, the usefulness of my open source software is
in direct tension with my ability to monetize it. The incentive for creating an
open source community is that it should be healthy, but not too healthy. In
this mindset, the value of my open source software is solely as a funnel to my
proprietary software. Nothing more. It breaks my heart.

I want to square my own circle. I want to find a way to no longer be in tension
with my community. I want every dollar of revenue I generate to feed and
sustain it. I want to generate venture capital sized returns. I want my
business to thrive not in spite of its community, but *because* of its
community. I want the predominant way we build open source businesses to be
through building thriving communities. Because that's where the real impact on
my life has come from.

I want the incentives to be different. I want the part of the decade of my life
that I am most proud of to be the reason my business is successful, not
a reason it is not.

