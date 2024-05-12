# Post-Mortem: The Great Application Meltdown of May 2024

![Application Meltdown](milky-way-2695569_960_720.jpg)

## Introduction:

Hey folks,

So, you know those horror stories about things going bump in the night? Well, let me tell you about our very own horror story - "The Great Application Meltdown of May 2024."

## The Setup:

**Duration of the outage:**

- Start: 06/05/2024, 6:00 AM
- End: 10/05/2024, 8:00 PM

## The Horror Show:

**Impact:**

- Service affected: The entire application running on PHP 7 crashed during this period.
- User experience: Users were unable to connect to their accounts. Those already connected couldn't send any requests (messages).
- Percentage of affected users: Nearly 100%

## The Investigation:

**Root cause:**

- An update was made to the production environment while some methods were still dependent on the previous development stack (PHP 7, Apache 5).

**Timeline:**

- Issue detection: 06/05/2024, 3:00 PM
- Detection method: Issue was found via the application deployment log, showing dependency alerts.

## The Heroic Effort:

**Actions taken:**

- Rollback of the application development state was initiated to resolve the issue.

## The Plot Twist:

**Misleading investigation/debugging paths:**

- Initially attempted to convert methods and variables to the new version, which led to complications.

## The Escalation:

**Incident escalation:**

- Incident was escalated to the developers' team.

## The Climax:

**Resolution:**

- Issue was resolved by rolling back the server to the previous application state.
- While this action resulted in new users losing their accounts, it was the most effective solution.

## The Plot Thickens:

**Root cause and resolution:**

- **Cause of the issue:** An individual attempted to upgrade their local development stack but mistakenly upgraded the entire production environment. This error went unnoticed by the DevOps team, resulting in client connection and request errors.
- **Resolution:** Complete rollback of the application, including data, to the previous state. An automated daily backup of the application was implemented at 10:59 PM. From 06/05 to 10/05, the application was reverted to the state of 05/05, and attempts were made to fix the issue. Failing this, the application state was reset to 05/05, erasing the upgrade.

## The Epilogue:

**Corrective and preventative measures:**

- Implement Docker containers for developers' local environments to prevent global system disruptions.

## Lessons Learned:

You know, they say every cloud has a silver lining. Ours was discovering the power of Docker containers and the importance of double-checking before hitting that "update" button!

So, until the next adventure, stay safe, stay updated, and always keep an eye on your development environment!

Cheers,
Abdoul aziz

P.S. Here's a picture of the Milky Way to remind you that even the darkest night has a bit of light. 🌌

![Milky Way](milky-way-2695569_960_720.jpg)
