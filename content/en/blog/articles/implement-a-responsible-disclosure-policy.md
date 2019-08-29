---
title: "Implement a Responsible Disclosure Policy"
linkTitle: "Implement a Responsible Disclosure Policy"
date: 2019-08-29
description: >
  Responsibly disclosing security issues starts with publishing a policy and sticking to it.
---

## Preface

> Security is everyone's responsibility and it should be everyone's concern.

You may have heard this. At SFOSC we discussed
... [expand]
Indeed is critical for a sustainable open source ecosystem and involves everyone.

But maintainers, having more access than anyone, have a special responsiblity here.
And this is where the Responsible Disclosure Policy comes in.

There are three parts involved in the process of maintaining a Reponsible Disclosure policy.

- a public document explaining how to **inform code-owners** of security issues in the code
- a promise the code-owners will **treat the report with care** and urgently solve the issue
- an agreement that both parties will **behave reasonably**, e.g. no sueing each other or stealing real passwords

The top priority: don't let anyone be exploited!



- Rawls Game
- Pros and Cons
- A Policy Won't Save You
- Outreach


## What does Responsible Disclosure mean?
When a security researcher discovers a vulnerability, the generally accepted flow of responsible disclosure is as follows:

| WHO        | WHAT                                                        | HOW        |
|------------|-------------------------------------------------------------|------------|
| Researcher | **DISCOVER** a vulnerability                                | Privately  |
| Researcher | **CONSULT** the Security Disclosure Guidelines              | Privately  |
| Researcher | **NOTIFY** code-owners of a purported vulnerability         | Privately  |
| Code-Owner | **TRIAGE** the code to prove that the vulnerability exists  | Internally |
| Code-Owner | **PATCH** the vulnerability                                 | Internally |
| Researcher | **VALIDATE** that the patch actually solves the issue       | Privately  |
| Code-Owner | **RELEASE** a new version of the code with the patch        | Publically |
| Researcher | **PUBLISH** the write-up of the vulnerability               | Publically |
| Consumer   | **UPGRADE** to the latest version of the safer code         | Privately  |



## Best Practices
- Keep yourself safe first


- Design and develop the software for security.<br>
***Example:** don't let MD5 password hashing get merged because it "isn't that important for this project".*

- Prioritize and respond appropriately to vulnerability reports.<br>
***Example:** The responsible disclosure process goes here.*

- Openly publish vulnerability reports.<br>
***Example:** npm audit style. Whatever is most effective at informing your users / dependents.*

- Compromised User Accounts

- Supply Chain

- Bill of Materials

- CI Integration

- Legal Exemption [opencollective](https://github.com/opencollective/opencollective/pull/2235)<br>
To encourage responsible reporting, we will not take legal action against you nor ask law enforcement to investigate you providing you comply with the current policy and more generally with the following guideline: Make a good faith effort to avoid privacy violations, destruction of data, and interruption or degradation of our services.


## Don'ts
- Simply pass the buck (to upstream, to the dev consumers)
- Ghost the reporter
- Immediately publish the vulnerability report

## Example Boilerplates




https://github.com/nodejs/security-wg/blob/master/processes/responsible_disclosure_template.md

Working on this article idea from
https://github.com/sfosc/sfosc/issues/123

Thanks to:
Liran Tal from Snyk