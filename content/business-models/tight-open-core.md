---
title: "Tight Open Core"
date: 2018-12-06T12:01:01-08:00
weight: 15
---

Tight Open Core is a model where the software has its primary functionality
covered under an open source license (the "core"), but has direct (often
critical) features that are only available under a proprietary license. 

Take, for example, the feature of authentication and authorization. Some amount
of these are critical for almost all software. In a Tight Open Core model, this
functionality will not exist in the open source core: instead, it will be pushed to
either proprietary plugins or exist only in fully proprietary builds.

### Who Uses It?

* [Elastic](https://www.elastic.co)
* [Neo4j](https://www.neo4j.com)
* [GitLab](https://www.gitlab.com)

### When should it be used?

Frequently used by venture backed startups, with a single company putting in the
bulk of the engineering and product resources. The goal is to have successful enough
core offering to generate substantial demand for the proprietary functionality.

### What kind of monetization is possible?

These types of software are usually intended to be monetized from the beginning,
although some (like Elastic) have shifted to this model over time. With this
model, it is easier to determine if a given piece of functionality should be in
the core or not: if it is critical to the success of your target market, it should
be proprietary.

### Does this model help create a Sustainable Free and Open Source Community?

No. While there is evidence it is more effective as a business model than its
cousin, [loose open core]({{% ref "business-models/loose-open-core" %}}). The
dynamics of keeping vital functionality out of the core means that, should the
community decide to replicate the feature, it is directly at odds with the company's
monetization model.

