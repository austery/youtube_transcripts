---
title: "Microsoft CEO Satya Nadella on the Future of AI"
layout: "post.njk"  
date: "2025-07-10"
tags:
  - "视频笔记"
  - "人工智能"
  - "微软"
  - "Satya Nadella"
  - "技术趋势"
  - "未来"
data:
  author: "Lei"
  podcast_program: ""
  speaker: ""
  guest: "" 
  source: ""
---

# Microsoft CEO Satya Nadella on the Future of AI / 微软首席执行官萨提亚·纳德拉谈人工智能的未来

**Speaker:** Satya Nadella, CEO of Microsoft. He discusses the
transformative potential of AI, its impact on Microsoft's product suite,
the tech stack, vertical SaaS, energy consumption, and the future of
computing.

**讲述者简介：**
萨提亚·纳德拉，微软首席执行官。他探讨了人工智能的变革潜力、其对微软产品套件、技术栈、垂直SaaS、能源消耗以及计算未来的影响。

## Introduction and Major Transitions / 引言与重大转型

**Interviewer:**

EN:

Alright, Satya, thanks for chatting with me. Uh, congratulations on
everything you announced at Build. Um, yeah, I had a few questions.
You've overseen very successful major transitions at Microsoft: Cloud,
the adoption of open-source, and now we're kind of in this next one.
With the rise of these incredibly powerful AI agents, how are you
thinking about investing in that while also maintaining your kind of the
current product suite that you have and the major changes that are
coming to it?

ZH:

好的，萨提亚，感谢您与我交谈。嗯，祝贺您在Build大会上宣布的一切。是的，我有一些问题。您在微软领导了非常成功的重大转型：云计算、开源技术的采用，现在我们正处于下一个转型期。随着这些功能极其强大的人工智能代理的兴起，您是如何考虑在投资这一领域的同时，维护现有产品套件以及应对即将到来的重大变革的？

**Satya Nadella:**

EN:

Yeah. First of all, thanks so much for being at our developer
conference. You know, the way I think about it is, first you have to
embrace what's new, right? And that's where I think even now that we're
even two to three years in, depending on how you count, into this AI era
and this agentic web era, the patterns of what it means to build agents,
build apps, is becoming clearer. So you have to really go look at the
tech stack that you have, that you built maybe for a previous workload,
now needs to be really thought up from first principles for the new
workload.

So take even the infrastructure layer, right? Obviously, we're very,
very proud of the fact that we have 70 regions of Azure all around the
world. And then you say, wow, we now need to retrofit them or fit them
to become AI factories. That's kind of what you need to do. It turns out
that if you take even an app like ChatGPT or Copilot, it definitely
needs a lot of GPUs or AI accelerators, but it also needs everything
else. It needs, in fact, tons of storage, both during training and
inference. It needs a ton of compute, regular compute, not
AI-accelerated compute, in order to be able to, for example, have the
environments for agents. So, interestingly enough, it turns out what we
built over the last 15 years may be more relevant now because agents
need more of it than any workload previously, but it's at a different
unit of scale. So, that's kind of what we have to do at the infra layer.

Same thing with data, right? Take data and you say, well, you know, data
has always been about: take a database, you said that's where you
schematize people, places, things. But now you can bring the
intelligence layer to the data, a reasoning engine straight in. Like one
of the coolest demos we showed was this PostgreSQL, which, you know, is
so modular that you can now mix and match in your SQL query an LLM
response. I mean, think about the query plan you can generate. So I feel
that every layer of the tech stack has to be reimagined, but it also
means we can take some of the best work we've done over the last 15
years and have it compound for our developers so that they can get the
benefits of it. So that's how we're thinking about it, which is how do
we make sure we think about every layer of the tech stack from a first
principles perspective for the new AI workloads that are being built,
and then really stitch it together so that it meets the real-world needs
of customers.

ZH:

是的。首先，非常感谢您出席我们的开发者大会。我的看法是，首先你必须拥抱新事物，对吧？我认为，即使我们进入这个人工智能时代和代理网络时代已经两到三年了（取决于你怎么计算），构建代理、构建应用程序的模式也正变得越来越清晰。所以你必须真正审视你现有的技术栈，那些可能是为先前的工作负载构建的技术栈，现在需要从第一性原理出发为新的工作负载重新构想。

就拿基础设施层来说，对吧？显然，我们为在全球拥有70个Azure区域感到非常自豪。然后你会说，哇，我们现在需要对它们进行改造或调整，使之成为人工智能工厂。这差不多就是你需要做的。事实证明，即使是像ChatGPT或Copilot这样的应用程序，它肯定需要大量的GPU或AI加速器，但它也需要其他一切。事实上，它在训练和推理过程中都需要海量的存储。它需要大量的计算资源，常规计算，而非AI加速计算，以便能够为代理提供运行环境等。所以，有趣的是，我们过去15年构建的东西现在可能更具相关性，因为代理比以往任何工作负载都需要更多这些资源，只是规模单位不同了。这差不多就是我们需要在基础设施层做的事情。

数据方面也是如此，对吧？拿到数据，你会说，数据一直以来都是关于：拿一个数据库，你说那是你将人、地点、事物模式化的地方。但现在你可以将智能层引入数据，直接嵌入一个推理引擎。比如我们展示的最酷的演示之一是关于PostgreSQL的，它非常模块化，你现在可以在SQL查询中混合搭配LLM的响应。我的意思是，想想你能生成的查询计划。所以我感觉技术栈的每一层都必须重新构想，但这也意味着我们可以利用过去15年所做的一些最佳工作，并让它为我们的开发者带来复利效应，使他们能够从中受益。我们就是这样思考的：如何确保我们从第一性原理的角度思考技术栈的每一层，以适应正在构建的新AI工作负载，然后真正将其整合起来，以满足客户的实际需求。

## Accelerated Change in User Products like Office 365 / Office 365等用户产品的加速变革

**Interviewer:**

EN:

Yeah. So the end users, especially for products that people are so
familiar with, Office 365, these products I assume are going to be
changing so rapidly. So what is that acceleration change?

ZH:

是的。那么对于最终用户，尤其是像Office
365这样人们非常熟悉的产品，我预计这些产品将会发生非常迅速的变化。那么这种加速变化体现在哪些方面呢？

**Satya Nadella:**

EN:

Yeah, it's a fascinating thing, right? If I look at Office, there are,
I'd say, three modes of Microsoft 365. The first is the brand new mode,
which is I have this new UI for AI, which literally is this new
scaffolding which has chat, which has search, which has notebooks, which
is a place where I collect all these heterogeneous collections of data
and do things like podcasts and audio overviews and all of that. I have
agents, like these researcher and analyst agents. So these are things
that I can delegate tasks to and so on. It's so exciting to have all of
that, and I even have the Copilot Studio. So in other words, I can build
agents. So that's the new thing which is, you know, like I now have a UI
for AI and agents.

Here's the other interesting thing. Teams takes all of that into
multiplayer mode. All of those agents are available to me in my channel,
in my meeting. So Teams becomes the scaffolding in which all of the AI
now is working with me in multiplayer mode. And the third mode is my
heads-down work, just like how in GitHub Copilot with VS Code I'm
heads-down coding away, but I have agents that I can use. I'm heads-down
on an Excel spreadsheet and I have my Copilot chat right there. That is
like having a data scientist next to me while I'm analyzing a
spreadsheet. While I'm writing a research document, I have a researcher
right there. The idea is we've turned every Office canvas into an IDE
with chat, essentially, if you think about it that way. So in some
sense, I feel like the value of even the M365 system now has gotten to
be more compounded because of intelligence getting built into all of
these layers.

ZH:

是的，这非常有趣，对吧？如果我看Office，我会说Microsoft
365有三种模式。第一种是全新的模式，我拥有这个新的人工智能用户界面，它实际上是一个新的框架，包含聊天、搜索、笔记功能，我可以在这里收集各种异构数据集合，并进行播客、音频概览等操作。我拥有代理，比如研究员和分析师代理。这些是我可以委派任务的对象等等。拥有所有这些真的非常令人兴奋，我甚至还有Copilot
Studio。换句话说，我可以构建代理。这就是新事物，也就是说，我现在拥有了一个面向人工智能和代理的用户界面。

还有另一个有趣的事情。Teams将所有这些带入了多人协作模式。所有这些代理都可以在我的频道中、我的会议中使用。所以Teams成为了一个框架，所有的人工智能现在都在多人协作模式下与我一起工作。第三种模式是我的专注工作模式，就像在GitHub
Copilot与VS
Code中我埋头编码一样，但我有可以使用的代理。我专注于Excel电子表格，我的Copilot聊天就在那里。这就像在我分析电子表格时，旁边有一位数据科学家。当我在撰写研究文档时，旁边就有一位研究员。我们的想法是，从本质上讲，如果这样看的话，我们已经将每个Office画布都变成了一个带有聊天功能的集成开发环境（IDE）。所以在某种程度上，我觉得即使是M365系统的价值现在也因为智能被构建到所有这些层中而得到了更大的提升。

## The Future of Vertical SaaS and the Agentic Web / 垂直SaaS的未来与代理网络

**Interviewer:**

EN:

So I want to continue on that note a little bit. You had previously said
the software, the application layer, is going to collapse down into
agents. And I made a video about it, called it "SaaS is dead." It, you
know, garnered a lot of attention. That was really cool thoughts about
it. But I want to hear, you know, the assertion is there's going to be
the agent layer, and then under that, there's going to be the grounded
database that the agents can read and write from. And what does that
mean for vertical SaaS companies? What, how do they prepare themselves
for this future?

ZH:

我想就这一点再深入探讨一下。您之前曾说过，软件，即应用层，将会坍缩成代理。我为此做了一个视频，称之为“SaaS已死”。它引起了很多关注。关于这一点有很多很酷的想法。但我想听听您的看法，这个论断是未来会有一个代理层，在其之下会有一个基础数据库，代理可以从中读取和写入数据。这对垂直SaaS公司意味着什么？它们该如何为这个未来做准备？

**Satya Nadella:**

EN:

Yeah, like all of us, I think the way to go about it... I mean, even the
demo we showed today, right? Literally, there was Dynamics 365 with
essentially an MCP server that was used by Copilot Studio to orchestrate
a multi-agent application that spanned CRM and many other systems of
record, and then completed essentially the orchestration of a complex
business process. That seems to be here and now, right? I mean, it's
kind of clear as day that when you go about thinking about business
process and business applications, you have to compose yourself into
something like that. And so yeah, that will mean pretty radical change
if all you thought was, "Hey, I'm the system of record or system of
engagement or what have you, and it's just about workflows on top of my
data, and that's the scope." That's just not going to persist. So I
think we have to all be open to participating in what is this new
orchestration layer in the agentic web that will essentially have
multiple backends. Your SaaS application will be one backend. You better
support something like MCP in order to be able to participate in the
agentic web. And then maybe even something like NL Web could even reduce
the friction of all these connectors, because if you think about
enterprises, you know, you have a significant sort of friction in how
connectors work. Something like NL Web could be massive change even
inside the enterprise. And so I feel like yes, I think SaaS applications
we built may have to radically change in order to adapt themselves for
this future.

ZH:

是的，和我们所有人一样，我认为应对的方式是……我的意思是，即使是我们今天展示的演示，对吧？实际上，Dynamics
365配合一个MCP服务器，被Copilot
Studio用来编排一个跨越CRM和许多其他记录系统的多代理应用程序，然后基本上完成了复杂业务流程的编排。这似乎是当下正在发生的事情，对吧？我的意思是，当你开始思考业务流程和业务应用程序时，你必须将自己组合成类似的东西，这几乎是显而易见的。所以，是的，如果你过去认为，“嘿，我是记录系统或参与系统之类的，它只是我数据之上的工作流，这就是范围。”这将意味着相当彻底的改变。那种想法是无法持续的。所以我认为我们都必须开放地参与到这个代理网络中的新编排层，它将基本上拥有多个后端。你的SaaS应用程序将是其中一个后端。你最好支持像MCP这样的东西，以便能够参与到代理网络中。然后，甚至像NL
Web（自然语言网络）这样的东西甚至可以减少所有这些连接器的摩擦，因为如果你考虑企业，你知道，连接器的工作方式存在显著的摩擦。像NL
Web这样的东西甚至可能在企业内部带来巨大的变革。所以我感觉，是的，我认为我们构建的SaaS应用程序可能必须彻底改变，以适应这个未来。

**Interviewer:**

EN:

And so these, let's just say these SaaS companies, do you think they're
going to be curators of this ground truth data for their customers and
then the agents will be provided by platform companies like Microsoft?

ZH:

那么，这些SaaS公司，您认为它们会成为其客户基础事实数据的管理者，然后代理将由像微软这样的平台公司提供吗？

**Satya Nadella:**

EN:

Yeah, I mean, I sort of think about it like, it's unclear to me exactly
how it all shakes out because in some sense, all of us overstate the
importance of one thing that we have today. But the reality is when
these platform shifts, the value will anyway get created somewhere else,
right? So this is where, you know, like at the end of the day, what's
the job to be done? The job to be done is to complete a business
process. It's not about any one system of record and its curation, or
it's not about any one agent or one workflow. It's about the entirety of
it, right? So that to me is where the water is flowing. And the question
is, how do you flow with it versus thinking that somehow I have this
moat and I'm going to hold on to it, or I'm going to build some sort of
facade around it which has an agent head or what have you, but it's not
the comprehensive view of what the customer in this case needs to, you
know, get done.

ZH:

是的，我的看法是，目前尚不清楚最终格局会如何演变，因为在某种程度上，我们所有人都高估了我们今天拥有的某项事物的重要性。但现实是，当这些平台发生转变时，价值无论如何都会在其他地方被创造出来，对吧？所以这就是，你知道，归根结底，需要完成的工作是什么？需要完成的工作是完成一个业务流程。它不关乎任何一个记录系统及其管理，也不关乎任何一个代理或一个工作流。它关乎的是整体，对吧？所以对我来说，这就是趋势所在。问题在于，你是顺势而为，还是认为自己拥有某种护城河并试图坚守，或者围绕它构建某种带有代理前端的门面，但这并不是客户在这种情况下需要完成任务的全面视角。

**Interviewer:**

EN:

Yeah, I really like that you said, you know, different types of agents
are going to be talking together. Different databases, it doesn't really
matter. It's just an abstraction layer. Um, so that all sounds really
exciting.

ZH:

是的，我非常认同您说的，不同类型的代理将会协同工作。不同的数据库，这并不重要。它只是一个抽象层。嗯，这一切听起来都非常令人兴奋。

## AI Agents, IP, and Personal vs. Work Use / AI代理、知识产权以及个人与工作用途

**Interviewer:**

EN:

Another thing you mentioned, you had said in an interview that when you
hire somebody and an employee, you're hiring them in the future and
their basket of agents, which is fascinating to me. But I wanted to get
some clarity on that because it seems like most likely the company, the
employer, is going to want to own that IP, the agents, just like they
would own traditional IP. So maybe you can add some clarity.

ZH:

您提到的另一件事，您在一次采访中说过，当您雇佣某人成为员工时，您未来雇佣的是他们以及他们的一揽子代理，这让我觉得非常有趣。但我想就此获得一些澄清，因为看起来公司，即雇主，很可能会希望拥有这些代理的知识产权，就像他们拥有传统知识产权一样。所以也许您可以澄清一下。

**Satya Nadella:**

EN:

Actually, that's correct. In fact, what you said is sort of our view. If
I look at even today's announcements, because what is the intellectual
property of a company, right? Even the work product of any one of us at
work is the company's property. And so that I think is going to be the
case even with agents. And that's one of the fundamental reasons why we
extended the rails, where you now agents have an Entra ID, you can
manage conditional access for these agents just like you do with people
inside of an organization. Purview, right? Another super important
thing: if agents are going to have access to data, it needs to be
subject to the same data protection and data rights. And so we are going
to... and security, by the way. You're going to manage the agent
environment like an endpoint. So that's why Defender is going to make
sure that there is no credential theft or what have you. So absolutely
thinking of all of the things we've done from identity management and
security for people and their IT infrastructure is going to be done for
agents and their IT infrastructure.

ZH:

实际上，这是正确的。事实上，您所说的正是我们的观点。即使从今天的公告来看，因为公司的知识产权是什么，对吧？即使是我们任何人在工作中的工作成果也是公司的财产。所以我认为对于代理来说也是如此。这也是我们扩展了规则框架的根本原因之一，现在代理拥有Entra
ID，您可以像管理组织内部人员一样管理这些代理的条件访问。还有Purview，对吧？另一个非常重要的事情是：如果代理要访问数据，它需要遵守相同的数据保护和数据权利。所以我们将……顺便说一句，还有安全。您将像管理端点一样管理代理环境。所以这就是为什么Defender将确保不会发生凭证盗窃等问题。因此，我们为人员及其IT基础设施所做的所有身份管理和安全方面的工作，绝对也将应用于代理及其IT基础设施。

**Interviewer:**

EN:

Yeah, you know that makes a lot of sense and I also suspect a lot of
people are going to build their own personal agents for their personal
life and maybe do you see a future in which they are also bringing those
personal agents into work?

ZH:

是的，这很有道理。我也预感很多人会为他们的个人生活构建自己的个人代理。那么您是否预见到未来他们也会将这些个人代理带入工作场所？

**Satya Nadella:**

EN:

It's a great question. I mean, the system where you bring your own
personal agents has to be done in such a way that these two worlds don't
have data leakage. That's the issue, right? Which is, you know, let's
even take the simple thing which is, "Hey, my email and my corporate
email." Today, they're two segregated things, they're two identities,
and we know how to separate state out for both privacy reasons and for
also intellectual property reasons. Both of those are helpful. I think
something like that, that's why even we believe in Entra and Microsoft
account. So that's why we have Copilot and Microsoft 365 Copilot.
Conflating the two even in terms of the user model can be very
confusing. The reason why I pin Edge with two profiles is helpful
because I do it with Microsoft account when I as a user, as an
individual, and I do this with Entra when I'm working at Microsoft. And
it's a helpful demarcation to keep this, you know, the mental model
simple. Otherwise, I think by conflating it all, I think you can really
get very tangled.

ZH:

这是一个很好的问题。我的意思是，允许携带个人代理的系统必须以确保这两个世界之间不会发生数据泄露的方式来完成。这就是问题所在，对吧？也就是说，我们甚至可以举一个简单的例子：“嘿，我的个人电子邮件和我的公司电子邮件。”如今，它们是两个隔离的事物，是两个身份，我们知道如何出于隐私原因和知识产权原因将它们的状态分开。这两者都是有益的。我认为类似这样的情况，这就是为什么我们甚至相信Entra和微软账户。所以我们有Copilot和Microsoft
365
Copilot。即使在用户模型方面将两者混淆也会非常令人困惑。我将Edge固定为两个配置文件的原因很有帮助，因为我作为用户、作为个人时使用微软账户，而在微软工作时则使用Entra。这是一个有用的区分，可以保持这种心智模型的简单性。否则，我认为如果把所有东西都混淆起来，你真的会变得非常混乱。

## The Economic Impact of AI and Cost Approaching Zero / AI的经济影响与成本趋近于零

**Interviewer:**

EN:

I think that makes a lot of sense. So I want to ask you maybe a question
about your vision. So the cost of intelligence does seem to be dropping
rapidly, hopefully approaching zero. I think it's going to be such a
fascinating world in the future. What do you think, what use cases do
you think are going to open up? What are you most excited about when the
cost of intelligence approaches zero?

ZH:

我认为这非常有道理。所以我想问您一个关于您愿景的问题。智能的成本似乎确实在迅速下降，有望趋近于零。我认为未来世界将会非常迷人。您认为将会出现哪些用例？当智能成本趋近于零时，您最期待的是什么？

**Satya Nadella:**

EN:

Yeah. I mean, to me, ultimately, right, when I look out there in the
world, do we need more abundance of something like technology, like
intelligence that can then ultimately drive productivity and economic
growth? Absolutely, right. I look around and say, man, you know, right
now to tame either inflation or improve economic growth, we need some
help. So this is high time. So if you sort of take that thing and take
sort of the example we even shared at our developer conference as to
what Stanford Medicine was able to do for something really high stakes,
right, like tumor board meetings and oncology and cancer care. They were
able to take all this technology and apply it in a real way where it was
a multi-agent framework they used in Foundry to orchestrate, you know,
pathology, clinical trials, problematic data, ultimately to have a
better tumor board meeting and then have the data and the information
from that go into PowerPoint, into a teaching class, or into Teams for
people to collaborate. That is to me what needs to happen. Healthcare is
20% of our GDP; close to a lot of the expense is in this workflow. And
so if every provider out there can start improving their patient care
and outcomes and reducing cost using AI, that's going to have a profound
impact in our societies. And so that's what I'm really looking forward
to.

ZH:

是的。我的意思是，对我而言，最终，当我审视这个世界时，我们是否需要更多像技术、像智能这样的东西的丰裕，从而最终推动生产力和经济增长？绝对是的，对吧。我环顾四周然后说，天啊，你知道，现在无论是抑制通货膨胀还是改善经济增长，我们都需要一些帮助。所以现在正是时候。所以，如果你把这个事情，以及我们在开发者大会上分享的关于斯坦福医学在真正高风险领域（比如肿瘤委员会会议、肿瘤学和癌症护理）所能做的事情的例子结合起来看。他们能够将所有这些技术以真实的方式应用起来，他们在Foundry中使用了一个多代理框架来协调病理学、临床试验、问题数据，最终是为了召开更好的肿瘤委员会会议，然后将由此产生的数据和信息输入到PowerPoint、教学课堂或Teams中供人们协作。这在我看来是需要发生的。医疗保健占我们GDP的20%；其中很大一部分开支都花在这个工作流程上。因此，如果每个医疗服务提供者都能开始使用人工智能来改善他们的病人护理和治疗效果并降低成本，那将对我们的社会产生深远的影响。这就是我真正期待的。

**Interviewer:**

EN:

Yeah, I think the healthcare use cases, I'm extremely excited about
hyperpersonalized healthcare. I already used ChatGPT Copilot to answer
questions about my own personal health. It is very, very exciting. And
also some of the research that you showed off, the immersion cooling.
Yeah. Right. That was discovered. Yeah. It's so cool. Material science.
There's just so much there.

ZH:

是的，我认为医疗保健领域的用例，我对超个性化医疗保健感到非常兴奋。我已经使用ChatGPT
Copilot来回答关于我个人健康的问题了。这非常非常令人兴奋。还有您展示的一些研究，比如浸没式冷却技术。是的。对。那是被发现的。是的。太酷了。材料科学。那里有太多的可能性了。

## Addressing Energy Consumption Concerns / 应对能源消耗担忧

**Interviewer:**

EN:

Um, so, anecdotally I've heard from some of the younger generation that
they're either avoiding AI altogether or maybe just using it lightly,
and specifically because the energy usage they're thinking is going to
pretty significantly, negatively affect our planet. And so how does
Microsoft think about that? What words of confidence would you give to
them?

ZH:

嗯，我从一些年轻一代那里听到一些轶事，他们要么完全避免使用人工智能，要么只是轻度使用，特别是他们认为能源消耗将会对我们的地球产生相当显著的负面影响。那么微软是如何看待这个问题的？您会给他们什么样的信心之言？

**Satya Nadella:**

EN:

Yeah, it's a first of all, you know, the fact that the younger
generation cares about this deeply is so, so inspiring, quite frankly.
Because at some level, it is sort of the right push for all of us to be
able to say, okay, whatever we're creating is fundamentally helping with
these outcomes that matter to us in society, right? Whether it's in
healthcare, whether it's in education, whether it's access to financial
services, whatever the domain is, ultimately it's economic growth, it's
economic prosperity and abundance. So let's take that as the first
thing, which is we're not doing this just for some tech accomplishment,
but we're doing it to solve the challenges of people and planet.

Then the second part is also important, which is we've got to do it in a
sustainable way, right? It's sustainable abundance. And if that is the
case, then one of the equations I go back to is: it's tokens per dollar
per watt. The fact that we are able to use software as the most
malleable resource to use energy in the most efficient way to generate
the most amount of abundance, which in turn then improves health and
education and other outcomes, is a good thing. And we just have to stay
on it. The reality is all of tech is what, 2%, 3% of sort of the grid
power today or total power consumption. So it's minor, but yes, it'll
double. And so if it needs to double, it needs to have the social
permission to double. It needs to create a lot more value in the real
world. In fact, that's one of the reasons why I feel like we as a tech
industry need to be anchored on not just one product of ours that
everybody's using for doing fun things. It has to be in healthcare, in
material science, in broad knowledge work, in a small business getting
productivity. Because that's what'll give us the social permission to
continue to use the scarce resource called energy. Do that in a
sustainable way. We have some of the biggest buyers of alternative
energy. In fact, you could say the greatest subsidy out there for new
projects is from, you know, people like us. We really want to make sure
we continue to push on it but, you know, ultimately deliver tokens per
dollar per watt such that it creates economic prosperity.

ZH:

是的，首先，坦白地说，年轻一代对此深切关注这一事实本身就非常非常鼓舞人心。因为在某种程度上，这对我们所有人来说都是一种正确的推动，让我们能够说，好吧，我们正在创造的任何东西从根本上都在帮助实现这些对我们社会至关重要的成果，对吧？无论是在医疗保健、教育，还是在金融服务的获取方面，无论哪个领域，最终都是经济增长、经济繁荣和富足。所以让我们首先明确这一点，我们这样做不仅仅是为了某些技术成就，而是为了解决人类和地球面临的挑战。

然后第二部分也很重要，那就是我们必须以可持续的方式来做，对吧？是可持续的富足。如果是这样的话，我回顾的一个公式是：每美元每瓦特的代币产出。我们能够将软件作为最具延展性的资源，以最有效的方式使用能源，从而产生最大量的富足，进而改善健康、教育和其他成果，这是一件好事。我们只需要坚持下去。现实是，所有科技行业目前大约占电网电力或总能耗的2%到3%。所以占比很小，但是，是的，它会翻倍。因此，如果它需要翻倍，它就需要获得社会许可才能翻倍。它需要在现实世界中创造更多的价值。事实上，这就是为什么我觉得我们作为科技行业需要立足于不仅仅是我们某一个大家都用来做有趣事情的产品。它必须应用于医疗保健、材料科学、广泛的知识工作、小型企业的生产力提升。因为这才会给予我们社会许可，继续使用名为能源的稀缺资源。以可持续的方式做到这一点。我们是替代能源的最大买家之一。事实上，你可以说，新项目的最大补贴来自于像我们这样的人。我们真的希望确保我们继续推动这一点，但最终要实现每美元每瓦特的代币产出，从而创造经济繁荣。

**Interviewer:**

EN:

I'm glad you said that. I'm going to tell the folks who are very nervous
about the environmental impact what you said, and I'll show them this
video. So thank you.

ZH:

我很高兴您这么说。我会把您的话转告给那些对环境影响非常担忧的人们，并给他们看这个视频。所以谢谢您。

## The Future of Operating Systems and AI / 操作系统的未来与人工智能

**Interviewer:**

EN:

There's definitely a major shift in computing architecture happening
right now. The line between deterministic and non-deterministic parts of
the architecture are kind of getting blurred. Um, I saw this really cool
demo a few months ago where they recreated the game Doom using a
diffusion model. Every single frame was predicted. Do you ever see a
future in which the operating system is similar, where there's maybe no
or very little underlying traditional code?

ZH:

计算架构目前肯定正在发生重大转变。架构中确定性部分和非确定性部分之间的界限正在变得模糊。嗯，几个月前我看到一个非常酷的演示，他们使用扩散模型重新创建了游戏《毁灭战士》(Doom)。每一个画面都是预测出来的。您是否预见到未来操作系统也会类似，可能没有或很少有底层的传统代码？

**Satya Nadella:**

EN:

Yeah, it's a great... like we had a similar one, like this Muse model
that we built was a world action model that we had built, but we trained
it on, you know, on gaming data. And you know, it starts to do
essentially, you can have an Xbox controller as actions that are then
used to generate the next scene, which is sort of pretty, pretty... it's
kind of like robotics, you can think of it, is like that, and gaming is
like that. And so yes, everything is generated, so to speak.

Um, the operating system, you know, to me, this idea that, you know,
sometimes I think we even overstate the determinism of what we call
deterministic systems, right? Because after all, you take a software
program, you can't prove it right. I mean, that's sort of one of the
fundamental challenges of computer science. And so therefore, I think
we, yes, it's a stochastic system, but this stochastic system does need
to work in deterministic ways that we can at least, like, you know,
inspect. Quite frankly, what Salman Khan (likely, from context of Build
keynotes, mis-transcribed as Elon) said in the keynote when I
interviewed him, he said, "Hey, we got to understand the physics of
intelligence," is actually a good way to think about it, right? Which is
we have to somehow get back to a place where when we stitch these
complex systems, there is some way for us to understand the physics of
these complex systems and then bound them, right, sandbox them and what
have you. I think that's what we will have to do even on an operating
system. But you, when I look back at it, you take the coding agent that
we just launched. Interestingly enough, the coding agent has an
environment underneath GitHub Actions. You're really putting a virtual
machine, and then you're really setting the boundaries of that virtual
machine, right? Which is, hey, does it have internet access or not? You
have to control it. If it's going to have access to tools with MCP
servers, you have to control it. And then there's a full audit log of
all of that. And so I think that that's how we will learn how to
essentially mix a deterministic system, so to speak, which a software
system that we built with a lot of imperative code, and this agent to
couple together, and then have the interaction itself be something that
we can monitor.

ZH:

是的，这很棒……比如我们也有类似的模型，像我们构建的这个Muse模型是一个世界动作模型，我们用游戏数据对其进行了训练。你知道，它基本上开始可以做到，你可以用Xbox控制器作为动作输入，然后用来生成下一个场景，这非常……非常……有点像机器人技术，你可以这么想，游戏也是这样。所以是的，可以说一切都是生成的。

嗯，操作系统，你知道，对我来说，这个想法，你知道，有时我认为我们甚至高估了我们称之为确定性系统的确定性，对吧？因为毕竟，你拿一个软件程序，你无法证明它是正确的。我的意思是，这算是计算机科学的基本挑战之一。因此，我认为我们，是的，它是一个随机系统，但是这个随机系统确实需要以我们至少可以检查的确定性方式工作。坦白地说，当我在主题演讲中采访萨尔曼·可汗（根据Build主题演讲的上下文，可能被错误转录为Elon）时，他说：“嘿，我们必须理解智能的物理原理，”这实际上是一个很好的思考方式，对吧？也就是说，我们必须以某种方式回到这样一个状态：当我们整合这些复杂系统时，我们有某种方法来理解这些复杂系统的物理原理，然后限制它们，对吧，将它们置于沙盒中等等。我认为即使在操作系统上，我们也必须这样做。但是，当我回顾时，就拿我们刚刚推出的编码代理来说。有趣的是，编码代理在GitHub
Actions下有一个环境。你实际上是放置了一个虚拟机，然后你真正在设定那个虚拟机的边界，对吧？比如，它是否有互联网访问权限？你必须控制它。如果它要通过MCP服务器访问工具，你也必须控制它。然后还有所有这些的完整审计日志。所以我认为这就是我们将学习如何将一个所谓的确定性系统（即我们用大量命令式代码构建的软件系统）和这个代理结合起来，然后使交互本身成为我们可以监控的东西的方法。

## Conclusion / 结论

**Interviewer:**

EN:

Yeah. I um, so that it's really cool because you said in the keynote,
we're kind of beginning the middle innings of this transition. So I
really think it's a really interesting time to see where that blend of
different types of software go. Thank you so much for meeting with me. I
appreciate it.

ZH:

是的。我嗯，这真的很酷，因为您在主题演讲中说，我们正处于这个过渡的中间阶段。所以我真的认为现在是一个非常有趣的时刻，可以看到不同类型软件的融合将走向何方。非常感谢您与我会面。我很感激。

**Satya Nadella:**

EN:

Thank you so much. Such a pleasure. Thanks for coming and spending the
time and look forward to being in touch.

ZH:

非常感谢。非常荣幸。感谢您的到来和花费时间，期待保持联系。

一键复制为Markdown
