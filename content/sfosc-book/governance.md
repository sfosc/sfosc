+++
title = "Governance and Behavior"
date = 2018-11-29T12:13:12-08:00
weight = 30 
+++

Lets start by evaluating how to provide fair equality of opportunity for the
direction of the project. I see three common models: 

1. Dictatorships, such as Linux, Python (before the resignation of
Guido van Rossum and the
[adoption](https://discuss.python.org/t/python-governance-vote-december-2018-results/546)
of a steering council model), and Chef.
1. Self organizing with loose consensus, as best seen in the Rust community.
1. Democracies, represented by the Apache Foundation, The Debian Project, and OpenStack.

How does each stack up to Rawls' principles?

The dictatorship model has an individual, often the founder, holding 100% of
the authority over the projects direction. Usually they then delegate
responsibility to trusted lieutenants, who then further delegate to individuals
or teams. Those teams often feel democratic at the bottom - some amount of
public conversation and loose consensus is found at the edges of the project.
Yet the power in these models is fixed: the leader holds ultimate power. The
community puts its faith in the judgement of the leader.

The advantage of this model is often perceived to be streamlined decision
making, and a focusing on the founders' moral authority over their work as the
most legitimate way to decide the projects direction. Taken through Rawls
lense, though, it is hard to advocate for this type of leadership. While it may
be efficient at breaking ties, or resolving dispute, it clearly denies the
ability for any community member, other than the founder or their hand picked
successor, to advance to the level of ultimate leadership in the community. All
participation or advancement is at the personal whim of the founder. They may
do a good job of ensuring that both fair equality of opportunity and the
difference principle are applied in their personal decision making - but since
the position in which their authority is vested cannot be held by any member of
the community, it ultimately fails to satisfy fair equality of opportunity
- which means they are un-just at their foundation. 

Similar problems plague the loose consensus decision making of the Rust
community - a community that I would say is a model for pleasant and meaningful
open source. Rust consists of several teams, with ultimate authority resting in
the "core team". This group is responsible for creating "sub-teams" that focus
on particular areas, each led by a member of the core. The sub-teams themselves
have the responsibility for driving their own membership guidelines, and for
making decisions based on Rust's own core community value of consensus.
A [significant amount of
effort](https://github.com/rust-lang/rfcs/blob/master/text/1068-rust-governance.md)
has gone in to this structure, and in practice, it’s clearly working well.
However - the issue here is that, ultimately, if the core team itself should
fail to represent the will of the Rust community, there would be no recourse.
Other than participation, and a relatively opaque conception of what behavior
merits sub-team (and ultimately, core team) membership, there are no guidelines
at all. As an institution designed for longevity, the lack of clarity on how
members of the core team are decided and removed means that it’s in a space of
uncertainty: as it is currently operating, you could easily argue it fits all
of Rawls tests. But it could clearly turn to a model where the core team
decides to behave in a way the rest of the community disagrees with, or to its
own benefit. Looking at Rust is interesting for our process, because it clearly
is generating net-positive results, both for the software itself and the
community around it - and yet, it’s impossible to say it will remain that way.
While producing world-class results, Rust fails to meet the bar for equal
opportunity of access or the difference principle - in its attempt to allow the
teams to self organize, they fail to ensure the Rust community can remain as
egalitarian as it is today. It’s lack of guidelines are its trouble.

Finally, we can look to the democratic model. This is best represented by the
[Apache Software Foundation’s governance
model](https://www.apache.org/foundation/governance/), the [Debian
Project](https://www.debian.org/social_contract) and [the OpenStack
Foundation](https://www.openstack.org/legal/bylaws-of-the-openstack-foundation/). 

Apache publishes an [organizational
chart](https://www.apache.org/foundation/governance/orgchart) that is
instructive here. They split the organizations governance into two parts - the
corporate governance of the foundation itself, and the project governance for
each Apache software project. The Apache members, all of whom are individuals
with a single vote, elect a board of directors, who then appoint a president
and corporate officers. For each project, the board creates and updates Project
Management Committees (PMCs). The Chair of each PMC is appointed by the board.
The PMC Chair then has the power to establish the rules for the day to day
functions of their project. You can see the similarity to the Rust model - at
the level of any individual Apache project, there is broad latitude for the day
to day functioning of the project to be decided by the project itself, while
still being morally beholden [to the Apache Way](http://theapacheway.com)
(which is, itself, not clearly defined). Fundamental to the Apache model is
that members get to vote in the board, which then has a responsibility to
oversee strong executive leaders with broad latitude to do as they see fit for
the projects they manage. The result is that it strikes a balance between the
efficiencies of a pure dictatorship (through the consistent use of powerful
executives with broad personal authority) and the loose consensus of Rust. 

A flaw in the Apache model is that, in order to be eligible to vote, you must
first become a Member, and the terms fail the difference principle. Membership
is invitation only - new members are proposed and voted on by the existing
membership. Here the foundation relies on the idea of meritocracy, "[meaning
that contributions and skills are the factors used to judge
worthiness](https://www.apache.org/foundation/members.html)". The difficulty,
of course, lies in deciding what behavior is, in fact, worthy of merit. Apache
makes no such attempt at defining merit - but it is implicit that one aspect of
merit is being able to directly contribute code to an Apache project. The side
effect is that, with the Apache model, we run the risk of excluding members of
the community whose contributions don’t match our collective idea of merit, and
it is highly likely this will be perpetuated - why would the existing
membership, all of whom share the same implicit idea of what is worthy of
merit, ever expand that point of view? Again we find a spot where, in practice,
Apache is largely upholding the idea of equal opportunity of access; but it may
very well be failing to uphold the difference principle, since membership in
the community (and therefore access) may not include all members of the
community.

The Debian Project is a community dedicated to the creation of a free software
operating system, and it’s another example of democracy in open source
development. It has two foundational documents: [The Debian Social
Contract](https://www.debian.org/social_contract), which defines their
principles, and contains the Debian Free Software Guidelines, which defines
what software is considered for distribution; and [The Debian
Constitution](https://www.debian.org/devel/constitution), which describes the
organizational and decision making structure for the project. In broad terms,
Debian Developers vote on General Resolutions, hold Elections, may override any
decision made by any elected official, and amend their constitution (on a 3:1
majority). The Project Leader is elected by the Developers, and has broad
latitude to delegate their substantial authority as they see fit. One of the
Project Leaders powers is the appointment of members to the Technical
Committee, which has the authority to overrule decisions of individual
developers, decide on technical matters, and set technical policy. 

Originally, Debian Developers were always considered as people who developed or
packaged software for Debian. However, by [general resolution in
2010](https://www.debian.org/News/2010/20101019), the guidelines were updated,
and non-packaging contributors were welcomed in to the fold. To become
a member, and therefore to have a vote, you need to: be contributing to Debian;
fill out an Application; have an existing Debian Developer advocate for you via
an email describing what you have done for the project; have your
identity verified; have your understanding of debian philosophy and procedures
validated; and have examples of your work available. Assuming all goes well,
you are then considered a voting member of the project.

Debian clearly meets Rawls' criteria, by resolving the issue with the Apache
model - the institution that governs the community has broadly achievable
membership, which then confers the ability to gain access to positions of power
within the community, including the ultimate authority conveyed by the project,
that of the Project Leader. Votes by members all have equal weight, and the
constitution contains procedures for voting, certifying the vote, and more.
Like every model we have seen so far, it invests authority to a strong
executive, who then has wide latitude for conveying their authority to others
within the project, and relies strongly on consensus before requiring dispute
resolution to happen via a formal method. 

The OpenStack Foundation is interesting because it functions as a democracy,
but with different levels of voting participation. [It is governed by
bylaws](https://www.openstack.org/legal/bylaws-of-the-openstack-foundation/),
which define how the project and the non profit foundation that administers it
will function. Technical decision making is done through an elected technical
committee, which has broad leverage over the day to day decision making of the
project. The foundation itself is overseen by a board whose membership includes
indviduals and two levels of coporate sponsorship ("gold" and "platinum"). The
corporate membership types are fixed in the bylaws of the foundation, and both
have capital and contribution requirements. Individual membership is made
through an application process to the project Secretary, with simple
requirements (name, affiliation, statement of interest, and contact
information.)

The board is elected as follows: platinum members are allowed to appoint
a single member of the Board, and their number sets the "director limit"
(currently at 8). Gold members then vote amongst themselves to determine who is
allowed to select the gold member seats on the board, filling 8 seats. Then
individual members are allowed to vote, electing 8 individual members to the
board. This board has all the rights that are not otherwise delegated to
a committee (for example, they don’t have the right to make technical decisions
for the project, but they do direct funds.)

The technical committee is selected by a vote of the "Active Technical
Contributors" (ATC). These are determined as a contribution approved to any of
the official OpenStack Projects, or if they are not a technical contributor, they
can apply to the chair of the technical committee, who then brings it to a vote
of the committee.  The technical committee has broad latitude for its own
governance - it has [published a significant amount of rules over the
years](https://governance.openstack.org/tc/). Additionally, the project
recognizes the role of Project Team Lead (PTL), which is elected from a similar
membership process, for each project under the OpenStack umbrella, and has
broad technical latitude. 

OpenStack takes steps to mitigate any individual company gaining control of the
project (through their rules around Affiliation,) ensures that any modification
to the bylaws require a 2/3 vote (and modifications relating to membership classes
requires a vote by those membership classes), and various times when votes are
required by the larger body of members.  Through the existence of the PTLs and
the Technical Committee, OpenStack creates an internal model that is not that
different from the Apache model (separate technical decision making from the
foundation itself, strong individual leaders with broad authority over their
project.) 

Most interesting for our purposes is the existence of multiple levels of voting
on the OpenStack board itself, according to the varying membership levels, and
the admission of corporate entities who then nominate representatives. Do the
Platinum and Gold memberships violate the fair equality of opportunity or the
difference principle? 

In both Platinum and Gold cases, there are significant revenue and
participation requirements: $500,000 a year (with a 3 year commitment), and
gold is 0.025% of revenue with a minimum of $50,000 and a maximum of $200,000
per year. Essentially, the foundation takes in capital in return for the
ability to have influence over the issuance of the OpenStack Trademarks,
influence on decision making for the foundation's budget, and the election of
officers.

Since all work done by the OpenStack Core must be licensed as Apache 2.0, we
know that taking the capital doesn’t violate our basic liberties - we haven’t
traded the four freedoms. While we have traded money for influence, we have
limited the scope, through ensuring specific changes to the bylaws require
larger votes of the membership. Their presence on the board gives them
influence in some positions of authority (such as hiring officers of the
foundation, who draw salaries). The issue is that the platinum and gold members
have enough seats on the board that they can vote as a block against the
interests of individual members - they have a 2/3 majority of the board.

I believe this means that the OpenStack Board fails to meet both the equal
opportunity of access and the difference principle. The failure of equal
opportunity of access is caused by the skew in the voting requirements, which
the board uses both to provide positions of authority within the foundation,
and to appoint new members to the board directly (existing Platinum members
have more weight than Gold or Individual, respectively). Clearly, the bar to
achieving Platinum membership is not equally available, and the influence
purchased is significant. 

While this is enough to disqualify the model, it is also clear that the board's
structure fails to address the difference principle. Imagine you are an
individual contributor who believes the status quo structure of OpenStack to be
unjust as I have just described it, and who then decides to lobby for a change
in the by-laws. By design, the rules do not favor you (the member with the
least) - the community favors the other classes of member, ensuring that if
their interests are in conflict with yours, they will never be seriously
threatened. We’ve curtailed the rights of the individual members to increase
the rights of the corporations. Put on the veil of ignorance, and imagine the
difference between coming out the other side a Platinum Member versus an
Individual Member.

Given this analysis, what are the attributes of a sustainable open source
community's governance model?

* Rules for membership must be published and adhered to.
* Membership must be open to all classes of contributor to the community. It
  must not be limited to technical contribution, nor to any kind of external
  status.
* Membership must have requirements for validation of identity, and review of
  contribution to the community (to avoid stacking the membership roles). Any
  impediment to membership must be low enough that a person with the least
  advantage could achieve it.
* Voting processes must be put in place, which give each member an equal vote.
* All positions of authority in the project must be, directly or indirectly,
  the result of a vote.

Beyond this, we can draw a couple of conclusions that, while not strictly
necessary for the system to be just, seem to be common across the vast majority
of successful technical communities:

* The membership should vote to elect a strong executive (either an individual
  or a committee), with broad latitude to structure the technical work of the
  project as they see fit.
* An elected board should exist, to manage disputes and issues with the
  executive, and to manage any community resources.

In addition to governance models, the other practical obstacle to participation
is the interpersonal behavior of the community itself. Imagine that, while we
adopt all of the rules above, we require that members acquiesce to existing
members' abusive language, harassment, racism, etc. In this case, we would fail
to provide equal opportunity of access - you’re allowed to join, but only if
you’re willing to suffer our withering attacks. So we can add one more
attribute to a sustainable open source community:

* It must have a strong code of conduct, with clear, fair enforcement
  mechanisms.

