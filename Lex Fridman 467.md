---
title: "Tim Sweeney: Fortnite, Unreal Engine, and the Future of Gaming | Lex Fridman Podcast #470 Transcript"
layout: "post.njk"  
date: "2025-05-25"
tags:
  - "视频笔记"
data:
  author: "Lei"
  podcast_program: ""
  speaker: ""
  guest: "" 
  source: "https://lexfridman.com/tim-sweeney-transcript"
---

<div id="transcript-content" class="container">

# Tim Sweeney: Fortnite, Unreal Engine, and the Future of Gaming \| Lex Fridman Podcast \#470

<div class="metadata">

**Source:** <a href="https://lexfridman.com/tim-sweeney-transcript"
target="_blank">https://lexfridman.com/tim-sweeney-transcript</a>

**Author(s):** Lex Fridman

**Published:** 2025-04-30

**Created:** 2025-05-25

**Description:** This is a transcript of Lex Fridman Podcast \#470 with
Tim Sweeney. The timestamps in the transcript are clickable links that
take you directly to that point in the main video. Please note that the
transcript is human generated, and may have errors. Here are some useful
links: Go back to this episode’s main page Watch the full YouTube
version of the podcast Table of Contents Here are the loose “chapters”
in the conversation. Click link to jump approximately to that part in
the transcript: 0:00 – Episode highlight 3:06 – Introduction 3:39 –
10,000 hours programming 6:56 – Advice

**Tags:** clippings



This is a transcript of Lex Fridman Podcast \#470 with Tim Sweeney. The
timestamps in the transcript are clickable links that take you directly
to that point in the main video. Please note that the transcript is
human generated, and may have errors. Here are some useful links:

- Go back to
  <a href="https://lexfridman.com/tim-sweeney/" target="_blank">this
  episode’s main page</a>
- Watch the
  <a href="https://youtube.com/watch?v=477qF6QNSvc" target="_blank">full
  YouTube version of the podcast</a>

## Table of Contents

Here are the loose “chapters” in the conversation. Click link to jump
approximately to that part in the transcript:

- [Episode highlight](#chapter0_episode_highlight)
- [Introduction](#chapter1_introduction)
- [10,000 hours programming](#chapter2_10_000_hours_programming)
- [Advice for young programmers](#chapter3_advice_for_young_programmers)
- [Video games in the 80s and
  90s](#chapter4_video_games_in_the_80s_and_90s)
- [Epic Games origin story](#chapter5_epic_games_origin_story)
- [Indie game development](#chapter6_indie_game_development)
- [Unreal Engine](#chapter7_unreal_engine)
- [Technical details of Unreal
  Engine](#chapter8_technical_details_of_unreal_engine)
- [Constructive solid geometry](#chapter9_constructive_solid_geometry)
- [Dynamic lighting](#chapter10_dynamic_lighting)
- [Volumetric fog](#chapter11_volumetric_fog)
- [John Carmack](#chapter12_john_carmack)
- [Evolution of Unreal Engine](#chapter13_evolution_of_unreal_engine)
- [Unreal Engine 5](#chapter14_unreal_engine_5)
- [Creating realistic humans](#chapter15_creating_realistic_humans)
- [Lumen global illumination](#chapter16_lumen_global_illumination)
- [Movies](#chapter17_movies)
- [Simulating reality](#chapter18_simulating_reality)
- [Metaverse](#chapter19_metaverse)
- [Fortnite](#chapter20_fortnite)
- [Scaling](#chapter21_scaling)
- [Game economies](#chapter22_game_economies)
- [Standardizing the Metaverse](#chapter23_standardizing_the_metaverse)
- [Verse programming language](#chapter24_verse_programming_language)
- [Concurrency](#chapter25_concurrency)
- [Unreal Engine 6](#chapter26_unreal_engine_6)
- [Indie game developers](#chapter27_indie_game_developers)
- [Apple](#chapter28_apple)
- [Epic Games Store](#chapter29_epic_games_store)
- [Future of gaming](#chapter30_future_of_gaming)
- [Greatest games ever made](#chapter31_greatest_games_ever_made)
- [GTA 6 and Rockstar Games](#chapter32_gta_6_and_rockstar_games)
- [Hope for the future](#chapter33_hope_for_the_future)

![Tim Sweeney: Fortnite, Unreal Engine, and the Future of Gaming \| Lex
Fridman Podcast \#467
Thumbnail](https://img.youtube.com/vi/477qF6QNSvc/maxresdefault.jpg)

## Episode highlight

<div class="dialogue-block">

**Tim Sweeney:** Humans are by far the hardest part of computer graphics
because millions of years of evolution have given us dedicated brain
systems to detect patterns in faces and infer emotions and intent
because cavemen had to, when they see a stranger, determine whether they
were likely friendly or they might be trying to kill them. And so people
in the world have extraordinarily detailed expectations of a face and we
can notice imperfections, especially perfections arising from computer
graphics limitations. Okay, one part is capturing humans and so
\[inaudible 00:00:33\] really advanced, dedicated hardware that puts a
human in a capture sphere with dozens of cameras in them taking high
resolution, high frame rate video of them as they go through a range of
motions. And then capturing the human face is complicated because the
nuanced detail of our faces and how all the muscles and sinews and fat
work together to give us different expressions.

**蒂姆·斯威尼：**
人类是计算机图形学中最难的部分，因为数百万年的进化赋予了我们专门的大脑系统来检测面部模式，并推断情绪和意图，因为穴居人必须在看到陌生人时，判断他们是友好的还是可能想杀死他们。因此，世界上的人们对面部有着极其细致的期望，我们可以注意到不完美之处，尤其那些源于计算机图形限制的完美。好的，一部分是捕捉人类，所以\[听不清
00:00:33\]
非常先进的专用硬件，将人置于一个捕捉球体中，里面有几十个摄像头，以高分辨率、高帧率拍摄他们经历一系列动作的视频。然后捕捉人脸是很复杂的，因为我们脸部的细微差别以及所有肌肉、肌腱和脂肪如何协同工作，给我们带来不同的表情。



<div class="dialogue-block">

**Tim Sweeney:** So it’s not only about the shape of a person’s face,
but it’s also about the entire range of motion that they might go
through. So that’s the data problem. There’s a lot of other problems
with computer graphics. There’s technology for rendering hair, which is
really hard. Because you can’t render every… Again, we know the laws of
physics. It would be easy to just render every hair. It would just be a
billion times too slow. So you need approximations that capture the net
effect of hair on rendering and on pixels without calculating every
single interaction of every light with every strand of hair. That’s one
part of it. There’s detailed features for different parts of faces.
There’s subsurface scattering because we think of humans as opaque, but
really our skin, light travels through it. It’s not completely opaque,
and the way in which light travels through skin has a huge impact on our
appearance.

**蒂姆·斯威尼：**
所以这不仅仅关乎人脸的形状，还关乎他们可能经历的整个运动范围。所以这是数据问题。计算机图形学还有很多其他问题。有渲染头发的技术，这真的很难。因为你不能渲染每一根……再次强调，我们知道物理定律。仅仅渲染每一根头发会很容易。但那会慢上十亿倍。所以你需要近似值来捕捉头发对渲染和像素的净效应，而无需计算每一束光与每一根头发的每一次相互作用。这是一部分。脸部的不同部位有详细的特征。还有次表面散射，因为我们认为人类是不透明的，但实际上我们的皮肤，光线会穿过它。它并非完全不透明，光线穿过皮肤的方式对我们的外表有巨大影响。



<div class="dialogue-block">

**Tim Sweeney:** And this is why there’s no way you can paint a
mannequin to look realistic for a human. It’s just a solid surface and
we’ll never have the sort of detail you see.

**蒂姆·斯威尼：**
这就是为什么你无法把人体模型画得像真人一样逼真。它只是一个坚实的表面，我们永远无法拥有你所看到的那种细节。



<div class="dialogue-block">

**Lex Fridman:** That kind of blew my mind, thinking through that. I
think I heard that sort of the oiliness of the skin creates very
specific, nuanced, complex reflections and then some light is absorbed
and travels through the skin and that creates textures that our human
eye is able to perceive and it creates the thing that we consider human,
whatever that is. All of that, while considering all the muscles
involved in making the nuanced expression, just the subtle squinting of
the eyes or the subtle formation of a smile, it’s the subtlety of human
faces that you have to capture, like the difference between a real smile
and a fake smile, but the way to show beginning of a formation of a
smile that actually reveals a deep sadness, all of that, when I watch a
human face, I can read that. I could see that you have to have the tools
that, in real time, can render something like that, and that’s
incredibly difficult.

**莱克斯·弗里德曼：**
思考这个问题让我大开眼界。我想我听说过皮肤的油性会产生非常特定、细致、复杂的反射，然后一些光线会被吸收并穿过皮肤，这会产生我们人眼能够感知到的纹理，并创造出我们认为是人类的东西，不管那是什么。所有这些，同时还要考虑到所有参与形成细微表情的肌肉，比如眼睛的轻微眯起或微笑的微妙形成，你必须捕捉到人脸的这种微妙之处，比如真笑和假笑的区别，以及如何展现一个微笑的开始，而这个微笑实际上揭示了深深的悲伤，所有这些，当我观察人脸时，我能读懂。我能看出你必须拥有能够实时渲染类似东西的工具，而这非常困难。



<div class="dialogue-block">

**Tim Sweeney:** That’s right. Getting faces right requires the
interplay of literally dozens of different systems and aspects of
computer graphics. And if any one of them is wrong, your eye is
completely drawn to that and you find it on the wrong side of Uncanny
Valley.

**蒂姆·斯威尼：**
是的。要正确处理面部，需要数十个不同系统和计算机图形学方面的相互作用。如果其中任何一个出错，你的眼睛会完全被吸引到那里，你会发现它处在恐怖谷的错误一侧。



## Introduction

<div class="dialogue-block">

**Lex Fridman:** The following is a conversation with Tim Sweeney, a
legendary video game programmer, founder and CEO of Epic games that
created many incredible games and technologies, including the Unreal
Engine and Fortnite, which both revolutionized the video game industry
and the experience of playing and creating video games. This is the Lex
Fridman podcast. To support it, please check out our sponsors in the
description. And now, dear friends, here’s Tim Sweeney.

**莱克斯·弗里德曼：**
接下来是与蒂姆·斯威尼的对话，他是一位传奇的视频游戏程序员，Epic Games
的创始人兼首席执行官，该公司创造了许多令人难以置信的游戏和技术，包括虚幻引擎和《堡垒之夜》，这两者都彻底改变了视频游戏行业以及玩和创作视频游戏的体验。这是莱克斯·弗里德曼播客。要支持它，请查看描述中的赞助商。现在，亲爱的朋友们，有请蒂姆·斯威尼。



<div class="dialogue-block">

**Lex Fridman:** When did you first fall in love with computers and
maybe with programming?

**莱克斯·弗里德曼：** 你最初是什么时候爱上计算机，或许是编程的？



## 10,000 hours programming

<div class="dialogue-block">

**Tim Sweeney:** I had a brother, Steve Sweeney, who 16 years older than
me, and at some point when I was a little kid, he went off to work in
California for a tech company and he’d gotten one of the first IBM PCs.
And so for one summer, I think I was about 11, I went to visit him in
California. It was my first trip away from my family just to hang out
with him and he had this brand new IBM computer and I learned to program
over the course of a few days in BASIC. I was just blown away with the
capabilities of computers at the time. It was unbelievable what they
could accomplish, and I just was hooked from that point onward and very
much wanted to be a programmer.

**蒂姆·斯威尼：**
我有一个哥哥，史蒂夫·斯威尼，他比我大16岁。在我还是个小孩子的时候，他去了加州一家科技公司工作，并且拥有了第一批IBM个人电脑中的一台。所以有一年夏天，我想我大概11岁，我去加州看他。那是我第一次离开家人，只是为了和他待在一起。他有一台全新的IBM电脑，我在几天之内就学会了用BASIC编程。我当时完全被计算机的能力震撼了。它们能完成的事情简直令人难以置信，从那时起我就迷上了编程，非常想成为一名程序员。



<div class="dialogue-block">

**Lex Fridman:** Do you remember what you wrote in BASIC? Is it a video
game type thing? Is it like for loop, some numerical thing? Do you
remember?

**莱克斯·弗里德曼：**
你还记得你用BASIC写了什么吗？是视频游戏之类的东西吗？还是像for循环，一些数字运算之类的？你还记得吗？



<div class="dialogue-block">

**Tim Sweeney:** Yeah, it’s funny. I have a perfectly vivid memory of
all of the first things I learned to program. I have a hard time
remembering people’s names, but code really sticks with me. Every step
and every challenge, there were lessons learned, some of which I’ve come
to realize were just like me getting over some learning hurdles. But
other things were actually shortcomings of programming languages and the
realization that there are actually better ways than what a programmer
is learning to program for their first time. A lot of what they’re
facing isn’t the challenge of learning a new art. It’s friction
introduced by failures of programming language design. And so I’ve
constantly come back to those early lessons there as I’ve progressed and
done more and more things including building programming languages.

**蒂姆·斯威尼：**
是的，很有趣。我对所有我最初学会编程的东西都有非常清晰的记忆。我很难记住别人的名字，但代码却深深地印在我的脑海里。每一步、每一个挑战，都有学到的教训，其中一些我后来意识到，就像我克服了一些学习障碍一样。但另一些实际上是编程语言的缺点，以及意识到实际上有比程序员第一次学习编程时所学到的更好的方法。他们面临的很多问题并非学习一门新艺术的挑战，而是编程语言设计失败所带来的摩擦。因此，随着我的进步和做越来越多的事情，包括构建编程语言，我不断地回顾那些早期的教训。



<div class="dialogue-block">

**Lex Fridman:** Yeah, the friction and the pain is the guide to
learning in programming. If I were to describe programming journey
that’d be marked by pain and that pain, you shouldn’t escape the pain.
The pain is instructive for you to understand programming languages. But
do you remember what kind of stuff you were writing at that time? Just
the early programs?

**莱克斯·弗里德曼：**
是的，摩擦和痛苦是编程学习的指引。如果我要描述编程之旅，那它将充满痛苦，而你不应该逃避这种痛苦。这种痛苦对于你理解编程语言是有益的。但是你还记得当时你写了些什么吗？就是早期的程序？



<div class="dialogue-block">

**Tim Sweeney:** Yeah. In the early days, I wrote a little bit of
everything. I wrote some games. The first game I wrote on the Apple II
was, since I only knew how to program in text mode, the computer would
throw asterisks across the screen, they’d flow from left to right, and
you’d have a parenthesis on the right-hand side of the screen and it
looks like a baseball mitt and you’re supposed to catch the asterisks.
That was my very first game. It took about a couple hours to build and
tune, and I went from there. But I built a lot of things. I built
databases at different points. I built a programming language and a full
compiler for a language like Pascal because I didn’t know where you went
to buy one of those. So I made my own. And one of fun things at that
time was bulletin boards.

**蒂姆·斯威尼：** 是的。早期，我写了各种各样的东西。我写了一些游戏。我在
Apple II
上写的第一个游戏是，因为我只知道如何在文本模式下编程，计算机会在屏幕上扔出星号，它们会从左向右流动，屏幕右侧会有一个括号，看起来像一个棒球手套，你得接住那些星号。那是我第一个游戏。大概花了我几个小时来制作和调整，然后我就从那里开始了。但我制作了很多东西。我在不同时期制作了数据库。我为一种像
Pascal
这样的语言制作了一个编程语言和完整的编译器，因为我不知道去哪里买那种东西。所以我自己做了一个。当时有趣的事情之一是电子布告栏系统。



<div class="dialogue-block">

**Tim Sweeney:** Before we had the internet in the hands of consumers,
you used your modem and you dialed into a local phone number and
connected to whoever was running the computer there. And every town or
city had hundreds of these bulletin boards run by different people with
their own personalities and themes. And so I spent a lot of time
building a bulletin board program and learning how to deal with database
management and user interface and dealing with multiple users
concurrently and things. And so, I don’t know, I’d probably spend about
10 or 15,000 hours writing code just on my own as a kid between age 10
and age 20 before I actually shipped a program to the outside world.

**蒂姆·斯威尼：**
在我们拥有消费者手中的互联网之前，你使用你的调制解调器，拨打一个本地电话号码，然后连接到运行那台计算机的人。每个城镇或城市都有数百个这样的BBS，由不同的人运营，有着各自的个性和主题。所以我花了很多时间构建一个BBS程序，学习如何处理数据库管理、用户界面以及同时处理多个用户等等。所以，我不知道，在我10岁到20岁之间，作为一个孩子，我自己可能花了大约一万到一万五千个小时写代码，才真正向外界发布了一个程序。



## Advice for young programmers

<div class="dialogue-block">

**Lex Fridman:** What advice would you give to a young programmer today
who wants to be the next Tim Sweeney? Maybe a person who's inspired by
you and wants to create something that revolutionizes the industry one
day?

**莱克斯·弗里德曼：**
对于今天想成为下一个蒂姆·斯威尼的年轻程序员，你有什么建议？也许是一个受你启发、想要创造革命性行业产品的人？



<div class="dialogue-block">

**Tim Sweeney:** I'd say don't wait for permission, just start building
things. The beauty of programming is that it costs almost nothing. You
need a computer which almost everybody has access to now, and you need
time. And so if you're in school and you want to be a programmer, don't
wait for computer class to teach you programming, because it will
probably be not a very good programming class. Just start learning it
yourself.

**蒂姆·斯威尼：**
我会说不要等待许可，直接开始构建东西。编程的美妙之处在于它几乎不需要任何成本。你需要一台计算机，现在几乎每个人都能接触到，而且你需要时间。所以如果你在学校，并且想成为一名程序员，不要等待计算机课来教你编程，因为那可能不是一个很好的编程课程。直接开始自学吧。



<div class="dialogue-block">

**Tim Sweeney:** There are so many resources online now, so many
resources for learning and all the programming languages are documented
extensively online. You can just search for them. Every programming
language comes with a compiler now, which is free. It's not like the old
days where you had to buy expensive software to compile your code. Just
start building things. I recommend building some games because I think
that's the most fun type of programming you can do.

**蒂姆·斯威尼：**
现在网上有如此多的资源，有很多学习资源，所有的编程语言在网上都有广泛的文档。你可以直接搜索它们。现在每种编程语言都配有编译器，而且是免费的。不像以前那样，你必须购买昂贵的软件来编译你的代码。直接开始构建东西吧。我推荐构建一些游戏，因为我认为那是你能做的最有趣的编程类型。



<div class="dialogue-block">

**Lex Fridman:** Do you think there's value in 10,000 hours, like
spending a lot of time with one language, one framework to try to master
the craft there?

**莱克斯·弗里德曼：**
你认为一万小时法则有价值吗，比如花很多时间在一种语言、一个框架上，试图掌握那里的技艺？



<div class="dialogue-block">

**Tim Sweeney:** Yes, absolutely. Programming is really an artisanal
craft that you learn by doing it. You can learn the basics through
theory, but actually becoming a good programmer is just hands-on work.
And the sooner you start, the better, and the more you practice, the
better you get.

**蒂姆·斯威尼：**
是的，绝对如此。编程实际上是一门通过实践学习的手工艺术。你可以通过理论学习基础知识，但真正成为一名优秀的程序员就是动手实践。你开始得越早越好，你练习得越多，你就会变得越好。



<div class="dialogue-block">

**Tim Sweeney:** I think if you want to be a programmer, just start
writing code every day. Even if it's just an hour or two a day, what I
found is that the people who are really successful at it, it's the
people who are obsessed with it. They think about the problems in their
heads even when they're not coding, and they come up with ideas and
solutions and ways to build things. And when they go back to the
computer, they implement them, and they just constantly iterate on that.
And 10,000 hours, it'll take a long time to get 10,000 hours, but every
hour of that is going to be enjoyable and rewarding.

**蒂姆·斯威尼：**
我认为，如果你想成为一名程序员，就开始每天写代码。即使每天只有一两个小时，我发现那些真正成功的人，是那些对编程着迷的人。即使他们没在编程，他们也会在脑中思考问题，并且他们会想出想法、解决方案和构建东西的方法。当他们回到电脑前时，他们就实现这些想法，他们就不断地迭代这个过程。一万个小时，需要很长时间才能达到一万个小时，但这其中的每一小时都会是愉快和有回报的。



<div class="dialogue-block">

**Lex Fridman:** All the experimentation and all the exploration somehow
contributed, somehow made sense later on. All of that is integrated
somehow in the stuff you build. It’s funny how life works. The pieces
kind of come together eventually.

**莱克斯·弗里德曼：**
所有的实验和探索不知何故都做出了贡献，不知何故在后来都变得有意义。所有这些都以某种方式整合到你所构建的东西中。生活就是这样运作的，很有趣。这些碎片最终会拼凑在一起。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, there are definitely karate kid moments because
all this time I was learning math in high school and in college I
studied mechanical engineering. And so you learn all kinds of math,
vector calculus and vector math and matrices and all of these related
fields, physics and stress and strain and how to deal with complex
physical systems. And yeah, I wasn’t really sure how engineers would
actually make use of that knowledge. Do you just forget about it when
you actually go off to do work or do you write down equations on paper?
It was actually not clear as an early engineering student what you do,
but when I started writing the first generation Unreal Engine and I was
dealing with 3DMS, I was like, wait, I know this stuff. I learned this.
And so suddenly like the karate kid, you get to paint the fence and wax
the car and suddenly put all the pieces together into a 3D engine based
on a whole lot of accumulated programming language and math knowledge,
often knowledge gained without ever anticipating that I might use it in
that way.

**蒂姆·斯威尼：**
是的，肯定有《小子难缠》那样的时刻，因为这些年来我一直在高中学习数学，在大学里我学的是机械工程。所以你学习各种数学，向量微积分、向量数学、矩阵以及所有这些相关领域，物理学、应力和应变，以及如何处理复杂的物理系统。是的，我当时并不确定工程师们到底会如何运用这些知识。当你真正开始工作时，你是会忘记这些知识，还是会在纸上写下方程式？作为一个早期的工程系学生，我其实并不清楚该怎么做。但是当我开始编写第一代虚幻引擎，并且处理3DMS时，我就想，等等，这些东西我懂。我学过这个。所以突然之间，就像《小子难缠》里的主角一样，你先是刷篱笆、给汽车打蜡，然后突然就把所有这些零散的知识整合到一起，基于大量积累的编程语言和数学知识，构建出了一个3D引擎，而这些知识往往是在从未预料到会以这种方式使用它们的情况下获得的。



<div class="dialogue-block">

**Lex Fridman:** Also, I think what’s useful is over and over learning a
hard thing and then showing to yourself that you can do it, that you can
learn a hard thing. So then when you come to having to write a 3D engine
in ways that haven’t been done before, you’re like, I’ve been here. I’ve
been here in this experience, I don’t know what to do, but we’ll figure
it out. We’ll learn. I’ll learn all the necessary components. So just
not being afraid of something new.

**莱克斯·弗里德曼：**
而且，我认为有用的地方在于，一次又一次地学习困难的事物，然后向自己证明自己能做到，能学会困难的事物。所以，当你遇到需要以前所未有的方式编写3D引擎时，你会想，我经历过这个。我经历过这种体验，我不知道该怎么做，但我们会想办法。我们会学习。我会学习所有必要的组成部分。所以，只是不要害怕新事物。



<div class="dialogue-block">

**Tim Sweeney:** That’s right. And constantly striving to make
connections between these fields and look for their applications. Long
after I chipped Unreal Engine, it was like going back through an
engineering textbook and looking at, oh yeah, I used that, I used that,
I used that. And then I got to the section on eigenvalues. I’m like, I
don’t know what the hell this is. But it turns out eigenvectors and
eigenvalues were the critical breakthrough that made the Google search
engine technology work and stand apart from the rest because they found
if you threw all the links that exist into the web and links from and to
different sites and you put them in a giant matrix and you conclude it,
you found a dominant eigenvalues.

**蒂姆·斯威尼：**
是的。并且不断努力在这些领域之间建立联系，寻找它们的应用。在我推出虚幻引擎很久之后，就像是重新翻阅一本工程教科书，然后发现，哦是的，我用过那个，我用过那个，我用过那个。然后我看到了关于特征值的部分。我想，我完全不知道这是什么鬼东西。但事实证明，特征向量和特征值是使谷歌搜索引擎技术得以运作并脱颖而出的关键突破，因为他们发现，如果你将网络中存在的所有链接以及不同网站之间的传入和传出链接都放入一个巨大的矩阵中，然后进行计算，你会找到主导的特征值。



<div class="dialogue-block">

**Tim Sweeney:** Then those eigenvectors described the best search
results for different things. And so constantly picking up knowledge and
looking for ways to put it together is the thing to do. And if you
aspire to be a programmer, you’ve got to write a lot of code and you’ve
got to continually learn new things and improve. And if you want to be
an artist, you’ve got to continually draw artwork of all styles and all
kinds and constantly push yourself to learn more and more, because you
never know exactly what you’re going to end up doing in the long run,
but the more knowledge you have and the more skills, the more chance you
have putting it together and being successful.

**蒂姆·斯威尼：**
然后那些特征向量描述了不同事物的最佳搜索结果。所以不断获取知识并寻找将其整合起来的方法是应该做的事情。如果你立志成为一名程序员，你必须编写大量代码，并且必须不断学习新事物并改进。如果你想成为一名艺术家，你必须不断绘制各种风格和类型的艺术作品，并不断推动自己学习更多，因为你永远不知道从长远来看你最终会做什么，但你拥有的知识越多，技能越多，你就越有机会将其整合起来并取得成功。



<div class="dialogue-block">

**Lex Fridman:** And whether you’re a programmer or an artist, you
should probably take linear algebra, even though it doesn’t make sense
at the time.

**莱克斯·弗里德曼：**
无论你是程序员还是艺术家，你可能都应该学习线性代数，即使当时它看起来没什么意义。



<div class="dialogue-block">

**Tim Sweeney:** I found getting an engineering degree and then never
working in an engineering field, just being a computer programmer, was
immensely valuable. I went to University of Maryland, which for some
disciplines it’s kind of known as a party school, but they worked the
engineers to death, worked really hard. And if you learn any engineering
discipline, you learn massive amounts of math and you learn the rigor of
problem solving, not just what you find from the Wikipedia article, but
going through all of the exercises of solving complex problems and
building up series of solutions to derive in an answer. It’s valuable
and it embodies the knowledge that you need as a programmer. And people
often go to university and think, okay, my goal here is to get good
grades, so I get a diploma and I prove to an employer that I’m valuable.

**蒂姆·斯威尼：**
我发现获得工程学位，然后从未在工程领域工作，仅仅是做一名计算机程序员，是非常有价值的。我去了马里兰大学，对于某些学科来说，它有点像派对学校，但他们把工程师们累得要死，工作非常努力。如果你学习任何工程学科，你会学到大量的数学知识，你会学到解决问题的严谨性，不仅仅是你从维基百科文章中找到的东西，而是要经历解决复杂问题的所有练习，并建立一系列解决方案来推导出答案。这很有价值，它体现了你作为一名程序员所需要的知识。人们通常上大学，然后想，好吧，我的目标是取得好成绩，这样我才能拿到文凭，向雇主证明我的价值。



<div class="dialogue-block">

**Tim Sweeney:** No, that’s just kind of the superficial bookkeeping of
the university. The real purpose of all of this is to learn, and whether
you learn formally or you learn on your own, it’s the learnings that are
really valuable in a career. And especially if you’re going to be
entrepreneurial, it’s really knowing the stuff that matters and not
having the diplomas. There’s ever more pressure to rebuild society more
and more around credentials. Do you have this certificate? Do you have
that proof? But companies that are focused on just building great
products and doing great things gravitate towards people who do the
great work.

**蒂姆·斯威尼：**
不，那只是大学表面上的记账工作。所有这一切的真正目的是学习，无论你是正式学习还是自学，在职业生涯中真正有价值的是所学到的东西。特别是如果你打算创业，真正重要的是掌握重要的知识，而不是拥有文凭。社会越来越强调围绕证书重建，你有没有这个证书？你有没有那个证明？但是那些专注于打造卓越产品和做伟大事情的公司，会倾向于那些能做出卓越工作的人。



<div class="dialogue-block">

**Lex Fridman:** Yeah, one of the great things about youth is there’s
more freedom. There’s just more time to learn. And people when they go
to high school, they sometimes think, wow, I can’t wait to get out of
this and be an adult and be free. But it’s not quite freedom. When you
get a job and you start a family, all wonderful things, but you get more
and more busy and less and less time to learn in the general sense,
learn whatever the hell you want. That is a wonderful time in life, the
teenage years, the early-twenties, the twenties when you could just
learn random shit.

**莱克斯·弗里德曼：**
是的，年轻的一大好处就是有更多的自由。有更多的时间去学习。人们上高中的时候，有时会想，哇，我等不及要离开这里，成为一个成年人，获得自由。但这并不完全是自由。当你找到工作，组建家庭，这些都是美好的事情，但你会变得越来越忙，越来越没有时间去广义地学习，学习任何你想学的东西。那段时光是人生中非常美好的，十几岁，二十出头，二十多岁的时候，你可以随便学些乱七八糟的东西。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, and I think this is something that’s kind of
changing in America. There’s so much focus on grades and homework and
structure around kids’ lives. When I was growing up, my mom would feed
me and my neighbors’ moms would feed them breakfast and they’d be like,
well, be back by dark.

**蒂姆·斯威尼：**
是的，我认为这在美国正在发生一些变化。现在人们过分关注成绩、作业以及孩子们生活中的条条框框。我小时候，我妈妈会给我做饭，邻居的妈妈们会给他们做早餐，然后他们会说，嗯，天黑前回来。



<div class="dialogue-block">

**Tim Sweeney:** And, yeah, we’d go out and we’d play and we’d do all
sorts of things. We’d explore the woods, we’d build go-karts, we’d
salvage old pieces of electronics and build what we thought were our
spacecraft control panels for the fake spaceships we were building as
play, and we’d have an enormous amount of freedom. And from basically
being a little kid through the time I went off to college, I had an
enormous amount of free time. Some people just use that and waste it,
and watched TV. Some people socialized and some people really got into
serious projects. So many people at all times were doing cool things. I
was programming, I was learning to build things.

**蒂姆·斯威尼：**
而且，是的，我们会出去玩，做各种各样的事情。我们会探索树林，制造卡丁车，我们会回收旧的电子元件，然后用它们来制造我们认为是宇宙飞船控制面板的东西，用于我们玩耍时制造的假宇宙飞船，我们拥有巨大的自由。从我还是个小孩子到上大学，我都有大量的空闲时间。有些人只是利用这些时间虚度光阴，看电视。有些人社交，有些人则真正投入到严肃的项目中。很多人在任何时候都在做很酷的事情。我当时在编程，在学习制造东西。



<div class="dialogue-block">

**Tim Sweeney:** Before I was releasing games to the world, I’d be
having neighborhood folks over to play the things I was working on and
check them out. And sometimes they’re impressed and sometimes they
weren’t, and they’d have their own projects and often we’d have spare
time jobs and everybody was entrepreneurial. Everybody had a side gig.
Sometimes you’d go around and mow people’s lawns or you’d rake the
leaves up and earn money. And the freedom there and the organic learning
that occurred there, I think, is something that is really critical to
the American experience that I worry is increasingly going away as
society is ever more protective and sheltering and makes it harder to
get these experiences.

**蒂姆·斯威尼：**
在我向世界发布游戏之前，我会邀请邻居们来玩我正在制作的东西，让他们看看。有时他们会印象深刻，有时则不然，他们也会有自己的项目，我们经常会有业余工作，每个人都很有创业精神。每个人都有副业。有时你会四处帮人修剪草坪，或者耙树叶赚钱。我认为，那里的自由和有机学习，对于美国经验来说至关重要，我担心随着社会变得越来越保护和庇护，获得这些经验变得越来越难，这种东西正在逐渐消失。



## Video games in the 80s and 90s

<div class="dialogue-block">

**Lex Fridman:** So on the video game side, when did you first fall in
love with video games?

**莱克斯·弗里德曼：**
那么在电子游戏方面，你是什么时候第一次爱上电子游戏的？



<div class="dialogue-block">

**Tim Sweeney:** I’ve had a funny relationship with games because my
real aspiration has always been to program cool stuff. And I get more
enjoyment out of programming than anything else in the world. And so my
first really two formative experience with games were playing this game
called Adventure for the Atari 2,600. It was like you move this dot
around the screen and picked up objects like swords and fought dragons
and invaded castles and solved puzzles. Very, very simple iconic stuff
rather than realistic graphics. And then the other game that I really
got immersed in was Zork, which was a text adventure game. It would tell
you where you are and what you see and you type in commands like go
north or pick up sword or open door and explore a world that way. So the
game didn’t have any graphics, but in your mind you had this elaborate
picture of what you were seeing there, and it really brought in
\[inaudible 00:16:09\] inspired imagination more than other things.

**蒂姆·斯威尼：**
我和游戏的关系很有趣，因为我真正的志向一直是编写酷炫的东西。我从编程中获得的乐趣比世界上任何其他事情都多。所以，我最初真正具有塑造意义的两次游戏体验是玩雅达利2600上的一款名为《冒险》的游戏。它就像你在屏幕上移动这个点，捡起像剑一样的物体，与龙战斗，入侵城堡，解决谜题。非常非常简单的标志性内容，而不是逼真的图形。然后，我真正沉浸其中的另一款游戏是《魔域》，这是一款文字冒险游戏。它会告诉你你在哪里，你看到了什么，然后你输入像“向北走”、“捡起剑”或“开门”这样的命令，以这种方式探索世界。所以这款游戏没有任何图形，但在你的脑海中，你对所看到的东西有一个精心构思的画面，它确实比其他东西更能激发\[听不清
00:16:09\]的想象力。



<div class="dialogue-block">

**Tim Sweeney:** And playing those games led me to go off and want to
learn to program everything that I saw there. And that drove a lot of my
programming. I learned how to move a player around the screen. I learned
how to build a design tool so I could build castles and save them off
and then play them in a game. And I realized there was a separation
between the tools that you use to build a game and the game itself, and
that the more powerful tools you had, the more creativity you could
unleash in yourself or others.

**蒂姆·斯威尼：**
玩那些游戏让我想要去学习编程我所看到的一切。那驱动了我很多的编程工作。我学会了如何在屏幕上移动一个玩家。我学会了如何构建一个设计工具，这样我就可以建造城堡并保存它们，然后在游戏中玩。我意识到，用来构建游戏的工具和游戏本身是分离的，你拥有的工具越强大，你就能在自己或他人身上释放越多的创造力。



<div class="dialogue-block">

**Tim Sweeney:** And I learned all the programming techniques that
supported games, how to parse text, pick up sword and go north. How do
you make that sentence into an actual series of commands on the
computer? And that was really, really exciting. I have to say, until the
time that Fortnite came out, I played video games primarily to learn
what they were doing, so that I could go off and do that myself. I’d sit
down when Wolfenstein came out and then Doom came out. I’d go through it
and look at it Pixel by Pixel, I’d move the mouse very slightly and look
exactly what was happening to figure out.

**蒂姆·斯威尼：**
我学习了所有支持游戏编程的技术，如何解析文本，“拿起剑”和“向北走”。你如何把那句话变成计算机上一系列实际的命令？那真的非常非常令人兴奋。我不得不说，直到《堡垒之夜》问世之前，我玩电子游戏主要是为了学习它们在做什么，这样我就可以自己去做。当《德军总部》问世，然后《毁灭战士》问世时，我会坐下来，逐个像素地审视它，我会非常轻微地移动鼠标，仔细观察到底发生了什么，以便弄清楚。



<div class="dialogue-block">

**Lex Fridman:** That’s funny. That’s great.

**莱克斯·弗里德曼：** 真有趣。太棒了。



<div class="dialogue-block">

**Tim Sweeney:** What technique was being used there? And that was a
puzzle solving at a grand scale, and it was so fun.

**蒂姆·斯威尼：**
那里用了什么技术？那是一个大规模的解谜过程，而且非常有趣。



## Epic Games origin story

<div class="dialogue-block">

**Lex Fridman:** So take me there in the early 90s, so you launched Epic
Games in 1991, so the writing of your first big video game ZZT, what was
it like? What was the technical challenges? What were the psychological
challenges of building that?

**莱克斯·弗里德曼：** 那么带我回到90年代初，你在1991年创办了Epic
Games，你创作你的第一款大型视频游戏ZZT是什么样的？技术挑战是什么？构建它面临的心理挑战又是什么？



<div class="dialogue-block">

**Tim Sweeney:** It was a funny project because I didn’t start out to
build a video game. I’d just moved from an Apple II, so my brother
bought my family an Apple II right after I’d visit him in California. So
I’ve been programming on that for a few years, learned a lot of
techniques, but weren’t many Apple II users around still by the time
that cycle came to an end. \[inaudible 00:17:56\] so I’d just gotten an
IBM PC of my own and was learning to program and I realized I needed a
text editor. So I started writing a text editor. A text editor is a
program to edit text files. You have logic to move the cursor around and
let people type things and backspace and delete and do all of those
mundane actions. And one night I’d finished it up and I was like, well,
okay, I have a text editor, but this is pretty boring.

**蒂姆·斯威尼：**
那是一个有趣的项目，因为我最初并非打算制作一款视频游戏。我刚从 Apple II
换过来，我哥哥在我去加州看他之后不久就给我家买了一台 Apple
II。所以我在那台电脑上编程了几年，学到了很多技术，但到那个周期结束时，Apple
II 的用户已经不多了。\[听不清 00:17:56\] 所以我刚拥有了自己的 IBM
PC，正在学习编程，我意识到我需要一个文本编辑器。于是我开始编写一个文本编辑器。文本编辑器是编辑文本文件的程序。你需要逻辑来移动光标，让人们输入内容、退格、删除以及执行所有那些单调的操作。一天晚上我完成了它，然后我想，嗯，好吧，我有一个文本编辑器，但这太无聊了。



<div class="dialogue-block">

**Tim Sweeney:** And so I made the cursor into a smiley face character
and I had the different characters you could place in this document
perform different gameplay actions. Some would be walls and some would
kill you, and some would be moving objects that could fly around the
screen. And so this text editor I made evolved into a little game
editor. So I was building these levels for a game. And I put a lot of
time into building an editor and a primitive set of objects, about 20 or
30 different objects. Enough to build a really cool and compelling game,
but not so many that players would lose track of what they’re seeing.

**蒂姆·斯威尼：**
于是我把光标变成了一个笑脸字符，并且让你可以放置在这个文档中的不同字符执行不同的游戏动作。有些会是墙壁，有些会杀死你，还有一些是可以在屏幕上飞来飞去的移动物体。所以我制作的这个文本编辑器演变成了一个小型的游戏编辑器。所以我当时在为一款游戏构建这些关卡。我花了很多时间构建编辑器和一套原始的对象，大约有二三十种不同的对象。这足以构建一款非常酷且引人入胜的游戏，但又不会多到让玩家搞不清楚他们在看什么。



<div class="dialogue-block">

**Tim Sweeney:** I started off just building different game levels. The
idea is you’d be on a series of board, they’d be connected by going
north \[inaudible 00:18:59\], the end of the current board would take
you to a new one if it was open or maybe it was blocked and then you
couldn’t go there. I built this \[inaudible 00:19:05\] game world around
that, and this was the game that became ZZT and I was having fun with
it, building it and playing it, but I didn’t know if it would really
work. So I did this experiment. I’d started inviting neighbors over.
Some adults, some kids of all different ages and I sat them down in
front of it and say it, like, here’s the game I made, figure it out.

**蒂姆·斯威尼：**
我一开始只是构建不同的游戏关卡。想法是你会在一系列棋盘上，它们通过向北走连接起来\[听不清
00:18:59\]，当前棋盘的尽头会带你到一个新的棋盘，如果它是开放的，或者它可能被堵住了，那么你就不能去那里。我围绕这个构建了这个\[听不清
00:19:05\]游戏世界，这就是后来成为ZZT的游戏，我乐在其中，构建它并玩它，但我不知道它是否真的能成功。所以我做了这个实验。我开始邀请邻居过来。有些是成年人，有些是不同年龄段的孩子，我让他们坐在它前面，然后说，这是我做的游戏，你们自己琢磨吧。



<div class="dialogue-block">

**Tim Sweeney:** And I had to force myself not to tell them what they
need to do because I really wanted to learn if they were able to
discover it all for themselves. Today we would call this a user
experience test, and there’s a whole field of research around user
experience research, but back then it was just inviting some kids over
to play the game. I took notes about what they got stuck on and what
they enjoyed and where they felt bored and just iteratively polished the
game until I felt it was good then and I put it out and released it on,
well, this was before the internet, so there were bulletin boards. I
uploaded it to a bunch of local bulletin boards, and from there it
started spreading because the way to build up cred for bulletin board
users was to upload new files and to claim that, hey, I was the first
that brought this to you.

**蒂姆·斯威尼：**
我不得不强迫自己不去告诉他们需要做什么，因为我真的想知道他们是否能够自己发现这一切。今天我们会称之为用户体验测试，并且有一个围绕用户体验研究的完整研究领域，但在当时，这只是邀请一些孩子过来玩游戏。我记录了他们卡在什么地方，他们喜欢什么，以及他们在哪里感到无聊，然后不断地迭代打磨游戏，直到我觉得它足够好，然后我把它发布出去，发布在……嗯，那是在互联网出现之前，所以有电子布告栏系统。我把它上传到一些本地的电子布告栏系统，然后它就开始传播开来，因为电子布告栏系统用户建立信誉的方式是上传新文件，并声称，嘿，我是第一个把这个带给你们的人。



<div class="dialogue-block">

**Tim Sweeney:** And so there was a natural tendency of the software to
spread. And I decided to use the shareware model, so I didn’t just build
this one game. I built a trilogy of three games. And I released the
first one for free and I said, hey, if you like this, buy the two
sequels. And I included my parents’ mailing address and said, send us
\$30 and you can get the sequels to this game. And the checks started
coming in within a few days and I was getting three or four orders a
day. I was making a hundred dollars a day. I’m like, woo, I’m rich.
Because being a 20-year-old, that was a pretty big deal.

**蒂姆·斯威尼：**
因此，软件有一种自然传播的趋势。我决定使用共享软件模式，所以我不仅仅制作了这一个游戏。我制作了一个包含三个游戏的三部曲。我免费发布了第一个，然后说，嘿，如果你喜欢这个，就购买另外两个续作。我附上了我父母的邮寄地址，说，寄给我们30美元，你就可以得到这个游戏的续作。几天之内，支票就开始寄来了，我每天能收到三四个订单。我一天能赚一百美元。我想，哇，我发财了。因为对于一个20岁的人来说，那可是一笔不小的数目。



<div class="dialogue-block">

**Lex Fridman:** What did that feel like, just getting money and
probably feeling this immense success from something you’ve created?

**莱克斯·弗里德曼：**
那是什么感觉，拿到钱，并且可能从你创造的东西中感受到这种巨大的成功？



<div class="dialogue-block">

**Tim Sweeney:** Well, I’ve looked at money always just as a tool to
help you fund accomplishing cool things and having enough to do the
things you want to do is the critical thing. It’s always been just very
utilitarian, but the knowledge that other people all around the country
and then a month later, all around the world, were playing the game,
that was mind-boggling that me, the solo kid who’d put out a game on a
local bulletin board, could be doing international business and shipping
discs all over the world to players because the software was spreading
on its own, it was just magical.

**蒂姆·斯威尼：**
嗯，我一直把钱仅仅看作是一种工具，帮助你资助完成酷炫的事情，拥有足够的钱去做你想做的事情是关键。它一直都非常功利，但是知道全国各地的人，然后一个月后，全世界的人都在玩这款游戏，这让我感到难以置信——我，一个在本地BBS上发布游戏的单干小子，竟然能做国际生意，把光盘运往世界各地给玩家，因为软件是自行传播的，这简直太神奇了。



<div class="dialogue-block">

**Tim Sweeney:** And that was a new thing for software. That did not
happen with mechanical devices. You manufactured one, you sold it to
somebody and they had it, and that was it. But software could spread.
That was just really cool to see. And it made me realize there was
really no upward limit on the \[inaudible 00:21:40\] for a business like
that. We saw Microsoft as the big juggernaut company at the time, but it
was like, hey, if Epic does games good enough, we could accomplish what
they’ve got accomplished with operating systems. And the sky was the
limit. And I think this is the age we live in now. It’s, you don’t have
to be an industrialist manufacturing physical products, anybody who
builds anything digitally, if it’s good enough, you can reach the entire
world and build the next Microsoft or Meta or Apple or Google or Epic
Games.

**蒂姆·斯威尼：**
这对于软件来说是一件新鲜事。机械设备不会发生这种情况。你制造了一个，卖给某人，他们就拥有了它，仅此而已。但软件可以传播。看到这一点真是太酷了。这让我意识到，对于这样的业务，\[听不清
00:21:40\]
实际上没有上限。我们当时将微软视为庞然大物，但感觉就像，嘿，如果 Epic
的游戏做得足够好，我们就能实现他们在操作系统领域取得的成就。天空才是极限。我认为这就是我们现在生活的时代。你不需要成为制造实体产品的实业家，任何构建数字产品的人，如果它足够好，你就可以触达整个世界，并打造下一个微软、Meta、苹果、谷歌或
Epic Games。



<div class="dialogue-block">

**Lex Fridman:** That’s such a cool origin story though. You started out
building a text editor, so you’re looking at this project, you’re
playing around with it, you building up the tools. And that’s such an
inspiring moment because a lot of us start out building a project and to
allow yourself to see the potential pivots, the potential trajectories
that can go is really nice. To sit back, allow yourself to be bored and
like, ah, I’m going to go this way. I mean, that’s like a crossroads.
You came to a crossroads. I mean, you built compilers, you design your
own programming language, you built compilers, databases, all these
things you’ve mentioned, and you started building a text editor and then
here it came to this crossroad, I’m going to make this fun. And then
from there, one of the most legendary gaming companies was created. It’s
kind of cool. That’s an inspiring thing for sort of developers. Be open
to the possibility of creating something you didn’t plan to create and
just go with it. Right? That’s cool.

**莱克斯·弗里德曼：**
不过，这真是一个很酷的起源故事。你最初是想做一个文本编辑器，所以你看着这个项目，摆弄它，构建工具。那真是一个鼓舞人心的时刻，因为我们很多人开始做一个项目时，允许自己看到潜在的转折点，潜在的发展轨迹，这真的很好。坐下来，让自己感到无聊，然后想，啊，我要走这条路。我的意思是，那就像一个十字路口。你走到了一个十字路口。我的意思是，你构建了编译器，设计了自己的编程语言，构建了编译器、数据库，所有这些你提到的东西，然后你开始构建一个文本编辑器，然后它走到了这个十字路口，我要让它变得有趣。然后从那里，一个最具传奇色彩的游戏公司诞生了。这有点酷。对于开发者来说，这是一件鼓舞人心的事情。对创造出你没有计划创造的东西的可能性持开放态度，然后顺其自然。对吧？那很酷。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, and it was a bunch of learnings emerged really
quickly there. The neat thing I did with ZZT was I didn’t just release
the game, I also released the editor with it. I’d built this tool so I
could make these ZZT boards that people could play, but I also gave it
to all of the players themselves. And 30 years later, I still run into
people when I go to a game industry event, it was like I grew up playing
ZZT and here’s an adult who grew up playing my game. And it was because
it enabled anybody to become a creator too. It had this old board editor
and it also had a little scripting language, so you could learn a little
bit of programming in it too. And it kind of impressed, and it really
set a formative principle of Epic, which was that the company’s mission
is to make awesome entertainment, but also awesome tools and to share
those tools with everybody so that they can build their own amazing
things too.

**蒂姆·斯威尼：**
是的，而且很快就涌现出很多经验教训。我用ZZT做的一件很棒的事情是，我不仅发布了游戏，还随之发布了编辑器。我制作了这个工具，这样我就可以制作这些ZZT棋盘供人们玩，但我也把它提供给了所有玩家。30年后，当我去参加游戏行业活动时，我仍然会遇到一些人，他们会说我从小就玩ZZT，而现在这是一个玩着我的游戏长大的成年人。这是因为它也让任何人都能成为创造者。它有一个旧的棋盘编辑器，还有一个小型的脚本语言，所以你也可以在里面学习一点编程。这给我留下了深刻的印象，也真正确立了Epic的一个基本原则，那就是公司的使命是制作精彩的娱乐内容，同时也制作精彩的工具，并将这些工具与每个人分享，这样他们也可以创造出属于自己的精彩事物。



<div class="dialogue-block">

**Tim Sweeney:** And when we got into Unreal Engine a few years later,
the interplay between us building a game and us building a tool, tools
that were widely used by others, was a critical part of that. And I
think that’s the sole reason that Epic has been massively successful.
And actually the reason that we’ve survived all of this time is by
serving both creators and gamers. We’ve been able to weather the ups and
downs of the game industry. It’s a brutal place for companies. We’ve
been able to survive every financial downturn, and sometimes the
engine’s been funding the business because we didn’t have a game. And
sometimes the games have been funding the business. And it really set a
principle in our culture that’s persevered and is continually bought to
the forefront.

**蒂姆·斯威尼：**
几年后，当我们开始使用虚幻引擎时，我们构建游戏和构建工具（这些工具被其他人广泛使用）之间的相互作用是其中至关重要的一部分。我认为这是Epic取得巨大成功的唯一原因。实际上，我们能够一直生存下来的原因在于我们同时服务于创作者和游戏玩家。我们能够经受住游戏行业的起起落落。对于公司来说，这是一个残酷的地方。我们能够度过每一次金融危机，有时引擎会资助业务，因为我们没有游戏。有时游戏会资助业务。这确实在我们的文化中树立了一个原则，这个原则一直坚持下来，并不断被推到最前沿。



<div class="dialogue-block">

**Lex Fridman:** But on the editor front, that’s such a fascinating
philosophy that you always allow people to create their own worlds. You
have an engine from which you simulate the world that the game is in.
You have the actual game, and you also have the freedom for creators to
create various, in Fortnite, islands of their own. With everything you
ship, that freedom to create is always there. That’s really interesting.

**莱克斯·弗里德曼：**
但在编辑器方面，这是一种非常迷人的哲学，你总是允许人们创造自己的世界。你有一个引擎，用来模拟游戏所在的世界。你有实际的游戏，你也给予创作者自由，让他们在《堡垒之夜》中创造各种属于自己的岛屿。你发布的每一件东西，都始终包含着创造的自由。这真的很有趣。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, and it’s something we aim to do more and more
fully over time. In the course of building Fortnite, we’ve built a lot
of other tools. They’re useful for us too because it’s not just a game
powered by Unreal Engine, but it’s also a social ecosystem where people
can make friends and voice chat and get together and party. So we’ve
opened up all of those social features into Epic Online services, and we
give them away to all developers for free because we all benefit from
growth and that user base. And our goal is ultimately to build the
company’s products and the same technology that we share with everybody
else, and to hope that foster a bigger and bigger ecosystem over time
where everybody benefits.

**蒂姆·斯威尼：**
是的，随着时间的推移，我们致力于做得越来越全面。在构建《堡垒之夜》的过程中，我们还构建了许多其他工具。它们对我们来说也很有用，因为它不仅仅是一款由虚幻引擎驱动的游戏，还是一个社交生态系统，人们可以在这里交朋友、语音聊天、聚会和派对。所以我们将所有这些社交功能开放到
Epic Online Services
中，并免费提供给所有开发者，因为我们都从用户群的增长中受益。我们的最终目标是构建公司的产品，并使用我们与其他人共享的相同技术，希望随着时间的推移，能够培育一个越来越大的生态系统，让每个人都受益。



<div class="dialogue-block">

**Lex Fridman:** If we could just linger on the 90s, so you said
bulletin boards, maybe you can explain what that’s like and also explain
the birth of the internet, what that was like. What was the internet
like in the 90s?

**莱克斯·弗里德曼：**
如果我们可以稍微停留在90年代，你说到电子布告栏系统，也许你可以解释一下那是什么样的，并且也解释一下互联网的诞生，那是什么样的。90年代的互联网是什么样的？



<div class="dialogue-block">

**Tim Sweeney:** So the internet is a funny thing. It started out as
this defense department research project called the ARPANET, the
Advanced Research Project Agency Network. And it was kind of like this
revered secret thing that became more and more open as they connected
universities. Universities connected to the internet in the mid-nineteen
eighties. And so if you’re at a prestigious institution with access to
computers, you could get on there, but the consumer back then, we just
had these modems, this thing you plug into your phone line and it dials
up on a phone number and then it sends wild sound effects over the
telephone line to send digital signals back and forth.

**蒂姆·斯威尼：**
所以互联网是个有趣的东西。它最初是国防部的一个研究项目，叫做ARPANET，即高级研究计划局网络。它有点像一个受人尊敬的秘密事物，随着大学的接入而变得越来越开放。大学在20世纪80年代中期接入了互联网。所以如果你在一所拥有计算机接入权限的著名机构，你就可以上网。但当时的消费者，我们只有这些调制解调器，就是那种你插到电话线上，然后拨打一个电话号码，然后它会通过电话线发送各种奇怪的音效来回传输数字信号的东西。



<div class="dialogue-block">

**Tim Sweeney:** And these were really slow. The first modem I had was
300 boards. That means 30 characters per second of data. So you’re
sitting there watching a sentence slowly emerge character by character
as you’re going online, but that’s how we got online and we talked with
each other. So you dial up to a local bulletin board, it’ll be run by a
person. Usually they have a computer or two sitting in their kitchen or
something that’s running the bulletin board, and they have a small
community of a few hundred users all competing to connect to that one
phone line. It was often busy and you couldn’t get in. And the more
popular bulletin boards were hardest to get to.

**蒂姆·斯威尼：**
而且这些速度非常慢。我拥有的第一个调制解调器是300波特。这意味着每秒传输30个字符的数据。所以你坐在那里，看着句子在你上网时逐字逐句地慢慢出现，但那就是我们上网和互相交流的方式。所以你拨号到一个本地的电子布告栏系统，它会由一个人运营。通常他们会有一两台电脑放在厨房或其他地方运行电子布告栏系统，他们有一个几百用户的小社区，都在争抢连接到那条电话线。它经常占线，你无法接入。越受欢迎的电子布告栏系统越难接入。



<div class="dialogue-block">

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。



<div class="dialogue-block">

**Tim Sweeney:** But you had all kinds of communities develop, and you
could see there was the programming communities where people talked
about programming. There was the news and events community. I lived in
the outskirts of Washington DC so that was a big thing. But then there
was the pirate community where they’re sharing pirated Apple II games
and very different community ethos and mantras out there, but all really
nice and also very small. These bulletin boards couldn’t grow to the
size of Facebook because your phone line couldn’t take that many calls.
And then later in the 1990s, the internet, which had been fostered in
these colleges that started opening up to the public and anybody could
connect to it. And suddenly the world took on life of its own. It became
much, much easier to reach a global audience faster.

**蒂姆·斯威尼：**
但是你发展出了各种各样的社区，你可以看到有编程社区，人们在那里谈论编程。有新闻和事件社区。我住在华盛顿特区郊区，所以那是个大事。但后来还有盗版社区，他们在那里分享盗版的
Apple II
游戏，社区的理念和信条也大相径庭，但都非常好，而且规模很小。这些BBS无法发展到Facebook的规模，因为你的电话线无法承受那么多的呼叫。然后在20世纪90年代后期，这些在大学里培育起来的互联网开始向公众开放，任何人都可以连接到它。突然之间，世界有了自己的生命。更快地接触到全球受众变得容易得多。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, it’s been a funny transition for the game
business. Epic started out making shareware games, distribute it
digitally, but as the first 3D games took off like Wolfenstein and Doom
from id Software, and then Unreal from us took off to reach a huge
audience of millions of users, we had to go into retail stores. So we
worked with a retail publisher and they made a box and they put CD-ROMs
in the box, and then the world started transitioning back to digitally.
And that transition didn’t start well, right? The initial transition of
gaming to digital was all but torrent, all piracy and the other horror
stories about games that would sell a hundred thousand copies but have 2
million users because most people pirated it.

**蒂姆·斯威尼：** 是的，对于游戏行业来说，这是一个有趣的转变。Epic
最初制作共享软件游戏，以数字方式分发，但随着第一批 3D 游戏，如 id
Software
的《德军总部》和《毁灭战士》的兴起，然后是我们的《虚幻》也兴起，吸引了数百万用户的庞大受众，我们不得不进入零售商店。所以我们与一家零售发行商合作，他们制作了包装盒，并在盒子里放入了
CD-ROM，然后世界开始向数字化转型。而这种转型开始得并不顺利，对吧？游戏向数字化的最初转型几乎全是
BT
下载，全是盗版，还有其他关于游戏卖出十万份却有两百万用户的恐怖故事，因为大多数人都盗版了它。



<div class="dialogue-block">

**Tim Sweeney:** And then Steam came along and introduced digital
distribution and made digital distribution of legit games so convenient
that most players moved away from piracy towards that, and their
practices were then followed by others, and the early digital industry
took form.

**蒂姆·斯威尼：** 然后 Steam
出现了，引入了数字分发，并使正版游戏的数字分发变得如此方便，以至于大多数玩家从盗版转向了它，他们的做法随后被其他人效仿，早期的数字产业由此形成。



## Indie game development

<div class="dialogue-block">

**Lex Fridman:** Yeah, it’s fascinating. I mean, pirates do lead the way
for innovation, the same as the story of Spotify. Basically, I think,
most people when they derive value from things like video games, want to
pay for those video games, they just want it to be easy. And so the same
thing with music, with Spotify. But maybe just staying on the 90s, there
are going to be a lot of indie game developers who will listen to us
talking today. Can you go back to that mindset and try to derive some
wisdom and advice to those folks when you were just a solo developer or
maybe just a small group of people creating your early games that
eventually became this huge gaming company. But in the early days, what
were you going through? What were the ups and downs? What did it take to
stay strong and persevere?

**莱克斯·弗里德曼：**
是的，这很迷人。我的意思是，盗版确实引领了创新之路，就像 Spotify
的故事一样。基本上，我认为，大多数人当他们从像视频游戏这样的东西中获得价值时，是愿意为这些视频游戏付费的，他们只是希望它能简单方便。音乐也是如此，Spotify
也是如此。但也许我们还是回到 90
年代，今天会有很多独立游戏开发者听我们谈话。你能回到当时的心态，为你早期只是一个独立开发者或者只是一个小团队创作游戏，最终发展成这家大型游戏公司的那些人，提炼一些智慧和建议吗？但在早期，你经历了什么？起起落落是什么样的？是什么让你保持坚强并坚持下去？



<div class="dialogue-block">

**Tim Sweeney:** Well, one of the critical things that Epic always
worked hard to do was to make something different that nobody else was
doing, and to try to satisfy a small audience rather than competing
globally with the game juggernauts. Back in the 1990s, Epic was new, but
Electronic Arts and Activision and the other big publishers had been
around for a decade, and they were huge companies. It had giant retail
distribution networks. If I tried to make a game and then convinced them
to publish it, I doubt I could have had a chance. And I doubt that even
if I had made a successful game, that I would’ve made much money from
it, though they might have. And so the really unique angle to Epic then
was shareware. And that was just the idea that if we distribute our game
differently, then we can reach a much larger audience than these bigger
competitors by virtue of this first episode of the game being free.

**蒂姆·斯威尼：** 嗯，Epic
一直努力做的一件关键事情是，创造一些与众不同的东西，一些别人没有在做的事情，并试图满足一小部分受众，而不是与全球游戏巨头竞争。早在20世纪90年代，Epic
还是一家新公司，但像艺电、动视和其他大型发行商已经存在了十年，它们都是规模庞大的公司，拥有庞大的零售分销网络。如果我试图制作一款游戏，然后说服他们发行，我怀疑我根本没有机会。而且我怀疑，即使我制作了一款成功的游戏，我也不会从中赚到多少钱，尽管他们可能会。所以当时
Epic
的真正独特之处在于共享软件。其理念就是，如果我们以不同的方式分发我们的游戏，那么凭借游戏第一集的免费，我们就能接触到比这些大型竞争对手更大的受众。



<div class="dialogue-block">

**Tim Sweeney:** It was kind of the advent of what later became free to
play. And the logic of that is just as true now as it was then. It’s, if
the thing is free and anybody can get into it, then it’s going to spread
from friend to friend as people bring their real world friends into the
games they’re playing and you have the opportunity to build up a
community around that. So the other lesson there was just minimize the
friction of people getting into your game, make it easy to get into and
make it fun. I think the other, well, I was very fortunate. ZZT was a
funny game. It was not much like any other game. It had much worse
graphics because it was all just text characters, smiley faces and other
Greek letters and things participating in this game simulation.

**蒂姆·斯威尼：**
这有点像后来免费游戏的开端。这种逻辑在当时和现在一样适用。也就是说，如果东西是免费的，任何人都可以接触到它，那么它就会在朋友之间传播，因为人们会把现实生活中的朋友带入他们正在玩的游戏中，你就有机会围绕它建立一个社区。所以另一个教训就是尽量减少人们进入你游戏的阻力，让它容易上手并且有趣。我想另一个，嗯，我很幸运。ZZT是一款有趣的游戏。它与其他任何游戏都不太一样。它的图形要差得多，因为它全是文本字符，笑脸和其他希腊字母之类的东西参与到这个游戏模拟中。



<div class="dialogue-block">

**Tim Sweeney:** They were kind of iconic representations of characters
rather than real ones. And this was decades into the age of real
graphical games with interesting graphics. And so it wasn’t even trying
to compete in that area, but it was able to compete in a different area,
which is that it wasn’t just the three games that I’d made and shipped
as a trilogy that were successful and drove the success of the product.
It was the fact that I released an editor and there was a whole
community around it. And you see that trend has repeated itself, like
there was, ZZT was one of it. Before that, there was Bill Budge’s
Pinball construction set. That was a 1980s Apple game that let users
build their own pinball tables. And since then, you’ve had some of the
world’s most successful games follow that path. Like Minecraft, you can
build your own stuff.

**蒂姆·斯威尼：**
它们更像是角色的标志性代表，而不是真实的角色。而这已经是拥有有趣图形的真实图形游戏时代几十年之后了。所以它甚至没有试图在那个领域竞争，但它能够在另一个领域竞争，那就是，不仅仅是我制作并作为三部曲发行的那三款游戏取得了成功并推动了产品的成功。而是我发布了一个编辑器，并且围绕它形成了一个完整的社区。你会看到这种趋势不断重复，比如，ZZT
就是其中之一。在此之前，还有比尔·巴奇的弹球构造集。那是一款 20 世纪 80
年代的苹果游戏，允许用户构建自己的弹球台。从那以后，一些世界上最成功的游戏都遵循了这条道路。比如《我的世界》，你可以构建自己的东西。



<div class="dialogue-block">

**Tim Sweeney:** Roblox, now Fortnite Creative and Unreal Editor for
Fortnite. Games that become platforms for other people to build stuff
was a real opportunity. I think the big thing to realize for indie
developers right now is there’s massive, massive competition in every
major genre, and it’s very unlikely that unless you just happen to be
the world’s best at a particular thing that you’re going to release a
game in an existing highly competitive genre and win. A much better
chance of success is in releasing something that hasn’t been done
before. Being really unique and reaching an audience, even if big or
medium size or small, reaching an audience and becoming really popular
with that, making some money from it, and being able to reinvest and
then expand towards your ultimate dream. I think the one shot go from
idea to commercial success at massive scale is a lot less likely than
the multistep process of continually build better and better stuff over
time until you get into a position of excellence.

**蒂姆·斯威尼：**
Roblox，现在是《堡垒之夜》创意模式和虚幻编辑器for《堡垒之夜》。那些成为其他人构建内容的平台的游戏，是一个真正的机会。我认为独立开发者现在需要认识到的一件大事是，每个主要类型都存在着巨大的竞争，除非你恰好在某个特定领域是世界顶尖的，否则你不太可能在一个现有竞争激烈的类型中发布游戏并获胜。成功的机会要大得多，在于发布一些以前从未做过的东西。要真正独特，并接触到受众，无论是大的、中等的还是小的受众，接触到受众并因此而广受欢迎，从中赚取一些钱，并能够再投资，然后朝着你的最终梦想扩展。我认为，从想法一步到位实现大规模商业成功的可能性，远不如通过多步骤过程，随着时间的推移不断构建越来越好的东西，直到你达到卓越的地位。



<div class="dialogue-block">

**Lex Fridman:** And constantly try to do something that others aren’t
doing.

**莱克斯·弗里德曼：** 并且不断尝试做一些别人没有在做的事情。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, that’s right. Because if you look at every
market, there’s a few markets where the current leader…

**蒂姆·斯威尼：**
是的，没错。因为如果你审视每一个市场，会发现有一些市场，其当前的领导者……



<div class="dialogue-block">

**Tim Sweeney:** Look at every market. There’s a few markets where the
current leader came late to the space, usually because the prior leader
failed so horribly. But most of the time the company that’s succeeding
and winning in a market is the first or second entrant there. They’ve
just continually buoyed their success.

**蒂姆·斯威尼：**
审视每一个市场。有一些市场，当前的领导者是后来才进入这个领域的，通常是因为之前的领导者失败得太惨。但大多数时候，在一个市场中取得成功并获胜的公司，是第一个或第二个进入者。他们只是不断地巩固自己的成功。



<div class="dialogue-block">

**Lex Fridman:** Great advice and fascinating. But on a human level, was
it lonely, was it scary, you sitting there as a developer?

**莱克斯·弗里德曼：**
很棒的建议，而且引人入胜。但在人性的层面上，你作为一名开发者坐在那里，会感到孤独、害怕吗？



<div class="dialogue-block">

**Tim Sweeney:** I’d say it was the opposite of lonely because the thing
that spurred me to actually release this was seeing kids playing the
game in my neighborhood and having fun and being like, “This is really
good.” And seeing them enjoying it and laughing and pointing at the
screen and getting together and just wanting to play more.

**蒂姆·斯威尼：**
我会说恰恰相反，一点也不孤独，因为真正促使我发布这个游戏的是看到邻居家的孩子们玩这个游戏，玩得很开心，并且说：“这个真好玩。”看到他们享受其中，欢笑，指着屏幕，聚在一起，并且想玩更多。



<div class="dialogue-block">

**Lex Fridman:** That’s awesome.

**莱克斯·弗里德曼：** 太棒了。



<div class="dialogue-block">

**Tim Sweeney:** And the human element was always pervasive because I
did not only receive orders, but people would actually write letters. We
wrote letters back then in the 1990s. People would say how much they
were enjoying the game and how their kids were playing the game and so
on and so on. So it felt very connected.

**蒂姆·斯威尼：**
人文因素始终无处不在，因为我不仅收到订单，人们还会真的写信。在20世纪90年代，我们还写信。人们会说他们多么喜欢这款游戏，他们的孩子如何玩这款游戏等等。所以感觉联系非常紧密。



<div class="dialogue-block">

**Tim Sweeney:** And I think a lot of businesses have to make scary
decisions because you’re spending potentially all of the money you have
to take a shot at something that you’re not sure will succeed. I was
very fortunate starting a business like this because it didn’t really
need any capital. The capital is well, it’s several thousand dollars in
computers I’d bought by mowing lawns. And it wasn’t much risk. If that
hadn’t succeeded, I guess I could have figured out how people get
mechanical engineering jobs and pursued that. But once it took off and
once the orders started coming in and people started writing letters
saying they were enjoying the game, I knew I was going to go all out and
try to build a company there and succeed and that was going to be my big
goal.

**蒂姆·斯威尼：**
我认为很多企业都必须做出可怕的决定，因为你可能会花掉你所有的钱去尝试一些你不确定会成功的事情。我很幸运能创办这样的企业，因为它并不真正需要任何资本。资本嘛，也就是我通过修剪草坪赚来的几千美元买的电脑。风险不大。如果那没有成功，我想我可能会想办法找份机械工程的工作，然后去追求那个。但一旦它成功了，订单开始涌入，人们开始写信说他们喜欢这款游戏，我就知道我要全力以赴，在那里建立一家公司并取得成功，那将是我的大目标。



## Unreal Engine

<div class="dialogue-block">

**Lex Fridman:** So I’m sure people know, but Epic Games was created in
1991 and went on to transform the gaming industry several times, one of
which is Unreal Engine. So let’s talk through the origin story of that.
You said that when Wolfenstein and Doom came out, that changed
everything, so take me to that moment.

**莱克斯·弗里德曼：** 我相信人们都知道，Epic Games 成立于 1991
年，并多次改变了游戏行业，其中之一就是虚幻引擎。那么让我们来谈谈它的起源故事。你说过当《德军总部》和《毁灭战士》问世时，一切都改变了，所以带我回到那个时刻。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, that was a very interesting time. Epic had, after
my first couple of games that had recruited developers, usually college
students, high school students who were just working on their own, had
real skills but didn’t have an outlet for their work, Epic had been
matchmaking the best artists and programmers together from all over the
world. Like Chaz Jackrabbit was Cliff Bleszinski, a high school kid in
California, had made a really cool adventure game together with Arjan
Brussee, a demo coder from Holland, who would make amazing graphical
stuff and had built a 2D game engine. They had connected them together,
and a musician, Robert Allen in California. And by telephone and modem
and so on we were building these little 2D games and having quite a lot
of success. There were a bunch of people making thousands of dollars a
month while they were still students in royalties from the games the
Epic was producing and by coordinating with people and publishing
through shareware.

**蒂姆·斯威尼：**
是的，那是一个非常有趣的时期。在我最初的几款游戏招募到开发者之后，他们通常是大学生、高中生，只是自己独立工作，拥有真正的技能但没有展示作品的渠道，Epic一直在将来自世界各地的顶尖艺术家和程序员撮合在一起。比如《爵士兔》的克里夫·布莱辛斯基，一个加州的高中生，与来自荷兰的演示程序员阿尔扬·布鲁西一起制作了一款非常酷的冒险游戏，阿尔扬能制作出令人惊叹的图形效果，并且构建了一个2D游戏引擎。他们将他们联系在一起，还有一位加州的音乐家罗伯特·艾伦。我们通过电话、调制解调器等方式制作这些小型2D游戏，并取得了相当大的成功。有一群人，当时还是学生，通过Epic制作的游戏的版税以及与人协调并通过共享软件发行，每月能赚取数千美元。



<div class="dialogue-block">

**Tim Sweeney:** And that was all going great. The company had a little
office and we were copying floppy disks and mailing them out. But when
Wolfenstein came out, we realized the future of gaming is going to be
3D. There had been a lot of experiments in 3D before that hadn’t been
great. There were 3D renderings of mazes that were not in real time, and
you were always looking north, south, east or west, and then there were
vector graphics with little wire frames moving around and things. But
Wolfenstein was the first game that was fast enough, running at 30
frames per second, it really felt immersive. It felt like you were
there. You were in this Castle Wolfenstein fighting Nazis. And that was
a really amazing and immersive experience.

**蒂姆·斯威尼：**
一切都进展顺利。公司有一个小办公室，我们复制软盘并邮寄出去。但当《德军总部》问世时，我们意识到游戏的未来将是3D的。在此之前有很多3D实验，但效果并不好。有一些迷宫的3D渲染不是实时的，你总是看着东、南、西、北，然后还有一些带有小线框移动的矢量图形之类的东西。但《德军总部》是第一款速度足够快的游戏，以每秒30帧的速度运行，它真的感觉身临其境。感觉就像你在那里。你在沃尔芬斯坦城堡里与纳粹作战。那真是一次非常棒的身临其境的体验。



<div class="dialogue-block">

**Tim Sweeney:** 3D graphics were pretty primitive then and software
followed shockingly fast with Doom, which was a much, much more capable
3D engine, which had stairs and though it was still what we call two and
a half D, it was environments that were very realistic, textures that
were very realistic, a form of lighting that was approximate, but
incredibly realistic. And just such great artistry and sound effects
that it feeled completely visceral and real. You might look at it today
from our point of view of a modern game player with 20 teraflops of
computing power in your device and say, “Oh, that’s not very
impressive.” But it was amazing at the time.

**蒂姆·斯威尼：**
当时的3D图形还相当原始，而软件以惊人的速度推出了《毁灭战士》，这是一个功能强大得多的3D引擎，它有楼梯，尽管它仍然是我们所说的2.5D，但它的环境非常逼真，纹理非常逼真，一种近似但极其逼真的光照形式。还有如此出色的艺术性和音效，让人感觉完全发自内心和真实。你今天可能会从一个拥有20万亿次浮点运算能力的现代游戏玩家的角度来看它，然后说：“哦，这没什么了不起的。”但它在当时是令人惊叹的。



<div class="dialogue-block">

**Lex Fridman:** I mean for me, just sorry to pause on that, I think
Wolfenstein was one of the most amazing moments of my own life. Just
being able to, like you said, in real time move about a
three-dimensional world. I just remember just moving around just in what
is that feeling like? I mean, you feel transported into another world.

**莱克斯·弗里德曼：**
我的意思是，对我来说，很抱歉打断一下，我认为《德军总部》是我生命中最令人惊叹的时刻之一。就像你说的，能够实时地在一个三维世界中移动。我只记得在那种感觉中四处走动，那是什么感觉？我的意思是，你感觉自己被传送到了另一个世界。



<div class="dialogue-block">

**Tim Sweeney:** You feel that you’re there.

**蒂姆·斯威尼：** 你感觉自己身临其境。



<div class="dialogue-block">

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。



<div class="dialogue-block">

**Tim Sweeney:** Especially when you turn the lights down in your room
and you turn the sound up on your speakers and it will scare you. And
you’ll feel like that fireball that’s coming at you is going to kill
you. That was an amazing time. Because we hadn’t experienced that
before. There was nothing like that. You’d watch a movie, a scary movie
or whatever. It was just this thing that was happening. This was you.
This was you in a 3D world.

**蒂姆·斯威尼：**
尤其是当你调暗房间的灯光，调大扬声器的音量时，它会吓到你。你会感觉那个向你飞来的火球会杀死你。那是一个令人惊叹的时代。因为我们以前从未体验过那种感觉。没有任何东西能与之相比。你看电影，恐怖电影或其他什么。那只是正在发生的事情。而这是你。这是你在一个3D世界里。



<div class="dialogue-block">

**Lex Fridman:** So how did that change Epic, this realization that the
future of gaming is going to be 3D?

**莱克斯·弗里德曼：**
那么，这种认识——游戏的未来将是3D的——是如何改变Epic的呢？



<div class="dialogue-block">

**Tim Sweeney:** Well, at first I was really depressed.

**蒂姆·斯威尼：** 嗯，起初我非常沮丧。



<div class="dialogue-block">

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。



<div class="dialogue-block">

**Tim Sweeney:** Because the wizardry of Doom especially was so
incredible that I gave up on programming for six months. I was like,
“I’m never be able to compete with this. I have no idea what we’re going
to do. We’ll just keep making 2D games and hope that the business goes
on.” But that was the nature of Carmack’s wizardry. He had done things
that were not just one innovation leap ahead, but a dozen
simultaneously, interplaying in a way that you couldn’t pick them apart
into their component pieces.

**蒂姆·斯威尼：**
因为《毁灭战士》的魔法，尤其是它的魔法，是如此不可思议，以至于我放弃了六个月的编程。我当时想：“我永远无法与之竞争。我不知道我们该怎么办。我们只能继续制作2D游戏，希望公司能继续下去。”但那就是卡马克魔法的本质。他所做的事情不仅仅是一次创新飞跃，而是同时进行了十几次，它们相互作用的方式让你无法将它们分解成各个组成部分。



<div class="dialogue-block">

**Tim Sweeney:** But funny thing happened, Michael Abrash, long timer in
computer graphics that wrote a book on the techniques for 3D graphics
and texture mapping, and he wrote some articles in one of the
programming magazines of the day and explained it and showed assembly
code to do texture mapping, drawing these 3D graphics on the screen, and
it was actually really simple stuff. I was like, “Oh, I can do that.”
And so a bunch of us at Epic independently went off and started writing
our own 3D graphics code to figure it out. And we found at one point we
had a number of people dabbling in this, doing different parts of it,
and at that point we decided, “Okay, 3D graphics and 3D gaming is going
to completely change the world. We need to go all in on this.” And so we
took the best people from our best 2D game development teams and put
them all together to make a 3D game. We didn’t really know what we were
doing at the time. None of us had ever chipped a 3D game and most of us
were still learning, but everybody was trying different disciplines to
see what they were best at. And it was a combination of a bunch of
people who came together to make Unreal.

**蒂姆·斯威尼：**
但有趣的事情发生了，迈克尔·阿布拉什，一位在计算机图形学领域工作了很长时间的人，他写了一本关于3D图形和纹理映射技术的书，并在当时的一家编程杂志上发表了一些文章，解释了它并展示了用于进行纹理映射、在屏幕上绘制这些3D图形的汇编代码，实际上那是非常简单的东西。我当时想，“哦，我能做到。”所以Epic的一些人独立地开始编写自己的3D图形代码来弄清楚。我们发现，一度有一些人涉足这个领域，做着不同的部分，在那时我们决定，“好吧，3D图形和3D游戏将彻底改变世界。我们需要全力以赴。”于是我们从我们最好的2D游戏开发团队中挑选了最优秀的人才，并将他们召集起来制作一款3D游戏。当时我们并不知道自己在做什么。我们中没有人制作过3D游戏，大多数人还在学习，但每个人都在尝试不同的学科，看看自己最擅长什么。最终，是一群人共同努力才制作出了《虚幻》。



<div class="dialogue-block">

**Lex Fridman:** Wow.

**莱克斯·弗里德曼：** 哇。



<div class="dialogue-block">

**Tim Sweeney:** Because everybody had wanted an awesome pinball game.
It was massively successful. But he was a multi-disciplinary person. He
wrote the code for the game, the art for the game, and did basically
everything. And the code was 30,000 lines of assembly language. And so
he was initially going to write the 3D engine and I was going to write
the editor and he sent me his code so I could integrate it into the
editor and it was like this giant pile of assembly code. I was like,
“Hmm. Why don’t I just write this myself?” And so James instead started
going off and building 3D models and 3D animations using the tools at
the time.

**蒂姆·斯威尼：**
因为每个人都想要一款超棒的弹球游戏。它取得了巨大的成功。但他是一个多学科的人才。他编写了游戏的代码，制作了游戏的艺术，基本上什么都做了。代码有3万行汇编语言。所以他最初打算编写3D引擎，而我打算编写编辑器，他把他的代码发给我，这样我就可以把它集成到编辑器中，结果那就像一大堆汇编代码。我当时想，“嗯。为什么我不自己写呢？”于是詹姆斯转而开始使用当时的工具构建3D模型和3D动画。



<div class="dialogue-block">

**Tim Sweeney:** And so Cliff had done a lot of design work and built
the levels on Jazz Jackrabbit, went off and started learning basics of
level design. And so I was writing this editor and Cliff Bleszinski was
customer number one for it, starting to go off and build levels, and
James Schmalz was joining awesome creatures, sending them to me, I’d get
them implemented in game. Then we brought in an animator to bring them
into life and we brought in more and more people until at the peak of
Unreal One development we had about 20 people working on it, which was a
huge team for the time, and it was really stretching Epic’s finances
nearly to the breaking point. We barely survived and almost ran out of
money a number of times, but somehow we always pulled through.

**蒂姆·斯威尼：**
克里夫做了很多设计工作，并在《爵士兔》上构建了关卡，然后开始学习关卡设计的基础知识。所以我当时在编写这个编辑器，克里夫·布莱辛斯基是它的头号客户，开始着手构建关卡，詹姆斯·施马尔茨则在加入一些很棒的生物，把它们发给我，我会把它们实现在游戏中。然后我们请来了一位动画师，让它们栩栩如生，我们又招募了越来越多的人，直到《虚幻1》开发高峰期，我们大约有20个人在做这个项目，这在当时是一个庞大的团队，这真的把Epic的财务推到了几乎崩溃的边缘。我们勉强生存下来，好几次差点没钱了，但不知何故我们总是挺过来了。



<div class="dialogue-block">

**Tim Sweeney:** And it was a crazy project because it was three and a
half years of development on a game that we always thought was six
months from shipping. And it was like three and a half years of 70 or 80
hour weeks for most everybody working on the project, not even knowing
what problems we’d need to solve next because we were so immersed in the
current ones.

**蒂姆·斯威尼：**
那是一个疯狂的项目，因为我们花三年半的时间开发一款我们一直认为离发售只有六个月的游戏。对于项目中的大多数人来说，那是三年半每周工作70或80个小时的日子，甚至不知道接下来需要解决什么问题，因为我们完全沉浸在当前的问题中。



<div class="dialogue-block">

**Lex Fridman:** Were there moments when you were losing hope that this
might take too long and the company will run out of money?

**莱克斯·弗里德曼：**
有没有那么一些时刻，你开始失去希望，觉得这可能会花费太长时间，公司会没钱了？



<div class="dialogue-block">

**Tim Sweeney:** We were always very financially stressed, so I was
continually worried about that. I had total confidence that we’d work
out all the technical and artistic problems because we knew the pieces
and it was largely a matter of typing code in and solving some problems.
And we knew we could ship a version of it. And the thing that was
continually really interesting was the ongoing discovery of new
techniques as we went. Because at the time Quake had shipped it had a
little bit of dynamic lighting, Unreal really pushed dynamic lighting
much higher than anybody else had done before, using colored dynamic
lights with some shadow casting capabilities statically or moving lights
without shadows and figured out how to do a volumetric fog so you could
have foggy areas that were full of lights and you get the kind of glow
of the lights standing out in the fog and affecting the appearance of
the level.

**蒂姆·斯威尼：**
我们一直面临着巨大的财务压力，所以我一直为此担忧。我完全相信我们能够解决所有的技术和艺术问题，因为我们知道各个组成部分，这很大程度上只是输入代码和解决一些问题的事情。而且我们知道我们可以发布一个版本。持续不断地发现新技术，这才是真正有趣的事情。因为当时《雷神之锤》发布时，它只有一点动态光照，《虚幻》则将动态光照推向了前所未有的高度，使用了带有静态阴影投射能力的彩色动态光，或者没有阴影的移动光，并且弄清楚了如何实现体积雾，这样你就可以拥有充满光线的雾区，你会看到光线在雾中发光，并影响关卡的外观。



<div class="dialogue-block">

**Tim Sweeney:** A whole lot of amazing techniques came together to
build a game that made a number of leaps ahead of the state of the art
at the time. Yeah, it was really crazy. But I think most companies
wouldn’t have survived that, but the sheer talent of the people involved
made it possible. And Epic has often done things that most companies
will have failed at and we succeed not because of awesome management or
awesome planning or awesome financing, but because of the sheer talent
and willpower of the people involved to make it happen.

**蒂姆·斯威尼：**
许多令人惊叹的技术汇集在一起，打造出了一款在当时的技术水平上取得了多项飞跃的游戏。是的，那真的很疯狂。但我认为大多数公司都无法挺过那段时期，但正是因为参与其中的人们拥有非凡的才华，才使得这一切成为可能。Epic
经常做一些大多数公司会失败的事情，而我们之所以成功，并非因为出色的管理、出色的规划或出色的融资，而是因为参与其中的人们拥有非凡的才华和意志力，才使得这一切得以实现。



<div class="dialogue-block">

**Lex Fridman:** What about the interdisciplinary aspect of it? Like you
said, sort of artists, engineers or programmers, designers, all of them
working together. What was that, the 20 people, what was the dynamic
there like working insane hours? What was it like to make a team like
that work together well as an orchestra to actually deliver the game?

**莱克斯·弗里德曼：**
那它的跨学科方面呢？就像你说的，艺术家、工程师或程序员、设计师，他们都在一起工作。那20个人，在疯狂工作的情况下，那里的动态是怎样的？让这样一个团队像管弦乐队一样良好合作，最终交付游戏，那是什么感觉？



<div class="dialogue-block">

**Tim Sweeney:** Yeah, that’s one of the really unique things that exist
in gaming. Not in normal big tech companies, which are just engineering
and business driven, but gaming really does require all of the best
people across all the creative disciplines working together. And Epic
had grown organically by recruiting people with awesome talent. We
always had a limited budget. We could never pay to bid up people with
salaries and hire them away by paying them more. We just had to find
awesome people who were at the beginning of their career and put them
together.

**蒂姆·斯威尼：**
是的，这是游戏领域中真正独特的事情之一。不像普通的大型科技公司，它们只是由工程和业务驱动，但游戏确实需要所有创意学科中最优秀的人才共同合作。Epic
是通过招募拥有卓越才能的人才有机发展起来的。我们一直预算有限。我们永远无法通过提高薪水来竞标人才，也无法通过支付更高的薪水来挖走他们。我们只能找到那些处于职业生涯起步阶段的优秀人才，并将他们聚集在一起。



<div class="dialogue-block">

**Tim Sweeney:** And so everybody was very new to this and didn’t have
any assumptions about how companies worked. And so you put all of these
people together and it was really a constant interplay of talent as
people were learning how to work together as a team. Nobody had
management experience. Most people hadn’t chipped a game before they
worked with Epic. And we were figuring it out as we went.

**蒂姆·斯威尼：**
所以每个人对这个都很陌生，对公司如何运作也没有任何先入为主的观念。所以你把所有这些人聚集在一起，这实际上是人才之间持续不断的相互作用，因为人们在学习如何作为一个团队一起工作。没有人有管理经验。大多数人在与Epic合作之前都没有制作过游戏。我们是一边做一边摸索的。



<div class="dialogue-block">

**Tim Sweeney:** But it was a constant iterative cycle. We’d make
several new versions of the game every day, be a new compile, introduce
a new feature or fix some bugs, get it to the artists, artists improve
their levels, continue building stuff, and then we see what they’re
doing in their levels and like, “Oh, I see what you need now.” We’d
constantly be improving the tools and just the iterative process and the
speed at which that improves products is the critical element to success
in games. The slower the iteration cycle, if you make a build every week
and you prove, you go through one iteration every week, you’re going to
be way way way worse by the end of your project than a game company that
makes new stuff every day. And that was the magic that happened together
and there was really nothing but passion and everybody’s individual
dedication to it that made it work.

**蒂姆·斯威尼：**
但这是一个持续的迭代循环。我们每天都会制作几个新版本的游戏，进行新的编译，引入新功能或修复一些错误，然后交给美术师，美术师改进他们的关卡，继续构建内容，然后我们会看到他们在关卡中做了什么，然后想：“哦，我现在明白你需要什么了。”我们会不断改进工具，而这种迭代过程以及它改进产品的速度，是游戏成功的关键因素。迭代周期越慢，如果你每周制作一个版本并进行验证，每周只进行一次迭代，那么到项目结束时，你的产品会比每天都制作新东西的游戏公司差得多得多。这就是共同发生的魔力，真正起作用的只有激情和每个人的奉献精神。



<div class="dialogue-block">

**Lex Fridman:** I heard you still program, but how much programming
were you doing back then? You mentioned the hours, probably insane
hours, so it’d be almost fun to talk about your setup, what a day in the
life of Tim Sweeney in the ’90 when you were building Unreal looked
like.

**莱克斯·弗里德曼：**
我听说你现在还在编程，但当时你做了多少编程工作？你提到了工作时间，可能是疯狂的工作时间，所以谈论你的工作环境，90年代你构建《虚幻》时蒂姆·斯威尼的一天是什么样的，可能会很有趣。



<div class="dialogue-block">

**Tim Sweeney:** Well, we’d all gravitated towards a work schedule that
maximized productivity. And that usually meant waking up late. Usually
we’d get to work around noon, usually work till like 2:00 A.M. or so,
3:00 A.M. sometimes.

**蒂姆·斯威尼：**
嗯，我们都倾向于一种能最大限度提高生产力的工作时间表。那通常意味着晚起。通常我们会在中午左右开始工作，一直工作到凌晨两点左右，有时是凌晨三点。



<div class="dialogue-block">

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。



<div class="dialogue-block">

**Tim Sweeney:** And I didn’t have anything else going on in my life so
it was really just work and sleep and occasional eating. I found I
always needed eight or nine hours of sleep a night. Without good sleep,
I would just become a zombie and wouldn’t be nearly at my best. So I
always needed to get sleep. But I didn’t need anything else going on.
The programming itself was so energizing and enthralling. So it was
three and a half years of that during the project. Mostly spent
programming. I would say probably 60 hours a week of programming, five
hours a week of coordinating with other people and iterating and sitting
down with them and looking at what’s going on on screen and figuring out
what they needed. Maybe five hours of business stuff. And there was a
good division of labor then. Didn’t have a big executive team, but it
was basically myself running the techno and development part of the
company and Mark Rein running the business part of it, doing deals and
maxing out his credit card and going around the world bringing in
sources of revenue to keep the company funded.

**蒂姆·斯威尼：**
我生活中没有其他事情，所以基本上就是工作、睡觉和偶尔吃饭。我发现我每晚总是需要八九个小时的睡眠。没有好的睡眠，我就会变成僵尸，状态远非最佳。所以我总是需要睡觉。但我不需要其他任何事情。编程本身就非常耗费精力，但也非常吸引人。所以项目期间有三年半都是这样。大部分时间都花在编程上。我想大概每周编程60个小时，每周5个小时用于与他人协调、迭代、与他们坐下来看看屏幕上发生了什么，弄清楚他们需要什么。也许还有5个小时的业务工作。当时分工明确。没有庞大的高管团队，基本上是我负责公司的技术和开发部分，马克·雷恩负责业务部分，谈生意，刷爆信用卡，满世界跑，为公司筹集资金以维持运营。



<div class="dialogue-block">

**Lex Fridman:** What programming language are we talking about? C? You
mentioned there’s this pile of assembly. What was your decision in
choosing the programming language that Unreal Engine would be written
in?

**莱克斯·弗里德曼：**
我们在谈论什么编程语言？C语言？你提到有一堆汇编代码。你选择用什么编程语言来编写虚幻引擎的决定是什么？



<div class="dialogue-block">

**Tim Sweeney:** I’d grown up learning with Pascal as my favorite
language.

**蒂姆·斯威尼：** 我从小学习 Pascal，那是我的最爱语言。



<div class="dialogue-block">

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。



<div class="dialogue-block">

**Tim Sweeney:** In order to just get maximum performance and get the
latest operating system features, I had to move to C for my second game,
Jill of the Jungle, little Nintendo-style platformer. And so when I
started Unreal Engine, it was on 16-bit windows using the C programming
language. And over the course of the first year moved to 32-bit, using
these DOS extenders and then using Windows NT, and I moved to the C++
language and just because it simplified the code so much went from a
really complicated pile of code to a much simpler one making that
transition. And so almost the entirety of Unreal Engine development,
about two and a half years of it, was all on C++, 32-bit, completely
state-of-the-art then. Like 32-bit protected mode was kind of a magical
thing having come from the days when computers were much less reliable
and crashed all the time.

**蒂姆·斯威尼：**
为了获得最佳性能并使用最新的操作系统功能，我不得不为我的第二款游戏《丛林吉尔》（一款小型任天堂风格的平台游戏）改用
C 语言。所以当我开始开发虚幻引擎时，它是在 16 位 Windows 上使用 C
语言编程的。在第一年的过程中，我转向了 32 位，使用了这些 DOS
扩展器，然后使用了 Windows NT，我转向了 C++
语言，仅仅因为它极大地简化了代码，从一堆非常复杂的代码变成了一个简单得多的代码，完成了这个过渡。所以几乎整个虚幻引擎的开发，大约两年半的时间，都是在
C++、32 位上进行的，当时这完全是最先进的技术。比如 32
位保护模式，在那个计算机可靠性差得多、经常崩溃的年代，这简直就像魔法一样。



<div class="dialogue-block">

**Lex Fridman:** Yeah and turned out to be a pretty good bet because C++
out of all of those languages ended up being the dominant
performance-oriented language that survives to this day.

**莱克斯·弗里德曼：**
是的，结果证明这是一个相当不错的赌注，因为在所有这些语言中，C++
最终成为主流的性能导向语言，并且一直沿用至今。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, yeah. It’s because it solves all the problems at
scale. Often through manual pain, but always solves them.

**蒂姆·斯威尼：**
是的，是的。因为它能大规模地解决所有问题。通常需要付出艰辛的努力，但总能解决它们。



<div class="dialogue-block">

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。



<div class="dialogue-block">

**Tim Sweeney:** And a lot of other languages do better in a lot of
theoretical aspects and are better for some usage cases, but you can’t
do everything and that’s very limiting.

**蒂姆·斯威尼：**
很多其他语言在许多理论方面做得更好，并且更适合某些使用场景，但你无法做到所有事情，这非常具有局限性。



<div class="dialogue-block">

**Lex Fridman:** All right, so ridiculous questions, but did you have
one monitor, two monitors? Were you picking on the keyboard?

**莱克斯·弗里德曼：**
好吧，所以有些荒谬的问题，但是你用一个显示器还是两个显示器？你对键盘有什么特别的要求吗？



<div class="dialogue-block">

**Tim Sweeney:** Okay.

**蒂姆·斯威尼：** 好的。



<div class="dialogue-block">

**Lex Fridman:** Were you picking on the chair? What are we talking
about? Let’s paint a picture.

**莱克斯·弗里德曼：** 你挑椅子吗？我们到底在说什么？让我们描绘一下情景。



<div class="dialogue-block">

**Tim Sweeney:** Okay. I went through a big transition there.

**蒂姆·斯威尼：** 好的。我经历了一个很大的转变。



<div class="dialogue-block">

**Lex Fridman:** Okay, great.

**莱克斯·弗里德曼：** 好的，太棒了。



<div class="dialogue-block">

**Tim Sweeney:** So I started out being pretty lazy. I had a bunch of, I
bought used computers because you would often get them at half the price
of a new one. They’d be good enough. So I had this old 486 I was
developing on, I guess it was a 15-inch monitor at the time. It was a
poor workstation setup but it was very economical. So as we started on
Unreal, I realized that I had to write a ton of code. I had to write at
absolute maximum productivity, so I had to rearrange my entire life
around delivering maximum output. And so at that point I realized
actually spending money on getting good equipment was a good investment.
And we’re not talking about millions of dollars here or billions if
you’re building a GPU farm, we’re just talking about buying some basic
hardware. And so I bought the biggest CRT you could buy at the time,
because this was a CRT. It was 24 inches, it weighed like a 100 pounds.
I had back pain for a week after I installed it. But it got me 1920 by
1200.

**蒂姆·斯威尼：**
所以我一开始挺懒的。我有一堆……我买的是二手电脑，因为通常你能以新电脑一半的价格买到它们。它们也够用了。所以我当时用一台旧的486开发，我想那时候用的是15英寸的显示器。那是个简陋的工作站配置，但非常经济。所以当我们开始开发《虚幻》的时候，我意识到我必须写大量的代码。我必须以绝对最高的效率来写，所以我必须重新安排我的整个生活，以实现最大的产出。在那时我意识到，花钱买好设备其实是一项很好的投资。我们这里说的不是数百万美元，也不是如果你要建GPU集群的话数十亿美元，我们只是说买一些基本的硬件。所以我买了当时能买到的最大的CRT显示器，因为那时候还是CRT。它有24英寸，重约100磅。我装上它之后背疼了一个星期。但它让我拥有了1920x1200的分辨率。



<div class="dialogue-block">

**Lex Fridman:** Wow. Nice.

**莱克斯·弗里德曼：** 哇。不错。



<div class="dialogue-block">

**Tim Sweeney:** View in 1996.

**蒂姆·斯威尼：** 1996年的视野。



<div class="dialogue-block">

**Lex Fridman:** State of the art.

**莱克斯·弗里德曼：** 顶尖水平。



<div class="dialogue-block">

**Tim Sweeney:** In 1996 that was pretty cool. So I’d upgraded to a 90
megahertz Pentium and did a of programming on that. It was on the 90
megahertz print. These were the main consumer computers at the time and
I’d optimized the Unreal Engine software renderer on that. The Pentium
was the first superscaler architecture in consumer computing. It could
run up to two instructions a time. And if you wrote your assembly code
very carefully, you could get absolute maximum throughput. So I’d gotten
my texture mapping code down to six CPU cycles, comprising 11
instructions, and that was required for every pixel on the screen, and
that was just enough performance to deliver that. But Dell came out with
these new workstations and Intel had just launched the Pentium Pro, the
first out of order processor. And so I basically bought the absolute
maximum configuration that money can buy. It cost \$7,000. I had a
gigabyte of memory in 1996.

**蒂姆·斯威尼：**
在1996年，那已经相当酷了。所以我升级到了一台90兆赫的奔腾处理器，并在上面进行编程。它是在90兆赫的奔腾上运行的。这些是当时主流的消费级计算机，我还在上面优化了虚幻引擎的软件渲染器。奔腾是消费级计算中第一个超标量架构。它一次最多可以运行两条指令。如果你非常仔细地编写汇编代码，就能获得绝对最大的吞吐量。所以我把我的纹理映射代码优化到了6个CPU周期，包含11条指令，屏幕上的每个像素都需要这些，而这恰好能提供足够的性能来实现这一点。但戴尔推出了这些新的工作站，英特尔也刚发布了奔腾Pro，这是第一款乱序处理器。所以我基本上买了当时能买到的最高配置。花了7000美元。我在1996年拥有1GB的内存。



<div class="dialogue-block">

**Lex Fridman:** Wow.

**莱克斯·弗里德曼：** 哇。



<div class="dialogue-block">

**Tim Sweeney:** And a 200 megahertz CPU. So it tripled the speed of
compiles and just made me massively more productive. So that’s what I
was using throughout Unreal Engine development and chipped with that.

**蒂姆·斯威尼：**
还有一个200兆赫的CPU。所以它使编译速度提高了三倍，让我变得效率极高。这就是我在整个虚幻引擎开发过程中使用的配置，并用它完成了开发。



<div class="dialogue-block">

**Lex Fridman:** By the way, people in the ’90s would’ve been blown away
by this workstation. I love it. Yeah, yeah. In writing, were you
considering the hardware much? Was there a sense, so for people who
don’t know Unreal Engine, rendering, I guess, is all software. Doesn’t
use the hardware. But were you trying to optimize, as I understand,
maybe you can correct me, but were you trying to optimize to the
hardware at all?

**莱克斯·弗里德曼：**
顺便说一句，90年代的人看到这个工作站一定会惊呆的。我喜欢。是的，是的。在写作时，你是否会过多考虑硬件？是否有这样一种感觉，对于那些不了解虚幻引擎的人来说，渲染，我想，完全是软件的。不使用硬件。但据我所知，你是否试图优化，也许你可以纠正我，但你是否试图针对硬件进行优化？



<div class="dialogue-block">

**Tim Sweeney:** Well, at the time. So we did most Unreal Engine
development before the first real GPUs came out. The 3dfx Voodoo 1, the
first GPU that actually delivered serious performance compared to
software rendering, the first GPU that was really gainful came in in the
end of the development and we supported it really quickly, but it was
not the target all along. And so development was focused on just
building. There are two parts of the engine. There’s all of the gameplay
systems that manage the simulation and physics and so on. That’s all
written in very high level C++ code. And maintainability is as much of a
goal as performance because we had to build massive amounts of systems
over time.

**蒂姆·斯威尼：** 嗯，当时是这样的。我们在第一批真正的 GPU
问世之前就完成了大部分虚幻引擎的开发工作。3dfx Voodoo 1
是第一款与软件渲染相比能提供真正强大性能的 GPU，第一款真正有用的 GPU
是在开发后期才出现的，我们很快就支持了它，但它一直都不是我们的目标。因此，开发重点是构建。引擎有两个部分。一部分是管理模拟、物理等所有游戏系统。这都是用非常高级的
C++
代码编写的。可维护性与性能同等重要，因为我们必须随着时间的推移构建大量的系统。



<div class="dialogue-block">

**Tim Sweeney:** But one thing that was really bottleneck was graphics.
The cost of rendering a single pixel was really high, and so you had to
do everything you possibly could to optimize the rendering of pixels on
screen. And so we were talking about how many CPU cycles. When you say
your CPU runs at a gigahertz or whatever, it’s a billion instructions
per second. How many instructions do you need to run to get a pixel on
screen? And so there was a constant challenge to optimize that down. And
there was also a competition among all of the graphics programmers who’d
often send emails bragging to each other about what new technique
they’ve discovered to try to get the cost down. And Abrash’s original
articles took 12 CPU cycles to render a pixel and everybody else had
figured out how to get it to down to six or sometimes even four cycles.
That involved lots of different trade-offs of caching and memory
hierarchy and so on.

**蒂姆·斯威尼：**
但真正瓶颈的是图形。渲染单个像素的成本非常高，所以你必须尽一切可能优化屏幕上像素的渲染。所以我们讨论的是需要多少CPU周期。当你说你的CPU运行在千兆赫兹或其他频率时，那意味着每秒十亿条指令。你需要运行多少条指令才能在屏幕上显示一个像素？所以不断面临着将其优化的挑战。所有图形程序员之间也存在竞争，他们经常互相发送电子邮件，吹嘘自己发现了什么新技术来降低成本。阿布拉什最初的文章需要12个CPU周期来渲染一个像素，而其他人已经想办法将其降低到6个，有时甚至4个周期。这涉及到缓存、内存层次结构等许多不同的权衡。



<div class="dialogue-block">

**Tim Sweeney:** It was just like a magical time where a human could
actually understand exactly what the CPU was doing under the hood and
could write code that exactly targeted that. And that’s largely lost
now. When we talk about optimization in software now, it’s largely about
heuristics and statistically this memory access is likely to hit the
cache and this algorithm is faster than that algorithm because CPUs now
have such advanced out-of-order execution that you really can’t
micromanage what’s happening on an instruction-by-instruction basis. You
can only manage the aggregate performance of code. And so there’s kind
of this lost art. Some people miss it, some people don’t, in which the
programmer had absolute control over the machine and could work miracles
in special cases if you tried.

**蒂姆·斯威尼：**
那真是一个神奇的时代，人类居然能确切地理解CPU底层在做什么，并且能编写出精确针对其的代码。而现在这种能力基本上已经失传了。我们现在谈论软件优化，很大程度上是关于启发式方法，以及统计上这个内存访问可能会命中缓存，这个算法比那个算法快，因为现在的CPU拥有如此先进的乱序执行能力，你根本无法在指令级别上微观管理正在发生的事情。你只能管理代码的整体性能。所以这有点像一种失传的艺术。有些人怀念它，有些人则不然，在那时，程序员对机器拥有绝对的控制权，如果你努力尝试，在特殊情况下甚至可以创造奇迹。



<div class="dialogue-block">

**Lex Fridman:** It seems like there’s still value to that art when it
comes to GPUs and ASICs. So basically trying to understand the nuances
of the hardware and how to truly, truly optimize it, whether it’s for
machine learning applications or for ultra-realistic real-time graphics
applications. Is that true?

**莱克斯·弗里德曼：**
在GPU和ASIC方面，这种艺术似乎仍然有其价值。所以基本上，就是要努力理解硬件的细微差别，以及如何真正地优化它，无论是用于机器学习应用还是超逼真的实时图形应用。这是真的吗？



<div class="dialogue-block">

**Tim Sweeney:** Yeah, that’s absolutely so. The optimization problems
have just moved around.

**蒂姆·斯威尼：** 是的，绝对是这样。优化问题只是转移了阵地。



<div class="dialogue-block">

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。



<div class="dialogue-block">

**Tim Sweeney:** In a system like Nanite, the virtualized micropolygon
geometry system that Brian Karis, a brilliant engineer with Epic built,
was just one of those multi-year optimization efforts that required him
understanding everything from the highest levels to the lowest levels of
the hardware to figure out how to make this breakthrough technique work
in a way that was actually maximally performant on GPUs.

**蒂姆·斯威尼：** 在像 Nanite 这样的系统中，这是 Epic
的一位才华横溢的工程师布莱恩·卡里斯构建的虚拟化微多边形几何系统，它就是那些需要多年优化努力的项目之一，要求他理解从硬件的最高层到最低层的一切，才能弄清楚如何使这种突破性技术以在
GPU 上实际达到最佳性能的方式工作。



<div class="dialogue-block">

**Lex Fridman:** And so Nanite is the system, will jump around in time.
That takes us to today with Unreal Engine 5, that’s the system that does
the geometry.

**莱克斯·弗里德曼：** 所以 Nanite
就是这个系统，我们会跳跃时间。这带我们来到今天的虚幻引擎5，这就是处理几何体的系统。



<div class="dialogue-block">

**Tim Sweeney:** Yeah.

**蒂姆·斯威尼：** 是的。



<div class="dialogue-block">

**Lex Fridman:** So rendering the world sort of geometrically. There’s
many layers to this. We’ll probably talk, sneak up to each of those, but
one, you have to actually create the geometry of the world around you
and do that in real time and really efficiently and there’s a bunch of
different ways to optimize that. Can you just speak to it?

**莱克斯·弗里德曼：**
所以，在几何上渲染世界。这有很多层面。我们可能会谈到，逐个探讨，但首先，你必须实时且高效地创建你周围世界的几何形状，并且有很多不同的方法来优化它。你能谈谈这个吗？



<div class="dialogue-block">

**Tim Sweeney:** Yeah. With the advanced art tools we have today, it’s
really easy to create a scene with billions of polygons. The hard part
is how to render it efficiently, because you can’t render billions of
polygons in a frame. Basically, you want to render an image that’s
indistinguishable from the full detailed geometry, if you rendered it,
at ridiculous cost. And so the challenge is how to simplify every
component of the rendering, the geometry, the lighting, and so on down
to real time techniques. They’re efficient. they capture a realistic
view of what’s around you. And so when an object is up close to you, you
want to render it with a lot more polygons than when it’s far away. But
one of the cool principles of mathematics is the Nyquist sampling
theorem that says if you’re trying to reconstruct a signal, there’s a
limit to the amount of data you need to bother capturing. If you want to
render a texture at a certain resolution, then you never need more than
twice the pixels than in the texture that you have on the screen. And
that’s called the Nyquist limit.

**蒂姆·斯威尼：**
是的。凭借我们今天拥有的先进美术工具，创建包含数十亿个多边形的场景非常容易。困难的部分是如何高效地渲染它，因为你无法在一帧内渲染数十亿个多边形。基本上，你希望渲染一个与完整详细几何体（如果以极高的成本渲染出来的话）无法区分的图像。因此，挑战在于如何将渲染的每个组件（几何体、光照等）简化为实时技术。它们是高效的，能够捕捉到你周围环境的逼真视图。因此，当一个物体靠近你时，你希望用比它远离时更多的多边形来渲染它。但数学中一个很酷的原则是奈奎斯特定理，它指出，如果你试图重建一个信号，你需要捕获的数据量是有限的。如果你想以特定分辨率渲染纹理，那么你永远不需要超过屏幕上纹理像素数量两倍的像素。这就是所谓的奈奎斯特极限。



<div class="dialogue-block">

**Tim Sweeney:** And so one of the challenges of computer graphics is
given the need to render objects at extreme close-up distances and
extreme far away distances, you always want to be able to generate the
right amount of geometry so that you have enough to be indistinguishable
from reality, but not any more than necessary. And with geometry, the
idea is that if you render two triangles per pixel, you should get an
image that is indistinguishable from thousands of triangles per pixel.
If you render less than two triangles per pixel, you’re going to start
to see visible artifacts of the loss.

**蒂姆·斯威尼：**
因此，计算机图形学的一个挑战是，鉴于需要在极近距离和极远距离渲染物体，你总是希望能够生成适量的几何体，以便拥有足够的细节，使其与现实无法区分，但又不多于必要。在几何体方面，其理念是，如果你每像素渲染两个三角形，你应该得到一个与每像素数千个三角形无法区分的图像。如果你每像素渲染少于两个三角形，你就会开始看到明显的失真。



<div class="dialogue-block">

**Tim Sweeney:** And GPUs have this amazing hardware in a lot of
different pipelines, but it’s all very fixed function. There’s pixel
shader hardware, there’s geometry processing hardware, and then there’s
triangle rasterization hardware. And one of the limits of GPUs is that
the triangle rasterizers are built for pretty large triangles. If you’re
building a triangle or rendering a triangle with 10 pixels, that’s
pretty efficient. But if you’re building or rendering a triangle with
one pixel, it’s very inefficient. So one of the breakthroughs Brian made
was to design an entire pipeline for avoiding the rasterization hardware
in the GPU and just going straight to pixels and calculating what should
be done with that pixel as a result of some ray tracing and geometry
intersection calculations done in a pixel shader. So instead of using
the triangle pipeline, we’re just using pixel pipeline.

**蒂姆·斯威尼：**
GPU在许多不同的管线中都拥有这种令人惊叹的硬件，但它们都是非常固定的功能。有像素着色器硬件，有几何处理硬件，然后是三角形光栅化硬件。GPU的一个限制是三角形光栅化器是为相当大的三角形构建的。如果你正在构建或渲染一个包含10个像素的三角形，那是相当高效的。但是如果你正在构建或渲染一个只包含一个像素的三角形，效率就非常低。所以布莱恩取得的突破之一是设计了一个完整的管线，以避免GPU中的光栅化硬件，而是直接处理像素，并通过在像素着色器中进行一些光线追踪和几何相交计算来确定该像素应该如何处理。所以我们不再使用三角形管线，而是直接使用像素管线。



<div class="dialogue-block">

**Lex Fridman:** Wow.

**莱克斯·弗里德曼：** 哇。



<div class="dialogue-block">

**Tim Sweeney:** And getting a better result.

**蒂姆·斯威尼：** 并且得到更好的结果。



<div class="dialogue-block">

**Lex Fridman:** Because of the limitations of the triangle rasterizer
in the GPUs. That’s fascinating. Because as you described, you need the
tiny triangles for the detail for the stuff that’s up close. I mean,
this might seem obvious to people, but it’s not just stuff up close.
It’s like it depends where you’re looking. The human eye and the human
focus and the human attention mechanism defines how much detail you want
to show because the thing that the human is likely to be giving
attention to, you want that to be super high resolution and everything
else, including due to distance, can have less geometry and less
texture, less information in it.

**莱克斯·弗里德曼：**
因为GPU中三角形光栅器的限制。这太迷人了。因为正如你所描述的，你需要微小的三角形来表现近处物体的细节。我的意思是，这可能对人们来说显而易见，但这不仅仅是近处的东西。这取决于你看向哪里。人眼、人的焦点和人的注意力机制决定了你想要显示多少细节，因为人可能关注的东西，你希望它是超高分辨率的，而其他一切，包括由于距离的原因，可以拥有更少的几何形状、更少的纹理和更少的信息。



<div class="dialogue-block">

**Tim Sweeney:** Yeah. Yeah, that’s right. But there’s a lot of
challenges like that. It turns out it’s a lot easier to render one frame
that looks perfect than it is to render a series of frames in motion
that look perfect. A lot of the problems with the earlier algorithms
that aspired to do the sort of things was popping. You’d be running some
number of triangles for a while and then you’d switch to a different
number of triangles and you’d see a visible transition and the screen
would look like it got shaken up. It’s a disturbing artifact that
distracts you from the game. So one of the magical trade-offs of Nanite
was how to avoid all of the visible transitions and get them down to a
point where though they exist statistically, they’re not really
perceptible to a person looking at it.

**蒂姆·斯威尼：**
是的。是的，没错。但有很多类似的挑战。事实证明，渲染一帧看起来完美的图像要比渲染一系列看起来完美的运动帧容易得多。早期那些试图做类似事情的算法，很多问题在于“跳变”。你可能会运行一定数量的三角形一段时间，然后切换到不同数量的三角形，你会看到一个明显的过渡，屏幕看起来像是被抖动了。这是一种令人不安的瑕疵，会让你从游戏中分心。所以Nanite的神奇权衡之一就是如何避免所有这些可见的过渡，并将它们降低到一个虽然在统计上存在，但对于观察者来说几乎察觉不到的程度。



<div class="dialogue-block">

**Lex Fridman:** You look at something like Nanite, I mean, there’s a
nice blog post, there’s nice descriptions about the details, but you can
tell even under the details, there’s just incredible engineering that
goes on. It’s so cool. It’s so cool how underneath this, the actual
experience of beautiful detailed scenery, there’s just incredible
engineering to bring to you simulation, ultra realistic simulation, of
reality in real time, like lights changing everything. And then it just
takes you back to that feeling I had with Wolfenstein, but more. And you
can completely lose yourself in that world, and you would forget that
this real world exists. What is the real world anyway? So that coupling
of great engineering and great storytelling in terms of just feeling is
super cool. It’s great to know. It’s great to know that there’s these
teams behind it. And it’s cool that you’re also releasing a bunch of
details around it, at least for folks like me. It’s inspiring to see.

**莱克斯·弗里德曼：** 你看像 Nanite
这样的东西，我的意思是，有一篇不错的博客文章，有一些关于细节的很好描述，但即使在细节之下，你也能看出其中蕴含着令人难以置信的工程技术。这太酷了。在这背后，在美丽细致的风景的实际体验之下，竟然有如此令人难以置信的工程技术，为你带来实时的、超逼真的现实模拟，比如光影变幻一切。然后它就把你带回到我对《德军总部》的那种感觉，但更强烈。你可以完全沉浸在那个世界里，你会忘记这个真实世界的存在。真实世界到底是什么？所以，这种卓越工程与卓越叙事在感觉层面的结合，非常酷。知道这一点很好。知道背后有这些团队很好。而且你还发布了很多相关的细节，至少对像我这样的人来说，这很鼓舞人心。



## Technical details of Unreal Engine

<div class="dialogue-block">

**Tim Sweeney:** Unreal Engine is this fascinating creation. It’s a big,
bold, crazy bet that you’ve made. Maybe it’s good to actually explain
what Unreal Engine is for people sort of outside this world. I would say
it transformed the gaming industry. But that was a big bet in 1995, that
most of the effort would be on creating the gaming engine, not the game.

**蒂姆·斯威尼：**
虚幻引擎是一个引人入胜的创造物。这是你下的一个巨大、大胆、疯狂的赌注。也许最好向这个世界之外的人解释一下虚幻引擎是什么。我会说它改变了游戏行业。但在1995年，那是一个巨大的赌注，即大部分努力将用于创建游戏引擎，而不是游戏本身。



<div class="dialogue-block">

**Tim Sweeney:** Yeah. A new engine is a big bundle of code and tools, a
huge software package that provides all the functions you need to build
any sort of a 3D graphics application. Game developers use it to make
games and that’s the predominant use. But it’s also used in Hollywood
film and television production to create 3D scenery in real time for
production sets, to do a pre-visualization. It’s used by car makers to
visualize their cars before they’re constructed or manufactured. It’s
used by architects to preview buildings before they’re made and
industrial designers of all sorts. And it provides all of the 3D
simulation features you need, both for creating highly realistic 3D
graphics, but also physics and interactions between objects and making
things happen like you might see in the real world. And supports a huge
variety of styles, from Pixar stylized movies to cell shading to
photorealism. And it can be used for anything that needs real-time 3D
graphics.

**蒂姆·斯威尼：**
是的。一个新的引擎是一个包含大量代码和工具的庞大软件包，它提供了构建任何类型的3D图形应用程序所需的所有功能。游戏开发者用它来制作游戏，这是最主要的应用。但它也用于好莱坞电影和电视制作，为制作场景实时创建3D布景，进行预可视化。汽车制造商用它来在汽车建造或制造之前对其进行可视化。建筑师用它来在建筑物建成之前预览，各种工业设计师也使用它。它提供了你需要的所有3D模拟功能，既可以创建高度逼真的3D图形，也可以模拟物理效果、物体之间的交互以及实现你在现实世界中可能看到的各种现象。它支持各种风格，从皮克斯风格的动画电影到卡通渲染再到照片级写实。它可以用于任何需要实时3D图形的领域。



<div class="dialogue-block">

**Lex Fridman:** Including humans that populate those three-dimensional
worlds. And we’ll probably talk a bunch of the details involved in the
process of creating ultra realistic humans, because we humans care about
how other humans look and how they convey emotion and express, how they
speak, all that kind of stuff. But so yes, it’s the 3D objects that are
static, the 3D objects that are dynamic, and on the dynamic front,
including humans that are ultra dynamic.

**莱克斯·弗里德曼：**
包括居住在那些三维世界中的人类。我们可能会谈论很多关于创造超逼真人类过程中涉及的细节，因为我们人类关心其他人类的外表，他们如何传达情感和表达，他们如何说话，所有这些。但是，是的，它是静态的3D对象，动态的3D对象，而在动态方面，包括超动态的人类。



<div class="dialogue-block">

**Tim Sweeney:** So all of that. You have to create this engine that’s
simulates that world, this beautiful world that we know and love. But
you’re early, so here you see Doom and you’re trying to create this
world and trying to create an engine that would not just power Unreal
the video game, but future video games. So how do you go about it? What
are you thinking? And I should sort of linger on that. That is a crazy
bet that we’re going to build an engine as a company.

**蒂姆·斯威尼：**
所以所有这些。你必须创建这个引擎来模拟那个世界，这个我们熟悉并热爱的美丽世界。但你起步很早，所以你看到了《毁灭战士》，然后你试图创造这个世界，并试图创建一个不仅能驱动《虚幻》这款视频游戏，还能驱动未来视频游戏的引擎。那么你是如何着手的呢？你在想什么？我应该稍微停留一下。作为一个公司，我们要构建一个引擎，这是一个疯狂的赌注。



<div class="dialogue-block">

**Tim Sweeney:** Yeah. Well, the philosophy began with ZZT and continued
onward. We’re not just building a game for players to play. We’re also
building tools that could be used for building that game or any other
game and catering to all of the artists and designers who had used the
tool. And so that philosophy started at the very early parts of Uinreal
development. I was building the tools for level designers like Cliff
Bleszinksi and artists like James Schmalz. And as we began marketing the
game, thinking it was six months away, we were constantly releasing
screenshots and things like that. Other companies started calling us and
saying they wanted to build 3D games too, but they didn’t have the
expertise for that and they wanted to license our 3D engine.

**蒂姆·斯威尼：**
是的。嗯，这种理念始于ZZT并一直延续下去。我们不仅仅是为玩家制作游戏。我们也在构建可以用于制作该游戏或任何其他游戏的工具，并服务于所有使用过该工具的美术师和设计师。所以这种理念在虚幻引擎开发的最初阶段就开始了。我当时在为像克里夫·布莱辛斯基这样的关卡设计师和像詹姆斯·施马尔茨这样的美术师构建工具。当我们开始营销这款游戏，以为它还有六个月就要发布时，我们不断地发布截图之类的东西。其他公司开始联系我们，说他们也想制作3D游戏，但他们没有这方面的专业知识，他们想授权使用我们的3D引擎。



<div class="dialogue-block">

**Tim Sweeney:** And this was one of the coolest pivots in Epic’s
history. MicroProse called up Mark Rein, our pice President and long
time business guy, and said they wanted to license our engine. And Mark
Rein was like, “What? You what you want to license what? An engine? What
engine?” And they explained to him what they wanted to license. He said,
“Oh, that engine. Yeah, yeah, that’s very expensive.”

**蒂姆·斯威尼：**
这是Epic历史上最酷的转折之一。MicroProse打电话给我们的副总裁、资深商务人士马克·雷恩，说他们想授权我们的引擎。马克·雷恩当时就像，“什么？你……你想授权什么？引擎？什么引擎？”他们向他解释了他们想授权的东西。他说，“哦，那个引擎。是的，是的，那非常贵。”



<div class="dialogue-block">

**Tim Sweeney:** But this was one of the critical things that kept Epic
going through that three and a half years. We were starting to license
our engine out to other developers. MicroProse took two licenses and we
got in half a million dollars from that. And a company, GT Interactive,
licensed our engine to build another game and we got paid for that. And
so we had this revenue stream funding the development of Unreal Engine
from other games that were being built by other developers. And because
they were the lifeline for the company, we took the engine business very
seriously from the start. We set up mailing lists so that our partners
could ask us questions. And all the developers and artists working on
our games were participating in helping customers. Everybody took that
very seriously because it was our funding source. And that’s kind of set
this dual spirit of Epic of building technology and supporting game
developers simultaneous with building games and supporting gamers. It’s
continued onward and just grown over time.

**蒂姆·斯威尼：**
但这是让Epic在那三年半时间里坚持下来的关键因素之一。我们开始将我们的引擎授权给其他开发者。MicroProse拿了两个授权，我们从中获得了五十万美元。还有一家公司，GT
Interactive，授权了我们的引擎来制作另一款游戏，我们也因此获得了报酬。所以我们有这个收入来源，通过其他开发者制作的其他游戏来资助虚幻引擎的开发。因为他们是公司的生命线，所以我们从一开始就非常认真地对待引擎业务。我们建立了邮件列表，以便我们的合作伙伴可以向我们提问。所有参与我们游戏开发的开发者和美术师都参与帮助客户。每个人都非常认真地对待这件事，因为那是我们的资金来源。这有点确立了Epic的双重精神：在构建游戏和支持游戏玩家的同时，构建技术并支持游戏开发者。这种精神一直延续至今，并且随着时间的推移不断发展壮大。



## Constructive solid geometry

<div class="dialogue-block">

**Lex Fridman:** Can you just go back to that, you programming. What are
some interesting technical challenges you had to overcome? You mentioned
dynamic lighting, create this three-dimensional world and try to figure
out the puzzle of how you actually do that at a time when nobody,
Carmack and you, doing this kind of thing. It’s a totally open Wild
West. So what are some interesting technical challenges you have to try
to solve?

**莱克斯·弗里德曼：**
你能回到那个时候，你编程的时候吗？你必须克服哪些有趣的技术挑战？你提到了动态光照，创造这个三维世界，并试图弄清楚在一个没有人——卡马克和你——做这种事情的时代，你实际上是如何做到的。那完全是一个开放的西部荒野。那么你必须尝试解决哪些有趣的技术挑战呢？



<div class="dialogue-block">

**Tim Sweeney:** There’s a lot. Some of them are visible on screen and
some are behind the scenes and still require a lot of innovation. All of
the graphical techniques were really interesting challenges. And Unreal
Engine in those early days went a lot further than the Quake engine and
building environments using constructive solid geometry with a real-time
editor. And that was a really interesting technical challenge. The idea
is building is extremely tedious if you are only adding objects to the
world. If you want to build a door, then you need to add like a dozen
different pieces of door frames and add a bunch of different walls
together to fit together in the right shape. It sure would be easier if
you could just start with a wall and subtract the door out. And so we
had this way of adding geometry to the world and subtracting geometry
and the engine would perform all of the calculations on that. And this
is something that I’d been anticipating was possible for-

**蒂姆·斯威尼：**
有很多。有些在屏幕上可见，有些则在幕后，仍然需要大量创新。所有的图形技术都是非常有趣的挑战。早期的虚幻引擎在构建环境方面比雷神之锤引擎走得更远，它使用构造实体几何与实时编辑器。那是一个非常有趣的技术挑战。想法是，如果你只是向世界添加物体，构建过程会非常繁琐。如果你想建造一扇门，那么你需要添加十几个不同的门框部件，并将一堆不同的墙壁组合在一起，以形成正确的形状。如果你能从一面墙开始，然后减去门，那肯定会容易得多。所以我们有这种向世界添加几何体和减去几何体的方法，引擎会对其进行所有计算。这是我早就预料到可能实现的事情——



<div class="dialogue-block">

**Tim Sweeney:** This is something that I’d been anticipating was
possible for a long time, but when I finally got around to it took this
30-hour coding session to figure out all of the special cases of the
code that needed to be implemented to make that work. In the course of
30 hours, I got constructive solid geometry up and running.

**蒂姆·斯威尼：**
这件事我早就预料到是可能实现的，但当我最终着手去做的时候，花了一个长达30小时的编码过程，才弄清楚所有需要实现才能使其工作的代码的特殊情况。在30个小时的过程中，我让构造实体几何运行起来了。



<div class="dialogue-block">

**Tim Sweeney:** I started doing that, handed it to James Schmaltz the
next time we were together and it’s like, “Okay, I think you’re cheating
here.” You create a giant Taurus and then add another giant Taurus
interlocked with it and then subtracted a cylinder from it and created
this really advanced composite object with just three operations. He was
like, “Whoa, I can’t believe this.” It’s like, “Yeah, we figured it
out.” That was cool to see it for the first time. It was probably the
first time somebody had done constructive solid geometry in real-time,
but it was also a really useful artist tool that all the artists
appreciated immediately began making use of.

**蒂姆·斯威尼：**
我开始做那个，下次我们在一起的时候把它交给了詹姆斯·施马尔茨，然后就像，“好吧，我觉得你在这里作弊了。”你创造了一个巨大的环面，然后添加了另一个与之连锁的巨大环面，然后从中减去一个圆柱体，仅用三个操作就创造了这个非常先进的复合对象。他当时就像，“哇，我简直不敢相信。”我说，“是的，我们搞定了。”第一次看到这个感觉很酷。这可能是第一次有人实时进行构造实体几何操作，但它也是一个非常有用的美术工具，所有美术师都立刻
apprezzato 并开始使用它。



<div class="dialogue-block">

**Lex Fridman:** Can you actually speak to that, the 30-hour session? I
mean, this is not, from everything I know about computational geometry,
doing this kind of thing from your perspective is not, that’s not easy.
What is it? The uncertainty, the open questions involved. I mean, even
just on the algorithm front, how to do that efficiently and then plus,
the usual programming thing of debugging, like suffering through the
trickiness of it. We don’t have really, at that time, you don’t have the
tooling to really visualize everything that’s going on really well.
You’re probably using some crappy editor, I mean, there’s just a lot of
friction here, so the 30 hour session is one that’s probably rough. It’s
a rough one.

**莱克斯·弗里德曼：**
你能具体谈谈那个30小时的会议吗？我的意思是，据我对计算几何的了解，从你的角度来看，做这种事情并不容易。那是什么？不确定性，涉及的开放性问题。我的意思是，即使仅仅在算法层面，如何高效地做到这一点，再加上通常的编程调试，比如忍受其中的棘手之处。我们当时并没有真正拥有能够很好地可视化所有正在发生的事情的工具。你可能正在使用一些蹩脚的编辑器，我的意思是，这里有很多摩擦，所以30小时的会议可能很艰难。这是一个艰难的会议。



<div class="dialogue-block">

**Tim Sweeney:** Your brain works in different ways and depending on
your state, right? There are some things that require really working on
a problem fresh, where you’ve put together a bunch of logical pieces and
now you just need to write a whole lot of code to make it all work
together and plumb a whole lot of data between a whole lot of different
algorithms. I think our brains have vastly more horsepower than we’re
able to directly access by thinking of what code to type next. After
you’ve been working for a very long time, you can get into a
sleep-deprived state where you have much more direct access to that
low-level knowledge.

**蒂姆·斯威尼：**
你的大脑以不同的方式工作，这取决于你的状态，对吧？有些事情需要真正从头开始解决问题，你已经把一堆逻辑片段组合在一起，现在你只需要编写大量代码让它们协同工作，并在许多不同的算法之间传递大量数据。我认为我们大脑的马力远超我们通过思考下一步要输入什么代码所能直接调用的。在你长时间工作之后，你可能会进入一种睡眠不足的状态，在这种状态下，你可以更直接地接触到那些底层知识。



<div class="dialogue-block">

**Lex Fridman:** That’s great.

**莱克斯·弗里德曼：** 太棒了。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, because there are symptoms that are well-studied
of sleep deprivation. One of them is short-term memory loss. You’re
working without the easy recall of the code you just typed, but your
brain is then freed to think about other problems. I built up this
intuition over a very long period of time. The foundation for the
subject is the binary space partitioning tree. This data structure
invaded by a computer. Graphics researcher, Bruce Naylor. Carmack had
picked up on that and had used the technique in Doom to really great
effect. I’d picked up on that and no one really was using this technique
for all of its graphics and rendering, but it was just additive geometry
everywhere and it had a lot of overlapping polygons and it was pretty
inefficient.

**蒂姆·斯威尼：**
是的，因为睡眠剥夺有一些经过充分研究的症状。其中之一是短期记忆丧失。你在工作时无法轻易回忆起刚刚输入的代码，但你的大脑因此得以解放出来思考其他问题。我经过很长一段时间才建立起这种直觉。这个主题的基础是二叉空间分割树。这种数据结构被计算机入侵了。图形研究员布鲁斯·内勒。卡马克注意到了这一点，并在《毁灭战士》中运用了这项技术，效果非常好。我注意到了这一点，但没有人真正将这项技术用于其所有的图形和渲染，它只是到处都是加法几何，有很多重叠的多边形，效率很低。



<div class="dialogue-block">

**Tim Sweeney:** I had the idea that if we had a BSP tree, there was a
really efficient way to do constructive solid geometry. To do that, you
had to break down the ways that different pieces of geometry can fit
together. I’d broken it down into 14 different cases and most of them
are pretty simple, cranked them out. Anyways, I got towards the end
there were some pretty complicated things like, “Well, how do you deal
with coplanar polygons? They’re in the same plane and pointing in the
same direction versus the other direction. In what cases should you keep
them in? What cases should you eliminate them,” and so on and so on to
create really efficient geometry output and just plowing through it
eventually through mostly a deduction, but some trial and error too.
Sometimes you just have to try the possibilities and see what works.
Yeah, I cranked it out and it worked, and the next day I came in kind of
weary and I was like, “Oh, wow, this actually did work. It wasn’t just a
dream.”

**蒂姆·斯威尼：**
我当时有个想法，如果我们有一个BSP树，那么就有一种非常高效的方法来进行构造实体几何。要做到这一点，你必须分解不同几何片段组合在一起的方式。我把它分成了14种不同的情况，其中大部分都相当简单，很快就搞定了。总之，快到最后的时候，遇到了一些相当复杂的问题，比如，“嗯，如何处理共面多边形？它们在同一个平面上，并且指向相同的方向，或者相反的方向。在什么情况下应该保留它们？在什么情况下应该消除它们，”等等，诸如此类，目的是为了创建真正高效的几何输出，最终通过主要是演绎，但也包括一些反复试验，才最终攻克了它。有时你
просто必须尝试各种可能性，看看哪种有效。是的，我把它搞定了，而且成功了，第二天我有点疲惫地进来，然后想，“哦，哇，这真的成功了。这不仅仅是个梦。”



<div class="dialogue-block">

**Lex Fridman:** You’re considering the edge cases also. I mean, that’s
the problem with geometry is like there’s probably just going to be all
kinds of weird polygons that you have to … So you’re thinking imagining
the edge cases and trying to see how do I not create inefficiencies in
this algorithm while still considering the edge cases, allowing for the
edge cases?

**莱克斯·弗里德曼：**
你也考虑了边缘情况。我的意思是，几何学的问题就在于，可能会出现各种奇怪的多边形，你必须……所以你在思考，想象边缘情况，并试图找出如何在不产生算法低效的情况下，仍然考虑边缘情况，允许边缘情况的存在？



<div class="dialogue-block">

**Tim Sweeney:** Yeah, it’s pretty easy to write software that’s like
99% correct. It’s the 1% that’s the really hard part and where the devil
lies in the details.

**蒂姆·斯威尼：**
是的，编写99%正确的软件是相当容易的。那1%才是真正困难的部分，细节决定成败。



## Dynamic lighting

<div class="dialogue-block">

**Lex Fridman:** What about lighting? Is there other interesting-

**莱克斯·弗里德曼：** 光照方面呢？还有其他有趣的——



<div class="dialogue-block">

**Tim Sweeney:** Well, the funny answer is we know the laws of physics,
so it’s actually really easy to do everything in computer graphics, but
the direct solution of the laws of physics is immensely slow. What we’re
finding are approximations rather than complete solutions because you
need something that’s a million times faster than the brute force
answer.

**蒂姆·斯威尼：**
嗯，有趣的答案是我们知道物理定律，所以实际上在计算机图形学中做任何事情都很容易，但是直接求解物理定律会非常非常慢。我们找到的是近似解而不是完整解，因为你需要比暴力破解快一百万倍的东西。



<div class="dialogue-block">

**Lex Fridman:** We should say that the physics of the scene is you just
take a bunch of photons and bounce them around. That’s how light works.
That’s going to be very inefficient because there’s a lot of bouncing
and a lot of photons.

**莱克斯·弗里德曼：**
我们应该说，场景的物理原理就是你拿一堆光子让它们四处反弹。光就是这样工作的。这会非常低效，因为有很多反弹和很多光子。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, photon tracing is the subject matter that does
brute force calculation of pixels on a screen from all of the light in
the scene, and it works and it’s correct, and it just is an
implementation of laws of physics and it’s millions or billions of times
slower than what we do. Carmack had figured out how to do really cool
lighting algorithms, including real-time lighting with objects moving
around, and I hadn’t taken it very far. With Unreal Engine, I realized
we don’t have nearly enough computing performance on our CPU to compute
the light of every pixel on the screen from all of the light sources
that affect it. Yeah, we were at a six-cycle texture mapper and we
couldn’t afford 30 more cycles for lighting, and so the answer had to be
some approximation. The one that Carmack had picked up on in the quake
engine was lightmapping. If we, instead of calculating all the lighting
on every pixel, what if we made a big texture that we placed over all of
the walls in the scene that was wallpaper, and what if we say at every
foot, we’re going to compute a lighting value for just that one foot
grid on the object rather than computing it everywhere. Then, well, if
we just linear interpolate that over the course of it, get a lighting
solution that actually works pretty well and is fast enough to work. A
lot of Unreal Engine’s lighting techniques were based on lightmapping.
We introduced colored lighting, so you could have colored light sources.
Then we realized, “Oh, since we’re doing this and we’re doing it on
light maps, we can actually do some pretty expensive calculations,
hundreds of cycles since we’re only calculating it for every one foot of
world space rather than every pixel.”

**蒂姆·斯威尼：**
是的，光子追踪就是通过暴力计算场景中所有光线在屏幕上形成的像素，它有效且正确，它只是物理定律的一种实现，但比我们现在的方法慢数百万甚至数十亿倍。卡马克已经想出了如何实现非常酷的光照算法，包括带有移动物体的实时光照，而我并没有在这方面走得太远。使用虚幻引擎时，我意识到我们的CPU计算性能远远不足以计算屏幕上每个像素受所有光源影响的光照。是的，我们当时用的是一个六周期纹理映射器，我们负担不起再增加30个周期用于光照，所以答案必须是某种近似。卡马克在雷神之锤引擎中采用的方法是光照贴图。如果我们不计算每个像素上的所有光照，而是制作一个覆盖场景中所有墙壁的大纹理，就像壁纸一样，然后我们说每隔一英尺，我们就只计算物体上那一英尺网格的光照值，而不是到处计算。那么，如果我们只是对其进行线性插值，就能得到一个效果相当好且速度足够快的光照解决方案。虚幻引擎的许多光照技术都基于光照贴图。我们引入了彩色光照，这样你就可以拥有彩色光源。然后我们意识到，“哦，既然我们正在这样做，而且是在光照贴图上做，我们实际上可以进行一些相当昂贵的计算，几百个周期，因为我们只计算世界空间中每一英尺的光照，而不是每个像素。”



<div class="dialogue-block">

**Tim Sweeney:** We introduced a whole bunch of elaborate lighting
effects like torch flickering and the caustic effects of water bouncing
off of a surface and so on, pulsing lights and blinking lights and
everything else, and created a system. I created a system for
compositing them together. If you had an arbitrary number of light
sources, they could all do that. Then I implemented a shadowing
algorithm. If you cast a ray from a light to a point on a surface and
see whether it intersects any other geometry, if it doesn’t intersect,
then the light hits the object. If it does intersect, then the light
hits something else first and that pixel on the object should be dark. I
built a real-time version of this and it ran at about a half a frame a
second. I was running around at half a frame a second, shooting out
light projectiles and looking at dynamic lighting, and it was like,
someday computers will be fast enough for this, but not today. I made a
non-real-time version that pre-calculates all the lighting and realized,
“Oh wait, if you pre-calculated the shadowing on an object, you can
still apply the lighting dynamically as long as the light’s not moving.”
You could do torch flickering with shadows and figured out all the cases
of dynamic and static lighting that were actually practical on a
computer at the time and expose them to artists. This was the wonderful
thing. I was just typing in these old features, exposing them to
artists, and every day they’d find like a dropdown with some more
lighting options available to them, and they’d start using them and
they’d do things that I never thought possible.

**蒂姆·斯威尼：**
我们引入了一系列复杂的光照效果，比如火炬闪烁、水面反射到物体表面的焦散效果等等，还有脉冲光、闪烁光以及其他各种效果，并创建了一个系统。我创建了一个将它们组合在一起的系统。如果你有任意数量的光源，它们都可以做到这一点。然后我实现了一个阴影算法。如果你从光源向表面上的一个点投射一条光线，看看它是否与任何其他几何体相交，如果不相交，那么光线就照射到物体上。如果相交，那么光线会先照射到其他东西上，物体上的那个像素就应该是暗的。我构建了这个算法的实时版本，它大约以每秒半帧的速度运行。我以每秒半帧的速度四处奔跑，发射光线投射物，观察动态光照，感觉就像，总有一天计算机会足够快来处理这个，但不是今天。我制作了一个非实时版本，它预先计算了所有光照，然后意识到，“哦等等，如果你预先计算了物体上的阴影，只要光源不移动，你仍然可以动态应用光照。”你可以实现带有阴影的火炬闪烁，并弄清楚了当时计算机上实际可行的所有动态和静态光照情况，并将它们提供给美术师。这真是太棒了。我只是输入这些旧功能，将它们提供给美术师，每天他们都会发现像下拉菜单一样，有一些更多的光照选项可供他们使用，他们会开始使用它们，并做出我从未想过可能的事情。



<div class="dialogue-block">

**Tim Sweeney:** This was always the coolest thing as a programmer
building an engine, you might think you know the implications of the
feature you’re building, but artists are so clever that you’ll always
find that you’ve built the capability of doing vastly more than you ever
anticipated as they start to use combinations of features together in
concert to do ever more amazing things.

**蒂姆·斯威尼：**
作为一名构建引擎的程序员，这始终是最酷的事情。你可能认为自己知道正在构建的功能的含义，但艺术家们非常聪明，你会发现，当他们开始协同使用各种功能的组合来做越来越令人惊叹的事情时，你实际上构建出的能力远远超出了你最初的预期。



<div class="dialogue-block">

**Lex Fridman:** That’s the genius of artists, is they’re given
constraints and within those constraints they create something you could
have never possibly imagined given the constraints. That’s such a
beautiful coupling between engineering and artistry and art.

**莱克斯·弗里德曼：**
这就是艺术家的天才之处，他们被赋予了限制，在这些限制之内，他们创造出你在给定限制的情况下永远无法想象的东西。这是工程学、艺术技巧和艺术之间如此美妙的结合。



<div class="dialogue-block">

**Tim Sweeney:** That’s right, and it’s timeless. What would the
Renaissance painters do with paints and what do the early game artists
do with early engines, everybody’s figuring out the capabilities of
their medium and you’re seeing a revolution.

**蒂姆·斯威尼：**
是的，而且它是永恒的。文艺复兴时期的画家会用颜料做什么，早期的游戏美术师会用早期的引擎做什么，每个人都在探索他们媒介的能力，你正在见证一场革命。



## Volumetric fog

<div class="dialogue-block">

**Lex Fridman:** This is blowing my mind. This is so fun. What about
fog? You mentioned Unreal, so the first version had fog.

**莱克斯·弗里德曼：**
这让我大开眼界。太有趣了。雾呢？你提到了《虚幻》，所以第一个版本就有雾了。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, it was a funny thing. This graphics hardware
company had just started up in Finland and they released a screenshot of
what their GPU was doing, and they showed a scene filled with volumetric
fog. They had a foggy room with some light sources in it. When that
happens in the real world, what you see are glows around the lights as
the light brightens the fog around it, but the brightening of the fog
diminishes over time because the fog absorbs some lighting. The further
you get away from the light, the more fall off there is. We have a bunch
of colored lights overlapping together in a space like that. The effect
is just absolutely magical, like being out on a foggy light with street
lamps above. It’s something that’s surreal and looked just beautiful. I
was like, “Oh my God, they figured out how to do real-time volumetric
fog. I have to figure it out myself.” That was another 30-hour coding
session.

**蒂姆·斯威尼：**
是的，那是一件有趣的事情。芬兰一家图形硬件公司刚成立，他们发布了一张他们的GPU正在做什么的截图，他们展示了一个充满体积雾的场景。他们有一个充满雾气的房间，里面有一些光源。当这种情况在现实世界中发生时，你看到的是灯光周围的光晕，因为光线照亮了周围的雾气，但雾气的亮度会随着时间的推移而减弱，因为雾气会吸收一些光线。你离光源越远，衰减就越大。我们有一堆彩色的灯光在这样的空间里重叠在一起。效果简直太神奇了，就像在有雾的灯光下，头顶有路灯一样。这有点超现实，看起来非常漂亮。我当时想，“哦，我的天，他们弄清楚了如何实现实时体积雾。我必须自己弄清楚。”那又是一次长达30小时的编码会议。



<div class="dialogue-block">

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。



<div class="dialogue-block">

**Tim Sweeney:** At the core I realized, okay, what’s happening here is
we have this lighting function saying that light at a particular point
in space is falling off with the inverse square of the light, the
distance from the light source, right? The inverse square is all from
Isaac Newton, which applies to lighting. I had to realize that the way
the fog interacted with the light was that you calculate the view from
your eye’s position to a point on a surface in the world. It’s going
through fog and you’re accumulating more and more light as a function of
the amount of light illuminating the fog at that point in time.

**蒂姆·斯威尼：**
核心在于我意识到，好吧，这里发生的是我们有一个光照函数，它表明空间中特定点的光线随着与光源距离的平方反比而衰减，对吧？平方反比定律完全来自艾萨克·牛顿，适用于光照。我必须意识到雾与光相互作用的方式是，你计算从你的眼睛位置到世界上某个表面上的一个点的视线。它穿过雾，并且你根据当时照亮雾的光量，不断累积越来越多的光线。



<div class="dialogue-block">

**Tim Sweeney:** Well, I’d studied that in mechanical engineering
without even knowing it. That’s the line integral. You have an integral
over a line of some function. Well, this is exactly what it’s for. It’s
for accumulating the values of a function over a continuous space and
time. I did a bunch of math and realized that, oh wow, the integral.
Then I looked in a reference book of all the integrals, and thankfully
people have solved them all. I realized the integral of this transformed
one over R-squared turns out to be solved by the arc tangent of R. If
you calculate some parameters based on the position of the eye and the
position of the surface point you’re ultimately seeing, then you
calculate exactly how much fog you can accumulate from that. Of course,
you can’t do that per pixel because that’s hundreds of cycles on CPU
time. What we had to do is calculate volumetric fog on something
equivalent to a light map, but calculating fog every square meter in the
world. We had enough performance for that, built volumetric lighting and
gave it to the artists and they started building magically detailed
levels with volumetric fog in real time. Then decades later, I was
talking to one of the engineers who’d worked on that hardware and asked
about their volumetric fog and told them how it inspired me to figure
out how to do it in real time myself. He was like, “Oh no, we cheated.
We just rendered it out of 3D Studio Max.”

**蒂姆·斯威尼：**
嗯，我在机械工程学过这个，甚至都不知道。那就是线积分。你对某个函数沿着一条线进行积分。嗯，这正是它的用途。它用于在连续的空间和时间上累积函数的值。我做了一些数学计算，然后意识到，哦哇，积分。然后我查阅了一本包含所有积分的参考书，谢天谢地，人们已经把它们都解出来了。我意识到，这个变换后的1/R²的积分，可以用R的反正切来求解。如果你根据眼睛的位置和你最终看到的表面点的位置计算一些参数，那么你就可以精确地计算出你能从中累积多少雾。当然，你不能对每个像素都这样做，因为那需要CPU几百个周期的时间。我们必须做的是在类似于光照贴图的东西上计算体积雾，但要计算世界上每平方米的雾。我们有足够的性能来做到这一点，构建了体积光照并将其提供给美术师，他们开始实时构建具有体积雾的、细节神奇的关卡。几十年后，我和一位曾参与该硬件工作的工程师交谈，问及他们的体积雾，并告诉他们这如何激励我自己弄清楚如何实时实现它。他说：“哦不，我们作弊了。我们只是用3D
Studio Max渲染出来的。”



<div class="dialogue-block">

**Lex Fridman:** That’s awesome. That is so awesome. That is so
inspiring on so many levels that you saw that maybe it’s possible even
if it was kind of smoke and mirrors, and then you actually made it
happen. It’s so inspiring to hear these kinds of stories when there’s so
much uncertainty and you figure out and so many constraints and you
figure out how to bring it to life in real time and create this world
that Unreal did. Maybe if we could just pause, since you mentioned John
Carmack a few times, as a fellow pioneer in the game industry at that
time, what do you admire about John?

**莱克斯·弗里德曼：**
太棒了。那真是太棒了。这在很多层面上都非常鼓舞人心，你看到即使那有点像障眼法，但你认为它可能是可能的，然后你真的把它实现了。当存在如此多的不确定性，而你弄清楚了，并且有如此多的限制，而你弄清楚了如何实时将其变为现实，并创造出《虚幻》所创造的这个世界，听到这样的故事真是太鼓舞人心了。也许我们可以暂停一下，既然你几次提到了约翰·卡马克，作为当时游戏行业的另一位先驱，你欣赏约翰的什么？



## John Carmack

<div class="dialogue-block">

**Tim Sweeney:** John singularly has this intense dedication to getting
the best result from his code and having absolutely no attachment to
passcode and some of the legendary things he did. The end result was an
absolute breakthrough in real-time computer graphics, weren’t his first
try. They were like his seventh or eighth try after he’d done something
time and time again, tried it, found a better approach, thrown out the
old one, built it again, and continually rewrite his code until he found
the absolute best solution to a problem. I think that stands as a lesson
for every programmer to pick up on. When something is really, really
important, its performance is absolutely critical to the product or its
quality or its capabilities. Just iterate on it until you’ve achieved
perfection and don’t settle for the first or second solution is good
enough.

**蒂姆·斯威尼：**
约翰尤其对从他的代码中获得最佳结果有着强烈的执着，并且对过去的密码（应为代码）没有任何留恋，他做过一些传奇般的事情。最终结果是实时计算机图形学的绝对突破，但这并非他的第一次尝试。那大概是他在一次又一次地做某件事，尝试，找到更好的方法，抛弃旧方法，重新构建，并不断重写代码，直到找到问题的绝对最佳解决方案之后的第七或第八次尝试。我认为这对每个程序员来说都是一个值得学习的教训。当某件事真的非常重要，其性能对产品、质量或能力至关重要时，就要不断迭代，直到达到完美，不要满足于第一个或第二个足够好的解决方案。



<div class="dialogue-block">

**Lex Fridman:** The result of that both you and him sort of define the
future of gaming, of gaming worlds. It’s so beautiful to see. It’s just
fascinating. It’s inspiring because under so much uncertainty, under so
many constraints, you figure out a way. That actually continues to this
day because yes, the hardware is improved incredibly, but in order to
create an ultra realistic, highly dynamic, real-time rendering of the
world around us, it’s still really, really difficult. There’s all these
kinds of optimization, like you mentioned. Maybe you can speak to that
Unreal Engine One journey from one to 5.5 or.6 now. For 30 years, you’ve
been creating virtual worlds. What’s it like evolving a game engine for
those 30 years when the hardware under you is improving exponentially?
What are some things that changed and what are some universal truths
that have not changed?

**莱克斯·弗里德曼：**
你们俩的结果在某种程度上定义了游戏的未来，游戏世界的未来。看到这一点真是太美了。这太迷人了。这很鼓舞人心，因为在如此多的不确定性之下，在如此多的限制之下，你们找到了方法。这实际上一直持续到今天，因为是的，硬件已经得到了令人难以置信的改进，但是为了创建我们周围世界的超逼真、高度动态、实时的渲染，仍然非常非常困难。正如你提到的，有各种各样的优化。也许你可以谈谈虚幻引擎从1到现在的5.5或.6的历程。30年来，你一直在创造虚拟世界。当底层的硬件以指数级速度改进时，在这30年里发展游戏引擎是什么感觉？有哪些事情改变了，又有哪些普世真理没有改变？



## Evolution of Unreal Engine

<div class="dialogue-block">

**Tim Sweeney:** It’s been an astonishing experience. Nobody 30 years
ago had anticipated that we’d see the performance gains in hardware that
we’ve actually seen in that timeframe. It’s something like 100,000 times
higher CPU performance between multiple cores and higher clock rates and
more parallelism. If we had that in aviation, then we’d be taking a trip
to neighboring stars.

**蒂姆·斯威尼：**
这是一段令人惊叹的经历。30年前没有人预料到我们会在那个时间框架内看到硬件性能的如此巨大提升。CPU性能大约提高了10万倍，这得益于多核、更高的时钟频率和更强的并行性。如果我们在航空领域有这样的进步，那么我们就能去邻近的恒星旅行了。



<div class="dialogue-block">

**Lex Fridman:** Alpha Centauri, yeah.

**莱克斯·弗里德曼：** 半人马座阿尔法星，是的。



<div class="dialogue-block">

**Tim Sweeney:** Exactly, and in graphics, it’s been even more so. It’s
something like literally 10 million times more net usable GPU
performance than we had back running on a Pentium 90 CPU all in 30
years. It’s really made me appreciate that over the generations, some
areas of our engine development have absolutely kept up with that
technology, and the rendering team that works on Unreal Engine are the
real miracle workers there. Just about every generation of Unreal, we’ve
replaced most of the rendering code and the different leaders in
different points and times, and the different luminaries have built
systems that were absolutely rethought and optimized for the latest
generation of hardware.

**蒂姆·斯威尼：**
完全正确，而在图形领域，这种进步甚至更大。在30年间，GPU的净可用性能比我们当年在奔腾90
CPU上运行时提高了大约1000万倍。这真的让我意识到，在几代人的发展过程中，我们引擎开发的某些领域绝对跟上了这项技术的发展，而负责虚幻引擎渲染的团队是真正的奇迹创造者。几乎每一代虚幻引擎，我们都替换了大部分渲染代码，不同时期、不同阶段的领导者和杰出人物都构建了针对最新一代硬件进行了彻底重新思考和优化的系统。



<div class="dialogue-block">

**Tim Sweeney:** Unreal Engine One was built for software rendering and
then the Voodoo One came along late in the cycle and we had support for
it, but it wasn’t fully capable and utilized. Unreal Engine Two was
about bringing all of the latest GPU hardware acceleration features to
the engine and keeping forward and building some new features like
vehicles and a few other capabilities. All this was in the early GPU era
before GPUs had really broken out of everybody’s expectations and more
That breakout occurred with DirectX Nine and the capabilities of
programmable shaders. Once you had control of writing code, running on
the GPU that could color every pixel on the screen, and that GPU code
was literally a factor of 100 times faster than the equivalent code I
wrote a few years earlier on the Pentium 90.

**蒂姆·斯威尼：**
虚幻引擎1是为软件渲染而构建的，然后在周期后期出现了Voodoo
One，我们对其提供了支持，但它并没有得到充分的利用和发挥。虚幻引擎2旨在将所有最新的GPU硬件加速功能引入引擎，并不断前进，构建一些新功能，如载具和其他一些能力。所有这些都发生在GPU早期，那时GPU还没有真正超出所有人的预期，而这种突破发生在DirectX
9和可编程着色器的能力出现之后。一旦你能够控制编写在GPU上运行的代码，这些代码可以为屏幕上的每个像素着色，而且GPU代码实际上比我几年前在奔腾90上编写的等效代码快100倍。



<div class="dialogue-block">

**Tim Sweeney:** DirectX Nine Generation was a godsend, and Andrew
Scheidecker longtime Epic Luminary wrote the core of the Unreal Engine
Three render around real-time pixel shading, real-time lighting, being
able to do dynamic shadows using several different techniques and
multi-thread the render to support bits of the early dual core CPUs that
were starting to show up at the time. It was a massive, massive
graphical upgrade. Unreal Engine Four, made a number of improvements and
just continued to add features to make more and more give artists more
and more options for lighting and for geometry that created realism.
Unreal Engine Four, made a number of improvements and just continued to
add features to make more and more give artists more and more options
for lighting and for geometry that created realism.

**蒂姆·斯威尼：** DirectX
9时代简直是天赐之物，Epic的资深杰出人物安德鲁·谢德克围绕实时像素着色、实时光照编写了虚幻引擎3渲染的核心，能够使用几种不同的技术实现动态阴影，并对渲染进行多线程处理，以支持当时开始出现的早期双核CPU。那是一次巨大无比的图形升级。虚幻引擎4进行了一系列改进，并不断添加功能，为美术师提供越来越多的光照和几何体选项，以创造逼真度。虚幻引擎4进行了一系列改进，并不断添加功能，为美术师提供越来越多的光照和几何体选项，以创造逼真度。



<div class="dialogue-block">

**Tim Sweeney:** Then I think probably our biggest single level of a
leap came with Unreal Engine Five with a Nanite Micropolygon geometry
solution and with Lumen Global Illumination Lighting Solution, which I
think really bridged the gap from game-ish computer graphics to total
observable photorealism for artists who wanted to create that. That’s
been the evolution and the progress on the graphics side is absolutely
astonishing as it is on the audio side in a number of other areas. Parts
of the engine also, haven’t changed all that much since the version I
wrote and shipped in 1998. The file management system has been optimized
a number of times, but it hasn’t been completely rethought. The
networking system, the ways that clients and servers talk together and
negotiate game State is still an evolution of the thing I wrote and it’s
feeling kind of dated now. You still see networking bugs in Fortnite
where for some reason when you’re spectating, you’re not seeing some
parameters update. Well, that’s because of the lossful nature of that
networking model.

**蒂姆·斯威尼：**
然后我认为，我们最大的单次飞跃可能来自虚幻引擎5，它配备了Nanite微多边形几何解决方案和Lumen全局光照解决方案，我认为这真正弥合了游戏化计算机图形与那些想要创造完全可观察的照片级写实效果的艺术家之间的差距。这就是图形方面的演变和进步，其惊人程度与音频和其他一些领域一样。引擎的某些部分，自从我1998年编写并发布的版本以来，也没有太大变化。文件管理系统已经优化了很多次，但并没有彻底重新思考。网络系统，客户端和服务器之间通信以及协商游戏状态的方式，仍然是我编写的那个东西的演变，现在感觉有点过时了。你仍然会在《堡垒之夜》中看到网络错误，比如出于某种原因，当你在观战时，你看不到某些参数更新。嗯，那是因为那个网络模型的有损特性。



<div class="dialogue-block">

**Tim Sweeney:** The biggest limitation that’s built up over time is the
single-threaded nature of game simulation in Unreal Engine. We run a
single-threaded simulation. If you have a 16 core CPU, we’re using one
core for game simulation and running with the complicated game logic
because single-threaded programming is orders of magnitude easier than
multi-threaded programming. We didn’t want to burden either ourselves or
our partners or the community with the complications of multi-threading.
Over time that becomes an increasing limitation. We’re really thinking
about and working on the next generation of technology and being on
Unreal Engine Six. That’s the generation we’re actually going to address
a number of the really core limitations that have been with us over the
history of Unreal Engine and get those on a better foundation that the
modern world deserves, given everything that’s been learned in the field
of computing in that timeframe.

**蒂姆·斯威尼：**
随着时间的推移，最大的限制是虚幻引擎中游戏模拟的单线程特性。我们运行的是单线程模拟。如果你有一个16核的CPU，我们只用一个核心进行游戏模拟，并运行复杂的游戏逻辑，因为单线程编程比多线程编程容易几个数量级。我们不想让我们自己、我们的合作伙伴或社区承担多线程的复杂性。随着时间的推移，这成了一个越来越大的限制。我们正在认真思考和开发下一代技术，并着眼于虚幻引擎六。在这一代，我们将真正解决虚幻引擎历史上一直存在的一些核心限制，并鉴于在那段时间内在计算领域学到的一切，为它们奠定现代世界应有的更好基础。



<div class="dialogue-block">

**Lex Fridman:** That’s a terrifyingly challenging engineering problem.
It seems like every version of Unreal Engine, the amazing teams behind
it are willing to just throw away most of the code, or maybe I’m being a
little bit too dramatic, but basically throw away the old approaches,
like you mentioned with Carmack and start again, like with Nanite and
Lumen, just keep optimizing to the current hardware, but even rethinking
how it’s all done going from single-threaded to multi-threaded. Oh boy,
that’s terrifying.

**莱克斯·弗里德曼：**
那是一个极其具有挑战性的工程问题。看起来虚幻引擎的每一个版本，其背后令人惊叹的团队都愿意抛弃大部分代码，或者也许我有点太戏剧化了，但基本上是抛弃旧的方法，就像你提到的卡马克那样，然后重新开始，比如
Nanite 和
Lumen，不断针对当前硬件进行优化，甚至重新思考从单线程到多线程的整个实现方式。哦，天哪，那太可怕了。



## Unreal Engine 5

<div class="dialogue-block">

**Tim Sweeney:** That’s in part, we’ll talk about it, why maybe you have
to rethink even the programming language that’s being used to rethink a
lot of things. That’s fascinating. Can we just stick on Unreal Engine
Five? I watched a bunch of stuff, but the state of Unreal in GDC 2024. I
was just giggling with excitement watching some of this stuff. If we can
talk about different things here just to nerd out a little bit. People
should go watch this video. They talked about the dirt. The
ultra-realistic, and this is for Marvel 1943, which is kind of putting
the Marvel universe into Nazi-occupied France in the winter. There’s
snow, and that’s a moment in history. That’s a very intense moment in
history, and it really creates a feeling and puts you there. There’s so
much to that, including the snow.

**蒂姆·斯威尼：**
这部分原因，我们会谈到，也许你甚至需要重新思考正在使用的编程语言，以重新思考很多事情。这很迷人。我们能只谈谈虚幻引擎5吗？我看了一些东西，但是GDC
2024上虚幻引擎的状态。我看着这些东西，兴奋得咯咯直笑。如果我们能在这里谈论一些不同的事情，稍微极客一下。人们应该去看看这个视频。他们谈到了泥土。超逼真的，这是为《漫威1943》制作的，它有点像把漫威宇宙放到了冬季纳粹占领的法国。有雪，那是历史上的一个时刻。那是历史上一个非常紧张的时刻，它确实创造了一种感觉，让你身临其境。其中有很多东西，包括雪。



<div class="dialogue-block">

**Tim Sweeney:** Just looking at the dirt is a really nice way to show
how do you add a lot of details to the scene in real time that gives
this experience infinite detail? This is real, this is super real. Then
I think in the talk they describe what’s entailed in the generation of
the geometry, what’s entailed in the lighting, all that kind of stuff.
Maybe can you speak about dirt? What are the components for people who
might not know in creating this ultra-realistic, the texture, the
lighting, the geometry, all of that, how Nanite, how Lumen all come
together in this beautiful orchestra to paint in real time, the dirt in
Nazi-occupied France in 1943?

**蒂姆·斯威尼：**
仅仅观察泥土就是一种非常好的方式，来展示你如何实时地向场景中添加大量细节，从而赋予这种体验无限的细节？这是真实的，这是超级真实的。然后我想在演讲中，他们描述了生成几何体需要什么，光照需要什么，所有这些。也许你能谈谈泥土吗？对于那些可能不知道的人来说，创建这种超逼真的效果，纹理、光照、几何体，所有这些，Nanite、Lumen是如何在这个美丽的管弦乐队中协同工作，实时描绘出1943年纳粹占领的法国的泥土的？



<div class="dialogue-block">

**Tim Sweeney:** Yeah, there’s a lot happening here on screen. The real
hero of this image isn’t Epic. It’s the artists and technical artists
who work together to build this environment. Because the reason we
showed it at GDC was it went way, way beyond what we realized the system
was capable of doing, largely because of their brilliance. This is the
magic of computer graphics. There’s not one feature that makes this
cool. There’s a dozen technical features that each interplay, and
because of the ways that they interplay with each other, you really
don’t … It’s hard to actually identify the individual components of it.

**蒂姆·斯威尼：**
是的，屏幕上发生了很多事情。这张图片的真正英雄不是Epic。是那些共同构建这个环境的艺术家和技术美术师。因为我们在GDC上展示它的原因是，它远远超出了我们意识到系统所能做到的程度，这在很大程度上要归功于他们的才华。这就是计算机图形学的魔力。并非只有一个功能让它变得酷炫。有十几个技术功能相互作用，而且由于它们相互作用的方式，你真的……很难真正识别出它的各个组成部分。



<div class="dialogue-block">

**Tim Sweeney:** One thing that’s happening here that’s really critical,
oh yeah, now we’re seeing it being turned off, ’cause the lighting
happening. The Lumen lighting system that’s powering the scene is doing
different kinds of lighting calculations at different scales. This was
the work of Daniel Wright following a decade of moving the
state-of-the-art of lighting forward. His theory, which was rather
controversial at the time, was that if you have enough levels of
lighting calculation, then you can get everything global illumination
working everywhere from the absolute highest levels of a scene that
buildings are casting correct shadows, all the way down to details like
you see on the dirt here, all working in concert and without
distinguishable boundaries. There’s a good decade of foundational work
there to make the lighting work. In particular, when you see the very
detailed shadows interplaying between the ice and the dirt there,
there’s screen space sliding. There’s actually shadow calculation going
on, not based on the world, but on the pixels on the screen because that
is the only way that we could possibly do these calculations fast
enough, running them on a pixel shader.

**蒂姆·斯威尼：**
这里发生的一件非常关键的事情，哦是的，现在我们看到它被关掉了，因为光照正在发生。为场景提供动力的
Lumen
光照系统正在不同尺度上进行不同类型的光照计算。这是丹尼尔·赖特在推动光照技术发展十年后的工作成果。他的理论在当时颇具争议，他认为如果你有足够级别的光照计算，那么你就可以让全局光照在任何地方都起作用，从场景的最高级别（建筑物投射出正确的阴影）一直到像你在这里看到的泥土上的细节，所有这些都协同工作，并且没有可区分的边界。为了让光照起作用，那里有长达十年的基础工作。特别是，当你看到冰和泥土之间相互作用的非常详细的阴影时，那里有屏幕空间滑动。实际上正在进行阴影计算，不是基于世界，而是基于屏幕上的像素，因为这是我们唯一可能足够快地进行这些计算的方法，在像素着色器上运行它们。



<div class="dialogue-block">

**Lex Fridman:** Yeah, watch this. Watch, when you add the objects, when
you add the textures, the different layering, all the shadows that have
to be computed. Boy.

**莱克斯·弗里德曼：**
是的，看这个。看，当你添加物体，当你添加纹理，不同的分层，所有必须计算的阴影。天哪。



<div class="dialogue-block">

**Tim Sweeney:** That shadowing is an amazing thing. The reason that
works is counterintuitive. When somebody first explained it to me, I was
like, “That’s really clever, but I don’t think that will work,” but it
does work because if you observe the positions of incoming lights and
the Z-coordinates of the different pixels on the screen, you can figure
out how your geometry there is likely to occlude other geometry. Even
though it’s only an approximation and isn’t perfect, it looks perfectly
good to the human eye and gives you the subtle shadowing that you see in
a scene like this that makes it look highly realistic. The shadowing
influences other things.

**蒂姆·斯威尼：**
那个阴影效果真是太棒了。它之所以有效，其原因有点反直觉。当有人第一次向我解释时，我说：“那真的很聪明，但我不认为它会起作用，”但它确实起作用了，因为如果你观察入射光的位置和屏幕上不同像素的Z坐标，你就能弄清楚你那里的几何体可能会如何遮挡其他几何体。尽管它只是一个近似值，并不完美，但对人眼来说看起来非常好，并且能提供你在这样的场景中看到的微妙阴影，使其看起来高度逼真。阴影还会影响其他事物。



<div class="dialogue-block">

**Tim Sweeney:** There’s also, some really interesting things happening
with the color here, and I’m not even sure what’s causing it looks like
color is bleeding from some parts of the snow onto other parts of the
snow. It looks like there’s some subsurface scattering going on. I’m not
even sure if that’s being used in this scene. Then there’s a material
layering system for laying down layers of material, dirt and snow and
other things all making that work. Then there’s the light bouncing off
of the geometry, which is another system for lighting on top of the
global illumination system.

**蒂姆·斯威尼：**
此外，这里的颜色也发生了一些非常有趣的事情，我甚至不确定是什么原因造成的，看起来颜色从雪的某些部分渗到了雪的其他部分。看起来有一些次表面散射正在发生。我甚至不确定这个场景中是否使用了它。然后有一个材质分层系统，用于铺设材质层，泥土、雪和其他东西都使它起作用。然后是光线从几何体上反弹，这是全局光照系统之上的另一个光照系统。



<div class="dialogue-block">

**Lex Fridman:** What about reflections too? Does that count as the
light bounce? There’s a light bouncing off of stuff to light it up in
different interesting ways, but then there’s also, actually literal
reflections in We’re looking at a puddle in the dirt.

**莱克斯·弗里德曼：**
反射呢？那算不算光线反弹？有光线从物体上反弹，以不同有趣的方式照亮它，但此外，还有……我们正在看泥土中的一个水坑，实际上有字面意义上的反射。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, yeah, that’s right, but the engine supports a
number of different reflection techniques. One is calculating basically
textures that reflect the capture, all the lighting in the scene, and
then bouncing that off of texture maps. You can see different lights
bouncing off of different pixels in different ways. Then there’s
individual lighting casting reflections off of things too. A lot of this
is under the control of designers. One of the things that’s a yet to do
problem for the future is that you don’t just press a few buttons and
this kind of scene magically appears.

**蒂姆·斯威尼：**
是的，是的，没错，但引擎支持多种不同的反射技术。一种是计算基本上能反射捕捉到的场景中所有光照的纹理，然后将其从纹理贴图上反弹回来。你可以看到不同的光以不同的方式从不同的像素上反弹。然后还有单独的光照也会从物体上投射反射。很多这些都由设计师控制。未来需要解决的问题之一是，你不能只是按几个按钮，这种场景就能神奇地出现。



<div class="dialogue-block">

**Tim Sweeney:** This is a lot of work from some highly skilled people,
not only building out this particular scene, but then setting up the
material layers so that you get the dirt with the ice layered on top and
all the reflections working. They had to make a number of technical art
decisions to make this work. If a novice who hadn’t worked very hard
built that kind of scene like this, it wouldn’t look nearly as good. One
of the challenges we have is to make building this kind of quality level
even easier and more seamless and automatic. You’d like to just build a
scene and say, “Use this material here and have this appearance come out
of it.”

**蒂姆·斯威尼：**
这需要一些技术高超的人员付出大量努力，不仅要构建这个特定的场景，还要设置材质层，以便你得到上面覆盖着冰的泥土，并且所有反射都能正常工作。他们必须做出许多技术美术决策才能实现这一点。如果一个没有努力工作的新手构建了这样的场景，它看起来远不会这么好。我们面临的挑战之一是让构建这种质量水平的场景变得更容易、更无缝、更自动化。你希望能够只是构建一个场景，然后说：“在这里使用这种材质，并让它呈现出这种外观。”



<div class="dialogue-block">

**Lex Fridman:** Yeah. I mean, once you create the scene, you could do
things. I remember where they said, “Can you turn off the headlights?” I
forget. You could control the lighting. I mean, all of this, we should
say, this is dynamic. You can change the position of the light. You can
turn on the lights and off the lights. That’s incredible. This is all
real time, the geometry, the lighting, the textures, all of it, real
time.

**莱克斯·弗里德曼：**
是的。我的意思是，一旦你创建了场景，你就可以做一些事情。我记得他们说过，“你能关掉车头灯吗？”我忘了。你可以控制灯光。我的意思是，所有这些，我们应该说，都是动态的。你可以改变灯光的位置。你可以打开和关闭灯光。这太不可思议了。所有这些都是实时的，几何形状、灯光、纹理，所有这些，都是实时的。



<div class="dialogue-block">

**Tim Sweeney:** This is the power of awesome technical art, three
decades of feature development. You have to give credit, also, to the 20
teraflops of graphics performance that Nvidia is delivering.

**蒂姆·斯威尼：**
这就是卓越技术美术的力量，三十年的功能开发。你也必须归功于英伟达提供的20万亿次浮点运算的图形性能。



<div class="dialogue-block">

**Lex Fridman:** Thanks, Nvidia.

**莱克斯·弗里德曼：** 谢谢，英伟达。



<div class="dialogue-block">

**Tim Sweeney:** 90 megahertz to this, 90 megahertz is 90 megaflops.
This is 20 teraflops. That’s a big change.

**蒂姆·斯威尼：**
从90兆赫到这个，90兆赫是90兆次浮点运算。这是20万亿次浮点运算。那是一个巨大的变化。



<div class="dialogue-block">

**Lex Fridman:** That’s a lot. One of the other things that they talk
about in the presentation is about snow. If you’re talking about 1943
Nazi Germany in the winter, you have to create a feeling, one of which
is the season, the winter, the cold, and you can have to cover
everything in snow. Here shown is the ability to control how much snow
covers the objects. The ability to do that for the artist is incredible,
just to control how much snow is in the scene dynamically like that.
That’s cool.

**莱克斯·弗里德曼：**
那很多了。他们在演示中谈论的另一件事是关于雪。如果你谈论的是1943年冬季的纳粹德国，你必须创造一种感觉，其中之一就是季节，冬天，寒冷，你必须用雪覆盖一切。这里展示的是控制物体上覆盖多少雪的能力。对于艺术家来说，能够做到这一点是令人难以置信的，仅仅是动态地控制场景中有多少雪。那很酷。



<div class="dialogue-block">

**Tim Sweeney:** Yeah.

**蒂姆·斯威尼：** 是的。



<div class="dialogue-block">

**Lex Fridman:** That’s really cool.

**莱克斯·弗里德曼：** 那真的很酷。



<div class="dialogue-block">

**Tim Sweeney:** It’s a cool system for material layering and a dozen
pieces coming together here. You also, notice there’s fogginess and
there’s some hot objects emanating fog. An artist did that, that didn’t
just arise automatically.

**蒂姆·斯威尼：**
这是一个很酷的材质分层系统，有十几个部分在这里结合起来。你还会注意到，有雾气，还有一些热的物体散发出雾气。那是美术师做的，并非自动产生的。



<div class="dialogue-block">

**Lex Fridman:** That’s called material layering. An artist creates the
different materials and are able to layer the scene with it.

**莱克斯·弗里德曼：**
那叫做材质分层。美术师创建不同的材质，并能够用它们来分层场景。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, layer materials on top of each other and see how
much of each material should be protruding in different places with the
engine handling transitions and things like that.

**蒂姆·斯威尼：**
是的，将材质层叠在一起，看看在不同位置每种材质应该突出多少，引擎会处理过渡等问题。



<div class="dialogue-block">

**Lex Fridman:** That’s on top of the geometry that creates the
structure of the scene and all the occlusions that have to be computed.
Okay. I got to go to the other one that was just blowing my mind, which
is smoke. Let me see. That. Look at that. Yeah. There’s a fire in a
trash can with the smoke and the shadows, the lighting and the shadows
interplaying on the smoke. This is real time.

**莱克斯·弗里德曼：**
那是在创建场景结构和所有必须计算的遮挡的几何体之上的。好的。我得看看另一个让我大开眼界的东西，那就是烟雾。让我看看。那个。看那个。是的。垃圾桶里有火，有烟雾和阴影，光照和阴影在烟雾上相互作用。这是实时的。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, that’s all real time.

**蒂姆·斯威尼：** 是的，那都是实时的。



<div class="dialogue-block">

**Lex Fridman:** What the hell? How do you do that? How do you do the
smoke?

**莱克斯·弗里德曼：** 搞什么鬼？你是怎么做到的？烟雾是怎么做出来的？



<div class="dialogue-block">

**Tim Sweeney:** Well, there’s a really powerful particle system
underneath. It’s providing the technological foundations for this sort
of thing, but there’s awesome artistry on top of that and an awesome
physics engine powering it. It’s hard to tell exactly which piece is
doing what, but you have several different particle systems there.
There’s one for the fire, and then there’s another one for the smoke
coming out of it. The really interesting thing happening with the smoke
here is that it’s occluding light. There’s calculation of how the light
should diminish as it travels through smoke. You’re seeing the lighting
on the smoke being the really interesting thing. There have been a lot
of attempts, but this was the first demo where I felt like this kind of
smoke had really no longer looked like a video game. It looked like just
a burning trash can, billowing out dark smoke. Yeah, it’s the artist’s
sophistication. It’s a very, very, very large part of it.

**蒂姆·斯威尼：**
嗯，底层有一个非常强大的粒子系统。它为这类事物提供了技术基础，但在此之上还有出色的艺术性和一个强大的物理引擎为其提供动力。很难确切地说哪个部分在做什么，但那里有几个不同的粒子系统。一个是用于火焰的，另一个是用于从中冒出的烟雾的。这里烟雾真正有趣的地方在于它会遮挡光线。需要计算光线穿过烟雾时应该如何衰减。你看到的烟雾上的光照是非常有趣的事情。之前有很多尝试，但这是第一个让我觉得这种烟雾看起来不再像电子游戏，而像一个正在燃烧的垃圾桶，冒着滚滚黑烟的演示。是的，这是艺术家的精湛技艺。这是其中非常非常非常重要的一部分。



<div class="dialogue-block">

**Lex Fridman:** Yeah, again, it’s the interplay between the tooling and
the artists. Yeah, like that. I could watch that for a long time.
There’s something magical sitting around a fire in real life and just
watching the fire and the smoke. I mean, humans have been doing that
for, I don’t know, hundreds of thousands of years maybe. Then that same,
I was just staring at that, and I wish the people would just stop
talking and I could just watch the fire infinitely. I mean, that’s
immersion. That’s like I want to be in there, I want to sit around that
trash can with the fire and the smoke and watch and maybe warm myself
because I was also feeling cold because of the snow. You’re like, you
really get immersed into the thing. I mean, it’s so beautiful. It’s true
art. It’s true art. It’s just really wonderfully done.

**莱克斯·弗里德曼：**
是的，再说一遍，这是工具和艺术家之间的相互作用。是的，就像那样。我可以看很久。现实生活中围坐在火堆旁，只是看着火焰和烟雾，有一种神奇的感觉。我的意思是，人类可能已经这样做了几十万年了。然后，同样地，我只是盯着那个看，我希望人们停止说话，我只想无限地看着火。我的意思是，那就是沉浸感。就像我想待在那里，我想坐在那个有火有烟的垃圾桶旁看着，也许暖和一下自己，因为雪也让我感到寒冷。你就像，你真的沉浸其中了。我的意思是，它太美了。那是真正的艺术。那是真正的艺术。它做得真是太棒了。



## Creating realistic humans

<div class="dialogue-block">

**Tim Sweeney:** Okay, so I got to ask you about the humans. We talked
about what’s it like to create the scenes, but creating realistic humans
is really tough. Can you speak to that? How to create ultra-realistic
humans? You have an actor behind this to convey emotion, show the
nuances and details of the faces, and maybe this is a good opportunity
to also mention metahuman creator, that’s part of Unreal Engine.

**蒂姆·斯威尼：**
好的，所以我得问你关于人类的问题。我们谈论了创建场景是什么样的，但是创建逼真的人类真的很难。你能谈谈这个吗？如何创建超逼真的人类？这背后有一个演员来传达情感，展示面部的细微差别和细节，也许这也是一个提及MetaHuman
Creator的好机会，它是虚幻引擎的一部分。



<div class="dialogue-block">

**Tim Sweeney:** Yeah, that’s right. Humans are, by far, the hardest
part of computer graphics because millions of years of evolution have
given us dedicated brain systems to detect patterns in faces and infer
emotions and intent because cavemen had to, when they see a stranger
determine whether they were likely friendly or they might be trying to
kill them.

**蒂姆·斯威尼：**
是的，没错。人类是计算机图形学中最难的部分，因为数百万年的进化赋予了我们专门的大脑系统来检测面部模式，并推断情绪和意图，因为穴居人必须在看到陌生人时判断他们是友好的还是可能想杀死他们。



<div class="dialogue-block">

**Tim Sweeney:** Humans, we people in the world have extraordinarily
detailed expectations of a face, and we can notice imperfections,
especially perfections arising from computer graphics limitations. It
becomes by far the hardest problem. The metahumans effort is part of a
decades-long initiative that Vladimir Mostilovic, the most talented
digital humans visionary in the world, has been working on for
generations and generations of games, serving individual clients around
the game industry for a while. Then joining Epic as part of the
three-lateral team and leading now a worldwide effort to build all of
the technologies required to make digital humans realistic.

**蒂姆·斯威尼：**
人类，我们世界上的人们对面部有着极其细致的期望，我们可以注意到不完美之处，尤其那些源于计算机图形限制的完美。这成了迄今为止最难的问题。MetaHumans项目是一个长达数十年的计划的一部分，该计划由弗拉基米尔·莫斯蒂洛维奇领导，他是世界上最具才华的数字人类梦想家，他已经为几代游戏工作，并在游戏行业为个人客户服务了一段时间。然后作为三方团队的一员加入Epic，现在领导着一项全球性的努力，旨在构建所有使数字人类逼真所需的技术。



<div class="dialogue-block">

**Tim Sweeney:** One part is capturing humans. We’ve got really advanced
dedicated hardware that puts a human in a capture sphere with dozens of
cameras in them, taking high-resolution, high-frame-rate video of them
as they go through a range of motions. Then capturing the human face is
complicated because the nuanced detail of our faces and how all of the
muscles and sinews and fat work together to give us different
expressions. It’s not only about the shape of a person’s face, but it’s
also about the entire range of motion that they might go through.
Capturing one human requires a few hours of capture work in a dedicated
environment like that. Then thousands of hours of processing work to
capture a precise and real-time replicatable version of that human in
the environment, and so one of the things that …

**蒂姆·斯威尼：**
一部分是捕捉人类。我们拥有非常先进的专用硬件，可以将人置于一个捕捉球体中，里面有几十个摄像头，以高分辨率、高帧率拍摄他们经历一系列动作的视频。然后捕捉人脸是很复杂的，因为我们脸部的细微差别以及所有肌肉、肌腱和脂肪如何协同工作，给我们带来不同的表情。这不仅仅关乎人脸的形状，还关乎他们可能经历的整个运动范围。在这样的专用环境中捕捉一个人需要几个小时的捕捉工作。然后需要数千小时的处理工作才能在环境中捕捉到该人的精确且可实时复制的版本，所以其中一件事情是……



<div class="dialogue-block">

**Tim Sweeney:** … that human in the environment. One of the things
that’s done is just capturing an actor or actress in the real world and
then using them in a video game. But the much more interesting thing
going on is capturing thousands of humans to form a dataset whose goal
is to encompass the entire range of faces in all of humanity, so going
around every culture, every continent, every age and every face variety
and capturing representative people so the entire range of faces is
represented.

**蒂姆·斯威尼：**
……环境中的那个人。其中一项工作就是在现实世界中捕捉演员或女演员，然后在视频游戏中使用他们。但更有趣的事情是捕捉数千个人类来形成一个数据集，其目标是涵盖全人类所有面孔的范围，所以要走遍每种文化、每个大陆、每个年龄段和每种面孔类型，并捕捉有代表性的人，以便代表所有面孔的范围。



<div class="dialogue-block">

**Tim Sweeney:** Then being able to combine and merge those together to
enable recreating an arbitrary face that the system’s never seen before.
One of the ideas is capture giant amounts of this high-precision data
and then you use it to reconstruct a face at a consumer level, like
maybe take an iPhone photo of somebody’s face and then capture a very
accurate depiction of that, not by synthesizing it then and there on
that device, but by combining all the known details of human faces to
accurately capture the most accurate representation of that. That’s the
data problem.

**蒂姆·斯威尼：**
然后能够将它们组合和融合在一起，从而能够重新创建一个系统从未见过的任意面孔。其中一个想法是捕捉大量这种高精度数据，然后你用它在消费者层面重建一张脸，比如也许用iPhone拍一张某人的脸部照片，然后捕捉到一个非常准确的描绘，不是通过在该设备上即时合成，而是通过结合人脸所有已知的细节来准确捕捉其最准确的表征。这就是数据问题。



<div class="dialogue-block">

**Tim Sweeney:** There’s a lot of other problems with computer graphics.
There’s technology for rendering hair, which is really hard because you
can’t render every, again, we know the laws of physics. It would be easy
to just render every hair. It would just be a billion times too slow.
You need approximations that capture the net effect of hair on rendering
and on pixels without calculating every single interaction of every
light with every strand of hair. That’s one part of it.

**蒂姆·斯威尼：**
计算机图形学还有很多其他问题。有渲染头发的技术，这真的很难，因为你不能渲染每一根，再说一遍，我们知道物理定律。仅仅渲染每一根头发会很容易。但那会慢上十亿倍。你需要近似值来捕捉头发对渲染和像素的净效应，而无需计算每一束光与每一根头发的每一次相互作用。这是一部分。



<div class="dialogue-block">

**Tim Sweeney:** There’s detailed features for different parts of faces.
There’s subsurface scattering because we think of humans as opaque, but
really our skin is light travels through it. It’s not completely opaque.
The way in which light travels through skin has a huge impact on our
appearance. This is why there’s no way you can paint a mannequin to look
realistic for a human. It’s just a solid surface and we’ll never have
the sort of detail you see.

**蒂姆·斯威尼：**
脸部的不同部位有详细的特征。还有次表面散射，因为我们认为人类是不透明的，但实际上我们的皮肤，光线会穿过它。它并非完全不透明。光线穿过皮肤的方式对我们的外表有巨大影响。这就是为什么你无法把人体模型画得像真人一样逼真。它只是一个坚实的表面，我们永远无法拥有你所看到的那种细节。



<div class="dialogue-block">

**Lex Fridman:** We should actually just linger on that. That kind of
blew my mind thinking through that. I think I heard that the oiliness of
the skin creates very specific nuanced, complex reflections, and then
some light is absorbed and travels through the skin and that creates,
would it be fair to say micro shadows or something? It creates textures
that are humanized, able to perceive and it creates the thing that we
consider human, whatever that is. You have to compute both that, the
reflection, how light interacts with the oiliness of the skin and how it
is also absorbed in, and all of that while considering all the muscles
involved in making the nuanced expression, just the subtle squinting of
the eyes or the subtle formation of a smile.

**莱克斯·弗里德曼：**
我们实际上应该稍微停留一下。思考这个问题让我大开眼界。我想我听说过皮肤的油性会产生非常特定、细致、复杂的反射，然后一些光线会被吸收并穿过皮肤，这会产生……可以说微阴影之类的东西吗？它会产生人性化的纹理，能够被感知，并创造出我们认为是人类的东西，不管那是什么。你必须计算这两者，反射，光线如何与皮肤的油性相互作用，以及它如何被吸收，所有这些，同时还要考虑到所有参与形成细微表情的肌肉，比如眼睛的轻微眯起或微笑的微妙形成。



<div class="dialogue-block">

**Lex Fridman:** It’s a stupid, annoying subtlety of human faces that
you have to capture, the difference between a real smile and a fake
smile. Man, I love human faces. I love humans in general. But the way to
show the beginning of a formation of a smile that actually reveals a
deep sadness, all of that. When I watch a human face, I can read that. I
can see that. Again, this is the engineering and the artist. You have to
have the tools that in real time can render something like that and
that’s incredibly difficult. But anyway, sorry. There’s a lot of this
kind of complexity in even just the lighting of a face.

**莱克斯·弗里德曼：**
你必须捕捉到人脸那种愚蠢、恼人的微妙之处，比如真笑和假笑的区别。天啊，我爱人脸。我爱人类。但是，那种展现一个微笑的开始，而这个微笑实际上揭示了深深的悲伤的方式，所有这些。当我观察人脸时，我能读懂。我能看到。再说一遍，这是工程和艺术。你必须拥有能够实时渲染类似东西的工具，而这非常困难。但无论如何，抱歉。即使仅仅是脸部光照，也存在很多这种复杂性。



<div class="dialogue-block">

**Tim Sweeney:** That’s right. Getting faces right requires the
interplay of literally dozens of different systems and aspects of
computer graphics. If any one of them is wrong, your eye is completely
drawn to that and you find it on the wrong side of uncanny valley. The
level of perfection needed in this area is vastly, vastly higher than
world rendering or grass or any of these other things. If the shadows on
a work of architecture are slightly wrong, you’re pretty \[inaudible
01:45:53\] with it actually. Your brain doesn’t really care that much.
But if anything wrong with a human, it’s totally jarring.

**蒂姆·斯威尼：**
是的。要正确处理面部，需要数十个不同系统和计算机图形学方面的相互作用。如果其中任何一个出错，你的眼睛会完全被吸引到那里，你会发现它处在恐怖谷的错误一侧。这个领域所需的完美程度远高于世界渲染、草地或任何其他这些东西。如果建筑作品上的阴影略有错误，你实际上对此\[听不清
01:45:53\]。你的大脑并不会太在意。但如果人类身上有任何错误，那会非常刺眼。



<div class="dialogue-block">

**Lex Fridman:** Can you speak more to the creation of digital humans
with MetaHuman, both on the editor side and sort of bringing it to life
side? It seems like because I’ve watched a bunch of videos, a bunch of
individual developers doing it, it’s not too difficult to bring a human
to life using the tooling that Unreal Engine editor provides.

**莱克斯·弗里德曼：**
你能多谈谈用MetaHuman创建数字人类吗，包括编辑器方面和赋予其生命方面？看起来，因为我看了一些视频，一些独立开发者在做这件事，使用虚幻引擎编辑器提供的工具来赋予人类生命似乎并不太难。



<div class="dialogue-block">

**Tim Sweeney:** There are two main tools. Compared to the old days
where every face was created by hand by an artist from scratch, one is
the MetaHuman creator tool for creating faces where you have a huge
number of parameters you can adjust to create a unique human by
adjusting all the different capabilities of them. You can then get that
with MetaHuman creator into Unreal Engine. Then you can add all kinds of
computer graphics features there in the engine. You could add clothing
using the cloth simulation system and you can adjust the hair and all
these other parameters on the thing.

**蒂姆·斯威尼：**
有两个主要的工具。与过去每个面孔都由艺术家从头开始手工创建的时代相比，一个是MetaHuman
Creator工具，用于创建面孔，你可以调整大量参数，通过调整它们的所有不同功能来创建一个独特的人类。然后你可以通过MetaHuman
Creator将其导入虚幻引擎。然后你可以在引擎中添加各种计算机图形功能。你可以使用布料模拟系统添加服装，还可以调整头发和所有其他参数。



<div class="dialogue-block">

**Tim Sweeney:** Then there’s MetaHuman Animator, a tool for animating a
human based on a facial capture, which can be done on a device as simple
as an iPhone and transfers the captured animation to the human you want,
which is not straightforward. If the actor has one face shape and the
character on screen has another face shape, the translation that needs
to be done from the actor to the face is actually really sophisticated
and non-obvious. If you just applied it literally, then it would be
completely wrong from your point of view.

**蒂姆·斯威尼：** 然后是 MetaHuman
Animator，一个基于面部捕捉来制作人类动画的工具，这可以在像 iPhone
这样简单的设备上完成，并将捕捉到的动画转移到你想要的人类身上，这并不简单。如果演员的面部形状与屏幕上角色的面部形状不同，那么从演员到面部的转换实际上非常复杂且不明显。如果你只是字面上应用它，那么从你的角度来看，它会完全错误。



<div class="dialogue-block">

**Tim Sweeney:** Those are the main tools that people are using now.
Then within the Unreal Engine, then you have a face and you can do
absolutely anything you want to it. You could also, if you decide to go
outside of the MetaHuman geometry pipeline, you could build your own
face, like any creature of any sort, and then use the animation tools to
animate it. But this is 30 years into a project that’s probably like 50
years in total to get to absolute photorealism and controllability for
absolutely everything. There’s vast amounts of work still to do, and we
don’t feel like we’ve solved the problem at all. We’ve just given
artists a big productivity multiplier and a quality multiplier, but this
is not in a state that we would say is done.

**蒂姆·斯威尼：**
这些是人们现在使用的主要工具。然后在虚幻引擎中，你拥有一个面孔，你可以对它做任何你想做的事情。如果你决定跳出MetaHuman几何管线，你也可以构建自己的面孔，比如任何类型的生物，然后使用动画工具为其制作动画。但这是一个已经进行了30年的项目，总共可能需要50年才能实现绝对的照片级写实和对所有事物的完全可控性。还有大量的工作要做，我们不觉得我们已经完全解决了这个问题。我们只是为艺术家提供了一个巨大的生产力倍增器和质量倍增器，但这还不是一个我们可以说已经完成的状态。



<div class="dialogue-block">

**Lex Fridman:** Nevertheless, I’ve seen people use it really
effectively. I saw it almost like plugins, maybe external services where
you can get the faces to approximate the mouth movements required to
speak a thing. That’s a really useful feature.

**莱克斯·弗里德曼：**
尽管如此，我看到人们非常有效地使用它。我看到它几乎像插件一样，也许是外部服务，你可以让面部模拟说话所需的嘴部动作。那是一个非常有用的功能。



<div class="dialogue-block">

**Tim Sweeney:** That’s right. When you have an artist or actor in your
studio and you’re recording a specific performance, you can just capture
their facial motion and apply it. But if all you have is a voice
recording or you’re generating a voice recording or it’s parametric or
procedural or AI generated, then you need the system to translate that
speech not only to movement of the mouth and lips, but also to facial
expressions and the whole intent. When we’re speaking, it’s our whole
face that’s active and emoting in different ways and not just a
mechanical motion of the pieces.

**蒂姆·斯威尼：**
是的。当你的工作室里有艺术家或演员，并且你正在录制特定的表演时，你可以直接捕捉他们的面部动作并应用它。但是，如果你只有录音，或者你正在生成录音，或者它是参数化的、程序化的或AI生成的，那么你需要系统将语音不仅转换为嘴唇的运动，还要转换为面部表情和整个意图。当我们说话时，是我们整个脸部都在活动，并以不同的方式表达情感，而不仅仅是各个部分的机械运动。



## Lumen global illumination

<div class="dialogue-block">

**Lex Fridman:** We spoke a bit about Nanai, so the magic behind the
virtual eye geometry system, but can you speak a little bit to Lumen and
in general what it takes to dynamically light in all the complicated
ways, the faces, the scenes that we discussed. What are some interesting
things to you that made the magic of it happen?

**莱克斯·弗里德曼：**
我们谈了一些关于Nanai的内容，也就是虚拟眼几何系统背后的魔力，但你能否稍微谈谈Lumen，以及总的来说，要以各种复杂的方式动态照亮我们讨论过的面部和场景，需要什么？对你来说，有哪些有趣的事情促成了这种魔力的发生？



<div class="dialogue-block">

**Tim Sweeney:** Lumen is a system for global illumination, meaning it’s
supposed to calculate the interaction of light with the entire scene in
a way that mimics reality. The first generation of engines that did
lighting just said, “Well, the light casts light and the surfaces it
hits are lit and the surfaces it doesn’t directly hit are dark, and
that’s just all the techniques we have.” You’d have an area that wasn’t
hit by any light being completely black.

**蒂姆·斯威尼：** Lumen
是一个全局光照系统，这意味着它应该以模仿现实的方式计算光线与整个场景的相互作用。第一代进行光照处理的引擎只是说：“嗯，光线投射光线，它照射到的表面被照亮，它没有直接照射到的表面是黑暗的，这就是我们拥有的所有技术。”你会看到一个没有被任何光线照射到的区域是完全黑暗的。



<div class="dialogue-block">

**Tim Sweeney:** But in reality, light bounces around the entire scene
dynamically. When a light hits a red wall, then most of the blue and
green light is absorbed, but the red light reflects off and now is
hitting other things. If you have a red wall with a white floor, light
is bouncing off of the red wall into the floor, and now the floor is
being turned red. The entire bouncing of light around the scene through
multiple bounces is the critical challenge to solve here.

**蒂姆·斯威尼：**
但在现实中，光线会在整个场景中动态反弹。当光线照射到红墙上时，大部分蓝光和绿光会被吸收，但红光会反射出去，然后照射到其他物体上。如果你有一面红墙和白色地板，光线会从红墙反射到地板上，然后地板就会变红。光线在场景中经过多次反弹的整个过程，是这里需要解决的关键挑战。



<div class="dialogue-block">

**Tim Sweeney:** Again, laws of physics are known and so the complete
solution to this, it was written down in the 1950s, I think. The real
magic here in Lumen is this system that Daniel Wright developed over the
course of many years based on ideas formed over a longer period of time
to calculate the way lighting bounces around at different scales ranging
from the scale of miles or kilometers down to the scale of pixels and
millimeters. To not only calculate at each level, but integrate it
seamlessly at each level to give the appearance of completely seamless
and accurate lighting. Previous techniques were highly specialized and
artists had to make a decision for each light about exactly what it did.
The goal, and a lot of the practice with it right now is you build a
scene, you place lights in it, and it just works to make it that much
easier.

**蒂姆·斯威尼：**
再说一遍，物理定律是已知的，所以这个问题的完整解决方案，我想是在20世纪50年代写下来的。Lumen真正的魔力在于这个系统，它是由丹尼尔·赖特在多年时间里，基于更长时间形成的理念开发出来的，用于计算光照在不同尺度上反弹的方式，从数英里或数公里的尺度一直到像素和毫米的尺度。不仅要在每个级别进行计算，还要在每个级别无缝集成，以呈现出完全无缝且准确的光照效果。以前的技术高度专业化，艺术家必须为每盏灯决定它到底做什么。目标，以及现在很多实践都是，你构建一个场景，在其中放置灯光，然后它就能正常工作，从而使其变得更加容易。



<div class="dialogue-block">

**Lex Fridman:** I mean, we’re watching, I’d recommend people go to this
blog post, look at that. It’s a dynamically, we should say that so
there’s the indoors and the outdoors, and to be able to dynamically
compute the impact of outdoor light, just look at that. Look at how
gorgeous that is. It’s just the lighting like look, we’re looking now at
an image of a cave. External light lighting the intricate complexity of
the insides of a cave. Look at that.

**莱克斯·弗里德曼：**
我的意思是，我们正在观看，我建议人们去看看这篇博客文章，看看那个。它是动态的，我们应该说，有室内和室外，并且能够动态计算室外光线的影响，看看那个。看看它有多么华丽。就像光照一样，看，我们现在正在看一张洞穴的图片。外部光线照亮了洞穴内部错综复杂的结构。看看那个。



<div class="dialogue-block">

**Tim Sweeney:** Light in the real world goes through a lot of bounces
and the effects of it are very subtle, but when they’re not there, you
miss them. Often a person can’t point out why a scene is wrong, but they
know it looks wrong, and it’s the lack of the subtle lighting cues that
we’re seeing here.

**蒂姆·斯威尼：**
现实世界中的光线会经历很多次反弹，其效果非常微妙，但当它们不存在时，你会想念它们。通常一个人无法指出场景为什么是错的，但他们知道它看起来不对，这就是我们在这里看到的缺乏微妙光照线索的原因。



<div class="dialogue-block">

**Lex Fridman:** For great, because we mentioned for great video games,
but also for great films, lighting can make a film, and we’re just
looking at sort of a very dramatic lighting of a scene. I can imagine
stepping into the scene. It’s exciting, it’s terrifying, and all of that
has to do with light, the interplay between light and darkness. It’s
incredible. It’s really, truly, truly incredible. Light is everything.
Then to put the power of the tooling in the hands of an artist, that is
really special.

**莱克斯·弗里德曼：**
对于伟大的作品来说，因为我们提到了伟大的视频游戏，但也包括伟大的电影，灯光可以成就一部电影，我们现在看到的正是一个场景中非常戏剧性的灯光。我可以想象自己走进这个场景。它令人兴奋，令人恐惧，所有这些都与光有关，光与暗的相互作用。这太不可思议了。这真的，真的，真的不可思议。光就是一切。然后把工具的力量交到艺术家手中，那真是太特别了。



<div class="dialogue-block">

**Tim Sweeney:** The industry has gone through a massive evolution and
there’s so many supporting systems to make this awesome, and always
artists.

**蒂姆·斯威尼：**
这个行业经历了一场巨大的变革，有如此多的支持系统来让这一切变得令人惊叹，而且始终离不开艺术家。



<div class="dialogue-block">

**Lex Fridman:** We’re looking at reflections on smooth surfaces. Oh
boy. Oh boy, look at how gorgeous that is.

**莱克斯·弗里德曼：**
我们正在观察光滑表面上的反射。哦，天哪。哦，天哪，看看那有多华丽。



<div class="dialogue-block">

**Tim Sweeney:** That’s right.

**蒂姆·斯威尼：** 是的。



<div class="dialogue-block">

**Lex Fridman:** Wow.

**莱克斯·弗里德曼：** 哇。



<div class="dialogue-block">

**Tim Sweeney:** You have to appreciate the algorithms are doing quite a
lot here. You can have a scene with a huge number of not just lights,
but also bright objects that reflect light off of them. Every one of
those has to be captured in the reflections in order for it to be
realistic. You can’t calculate every photon in the scene. You need
really detailed approximations, and that’s the field of computer
graphics. It’s about increasingly effective approximations of the laws
of physics, which are just totally intractable.

**蒂姆·斯威尼：**
你必须认识到，算法在这里做了很多工作。你可以拥有一个场景，其中不仅有大量的灯光，还有很多会反射光线的明亮物体。为了使其逼真，每一个物体都必须在反射中被捕捉到。你无法计算场景中的每一个光子。你需要非常详细的近似值，这就是计算机图形学领域。它是关于对物理定律进行越来越有效的近似，而这些物理定律本身是完全难以处理的。



<div class="dialogue-block">

**Lex Fridman:** But the result of that graphics is a feeling, is an
experience by the viewer. It’s just to me as a fan of, well, let’s say
beauty in the world, it’s exciting that we can create that
synthetically, artificially, via graphics. That just, it blows wide open
the possibilities of storytelling.

**莱克斯·弗里德曼：**
但这种图形的结果是一种感觉，是观看者的一种体验。对我来说，作为一个……嗯，可以说是世界上美的爱好者，能够通过图形人工地、合成地创造出这种美，这令人兴奋。这简直……它极大地拓宽了讲故事的可能性。



## Movies

<div class="dialogue-block">

**Tim Sweeney:** Outside of video games, a lot of people are using
Unreal Engine for movies, for films, and big congrats. I saw War is
Over, a short film that was made with Unreal Engine, won an Oscar. You
can add that to the resume. That’s huge, an Oscar-winning film made with
Unreal Engine. What do you see as the future of the use of Unreal Engine
in creating stories in the film industry?

**蒂姆·斯威尼：**
在视频游戏之外，很多人在电影制作中使用虚幻引擎，恭喜。我看了《战争结束了》，一部用虚幻引擎制作的短片，获得了奥斯卡奖。你可以把它加到你的履历里。这太棒了，一部用虚幻引擎制作的奥斯卡获奖影片。你如何看待虚幻引擎在电影行业创作故事方面的未来？



<div class="dialogue-block">

**Tim Sweeney:** Increasing capabilities and productivity. The limiting
factor in every one of these businesses is cost, and the more the engine
can make their jobs easier, the more power that brings them. One of the
big revolutions we’ve seen in Hollywood is the moving away from doing
computer graphics integration into a human scene with green screens to
moving to these large LED wall panels where they’re displaying real-time
computer graphics powered by the Unreal Engine. That’s a massive
improvement in quality.

**蒂姆·斯威尼：**
不断增强的能力和生产力。这些业务中每一个的限制因素都是成本，引擎越能让他们的工作更轻松，就能给他们带来更大的力量。我们在好莱坞看到的重大变革之一是，从使用绿幕将计算机图形集成到真人场景中，转向使用这些大型LED墙板，它们显示由虚幻引擎驱动的实时计算机图形。这是质量上的巨大提升。



<div class="dialogue-block">

**Tim Sweeney:** You can recognize the old green screen movies because
the lighting on the characters is just wrong. As much as they try to fix
it up, it never really works. But when you’re filming in front of an LED
panel with LED light emitters in front of you as well, the actor not
only picks up all of the lighting from the actual natural scene that
they’re supposed to appear in the movie, but they also can look around
and see it, and they’re aware of exactly what set they’re acting in, and
just the overall end result is that much higher. It’s as much because
the actors are able to do their jobs better seeing the scene they’re in
because the technology is enabling a better lighting calculation and a
better interplay of virtual light and real-world light to make the end
result awesome.

**蒂姆·斯威尼：**
你可以认出那些老旧的绿幕电影，因为角色身上的光照完全是错的。无论他们怎么努力修复，都无法真正奏效。但是当你面前有LED面板，还有LED发光器时进行拍摄，演员不仅能捕捉到他们应该出现在电影中的实际自然场景的所有光照，而且他们还能环顾四周看到它，他们确切地知道自己在哪个场景中表演，最终的整体效果要好得多。这很大程度上是因为演员能够更好地完成工作，因为他们能看到自己所在的场景，也因为技术能够实现更好的光照计算以及虚拟光和现实世界光线之间更好的相互作用，从而使最终效果令人惊叹。



<div class="dialogue-block">

**Lex Fridman:** There’s a lot of excitement around generative AI. What
do you think is the future of the interplay between what a human artist
creates and what an AI system can create in Unreal Engine?

**莱克斯·弗里德曼：**
人们对生成式人工智能非常兴奋。您认为人类艺术家创作的内容与人工智能系统在虚幻引擎中创作的内容之间，未来的相互作用会是怎样的？



<div class="dialogue-block">

**Tim Sweeney:** I think a lot of people in the industry are overly
optimistic about the rate of progress of AI for video and other things
like that. The real problem is consistency, like spurting out an image
is really high quality, but with video over the course of seeing all the
AI approaches have consistency issues going from one place to another. I
don’t think that those will just be remedied easily. Fundamentally, AI
just doesn’t have anything resembling an understanding of the entire
scene they’re in, the entire arc of the movie or plot they’re in and the
entirety of the world around them and how it might affect the scene.
Whereas game engines have that exactly where they need to be. I think
what we’re going to see in the space of world-class high-quality
productions isn’t just everybody moves to AI and a large part of the
human creatives contributing to that are obsolete. I think what we’re
going to see is AI becoming a multiplying force on the power of human
creatives, making them able to create better stuff more quickly and with
higher quality end results.

**蒂姆·斯威尼：**
我认为行业内很多人对人工智能在视频和其他类似事物上的进展速度过于乐观。真正的问题在于一致性，比如生成一张高质量的图像很容易，但在视频方面，观察所有人工智能方法，会发现从一个地方到另一个地方都存在一致性问题。我不认为这些问题能轻易得到解决。从根本上说，人工智能根本不具备对它们所处整个场景、它们所处电影或情节的整个弧线以及它们周围整个世界的理解，以及这些如何影响场景。而游戏引擎恰恰拥有它们所需要的东西。我认为，在世界级高质量制作领域，我们不会看到每个人都转向人工智能，也不会看到大部分人类创作者因此而过时。我认为我们会看到人工智能成为人类创造力的倍增器，使他们能够更快地创造出更好的东西，并获得更高质量的最终结果。



<div class="dialogue-block">

**Tim Sweeney:** I think unlike the fields of generative 2D art and
generative text, I think the future of AI is much more complex and
nuanced. I think your interview with Mark Zuckerberg conducted in VR was
a really good first example of this. You did this VR discussion. It was
capturing your faces and then rendering a completely 3D computer
graphics model of your faces. Then the end result was patched up by an
AI image enhancer that was able to add an awful lot of the missing
subtleties that are lost by normal computer graphics rendering. That’s
the first step.

**蒂姆·斯威尼：**
我认为与生成式2D艺术和生成式文本领域不同，人工智能的未来要复杂和微妙得多。我认为你在VR中对马克·扎克伯格的采访就是一个很好的初步例证。你进行了这次VR讨论。它捕捉了你们的面部，然后渲染了一个完全3D的计算机图形模型。然后最终结果由一个AI图像增强器进行了修补，它能够添加大量普通计算机图形渲染所丢失的细微之处。这是第一步。



<div class="dialogue-block">

**Tim Sweeney:** You can imagine the output of Unreal Engine being
enhanced by an AI pixel shading post processor is one thing. You can
imagine creation of objects being enhanced, especially mashing up high
quality objects that have already been created, like Epic’s Quixel team
went around the world and scanned tens of thousands of real world
objects at extremely high levels of quality. They have everything from
rocks to trees to archeological finds and so on, all captured there. We
have an awesome library of them on the fab content site. What’s missing
is the ability to create arbitrary amounts of new content. I think using
data like that and AI to create completely new trees that meet your
specification from all of the knowledge that has built up of high
quality scan trees, it’s going to be a really valuable thing.

**蒂姆·斯威尼：**
你可以想象虚幻引擎的输出被AI像素着色后处理器增强是一回事。你可以想象物体创建被增强，特别是将已经创建的高质量物体混合在一起，比如Epic的Quixel团队走遍世界，以极高质量扫描了数以万计的真实世界物体。他们拥有从岩石到树木再到考古发现等等的一切，都捕捉在那里。我们在Fab内容网站上拥有一个很棒的这些物体的库。所缺少的是创建任意数量新内容的能力。我认为利用这样的数据和AI，从已经积累的高质量扫描树木的知识中创建完全符合你规格的新树木，这将是一件非常有价值的事情。



<div class="dialogue-block">

**Tim Sweeney:** But I don’t see this reducing the need for people or
the role of people. Rather, I think it actually is probably an enhancer
on that. I can’t help but think when I go on Amazon and Netflix to watch
a movie there’s an awful lot of linear content and most of it isn’t very
good because of the limitations of the media and the budgets and of
other things. If we can use AI as an enhancer on that, then everybody’s
going to have even more opportunity than they have now. Every single
technological revolution has changed the way that people work, but it’s
ultimately created more opportunity for people. The pundits predicting
that this might be the last, but I think just the opposite. I’m an
optimist on this and an optimist that it’s going to create opportunity
for everyone.

**蒂姆·斯威尼：**
但我不认为这会减少对人的需求或人的作用。相反，我认为它实际上可能会增强这一点。我忍不住想，当我去亚马逊和Netflix看电影时，有大量的线性内容，其中大部分都不是很好，因为媒体、预算和其他方面的限制。如果我们能利用人工智能来增强这一点，那么每个人都会比现在拥有更多的机会。每一次技术革命都改变了人们的工作方式，但最终都为人们创造了更多的机会。专家们预测这可能是最后一次，但我认为恰恰相反
