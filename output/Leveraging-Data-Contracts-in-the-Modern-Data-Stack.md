---
title: "O'Reilly Data Superstream Report: Leveraging Data Contracts"
layout: "post.njk"  
date: "2025-05-25"
tags:
  - "视频笔记"
  - "数据契约"
  - "数据质量"
  - "模式"
  - "元数据"
  - "数据管道"
data:
  author: "Lei"
  podcast_program: ""
  speaker: ""
  guest: "" 
  source: ""
---

# Leveraging Data Contracts in the Modern Data Stack

**Speaker:** Zack Klein, Software Engineer at Whatnot

**Event:** O'Reilly Data Superstream

**Date:** February 14, 2024 (as shown on slide)

Copy as Markdown

[Image: Title Slide - "Leveraging Data Contracts in the Modern Data
Stack" with Zack Klein, Data Superstream logo, O'REILLY logo]

Host:

Up next, we are going to hear from Zack Klein. He's a software engineer
at Whatnot. Uh, he builds data products and narrowly avoids breaking
production every single day, right Zach? Um, worked on big data
platforms at Blackstone and HBO. Uh, so he has a lot of, um, you know,
experience running real actual in-production systems. Um, and he plays
his telecaster. So, um, maybe you'll give us a musical rendition at the
end if we have time. Uh, Zach is here to talk about leveraging data
contracts in the modern data stack. And I guess you're going to start by
explaining what that means and how they work. So, uh, Zach, take it
away. Great to have you.

接下来，我们将听到 Zack Klein 的演讲。他是 Whatnot
的一名软件工程师。呃，他构建数据产品，并且每天都险些搞垮生产环境，对吧
Zach？嗯，他曾在 Blackstone 和 HBO
从事大数据平台方面的工作。呃，所以他有很多，嗯，你知道的，运行真实的、实际的生产系统的经验。嗯，他还弹他的
Telecaster
吉他。所以，嗯，如果我们有时间的话，也许你会在最后给我们来一段音乐演奏。呃，Zach
今天要讲的是如何在现代数据栈中利用数据契约。我想你会先解释这是什么意思以及它们是如何工作的。那么，呃，Zach，请开始吧。很高兴你能来。

Host:

And I'm not hearing you yet, Zach, you might be muted.

我还听不到你的声音，Zach，你可能静音了。

Host:

So I'm going to, I'm going to mime what Zach is saying until I hear
words from him. Um, I can do the, I'm gonna try and figure out what
you're saying. Let me get my headphones and let me look on my thing and
I'm going to click a button. Oh no, my headphones are not on my head.
What am I going to do? Please wait one second. Oh wait, I hear
something.

所以我要，我要模仿 Zach
在说什么，直到我听到他的声音。嗯，我可以做那个，我试着弄明白你在说什么。让我戴上耳机，让我看看我的东西，然后我要按一个按钮。哦不，我的耳机没戴在头上。我该怎么办？请稍等一秒钟。哦等等，我听到什么了。

Support/Other Host:

No. So I can see, I can see that Zach is unmuted. Um, Zach, go ahead and
refresh your browser if you can hear us. I'll put a note for you in the
chat too.

不。所以我能看到，我能看到 Zach
没有静音。嗯，Zach，如果你能听到我们说话，请刷新你的浏览器。我也会在聊天里给你留个言。

Host:

And as we always say, if this stuff worked properly, uh, we would all be
out of jobs. So every time there is a hiccup like this, uh, it is a good
reminder that, uh, these technology stacks are pretty complex. Someone
told me the other day, um, the amount of...

正如我们常说的，如果这些都能正常工作，呃，我们都会失业。所以每次出现像这样的问题，呃，这都是一个很好的提醒，呃，这些技术栈非常复杂。前几天有人告诉我，嗯，数量...

Zack Klein:

Any better now?

现在好些了吗？

Host:

Oh, hey, we can hear you now. That's great. All right. Hi. Perfect. All
right, Zach, take it away.

哦，嘿，我们现在能听到你了。太好了。好的。嗨。完美。好的，Zach，请开始吧。

Zack Klein:

Uh, perfect. Hi there. Um, okay. All right. Well, let's get uh, kicked
off. Uh, so yeah, thank you so much for having me. Uh, it's really great
to be here. I feel, uh, yeah, super honored to be here. Um, yeah, we're
here to talk about data contracts in the modern data stack. So, uh,
let's, uh, let's get into it and and and talk about what that means.

呃，完美。大家好。嗯，好的。好吧。那么，让我们开始吧。呃，是的，非常感谢邀请我。呃，真的很高兴来到这里。我感到，呃，是的，非常荣幸能来到这里。嗯，是的，我们今天来谈谈现代数据栈中的数据契约。所以，呃，让我们，呃，让我们深入探讨一下，谈谈这意味着什么。

[Image: Slide - "Data Contracts in the Modern Data Stack ... February
14, 2024"]

Zack Klein:

Um, really quick before before I get into it, just a little bit about
me. Uh, so I'm Zach. Uh, it's, yeah, like I said, it's it's great to be
here. Uh, I'm currently a software engineer at Whatnot. We are, uh, an
e-commerce, uh, startup. Um, great app, you should download it. This
talk isn't about Whatnot or anything, but, uh, you should check us out.
Uh, before I worked at Whatnot, uh, I worked at Blackstone and at HBO.
Uh, at each of these places, I, uh, have been fortunate enough to work
on the data platform. And so, I feel really fortunate to sort of have,
uh, had the unique, uh, experience of seeing, um, different approaches
to, uh, I mean, data platforms in general, but specifically data quality
and, um, you know, the different with different organizations and
different, uh, technology stacks, the sort of different approaches you
can, uh, you can take and and different things you can do. And I think,
uh, yeah, ultimately at heart, I'm a pretty big, uh, data nerd and
software nerd. I think I sit right in between those two things and, uh,
yeah, I have, uh, a lot of, a lot of thoughts about it.

嗯，在我开始之前，简单介绍一下我自己。呃，我是
Zach。呃，是的，就像我说的，很高兴来到这里。呃，我目前是 Whatnot
的一名软件工程师。我们是一家，呃，电子商务，呃，初创公司。嗯，很棒的应用，你应该下载它。这次演讲不是关于
Whatnot 或其他什么的，但是，呃，你应该看看我们。呃，在 Whatnot
工作之前，呃，我曾在 Blackstone 和 HBO
工作。呃，在这些地方，我，呃，有幸参与了数据平台的工作。所以，我感到非常幸运，能够，呃，拥有这种独特的，呃，经验，看到了，嗯，对于，呃，我是说，总的来说是数据平台，但特别是数据质量的不同处理方法，以及，嗯，你知道的，在不同的组织和不同的，呃，技术栈中，你可以采取的，呃，不同的处理方法和可以做的不同的事情。我认为，呃，是的，归根结底，我是一个相当大的，呃，数据迷和软件迷。我想我正处于这两者之间，呃，是的，我有很多，很多关于这方面的想法。

[Image: Slide - "About me" with a picture of Zack Klein, and text:
"Zack Klein", "Software engineer at Whatnot", "Previously at Blackstone
& HBO"]

Zack Klein:

Um, so before we get into the meat of the talk and the meat of data
contracts specifically, I want to talk a little bit more high level
about sort of what what I see like the different things going on and
sort of how those things come together uh to sort of create this moment
where uh data contracts uh are very popular because you know I I feel
like I read all the time about data contracts uh like on LinkedIn and
stuff and uh I think there's a few different things going on and it's
helpful to kind of break that down. So, data teams these days I think
are in a pretty tough spot in in a lot of organizations because one of
one of the kind of like fundamental responsibilities of the data team is
to create this kind of like holistic, sane view of the world that is
representative of a lot of different things, right? A lot of disparate
data sources, uh a lot of different things happening upstream and having
sort of this kind of like unified, it doesn't have to be unified, but
this sort of like cohesive downstream thing that people can use to, you
know, answer questions or build machine learning models or or whatever
the use case might be. Now, um data quality has always been important
here and I don't think that this I don't think that this expectation is
new or anything. Um but I think what's happened is that the upstream uh
things that are uh that that exist uh and the sort of like sources of
data and the specific pieces of data that are coming from those sources,
um I think it's just gotten more and more complex as things have gotten,
you know, more specific and more uh, I don't know, more nuanced and you
have, you know, other trends like uh applications like applications
being broken up into different microservices and lots of different new
database technologies. Anyways, you have you have all this stuff going
on and so I think there's a big strain on actually doing having the same
level of high quality data, um, in uh from the perspective like
maintaining that sort of uh maintaining that sort of requirement while
also having a more complex situation upstream. And so what I how I see
data contracts is really that it's about practically achieving that same
level of data quality and that same level of rigor against the backdrop
of a more complex sort of upstream environment.

嗯，在我们深入探讨这次演讲的核心内容和数据契约的具体内容之前，我想从更高层面谈谈我所看到的正在发生的不同事情，以及这些事情是如何汇集在一起，呃，从而创造出这样一个时刻，呃，数据契约，呃，非常受欢迎，因为你知道，我感觉我一直在阅读关于数据契约的文章，呃，比如在
LinkedIn
等等地方，呃，我认为有几件不同的事情正在发生，把它们分解开来会很有帮助。所以，我认为现在的数据团队在很多组织中都处于一个相当艰难的境地，因为数据团队的基本职责之一就是创造一个整体的、合理的、能代表很多不同事物的世界观，对吧？很多不同的数据源，呃，很多不同的事情在上游发生，并且拥有某种统一的，它不一定是统一的，但下游的东西是连贯的，人们可以用它来，你知道的，回答问题或构建机器学习模型，或者其他任何可能的用例。现在，嗯，数据质量在这里一直很重要，我不认为这，我不认为这种期望是新的或什么的。嗯，但我认为发生的情况是，上游的，呃，那些存在的，呃，事物，以及那些，呃，数据源和来自这些数据源的具体数据片段，嗯，我认为随着事物的，你知道的，变得更具体、更，呃，我不知道，更细致，并且你有了，你知道的，其他趋势，比如，呃，应用程序，比如应用程序被分解为不同的微服务和许多不同的新数据库技术。总之，你有很多这样的事情在发生，所以我认为，在实际上拥有同样高水平的高质量数据方面存在很大的压力，嗯，在，呃，从某种角度来看，比如在维持那种，呃，维持那种要求的同时，还要应对更复杂的上游情况。因此，我如何看待数据契约，实际上是关于在更复杂的上游环境背景下，实际地实现同样水平的数据质量和同样的严谨性。

[Image: Slide - "It's really about data quality ... and how to achieve
it"]

Zack Klein:

So that's just like a general high level perspective of of everything.
Now, um, I, I want to take a moment, uh, to talk about sort of this talk
and and how I've structured things and and what we're going to go over.
So, in the beginning we're going to talk about some common data quality
failure modes. If we don't really, I mean, obviously you've sort of
gleaned so far that I think data contracts are a great way to, uh,
address data quality issues. Um, but if we don't really deeply
understand the sort of problems that we're trying to solve with them,
then data contracts aren't really going to be an effective tool for us,
right? Like we're not really going to get, uh, we're not really going to
get a lot out of it. So I want to take some time to talk about sort of
the failure modes.

所以这只是对所有事情的一个总体的高层次看法。现在，嗯，我，我想花点时间，呃，谈谈这次演讲，以及我是如何组织内容的，以及我们将要讨论的内容。所以，一开始我们将讨论一些常见的数据质量故障模式。如果我们不真正地，我的意思是，很明显，到目前为止，你已经大概明白了，我认为数据契约是解决数据质量问题的一个好方法。嗯，但是如果我们不真正深入地理解我们试图用它们解决的问题，那么数据契约对我们来说就不是一个有效的工具，对吧？就像我们不会真的从中得到，呃，我们不会真的从中得到很多。所以我希望花些时间谈谈故障模式。

[Image: Slide - "Outline" with bullet points: "Data quality failure
modes", "Anatomy of a data contract", "What it looks like in practice"]

Zack Klein:

Um, from there I want to go into sort of the anatomy of a data contract.
If you're going to do this in practice, what is, what are the things you
need versus what's nice to have. Um, and then from there, uh, I want to
talk about systems. And if you were going to go implement this
somewhere, what are the pieces, uh, you know, what, what does it
actually look like and what are the tricky parts and, and those things.

嗯，然后我想深入探讨数据契约的构成。如果你要在实践中这样做，什么是你需要的，什么是锦上添花的。嗯，然后从那里，呃，我想谈谈系统。如果你要在某个地方实施这个，那么有哪些部分，呃，你知道，它实际上是什么样子的，有哪些棘手的部分，以及那些事情。

[Image: Slide - "Data quality failure modes *closely related to the 6
dimensions of data quality"]

Zack Klein:

Okay. Um, so let's jump right in and start talking about some data
quality failure modes. Um, for those of you who are familiar with, you
know, a lot of data quality work, maybe some data engineers on the call
or something like that. Um, there's this concept of like, uh, the six
dimensions of data quality. You're going to see it like the the ideas
that I'm sort of presenting here aren't new. There's a lot, there's a
lot that's like already been established here. And I think like a slight
reframe of these existing things from the like, uh, from the perspective
of like data contracts, uh, is really helpful. And so let's, let's talk
about some of the failure modes. Again, a lot of it is overlap with
these six dimensions of data quality. Um, and yeah, we can get a deep
understanding of sort of the problems that the contracts can can sort of
help us address.

好的。嗯，那么让我们直接开始，谈谈一些数据质量故障模式。嗯，对于那些熟悉，你知道，很多数据质量工作的人，也许是一些在场的数工，或者类似的人。嗯，有一个概念叫做，呃，数据质量的六个维度。你会看到，我在这里提出的这些想法并不是新的。有很多，有很多东西在这里已经被确立了。我认为从数据契约的角度对这些现有的东西进行轻微的重新构建，呃，真的很有帮助。所以让我们，让我们谈谈一些故障模式。再说一次，很多内容与数据质量的这六个维度是重叠的。嗯，是的，我们可以深入了解契约可以帮助我们解决的各种问题。

[Image: Slide showing three text snippets: "ValueError: invalid literal
for int() with base 10: 'cb5689c6-151d-4881-8f3c-7e4f7d4d441c'", "Why
are there half as many rows today as yesterday?", "Who knows how this
table updates?"]

Zack Klein:

So if we look at this slide, uh, I I apologize this slide is kind of
designed to be triggering if there are any uh data engineers on the call
or folks who have had to deal with uh data quality issues. Um, this is
just meant to show some sort of examples of uh, common symptoms, I would
call them, of uh, maybe some data quality issues. Um, if we just go
through them really quick, at the uh, at the top here we have uh a UUID,
uh that's of course a string, and uh, we we are we can see there's a
Python program trying to interpret that string as an integer. So there's
some mismatch of data types going on. Um, then the second is a is a
quotation, uh, from a probably not so happy customer of the data
platform asking, why are there half as many rows today as yesterday? You
can imagine maybe they're looking at like a bar chart or something and
one of the bars is way, way smaller than uh than everything else,
you know, relative to how you would expect it to look. Um, and then another
one, uh, you know, who knows how this table updates? Maybe there's
someone who's uh working on uh sort of the pipeline and and is looking
at into some troubleshooting uh sorry, is is troubleshooting uh some
issues and looking into how uh the pipeline works. And so all of these
different things I think are symptoms of different types of data quality
issues. So, let's uh let's go into the specific failure modes and really
get detailed about what uh what different kinds of failures are going on
here.

所以如果我们看这张幻灯片，呃，我，我道歉，这张幻灯片的设计有点容易引起不适，如果现场有任何呃数据工程师或者处理过呃数据质量问题的人。嗯，这只是为了展示一些呃，常见症状的例子，我会称之为，呃，可能是一些数据质量问题的症状。嗯，如果我们快速浏览一下，在呃，在顶部的这里，我们有一个呃
UUID，呃，这当然是一个字符串，然后呃，我们，我们看到有一个 Python
程序试图将该字符串解释为一个整数。所以这里存在一些数据类型不匹配的情况。嗯，然后第二个是一个是一个引述，呃，来自一个可能不太满意数据平台的客户，他问，为什么今天的行数只有昨天的一半？你可以想象，也许他们正在看一个柱状图之类的东西，其中一个柱代表的数值远远小于呃其他所有数值，你知道的，相对于你期望它看起来的样子。嗯，然后另一个，呃，你知道，谁知道这个表是如何更新的？也许有人正在呃处理呃某种管道，并且正在研究一些故障排除呃抱歉，正在处理一些故障排除呃一些问题，并研究呃管道是如何工作的。所以我认为所有这些不同的事情都是不同类型数据质量问题的症状。所以，让我们呃让我们深入探讨具体的故障模式，并真正详细了解这里发生了什么呃什么不同类型的故障。

[Image: Slide - "Syntactic correctness", with a smaller text
underneath: "Is it working?"]

Zack Klein:

So the first, um, the first one that uh is quite a large bucket and I
think this is kind of what a lot of people think of when they think of
data quality issues, I would call syntactic correctness. And what I mean
by this is sort of the general like structural integrity of the data
itself. Um, a very simplified way of thinking about this is, is it, is
it working? Um, are data types coming through in the way in the format
that we would we would expect them to be coming through? Is data coming
through at all? Are records in the in the final destination, uh, kept
fresh in the sense that like the, you know, they're regularly being kept
up to date as changes are being received upstream? Uh, are records that
are supposed to be unique actually unique? Uh, are there relationships
being maintained across various, you know, if you have like a relational
uh, a relational database, are those relationships being maintained as
you replicate them to other systems? This kind of a thing, sort of like
making sure that like the uh the structure of the data itself is sound.

所以第一个，嗯，第一个，呃，这是一个相当大的类别，我认为这在某种程度上是很多人在想到数据质量问题时会想到的，我称之为语法正确性。我的意思是，这有点像数据本身的整体结构完整性。嗯，一个非常简化的思考方式是，它，它在工作吗？嗯，数据类型是否以我们期望的格式传入？数据是否完全传入？最终目标中的记录是否保持新鲜，也就是说，随着上游接收到更改，它们是否定期更新？呃，那些本应唯一的记录是否真的唯一？呃，在各种，你知道的，如果你有一个关系型呃，一个关系型数据库，当你将它们复制到其他系统时，这些关系是否得到维护？诸如此类的事情，有点像确保数据本身的结构是健全的。

[Image: Slide - "Semantic correctness", with smaller text: "Does it
mean what you think it means?"]

Zack Klein:

Um, I think that's really the first sort of camp of of like this this is
the first sort of failure mode of where things can uh can go wrong and I
think this is what a lot of people think of when they think of uh sort
of data quality issues and and rightfully so. Now, let's just imagine,
I'm not I'm not claiming this exists, but let's just say that you had
something ridiculously high reliability, 11 nines of reliability,
whatever you want, that guarantees structural correctness of your data
across your pipeline through a whole replication. Do people think that
if you have that, that you have achieved data quality, whatever that
might mean? The answer, uh, the answer to that question is no, you have
not. Even if you have a really like a high level of structural integrity
through your pipeline, uh, you don't actually have high data quality
necessarily, and that's because of this second failure mode, which I'll
call semantic correctness, which is basically does the data that you're
referencing mean what you think it means? Um, I'll give you an example.
Imagine, uh, that you are a website that, uh, processes orders, like
you're you're an online shop or something. Um, if when you process
orders, you log to your, uh, to to like a downstream systems, uh, the
wrong currency in which transactions are being placed. Uh, for example,
instead of US dollars, you're using pounds or something like that. Uh,
in that situation, right, the structure of the data is correct
technically because, uh, like there there isn't anything like
syntactically wrong with it. Uh, but of course the data itself is
inaccurate. It doesn't actually represent the thing that you are
intending to represent. There's a bug there.

嗯，我认为这确实是第一个类别，就像这是第一个可能出问题的地方，我认为很多人在想到数据质量问题时会想到这个，这是理所当然的。现在，让我们想象一下，我不是说这存在，但假设你有一个非常高可靠性的东西，比如
99.999999999%
的可靠性，随便你怎么说，它保证了你的数据在整个复制过程中在管道中的结构正确性。人们是否认为如果你有了这个，你就实现了数据质量，不管那可能意味着什么？答案，呃，那个问题的答案是否定的，你没有。即使你的管道具有非常高的结构完整性，呃，你也不一定拥有高质量的数据，这是因为这第二种故障模式，我称之为语义正确性，它基本上是指你引用的数据是否意味着你认为它意味着什么？嗯，我举个例子。想象一下，呃，你是一个处理订单的网站，比如你是一个在线商店之类的。嗯，如果你在处理订单时，你记录到你的，呃，到比如下游系统，呃，交易使用的错误货币。呃，例如，你没有使用美元，而是使用了英镑之类的。呃，在这种情况下，对吧，数据的结构在技术上是正确的，因为，呃，比如它在语法上没有任何错误。呃，但当然数据本身是不准确的。它实际上并没有代表你想要代表的东西。那里有一个错误。

[Image: Slide - "Observability", with smaller text: "Do you know when
it fails?"]

Zack Klein:

And so, I think this is kind of a subtly tricky thing. A lot of the
times you'll see semantic and syntactic like syntactic correctness
grouped together, but I I like to separate them out because it can lead
to some really tricky silent failures when you have issues like this.
So, syntactic correctness is sort of the first, semantic correctness
does the data mean what you think it means? Uh, I would call that sort
of the second failure mode. Um, okay. Now, one of the fun things of the
sort of current state of of like software of software development and
technology is that even if you were to achieve the first two uh like to
solve the first two problems that I that I sort of brought up here, um,
that state of the world is not necessarily guaranteed because we have a
wonderful thing called continuous integration and continuous deployment,
CICD, which basically means that no matter what, uh, like it basically
means that the state of things is constantly changing, right? We're
always pushing out new features, new bug fixes, and because of this, um,
any sort of quality work that you have, uh, that you have done
previously could potentially change because of existing changes that are
going to be happening in the system anyway. Um, and so because of that,
you need really good observability, right? A failure mode is not keeping
a close eye on what's going on, uh, because if you don't know when
those, uh, when those constraints from the previous two are are being
violated, uh, then you're you're in the same position.

所以，我认为这在某种程度上是一个微妙而棘手的事情。很多时候你会看到语义和句法，比如句法正确性被归为一类，但我我喜欢把它们分开，因为当你遇到这类问题时，它可能导致一些非常棘手的静默故障。所以，句法正确性是第一种，语义正确性是数据是否意味着你认为它意味着什么？呃，我会称之为第二种故障模式。嗯，好的。现在，当前软件开发和技术状态下的一个有趣的事情是，即使你能够实现前两个，呃，比如解决我在这里提出的前两个问题，嗯，世界的那个状态也不一定得到保证，因为我们有一个很棒的东西叫做持续集成和持续部署，CICD，这基本上意味着无论如何，呃，比如它基本上意味着事物的状态在不断变化，对吧？我们总是在推出新功能、新的错误修复，因此，嗯，你以前做过的任何质量工作，呃，都可能因为系统中即将发生的现有更改而发生变化。嗯，因此，你需要非常好的可观察性，对吧？一种故障模式是没有密切关注正在发生的事情，呃，因为如果你不知道何时那些，呃，何时违反了前两个约束，呃，那么你就会处于同样的境地。

[Image: Slide - "Accountability", with smaller text: "Can someone fix
it?"]

Zack Klein:

Um, now the final failure mode is actually happens after the
observability piece, uh, which is once the alert fires, uh, who fixes
it? Now there are different philosophies of like who should fix things
and where should they be fixed. I'm not really going to get into all
that. Um, but fundamentally the idea behind this is that, uh, once you
identify quality issues, then they can then it can then be mapped to
experts who know the sort of the root of the issue and can address it as
appropriate.

嗯，现在最后的故障模式实际上发生在可观察性部分之后，呃，那就是一旦警报触发，呃，谁来修复它？现在关于谁应该修复以及在哪里修复，有不同的理念。我不会真正深入探讨所有这些。嗯，但从根本上说，这背后的想法是，呃，一旦你识别出质量问题，那么它们就可以被映射到那些知道问题根源的专家那里，并酌情处理。

[Image: Slide - "Summary of failure modes" with bullet points:
"Syntactic correctness", "Semantic correctness", "Observability",
"Accountability"]

Zack Klein:

Okay. So that was a lot of information. Uh, let's cover those, let's
summarize that briefly and then we can start talking about, uh,
solutions and not just problems. Um, so of these failure modes, right,
we have syntactic correctness being, uh, sort of the source of, uh, some
like that that being like structural issues and integrity issues. Uh, we
talked about semantic correctness, which is, uh, the meaning behind the
data and making sure that that, uh, stays, you know, relatively
consistent. Um, we talked about observability, which is once you achieve
a high level of quality, how do you ensure that you maintain that state
over time? And of course, accountability, which is when things are
broken, how do you get them fixed? Uh, we talked about, um, the, uh,
anatomy of a data contract, uh, in the sense, uh, we, we talked about,
um, the schema and the metadata and the change process. Those are the
different pieces that you need to have. Uh, we talked about, uh, the
enforcement piece, uh, which is upfront versus DLQ enforcement. And, uh,
and we talked about what that looks like with specific, uh, data quality
issues.

好的。信息量很大。呃，让我们回顾一下，简单总结一下，然后我们就可以开始讨论，呃，解决方案，而不仅仅是问题了。嗯，在这些故障模式中，对吧，我们有句法正确性，它是，呃，某种程度上是，呃，一些比如结构性问题和完整性问题的根源。呃，我们讨论了语义正确性，也就是，呃，数据背后的含义，并确保它，呃，保持，你知道的，相对一致。嗯，我们讨论了可观察性，也就是一旦你达到了高水平的质量，你如何确保随着时间的推移保持这种状态？当然还有问责制，也就是当事情出问题时，你如何修复它们？呃，我们讨论了，嗯，呃，数据契约的构成，呃，从某种意义上说，呃，我们，我们讨论了，嗯，模式、元数据和变更过程。这些是你需要拥有的不同部分。呃，我们讨论了，呃，执行部分，呃，也就是前期执行与
DLQ
执行。并且，呃，我们讨论了在特定的，呃，数据质量问题下它是什么样子的。

[Image: Slide - "How do data contracts help?" with text: "Data
contracts give clarity that allow the problem to be addressed at the
root."]

Zack Klein:

Um, if there's nothing else that I, uh, that you all will get out of
this talk, there's one word that I think, uh, addresses how data
contracts help in this situation. And that one word is clarity. Um, what
data contracts do is they give you clarity around the state of the world
as it should look like. It gives you a really good sense of what the
data should look like. And then from there, you can compare that to
reality. You can compare that to the existing state of the current
system, and the difference between those two things then becomes
actionable, you know, data quality work that you can do, uh, to, to, uh,
to improve the sort of the overall data quality in the system.

嗯，如果这次演讲没有其他东西能让大家收获的话，有一个词我认为，呃，阐述了数据契约在这种情况下如何提供帮助。那个词就是清晰度。嗯，数据契约所做的是，它们让你清楚地了解世界应有的状态。它让你对数据应该是什么样子有一个非常好的感觉。然后从那里，你可以将它与现实进行比较。你可以将它与当前系统的现有状态进行比较，这两者之间的差异就变成了可操作的，你知道的，你可以做的数据质量工作，呃，来，来，呃，来提高系统中整体数据质量。

[Image: Slide - "Anatomy of a data contract" with bullet points:
"Schema", "Metadata", "Change process"]

Zack Klein:

Um, okay. So, that's a very high level, how do data contracts help? Now,
there's no magic here. So let's actually talk about what you need in a
data contract and and how it works and how that sort of fundamentally
solves, uh, some of these, uh, failure modes that I've been describing
so far. Okay. So there are three components, uh, of a data contract that
I'm going to cover and then I'll also talk about how it sort of plugs
into everything that I've said so far. So those, uh, three components,
the first is a schema, the second is metadata, and the third is a
change, uh, process around it. All data, I I want to specifically
highlight that like there are no tooling requirements specifically,
right? There are a lot of different ways you can, these these are
general concepts that you can implement in a lot of different ways. Uh,
I've picked a couple tools just for the sake of the presentation, but
again, the the ideas behind them that are that are really important. Um,
so, okay. Let's talk about, uh, the schema.

嗯，好的。所以，这是一个非常高层次的，数据契约如何提供帮助？现在，这里没有什么魔法。所以让我们实际谈谈你在数据契约中需要什么，以及它是如何工作的，以及它在根本上如何解决，呃，我到目前为止描述的一些，呃，故障模式。好的。数据契约有三个组成部分，呃，我将要介绍，然后我还会谈谈它在某种程度上是如何融入到我到目前为止所说的一切中的。所以那些，呃，三个组成部分，第一个是模式，第二个是元数据，第三个是围绕它的变更，呃，过程。所有数据，我，我想特别强调一下，比如没有特定的工具要求，对吧？有很多不同的方法可以，这些都是通用的概念，你可以用很多不同的方法来实现。呃，为了演示，我选择了一些工具，但是再说一次，它们背后的想法才是真正重要的。嗯，所以，好的。让我们谈谈，呃，模式。

[Image: Slide - "Schema" on the left, with an example of Protobuf
schema on the right. Arrows point from text "Header", "Supported
events", "Data types" to relevant parts of the Protobuf schema.]

Zack Klein:

So the schema is probably the simplest part, uh, of a data contract.
Effectively what it does is it describes the structure of the data that
you are expecting to come through, uh, a data pipeline. And, uh, again,
I have an example here in Protobuf, but like I just said, it, it isn't,
um, it isn't tied specifically to any particular tools. I personally
like Protobuf, but you can do this with custom YAML or with, you know,
JSON schema or Avro or Thrift. There's a whole number of technologies
you can use. Um, so the fundamental component that you get, the
fundamental thing that you get from the schema is basically a definition
of what the data should look like. Uh, for example, data types, right?
Uh, order ID, we see in this particular example is a string, and uh the
price amount is an integer. That kind of thing. That this sort of piece
of of information that you have. Um, again, there's some things I I've
data modeling things that I've picked up along the way that I think are
useful here, like having a header with shared fields, uh, and then sort
of like individual sub messages, but none of that's required. The thing
that is really required here is that you have sort of schematized
structured information about the way the shape of the data, the way that
it should look.

所以模式可能是数据契约中最简单的部分，呃。实际上它所做的是描述你期望通过数据管道的数据结构。而且，呃，再说一次，我这里有一个
Protobuf
的例子，但就像我刚才说的，它，它不是，嗯，它不是专门与任何特定工具绑定的。我个人喜欢
Protobuf，但你可以用自定义的 YAML 或者，你知道的，JSON schema 或者 Avro
或者 Thrift
来做这个。有很多技术你可以使用。嗯，所以你从模式中得到的基本组成部分，基本的东西基本上就是数据应该是什么样子的定义。呃，例如，数据类型，对吧？呃，订单
ID，我们在这个特定的例子中看到它是一个字符串，然后呃价格金额是一个整数。诸如此类。就是你拥有的这种信息。嗯，再说一次，有一些我，我一路走来学到的一些数据建模的东西，我认为在这里很有用，比如有一个包含共享字段的头部，呃，然后有点像单独的子消息，但这些都不是必需的。这里真正需要的是，你对数据的形状，它应该是什么样子，有一些模式化的结构化信息。

[Image: Slide - "Metadata" on the left, with an example of Protobuf
schema on the right, focusing on `field_metadata` options like
`team_owner`, `description`, and `criticality`. An arrow points to
"Arbitrary metadata" in the Protobuf example.]

Zack Klein:

Um, okay. Uh, here's where things get a little bit more interesting. Uh,
this is the metadata. Um, the metadata that you can attach to the schema
in a data contract, it's basically arbitrary. Um, which sounds a little
bit open-ended, but really what it means is it gives you the flexibility
to match it to the particular business context that you're working with.
So, in this particular example, we can see we have team owner and
description and criticality. And basically what these what what these
pieces of metadata do is they enrich the, uh, the schema, the structural
information about the data with all of the things that are important for
quality that are not captured by the structural piece. Um, so for
example, uh, in the order events description, uh, you can see we have a
specific sentence at the end there that says, it does not fire when
shipments are made. As the data platform matures over time, uh, and you
have a, uh, and you have a bunch of different use cases, all kinds of
interesting things are going to crop up. And as those things come up,
it's super important that the knowledge and sort of shared, the sort of
like shared learnings of the way the system behaves, uh, get documented
somewhere and that people can, people can, uh, you know, can work with
those assumptions. And so that's an example of the kind of things you
can get from this particular metadata, which, which I think is really
valuable. Um, yeah. So anyways, that's, that's the metadata piece.

嗯，好的。呃，这里事情变得更有趣一些了。呃，这是元数据。嗯，你可以在数据契约中附加到模式的元数据，它基本上是任意的。嗯，这听起来有点开放式，但实际上它的意思是它为你提供了灵活性，可以将其与你正在工作的特定业务背景相匹配。所以，在这个特定的例子中，我们可以看到我们有团队负责人、描述和重要性。基本上，这些元数据所做的是，它们用所有对质量重要但未被结构部分捕获的事物来丰富，呃，模式，关于数据的结构信息。嗯，例如，呃，在订单事件描述中，呃，你可以看到最后有一个特定的句子说，它在发货时不触发。随着数据平台的成熟，呃，并且你有很多不同的用例，各种有趣的事情都会出现。随着这些事情的出现，知识和某种共享的，某种系统行为方式的共享学习，呃，被记录在某个地方，并且人们可以，人们可以，呃，你知道的，可以基于这些假设工作，这是非常重要的。所以这是你可以从这个特定元数据中获得的这类东西的一个例子，我认为这非常有价值。嗯，是的。所以无论如何，那是元数据部分。

[Image: Slide - "Change process" on the left. On the right, bullet
points: "Continuous integration (CI) checks" (sub-bullets: "Enforce
structural types of changes", "Enforce metadata requirements"),
"Continuously deploy changes" (sub-bullets: "Generated libraries",
"Generated data consumers", "Generated documentation"), "Collaborate
across teams".]

Zack Klein:

Now, the third, so we talked about the schema, we talked about metadata.
Um, the third, uh, the third component to the contract is the change
process, which is also super important. Now, I mentioned earlier, uh,
the how continuous integration and continuous deployment means that the
state of the world is constantly changing. And so the only way for data
quality to keep up is to also be continuously changing and continuously
integrating and continuously deploying. And so, uh, what that means in
practice is basically there's some kind of process as the expect, like
there's some kind of process to evolve the expectations of the data as,
uh, as the sort of the needs of the system itself change. Um, so some
examples of ways that of things you can do that are that are often
really helpful. In continuous integration, having sort of, uh,
enforcement around the different types of changes. For example,
backwards compatibility is, is generally very important in in data heavy
systems. Um, and so that's the kind of thing you can enforce that in a
continuous integration layer where if someone proposes a change that's
not backwards incompatible, you reject the change and require a, uh, and
require a backwards compatible version instead. Um, additionally, you
can enforce things like metadata. So, like if we go back to this example
of the, uh, of the, uh, the metadata, you can enforce things like
descriptions are attached to, uh, individual pieces of the event. And
that way you can kind of, uh, you can help yourself out by making sure
that things are in place to capture the nuance that, uh, that you need
from this metadata and make sure it's consistently applied, uh, across
different use cases.

现在，第三个，所以我们讨论了模式，我们讨论了元数据。嗯，第三个，呃，契约的第三个组成部分是变更过程，这也非常重要。现在，我之前提到过，呃，持续集成和持续部署如何意味着世界的状态在不断变化。因此，数据质量跟上步伐的唯一方法也是不断变化、持续集成和持续部署。所以，呃，这在实践中意味着，基本上存在某种过程，随着期望，比如存在某种过程来演变数据的期望，随着，呃，随着系统本身需求的改变。嗯，所以一些你可以做的事情的例子，那些通常非常有帮助。在持续集成中，围绕不同类型的变更进行某种，呃，强制执行。例如，向后兼容性是，是普遍在数据密集型系统中非常重要的。嗯，所以你可以通过在持续集成层中强制执行来处理这类事情，如果有人提出了一个不向后兼容的变更，你就拒绝该变更，并要求一个，呃，并要求一个向后兼容的版本。嗯，此外，你可以强制执行像元数据这样的东西。所以，比如我们回到这个，呃，这个，呃，元数据的例子，你可以强制执行像描述这样的东西附加到，呃，事件的各个部分。这样你就可以在某种程度上，呃，你可以帮助自己，确保有适当的机制来捕获你从这个元数据中需要的细微差别，并确保它在不同的用例中得到一致的应用。

[Image: Slide - "What this gives you" with bullet points: "The truth!",
"Syntactic correctness - schema", "Semantic correctness - metadata",
"Observability - schema/metadata", "Accountability - metadata"]

Zack Klein:

Uh, that's from the, from the continuous integration perspective. Uh,
continuous deployment is probably, uh, hopefully, uh, a little bit of a
straightforward. Basically all of the different things that depend on
the contract, whether that's observability or documentation or, uh, even
certain types of consumers, uh, all of those things can be continuously
deployed as the contract itself changes. So that's valuable. Um, I think
the most valuable thing though about the change process, uh, in
particular, is that it's an avenue for collaboration. Um, the majority
of software development these days goes through some kind of Git
process. At least at least in my experience, like, uh, some kind of like
Git-based, you know, open a pull request and merge, uh, type of flow.
And when you implement sort of a, like a, um, a contract in this
particular way, what you can do is you can sort of make data quality
changes as part of that normal software life cycle, right? Uh, so that
as you are required to make changes to the system, data quality just
becomes another thing that you need to do as part of the, uh, uh, it
becomes another thing that you need to do as part of integrating with
the, or making whatever changes you're going to make anyway.

呃，那是从，从持续集成的角度来看。呃，持续部署可能，呃，希望是，呃，稍微直接一些。基本上所有依赖于契约的不同事物，无论是可观察性、文档，还是，呃，甚至是某些类型的消费者，呃，所有这些东西都可以随着契约本身的变化而持续部署。所以这很有价值。嗯，但我认为变更过程，呃，特别是其中最有价值的事情是，它是一个协作的途径。嗯，如今大多数软件开发都经过某种
Git 过程。至少至少在我的经验中，比如，呃，某种像基于 Git
的，你知道的，打开一个拉取请求然后合并，呃，那种流程。当你以这种特定的方式实施某种，比如某种，嗯，一个契约时，你可以做的是，你可以将数据质量的更改作为正常软件生命周期的一部分，对吧？呃，所以当你被要求对系统进行更改时，数据质量就变成了你需要做的另一件事，作为，呃，呃，它变成了你需要做的另一件事，作为与系统集成或无论如何进行更改的一部分。

[Image: Slide - High-level diagram showing "Producer" -> "Pipeline"
-> "Consumer". "Observability" points to "Pipeline". "Contract"
points to "Observability". "Enforcement" (dashed box) also points to
"Pipeline". Arrows also show feedback from "Observability" and
"Contract" to "Producer" and from "Pipeline" to "Producer"]

Zack Klein:

Um, okay. So that is, uh, that is the change process specifically. Um,
now, let's talk, okay, so what we, what we've covered in the past few
minutes here is sort of the anatomy of the data contract and the sort of
the specific pieces of, uh, the sort of the specific pieces that are
required and that will help you, um, implement, uh, data contracts. But
what does this actually give you? Let's like map that to like
specifically the problems that we were talking about before. So the
first thing is this gives you the truth. Uh, that's very vague and high
level. But fundamentally, what I mean by the truth is that when you have
this sort of defined structure of the data and you have attached
metadata to that structure, you have clarity, right? That was the big
word. You have clarity of what, uh, what the world should look like. Um,
and so that's fundamentally the most important thing. And if we go
through each of these failure modes, we can see how that maps. So take
syntactic correctness, for example. From the schema itself, from that
structured information, uh, we're going to get that, uh, those piece,
we're going to get sort of the view of what the world should look like
from the contract, from that schema. And then we can take the things
that we're seeing in production and map to them and see whether or not
the data is syntactically correct. Uh, so that's syntactic correctness.
Semantic correctness is is challenging, uh, but that is the kind of,
that is the area where you can really lean on the metadata. This is
highly dependent on the particular business context. So exactly what
this looks like will change. But fundamentally, in the metadata, ideally
you can capture the sort of specific nuances that make data semantically
correct. Uh, and, uh, again, put it in a contract so that way it's clear
what the expectations are. And then either automatically or manually,
based on that agreement, you can then build assumptions downstream based
on it, uh, through something like the next point, which is
observability, where if you integrate observability into both the
schema's correctness and this extra level of metadata, um, then you'll
know before your consume, before your the customers or consumers, um,
when, when things sort of get out of whack and when you sort of have
this drift between the expected state of the world and the actual state
of the world. Um, so that's observability. And then accountability, of
course, can come through the metadata as well. Uh, we saw in the, uh, in
the sort of metadata example, the schema. Um, and so, yeah, that right
there, uh, can, can give this sort of accountability piece.

嗯，好的。所以那就是，呃，那就是具体的变更过程。嗯，现在，让我们谈谈，好的，所以我们，我们过去几分钟在这里讨论的是数据契约的构成，以及某种特定的，呃，某种特定的必要组成部分，它们将帮助你，嗯，实施，呃，数据契约。但这实际上给了你什么呢？让我们把它映射到，比如我们之前讨论的具体问题上。所以第一件事是这给了你真相。呃，这非常模糊和高层次。但从根本上说，我所说的真相是，当你有了这种定义好的数据结构，并且你已经将元数据附加到该结构上时，你就有了清晰度，对吧？那是个重要的词。你清楚地知道，呃，世界应该是什么样子。嗯，所以这从根本上说是最重要的事情。如果我们仔细研究这些故障模式中的每一种，我们就能看到它是如何映射的。例如，拿句法正确性来说。从模式本身，从那个结构化信息中，呃，我们将得到那个，呃，那些片段，我们将从契约，从那个模式中得到世界应该是什么样子的某种视图。然后我们可以将在生产中看到的东西映射到它们，并查看数据在句法上是否正确。呃，所以那是句法正确性。语义正确性具有挑战性，呃，但那正是你可以真正依赖元数据的领域。这高度依赖于特定的业务背景。所以它具体是什么样子会改变。但从根本上说，在元数据中，理想情况下，你可以捕获那些使数据在语义上正确的特定细微差别。呃，并且，呃，再说一次，把它放在一个契约中，这样期望是什么就很清楚了。然后，无论是自动还是手动，基于那个协议，你都可以在此基础上构建下游的假设，呃，通过像下一点这样的东西，也就是可观察性，如果你将可观察性整合到模式的正确性和这个额外的元数据层中，嗯，那么你就会在你的消费，在你的客户或消费者之前知道，嗯，何时，何时事情开始失控，以及当你出现这种世界预期状态和实际状态之间的偏差时。嗯，所以那是可观察性。当然，问责制也可以通过元数据来实现。呃，我们在，呃，在元数据示例，模式中看到了。嗯，所以，是的，就在那里，呃，可以，可以提供这种问责制的部分。

[Image: Slide - "Examples"]

Zack Klein:

Okay. So, we've talked about enforcement. Um, now, uh, I just keeping an
eye on time, got a few minutes left. What I want to do is I want to sort
of talk about those initial, uh, those initial data quality issues that
we saw, those symptoms and map them onto a system that has data
contracts implemented and sort of show concretely how with data
contracts, you have the kind of structural mechanical pieces in place,
uh, such that you can, uh, deal with, uh, with any issues that that come
up.

好的。所以，我们讨论了强制执行。嗯，现在，呃，我只是留意一下时间，还剩几分钟。我想做的是，我想谈谈我们看到的那些最初的，呃，那些最初的数据质量问题，那些症状，并将它们映射到一个已经实施了数据契约的系统上，并具体地展示一下，有了数据契约，你就有了那种结构性的机械部件，呃，这样你就可以，呃，处理，呃，处理任何可能出现的问题。

[Image: Slide - Diagram with "Producer", "Pipeline", "Consumer"
connected. "Observability" and "Contract" below "Pipeline".
"Enforcement" (dashed) above "Pipeline". The diagram illustrates a data
pipeline with contract and observability components interacting with the
producer and pipeline, and enforcement acting on the pipeline.]

Zack Klein:

Um, so here's a, a pretty generic, uh, diagram of what a data pipeline
system with, uh, contracts, uh, need pretty much needs to look like.
These are the fundamental components that you're, you're going to end up
having one way or another. Um, and so to go through this briefly, on
the, on the left hand side, you have the producer. Um, the producer,
again, any number of producers, you can have many producers, but
fundamentally the thing that creates the data is here on the left hand
side. Uh, in the middle, you have the pipeline infrastructure. Again,
this is meant to just take the data from the producer, get it to where
it's going. Lots of different strategies and tools that you can, uh,
that you can, uh, use for this. And then on the consumer side, you have,
uh, sort of the data, the you have the data consumer. You have, uh, the
thing that wants to accept the data and then people end up using for
other things. So, that's the sort of the first piece. Then when you
introduce contracts in here, you get a few other things. Uh, first of
all, you get the contract itself. Um, then there's another layer of
observability, which we've talked about a few times where, um, ideally
at each stage of this, uh, of this system, you end up having
observability, uh, baked in one way or another, so that you can catch
when things, uh, start to drift and start to look, uh, a little bit
wrong. Um, and then in the sort of the dashed box, uh, up at the top
there, you have enforcement. Now, I want to spend, uh, some time talking
about enforcement specifically, uh, because it's one of the tricky
things. And what I mean by enforcement is when you notice that drift,
when there is a change between the expected state of the world and the
actual state of the world, what do we do? How do we deal with that
situation?

嗯，所以这里有一个，一个相当通用的，呃，关于一个带有，呃，契约的数据管道系统，呃，基本上需要是什么样子的图表。这些是你无论如何都会拥有的基本组成部分。嗯，所以简单介绍一下，在，在左手边，你有生产者。嗯，生产者，再说一次，任何数量的生产者，你可以有很多生产者，但从根本上说，创造数据的东西在这里的左手边。呃，在中间，你有管道基础设施。再说一次，这只是为了从生产者那里获取数据，把它送到它要去的地方。有很多不同的策略和工具，你可以，呃，你可以，呃，为此使用。然后在消费者方面，你有，呃，某种数据，你有数据消费者。你有，呃，想要接受数据的东西，然后人们最终会用它来做其他事情。所以，那是第一部分。然后当你在这里引入契约时，你会得到一些其他的东西。呃，首先，你得到契约本身。嗯，然后是另一层可观察性，我们已经讨论过几次了，嗯，理想情况下，在这个，呃，这个系统的每个阶段，你最终都会以某种方式内置可观察性，呃，这样你就可以在事情，呃，开始偏离并开始看起来，呃，有点不对劲的时候捕捉到。嗯，然后在那个虚线框里，呃，在顶部那里，你有强制执行。现在，我想花，呃，一些时间专门讨论强制执行，呃，因为这是棘手的事情之一。我所说的强制执行是指，当你注意到那种偏差时，当世界的预期状态和实际状态之间发生变化时，我们该怎么做？我们如何处理那种情况？

[Image: Slide - "Enforcement" with bullet points: "Upfront validation",
"Dead letter queue (DLQ)"]

Zack Klein:

Um, there's generally two approaches and they're not mutually exclusive.
This isn't meant to say like you can only do, you have to choose between
these two. Um, it's very use case dependent on which of these two you
choose to do. Uh, what I'll do is I'll walk through both of them and
I'll sort of present the pros and the sort of the trade-offs associated
with with both of them. Uh, but in real life, again, like you it's very
flexible. You can you can kind of implement what makes sense for for
individual use cases, um, here. So, two different types of enforcement
generally that I've seen.

嗯，通常有两种方法，它们并非相互排斥。这并不是说你只能做，你必须在这两者之间选择。嗯，这很大程度上取决于具体用例，你会选择做哪一种。呃，我要做的是我会介绍这两种方法，然后我会介绍它们的优点以及相关的权衡。呃，但在现实生活中，再说一次，比如它非常灵活。你可以，你可以根据个别用例来实现有意义的东西，嗯，在这里。所以，我通常看到的两种不同类型的强制执行。

[Image: Slide - "Upfront validation" with a simplified diagram:
"Application" -> "Enforcement" -> "Pipeline". "Observability" feeds
into "Enforcement" and "Pipeline", and also receives feedback from
"Application".]

Zack Klein:

The first is upfront validation. What what this means basically is you
take the contract and you enforce that data coming through the pipeline
complies with the contract. You enforce that upfront. Uh, this can be in
the application itself. It can be a layer sitting in front of the
pipeline. Effectively what it is is it's basically a, you know, bouncer
at the door. Now, the pros of this, right? This is a relatively simple
system and it's relatively simple to implement, right? There's not a
whole lot you need to add into your system to do this. Um, but of
course, the big trade-off is you drop data. So if you're, if you're
working in an environment where changes are happening super, super fast
and you're living with a lot of, uh, sort of quality that isn't, uh,
that isn't, like, if if you're having a hard time keeping up with the
contract, then you risk losing a bunch of data, which is, uh, which is
obviously a problem. And so that's something to consider very carefully
with this, this particular strategy.

第一种是前期验证。这基本上意味着你拿到契约，然后强制通过管道的数据符合契约。你预先强制执行。呃，这可以在应用程序本身中完成。它可以是位于管道前面的一个层。实际上，它基本上就是一个，你知道的，门口的保镖。现在，这样做的好处，对吧？这是一个相对简单的系统，而且实现起来也相对简单，对吧？你不需要在系统中添加很多东西来做这个。嗯，但当然，最大的权衡是你丢失了数据。所以如果你，如果你在一个变化发生得非常非常快的环境中工作，并且你处理着很多，呃，某种质量不，呃，不，比如，如果你很难跟上契约，那么你就有丢失大量数据的风险，这，呃，这显然是一个问题。所以这是在使用这种特定策略时需要非常仔细考虑的事情。

[Image: Slide - "Dead letter queue" with a more complex diagram.
"Application" -> "Pipeline". "Pipeline" can route to "DLQ".
"Enforcement" acts on "DLQ". "Observability" monitors "DLQ" and
"Pipeline", and also receives feedback from "Application" and
"Enforcement".]

Zack Klein:

Now, the other option if you find yourself in that situation is, uh, a
dead letter queue or a DLQ. Um, and the idea here is that the pipeline
infrastructure itself, uh, takes about basically, uh, basically takes
everything. Um, and, uh, from there you have an offline process that is
doing the enforcement. And when the offline process, uh, finds that
different pieces, uh, when you find that, uh, different pieces violate
the, uh, the contract, you put them, you you basically take them out of
the normal normal processing stream and you put them on a dead letter
queue. And then of course, you have observability on that dead letter
queue itself. Uh, and then from there, you can, uh, you know, reprocess
those, an engineer to take a look, uh, reprocess that information as
required, um, and make sure that things are in, in, um, are in the
format that they should be. Now, of course, the, the tradeoff here,
right, is that this is a whole other thing that you need to build and
you need to like, you know, maintain it and make sure that the the
mechanisms are working and there's a lot of existing tooling that you
can sort of, uh, latch onto to to make this easier, but again, this is a
separate a whole separate piece of, uh, of infrastructure and and kind
of a separate application. And so that's kind of the tradeoff there is
you do get this higher fidelity, you don't drop data, uh, but it, it is
another thing that you need to maintain and build.

现在，如果你发现自己处于那种情况，另一个选择是，呃，一个死信队列或
DLQ。嗯，这里的想法是管道基础设施本身，呃，基本上接收，呃，基本上接收所有东西。嗯，然后，呃，从那里你有一个离线过程来进行强制执行。当离线过程，呃，发现不同的片段，呃，当你发现，呃，不同的片段违反了，呃，契约时，你把它们，你你基本上把它们从正常的正常处理流中取出，然后把它们放到一个死信队列中。然后当然，你对那个死信队列本身有可观察性。呃，然后从那里，你可以，呃，你知道的，重新处理那些，让工程师看一下，呃，根据需要重新处理那些信息，嗯，并确保事情是，是，嗯，是以它们应该有的格式。现在，当然，这里的权衡，对吧，是这完全是另一件你需要构建的事情，你需要比如，你知道的，维护它，并确保机制正常工作，有很多现有的工具，你可以某种程度上，呃，利用它们来使这更容易，但再说一次，这是一个独立的，完全独立的基础设施部分，以及某种独立的应用程序。所以这有点像那里的权衡，你确实得到了更高的保真度，你不会丢失数据，呃，但它，它是你需要维护和构建的另一件事。

[Image: Slide - "In practice"]

Zack Klein:

Okay. So, we've talked about enforcement. Um, now, uh, I just keeping an
eye on time, got a few minutes left. What I want to do is I want to sort
of talk about those initial, uh, those initial data quality issues that
we saw, those symptoms and map them onto a system that has data
contracts implemented and sort of show concretely how with data
contracts, you have the kind of structural mechanical pieces in place,
uh, such that you can, uh, deal with, uh, with any issues that that come
up.

好的。所以，我们讨论了强制执行。嗯，现在，呃，我只是留意一下时间，还剩几分钟。我想做的是，我想谈谈我们看到的那些最初的，呃，那些最初的数据质量问题，那些症状，并将它们映射到一个已经实施了数据契约的系统上，并具体地展示一下，有了数据契约，你就有了那种结构性的机械部件，呃，这样你就可以，呃，处理，呃，处理任何可能出现的问题。

[Image: Slide showing three text snippets again: "ValueError: invalid
literal for int() with base 10: 'cb5689c6-151d-4881-8f3c-7e4f7d4d441c'",
"Why are there half as many rows today as yesterday?", "Who knows how
this table updates?"]

Zack Klein:

Okay, so let's take that first uh, let's take that first issue. This is
the uh, the syntactic issue where we are interpreting a, uh, a string as
an integer.

好的，那么让我们来看第一个，呃，让我们来看第一个问题。这是，呃，句法问题，我们正在将一个，呃，一个字符串解释为一个整数。

[Image: The detailed diagram from before ("Application" ->
"Enforcement" -> "Firehose" -> "Warehouse") with an arrow pointing
from the ValueError snippet to the "Enforcement" box.]

Zack Klein:

So where, where in the, uh, where in the system would we catch this?
Well, the place that we would catch it, depending on where we do the
enforcement. Well I mean that's the answer. We would catch it where we
do the enforcement. So in a system where we have the upfront
enforcement, we catch it in the application itself. This is really nice,
right? This means that we shift the sort of data quality piece all the
way to the left to the application itself. And if you're in, if you're
in an environment where you, you know, write unit tests and you have
sort of like, uh, a few layers of QA before things hit production,
there's a chance you catch this even before it gets merged anywhere and
before it gets deployed anywhere. Um, which is great because that sort
of like shifts things all the way to the root and it gets you to a, to a
point where you have, uh, good data quality sort of from the beginning.

那么，我们在系统的哪个环节，呃，哪个环节能捕捉到这个问题呢？嗯，我们捕捉到它的地方，取决于我们在哪里执行强制措施。嗯，我的意思是这就是答案。我们会在执行强制措施的地方捕捉到它。所以，在一个我们有前期强制执行的系统中，我们会在应用程序本身捕捉到它。这真的很好，对吧？这意味着我们将数据质量的部分一直移到最左边，移到应用程序本身。如果你在一个，如果你在一个你知道会编写单元测试的环境中，并且在产品上线前有几层
QA，那么你甚至有可能在它被合并到任何地方之前，在它被部署到任何地方之前就捕捉到这个问题。嗯，这很棒，因为这有点像把事情一直移到根源，让你达到一个，达到一个从一开始就拥有良好数据质量的程度。

[Image: The detailed diagram again. An arrow points from "Why are there
half as many rows today as yesterday?" to the "Observability" box.
Another arrow points from "Who knows how this table updates?" to the
"Contract" (and implicitly "Observability") box.]

Zack Klein:

Um, okay, so that's that first one. That's the, uh, the string that's
being interpreted, uh, as, as an integer. Um, let's take a look at the
next one. Why are there half as many rows today as there are yesterday?
This is kind of a tricky one. Where, where would we expect this one to,
uh, to get picked up? Well, ideally, you never hear this, right?
Ideally, you know this before any of your consumers downstream do. And
that's because using metadata in the contract itself, you can have
assumptions, you you can express the assumptions, uh, about the, the
sort of like, uh, about the sort of semantic quality of the data. So
like, for example, you can express in the, uh, in the metadata, we
require at least 10,000 rows a day, or if there were more, if there are
like, you know, two standard deviations more or less data than there
are, you know, just counting day over day, uh, we want an alert. And so,
ideally, you never have this issue of being asked this question because
you know about it before anyone else does, because you're able to
express that sort of extra layer of quality, uh, inside of the contract
itself. Um, and so yeah, that's, that's where you would catch this one
in particular. Um, and now that final one, who knows how this table
updates? Well, same thing. Ideally, from the actual contract itself, uh,
you have mapped from, uh, like mapped inside of the metadata, um, you
can map back to like, again, depending on how the organization does it,
a team or a department or an individual, uh, basically you get that sort
of extra layer of accountability, uh, from the metadata in the contract
itself.

嗯，好的，那是第一个。那是，呃，那个被解释为，呃，整数的字符串。嗯，让我们看下一个。为什么今天的行数只有昨天的一半？这有点棘手。我们，我们期望在哪里，呃，在哪里发现这个问题？嗯，理想情况下，你永远不会听到这个，对吧？理想情况下，你在下游的任何消费者之前就知道这个。这是因为在契约本身中使用元数据，你可以有假设，你你可以表达的假设，呃，关于，关于那种，呃，关于数据语义质量的假设。所以比如，你可以在，呃，在元数据中表达，我们每天至少需要
10,000
行，或者如果更多，如果比如，你知道的，数据比，你知道的，日复一日地计算多或少两个标准差，呃，我们需要一个警报。所以，理想情况下，你永远不会遇到被问到这个问题的情况，因为你在其他人之前就知道它，因为你能够表达那种额外的质量层，呃，在契约本身内部。嗯，所以是的，那是，那是在这个特定情况下你会发现的地方。嗯，现在最后一个，谁知道这个表是如何更新的？嗯，同样的事情。理想情况下，从实际的契约本身，呃，你已经从，呃，比如在元数据内部映射了，嗯，你可以映射回比如，再说一次，这取决于组织如何做，一个团队或一个部门或一个个体，呃，基本上你从契约本身的元数据中得到了那种额外的问责层。

[Image: Slide - "Takeaways" with bullet points: "Failure modes"
(sub-bullets: "Syntactic correctness", "Semantic correctness",
"Observability", "Accountability"), "Anatomy of a data contract"
(sub-bullets: "Schema", "Metadata", "Change process"), "Enforcement"
(sub-bullets: "Upfront", "DLQ").]

Zack Klein:

Okay. Um, so we covered a lot of ground, uh, in not that much time. So
just want to recap a little bit sort of the different, uh, the different
things that we, uh, that we went through today. Um, so in the beginning
we talked about failure modes. Uh, we talked about syntactic correctness
being, uh, sort of the source of, uh, some like that that being like
structural issues and integrity issues. Uh, we talked about semantic
correctness, which is, uh, the meaning behind the data and making sure
that that, uh, stays, you know, relatively consistent. Um, we talked
about observability, which is once you achieve a high level of quality,
how do you ensure that you maintain that state over time? And of course,
accountability, which is when things are broken, how do you get them
fixed? Uh, we talked about, um, the, uh, anatomy of a data contract, uh,
in the sense, uh, we, we talked about, um, the schema and the metadata
and the change process. Those are the different pieces that you need to
have. Uh, we talked about, uh, the enforcement piece, uh, which is
upfront versus DLQ enforcement. And, uh, and we talked about what that
looks like with specific, uh, data quality issues.

好的。嗯，所以我们讲了很多内容，呃，时间不长。所以只想简单回顾一下我们今天，呃，我们今天讨论的不同的，呃，不同的事情。嗯，所以一开始我们讨论了故障模式。呃，我们讨论了句法正确性是，呃，某种程度上是，呃，一些比如结构性问题和完整性问题的根源。呃，我们讨论了语义正确性，也就是，呃，数据背后的含义，并确保它，呃，保持，你知道的，相对一致。嗯，我们讨论了可观察性，也就是一旦你达到了高水平的质量，你如何确保随着时间的推移保持这种状态？当然还有问责制，也就是当事情出问题时，你如何修复它们？呃，我们讨论了，嗯，呃，数据契约的构成，呃，从某种意义上说，呃，我们，我们讨论了，嗯，模式、元数据和变更过程。这些是你需要拥有的不同部分。呃，我们讨论了，呃，执行部分，呃，也就是前期执行与
DLQ
执行。并且，呃，我们讨论了在特定的，呃，数据质量问题下它是什么样子的。

[Image: Slide - "Thank you!"]

Zack Klein:

Okay. Well, that's about it for me. Uh, got a few minutes left. Uh, I'm
happy to hang around and answer questions. Thank you all so much for
joining the session. And, uh, yeah, let me know if there's, uh, there's
anything I can answer.

好的。嗯，我的部分就到这里了。呃，还剩几分钟。呃，我很高兴留下来回答问题。非常感谢大家参加这次会议。还有，呃，是的，如果有什么我可以回答的，请告诉我。

## Q&A

Host:

That was great, Zach, and we do actually have a few questions. Uh, thank
you so much for going through the concrete, uh, information. Makes a lot
of difference for people to see the actual stuff going on under the,
under the, uh, hood. So, um, I'm going to first pull a couple of
questions that came out of the attendee chat. Um, a major challenge that
I face, even with setting up compatibility, is, uh, working with enums.
Is there a best practice while using enums?

太棒了，Zach，我们确实有一些问题。呃，非常感谢你介绍了具体的，呃，信息。让人们看到实际在底层，在底层，呃，运行的东西，这有很大的不同。所以，嗯，我首先会从与会者聊天中挑选几个问题。嗯，我面临的一个主要挑战，即使在设置兼容性时，也是，呃，处理枚举类型。在使用枚举类型时有什么最佳实践吗？

Zack Klein:

Um, yeah, this is an excellent, I'm I'm guessing this is about Protobuf
specifically. Uh, yeah, Protobuf enums are, are, uh, tricky and fun, uh,
in their own way. Um, I also the first time I was, like, when I was
getting used to Protobuf, that's how I did it. Um, there are actually,
there there's a sort of published set of best practices, but, um,
basically, like, the two big things that I've experienced, uh, working
with Protobuf specifically are, are, uh, two things. The first is having
safe defaults. Um, basically, the the first value that you specify for
an enum specifically, um, requires, uh, like, that default value will
get set anytime, uh, the data, the, uh, the message does not include,
um, a specific setting for that enum, which is unintuitive but makes
sense when you think about it. So that's the first bit, is having a safe
default, usually I just call it not set. Um, and then after that, uh, to
avoid conflicts in names, it's generally speaking, the the way I've seen
it is having, um, like, the name of the enum itself being prefixed, uh,
with whatever the name of the enum itself is. Uh, that right there will
take care of a lot of the of a lot of the sort of conflicts that you can
see with Protobuf. Um, I'm guessing that's what that was. If the
question wasn't about Protobuf specifically, I can also talk about that,
but that's what I think it was since I also face those issues.

嗯，是的，这非常好，我我猜这是关于 Protobuf
的具体问题。呃，是的，Protobuf
的枚举类型，呃，既棘手又有趣，呃，以它们自己的方式。嗯，我第一次接触的时候，比如，当我开始熟悉
Protobuf
的时候，我也是这么做的。嗯，实际上，有，有一套已发布的最佳实践，但是，嗯，基本上，比如，我在处理
Protobuf
时遇到的两个主要问题，呃，是，呃，两件事。第一是拥有安全的默认值。嗯，基本上，你为枚举类型指定的第一个值，嗯，要求，呃，比如，那个默认值会在任何时候被设置，呃，当数据，当，呃，消息不包含，嗯，该枚举类型的特定设置时，这不直观，但仔细想想也说得通。所以这是第一点，拥有一个安全的默认值，我通常就叫它“未设置”。嗯，然后在那之后，呃，为了避免名称冲突，通常来说，我看到的方式是，嗯，比如，枚举类型本身的名称以，呃，以枚举类型本身的名称为前缀。呃，那样就能解决很多，很多你在
Protobuf 中可能看到的冲突。嗯，我猜就是那个。如果问题不是专门关于
Protobuf 的，我也可以谈谈那个，但我想就是那个，因为我也遇到过那些问题。

Host:

It's a good guess because the other question right next to it from
someone else was, I recently had to transform a Protobuf message to
Parquet and found no tools to do it. Why do you think we are lacking
interoperability on various formats?

这是个好猜测，因为紧挨着的另一个问题是，我最近需要将 Protobuf 消息转换为
Parquet
格式，但找不到任何工具来完成。你认为为什么我们在各种格式之间的互操作性方面有所欠缺？

Zack Klein:

Mm. It's a good question. I guess it depends sort of on, I guess it's a
little philosophical there, right? Yeah, I guess it sort of depends on
the use case. Um, I mean, generally, like, my experience is that the,
um, like a lot of these, a lot of these open source versions come out of
companies that kind of go all in on a particular approach. And so
interoperability isn't necessarily always a priority until, until it is,
you know what I mean? Where there are some things that have a lot of
interoperab- interoperability, uh, built in and some things that don't.
And it's more sort of like, uh, it's more sort of like need-driven, I
guess I would say. Um, but I don't know that there's really like, that
that would be my guess. I mean, maybe that's not a very satisfying
answer, but that that would be my guess.

嗯。这是个好问题。我想这某种程度上取决于，我想这有点哲学意味，对吧？是的，我想这某种程度上取决于用例。嗯，我的意思是，总的来说，比如，我的经验是，嗯，比如很多这些，很多这些开源版本都来自于那些在某种特定方法上全力以赴的公司。所以互操作性不一定总是优先考虑的，直到，直到它成为问题，你明白我的意思吗？有些东西内置了很多互操作性，呃，有些则没有。这更像是一种，呃，更像是一种需求驱动，我想我会这么说。嗯，但我不知道是否真的有，那会是我的猜测。我的意思是，也许这不是一个非常令人满意的答案，但那会是我的猜测。

Host:

I mean, in the, in the old days of like, let's say the networking stack,
there was a ton of, there was obviously interoperability, but then you
had things like someone would take TACACS and make TACACS+, and that had
an extension and so on. So there was a lot of sort of vendor jockeying
for position by controlling which things could talk to which things. In
this world, it seems like there's so much open source, that's less the
case.

我的意思是，在，在过去，比如，假设是网络协议栈的时代，有很多，显然有互操作性，但后来你会有这样的情况，比如有人会采用
TACACS 并制作出
TACACS+，它有一个扩展等等。所以有很多供应商通过控制哪些东西可以与哪些东西通信来争夺地位。在这个世界里，似乎有
এত多的开源软件，情况就没那么严重了。

Zack Klein:

Yeah. Totally, I totally agree.

是的。完全，我完全同意。

Host:

Uh, so one last quick question. Um, I come from the world of network
performance and network engineering stuff, and there we were very
specific about a service level agreement of what it meant, right? So an
SLA was like this level of quality for this amount of time with this
speed of detecting a problem and this time to resolution with these
consequences. Like there was more to it than just here's what I'm going
to get. How similar to the kind of SLA you would have with a service
provider or a data center do these contracts get and how explicitly they
talk about consequences?

呃，最后一个简短的问题。嗯，我来自网络性能和网络工程领域，在那里我们对服务水平协议的含义有非常具体的规定，对吧？所以
SLA
就像是在这段时间内达到这种质量水平，以这种速度检测问题，并在这种时间内解决问题，并承担这些后果。比如，它不仅仅是“我会得到什么”这么简单。这些合同与你和服务提供商或数据中心签订的那种
SLA 有多相似，它们在多大程度上明确地谈论后果？

Zack Klein:

Um, that's a great question. Um, I see that as a very natural evolution
that comes in the metadata itself. And like I I again, I think the I
think the exact implementation of that is organization specific where
different, uh, different organizations are going to have different sort
of requirements of their data either in terms of like, you can imagine
sort of a continuum of like freshness, uh, liveness and real-timeness
versus like quality and like completeness and correctness where, um,
certain, certain use cases will need like extreme correctness, but like
if you need something extremely, extremely correct, you likely need
extra validation processes that will slow it down. And so I think
contracts are actually an extremely useful mechanism in defining exactly
what that means where you can, you can take sort of this like, uh, this
sort of like requirements based, uh, like these specific requirements
and you encode them one way or another inside of the contract, and then
that becomes the agreement that then dictates the sort of like
consequences that you're describing.

嗯，这是个很好的问题。嗯，我认为这是一种非常自然的演变，它本身就存在于元数据中。而且，就像我，我再说一遍，我认为，我认为它的确切实现方式是特定于组织的，不同的，呃，不同的组织对它们的数据会有不同的要求，无论是在某种程度上，比如，你可以想象一个连续体，比如新鲜度，呃，实时性和实时性与质量以及完整性和正确性，嗯，某些，某些用例需要极高的正确性，但比如如果你需要非常非常正确的东西，你可能需要额外的验证过程，这会减慢速度。所以我认为契约实际上是在准确定义这意味着什么方面的一个非常有用的机制，你可以，你可以采用这种类似，呃，这种类似基于需求的，呃，比如这些特定需求，然后你以某种方式将它们编码到契约内部，然后这就变成了那个协议，然后它规定了你所描述的那种后果。

Host:

Yeah, I mean, we have so many years of history in the way that that
networking service level agreements have been established because there
were real legal ramifications. It would be interesting to see what we
can borrow from that world and import to add on to data contracts for
sure. Uh, awesome. That was a really interesting presentation. Thank you
so much. Uh, I appreciate that. And, uh, really, you know, anybody who
comes in here and says, here's stuff we've built and here's the lessons
we've learned, I could tell just by the level of questions we're getting
that people were, uh, very grateful to learn from you about these
specific use cases and implementations.

是的，我的意思是，我们在网络服务水平协议的建立方式方面有很多年的历史，因为存在真实的法律后果。看看我们能从那个世界借鉴什么并将其引入到数据契约中，这肯定会很有趣。呃，太棒了。那是一场非常有趣的演讲。非常感谢。呃，我很欣赏。而且，呃，真的，你知道的，任何来到这里说，这是我们构建的东西，这是我们学到的教训的人，我仅从我们收到的问题的水平就能看出，人们非常，呃，非常感谢能从你这里了解到这些具体的用例和实现。

Zack Klein:

Thank you. It's my pleasure.
