# Development workflow

On this project we work in 2-week sprints. \
Before every sprint the product team provides us a list of desired tickets, we estimate them and see how much we can do in the upcoming sprint. \
The tickets are supposed to be assigned in the beginning of every sprint, and expected to be done within that sprint. This is why we don't assign the whole list, but only those we think we can complete during the sprint based on the estimations.

## Point calculation

We estimate in points, approximately points mean these time ranges:

1 - a trivial config change, no need to monitor \
2 - a config change, some monitoring and paper work are needed, `~couple of hours` \
3 - `~a day` \
5 - `~2 days` \
8 - `almost a week` \
10 - `more than a week` \
13 - `a whole sprint` \
more than 13 - should be split.

A `completed` ticket means 
- implemented code and tests, 
- code review and qa passed, 
- ticket is ready to deploy or has been already deployed. 
We include all these activities in estimated points, meaning points include time to address code review comments or fix issues found during qa.

## Priority 

Tickets are vertically ordered on jira boards, meaning tickets at the top have higher priority. 
This is a good start to view your tickets:

### Boards by priotity or sprint
https://gocurb.atlassian.net/jira/software/c/projects/CORE/boards/108/backlog?issueLimit=100
https://gocurb.atlassian.net/jira/software/c/projects/CORE/boards/108

### All the tickets regardless of priority or sprint
https://gocurb.atlassian.net/jira/your-work

## Branching

We use the following branches:
- `release` branch to deploy our changes to release env (it's like a "staging" env)
- `release2` branch to deploy to release2 env
- `production` branch to deploy to prod1 env
- `production2` branch to deploy to prod2 env
- `production3` branch to deploy to prod3 env

When you create a topic branch, it's a good practice to indicate the ticket number and a title separated by dashes. \
Eg. `API-375-provide-instructions-on-active-ride`


## Workflow

Usually we follow these steps:

### 1. Research 
Spending time to understand how the related feature/logic works now, how it is expected to work when the ticket is done, what has to be done. \
This step will be taking most of your time in the beginning, sometimes the team also spends most time for research, and the real code change ends up being a one liner.
It usually happens in the following way: a developer reads the ticket, asks questions about what is unclear, tries to understand each unknown term/word, gets a high level overview of the feature (user experience), realizes how the flow can be performed (how to book a ride from Curb Live for instance), sometimes we give an entry point. Then the developer explores the code, figures out how it works, we’re happy to answer technical questions. In the end of this stage you should fully understand the part of logic you’re going to change.

Once you pushed to any of these branches the deployment will be triggered automatically (for Kube apps).

### 2. Writing code and tests 
Everything you implement / change *should be covered with tests*, except maybe some minor config change like adding a role to access a clientservice endpoint. Without tests a PR won’t pass code review. Also it's not a good practice to deploy a feature branch to our staging environment (we call it “release”) without unit tests, because it’s very easy to have a typo or a non-working logic that will break the environment, that the whole team uses. And it is usually much harder to debug an issue on release than find it with unit tests.

### 3. Checking your code on release 
Since every developer follows step 1 and fully understands the logic they change, they know best how to quickly check that the code works. It’s not a full qa, it’s more about some console commands or api requests - whatever that can help you to understand that your changes work, some key checks.

### 4. PR description and test plan 

In the PR description you should list the followings:

4.1 all the dependent PRs (if you make changes in multiple apps or gems), 

4.2 test plan,
In your test plan you should describe exact cases, step by step, what a qa person should do to verify your work. Every developer should be able to explain what to test and how, why one or another change was done in their PRs, that’s why step #1 is so important.

4.3 steps how to deploy (sometimes it’s important to do something in a special order) 

4.4 what to check on prod after deployment (sometimes same as test plan, sometimes monitor existing stuff if your changes take immediate affect).

### 5. Code review and QA

These 2 things go together, meaning when you assign someone for code review on Github, a QA person also takes your ticket for testing, even before your code was fully reviewed.

#### a. Code review 

You should get your PRs approved by at least 2 people, whom to assign is usually up to you, but Jay asked that he’s assigned to review prs of all new developers. The second person can be whoever in your opinion knows this part of app better. If your work contains any db migration, you should also request review from our DBA Matthew Vincenc (assign on Github and ask in Slack).
We usually try to review someone’s code when possible, but it may take up to several days. In case you have some critical code change that should be deployed sooner, you can ask to review personally, otherwise no need to send prs to the reviewers every time you open it and assign someone.

#### b. QA 

Once you change the status of ticket in Jira to `Code Review`, it becomes available for QA. Our testers monitor Jira, and take tickets for QA in order of the same vertical priority. Each ticket hash `QA Contact` field where you can see who is verifying your ticket, and once a ticket passes qa, the qa person should attach a doc describing what cases they tested. Those cases usually match your test plan, a link to it you can add as a comment in the ticket.
One important thing here: if a bug is found, QA person should not open a new ticket, you fix it in scope of your current ticket (they do it for mobile devs, but should not do for us).

### 6. Post-implementation support

Sometimes code review and QA takes time, and the developer switches to other tickets. It can happen, that they forgot about the previous ticket, meaning a QA person reports a bug but the developer wants to fix it later, or code review comments and requested changes are not noticed. \
It’s the developer’s responsibility to notice and address code review comments, as well as QA issues. It's a good practice to regularly check  open PRs to see if they were reviewed, and try to address QA issues once they are reported. Of course sometimes you need to switch to a high priority work and “forget” about previous tickets, but they should be "remembered” once high priority work is finished.

### 7. Deployment
Once a ticket passed code review and QA, it’s considered as “ready to deploy” and should be set to appropriate state in Jira. We also post a message in “deployments” channel in Slack, listing all PRs. Jay should change status to “Approved to Deploy” in Jira (because sometimes we have to wait for other teams to deploy their work before we can deploy ours), then somebody from our team deploys to prod. Our regular deployment window is from Monday to Thursday from 12pm to 2pm eastern time. 
Each new developer gets access to prod after 3 months of work and can deploy after that.

### 8. Standup updates 
Every day we’re supposed to write a short, but informative update in `standup-updates` channel in Slack, even if there is standup. That update should not be very long, no need to write there whom you talked to and what were your thoughts, but a short description of what was done today. Not short like “working on X”, but something like “working on X, research”, or “working on code review comments for X”. The above steps are known to Jay, you can use them in your update. Very often there are undone tickets at the end of a sprint, and with standup updates it’s clear what a person was working on (a new dev needs more time for research, there was unplanned work, new requirements, changed approach), and we can estimate our work better. And of course some kind of control on what devs do :)