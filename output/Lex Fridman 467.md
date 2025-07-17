---
title: "Tim Sweeney: Fortnite, Unreal Engine, and the Future of Gaming | Lex Fridman Podcast #470 Transcript"
layout: "post.njk"  
date: "2025-05-25"
tags:
  - "视频笔记"
  - "游戏开发"
  - "虚幻引擎"
  - "编程"
  - "独立游戏"
  - "Epic Games"
data:
  author: "Lei"
  podcast_program: ""
  speaker: ""
  guest: "" 
  source: "https://lexfridman.com/tim-sweeney-transcript"
---

# Tim Sweeney: Fortnite, Unreal Engine, and the Future of Gaming \| Lex Fridman Podcast \#470

**Source:** https://lexfridman.com/tim-sweeney-transcript

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
  this
  episode’s main page
- Watch the
  full
  YouTube version of the podcast

## Table of Contents

Here are the loose “chapters” in the conversation. Click link to jump
approximately to that part in the transcript:

- Episode highlight
- Introduction
- 10,000 hours programming
- Advice for young programmers
- Video games in the 80s and
  90s
- Epic Games origin story
- Indie game development
- Unreal Engine
- Technical details of Unreal
  Engine
- Constructive solid geometry
- Dynamic lighting
- Volumetric fog
- John Carmack
- Evolution of Unreal Engine
- Unreal Engine 5
- Creating realistic humans
- Lumen global illumination
- Movies
- Simulating reality
- Metaverse
- Fortnite
- Scaling
- Game economies
- Standardizing the Metaverse
- Verse programming language
- Concurrency
- Unreal Engine 6
- Indie game developers
- Apple
- Epic Games Store
- Future of gaming
- Greatest games ever made
- GTA 6 and Rockstar Games
- Hope for the future

![Tim Sweeney: Fortnite, Unreal Engine, and the Future of Gaming \| Lex
Fridman Podcast \#467
Thumbnail](https://img.youtube.com/vi/477qF6QNSvc/maxresdefault.jpg)

## Episode highlight

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

**Tim Sweeney:** And this is why there’s no way you can paint a
mannequin to look realistic for a human. It’s just a solid surface and
we’ll never have the sort of detail you see.

**蒂姆·斯威尼：**
这就是为什么你无法把人体模型画得像真人一样逼真。它只是一个坚实的表面，我们永远无法拥有你所看到的那种细节。

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

**Tim Sweeney:** That’s right. Getting faces right requires the
interplay of literally dozens of different systems and aspects of
computer graphics. And if any one of them is wrong, your eye is
completely drawn to that and you find it on the wrong side of Uncanny
Valley.

**蒂姆·斯威尼：**
是的。要正确处理面部，需要数十个不同系统和计算机图形学方面的相互作用。如果其中任何一个出错，你的眼睛会完全被吸引到那里，你会发现它处在恐怖谷的错误一侧。

## Introduction

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

**Lex Fridman:** When did you first fall in love with computers and
maybe with programming?

**莱克斯·弗里德曼：** 你最初是什么时候爱上计算机，或许是编程的？

## 10,000 hours programming

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

**Lex Fridman:** Do you remember what you wrote in BASIC? Is it a video
game type thing? Is it like for loop, some numerical thing? Do you
remember?

**莱克斯·弗里德曼：**
你还记得你用BASIC写了什么吗？是视频游戏之类的东西吗？还是像for循环，一些数字运算之类的？你还记得吗？

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

**Lex Fridman:** Yeah, the friction and the pain is the guide to
learning in programming. If I were to describe programming journey
that’d be marked by pain and that pain, you shouldn’t escape the pain.
The pain is instructive for you to understand programming languages. But
do you remember what kind of stuff you were writing at that time? Just
the early programs?

**莱克斯·弗里德曼：**
是的，摩擦和痛苦是编程学习的指引。如果我要描述编程之旅，那它将充满痛苦，而你不应该逃避这种痛苦。这种痛苦对于你理解编程语言是有益的。但是你还记得当时你写了些什么吗？就是早期的程序？

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

**Lex Fridman:** What advice would you give to a young programmer today
who wants to be the next Tim Sweeney? Maybe a person who's inspired by
you and wants to create something that revolutionizes the industry one
day?

**莱克斯·弗里德曼：**
对于今天想成为下一个蒂姆·斯威尼的年轻程序员，你有什么建议？也许是一个受你启发、想要创造革命性行业产品的人？

**Tim Sweeney:** I'd say don't wait for permission, just start building
things. The beauty of programming is that it costs almost nothing. You
need a computer which almost everybody has access to now, and you need
time. And so if you're in school and you want to be a programmer, don't
wait for computer class to teach you programming, because it will
probably be not a very good programming class. Just start learning it
yourself.

**蒂姆·斯威尼：**
我会说不要等待许可，直接开始构建东西。编程的美妙之处在于它几乎不需要任何成本。你需要一台计算机，现在几乎每个人都能接触到，而且你需要时间。所以如果你在学校，并且想成为一名程序员，不要等待计算机课来教你编程，因为那可能不是一个很好的编程课程。直接开始自学吧。

**Tim Sweeney:** There are so many resources online now, so many
resources for learning and all the programming languages are documented
extensively online. You can just search for them. Every programming
language comes with a compiler now, which is free. It's not like the old
days where you had to buy expensive software to compile your code. Just
start building things. I recommend building some games because I think
that's the most fun type of programming you can do.

**蒂姆·斯威尼：**
现在网上有如此多的资源，有很多学习资源，所有的编程语言在网上都有广泛的文档。你可以直接搜索它们。现在每种编程语言都配有编译器，而且是免费的。不像以前那样，你必须购买昂贵的软件来编译你的代码。直接开始构建东西吧。我推荐构建一些游戏，因为我认为那是你能做的最有趣的编程类型。

**Lex Fridman:** Do you think there's value in 10,000 hours, like
spending a lot of time with one language, one framework to try to master
the craft there?

**莱克斯·弗里德曼：**
你认为一万小时法则有价值吗，比如花很多时间在一种语言、一个框架上，试图掌握那里的技艺？

**Tim Sweeney:** Yes, absolutely. Programming is really an artisanal
craft that you learn by doing it. You can learn the basics through
theory, but actually becoming a good programmer is just hands-on work.
And the sooner you start, the better, and the more you practice, the
better you get.

**蒂姆·斯威尼：**
是的，绝对如此。编程实际上是一门通过实践学习的手工艺术。你可以通过理论学习基础知识，但真正成为一名优秀的程序员就是动手实践。你开始得越早越好，你练习得越多，你就会变得越好。

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

**Lex Fridman:** All the experimentation and all the exploration somehow
contributed, somehow made sense later on. All of that is integrated
somehow in the stuff you build. It’s funny how life works. The pieces
kind of come together eventually.

**莱克斯·弗里德曼：**
所有的实验和探索不知何故都做出了贡献，不知何故在后来都变得有意义。所有这些都以某种方式整合到你所构建的东西中。生活就是这样运作的，很有趣。这些碎片最终会拼凑在一起。

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

**Lex Fridman:** Also, I think what’s useful is over and over learning a
hard thing and then showing to yourself that you can do it, that you can
learn a hard thing. So then when you come to having to write a 3D engine
in ways that haven’t been done before, you’re like, I’ve been here. I’ve
been here in this experience, I don’t know what to do, but we’ll figure
it out. We’ll learn. I’ll learn all the necessary components. So just
not being afraid of something new.

**莱克斯·弗里德曼：**
而且，我认为有用的地方在于，一次又一次地学习困难的事物，然后向自己证明自己能做到，能学会困难的事物。所以，当你遇到需要以前所未有的方式编写3D引擎时，你会想，我经历过这个。我经历过这种体验，我不知道该怎么做，但我们会想办法。我们会学习。我会学习所有必要的组成部分。所以，只是不要害怕新事物。

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

**Lex Fridman:** And whether you’re a programmer or an artist, you
should probably take linear algebra, even though it doesn’t make sense
at the time.

**莱克斯·弗里德曼：**
无论你是程序员还是艺术家，你可能都应该学习线性代数，即使当时它看起来没什么意义。

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

**Tim Sweeney:** Yeah, and I think this is something that’s kind of
changing in America. There’s so much focus on grades and homework and
structure around kids’ lives. When I was growing up, my mom would feed
me and my neighbors’ moms would feed them breakfast and they’d be like,
well, be back by dark.

**蒂姆·斯威尼：**
是的，我认为这在美国正在发生一些变化。现在人们过分关注成绩、作业以及孩子们生活中的条条框框。我小时候，我妈妈会给我做饭，邻居的妈妈们会给他们做早餐，然后他们会说，嗯，天黑前回来。

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

**Lex Fridman:** So on the video game side, when did you first fall in
love with video games?

**莱克斯·弗里德曼：**
那么在电子游戏方面，你是什么时候第一次爱上电子游戏的？

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

**Lex Fridman:** That’s funny. That’s great.

**莱克斯·弗里德曼：** 真有趣。太棒了。

**Tim Sweeney:** What technique was being used there? And that was a
puzzle solving at a grand scale, and it was so fun.

**蒂姆·斯威尼：**
那里用了什么技术？那是一个大规模的解谜过程，而且非常有趣。

## Epic Games origin story

**Lex Fridman:** So take me there in the early 90s, so you launched Epic
Games in 1991, so the writing of your first big video game ZZT, what was
it like? What was the technical challenges? What were the psychological
challenges of building that?

**莱克斯·弗里德曼：** 那么带我回到90年代初，你在1991年创办了Epic
Games，你创作你的第一款大型视频游戏ZZT是什么样的？技术挑战是什么？构建它面临的心理挑战又是什么？

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

**Lex Fridman:** What did that feel like, just getting money and
probably feeling this immense success from something you’ve created?

**莱克斯·弗里德曼：**
那是什么感觉，拿到钱，并且可能从你创造的东西中感受到这种巨大的成功？

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

**Lex Fridman:** But on the editor front, that’s such a fascinating
philosophy that you always allow people to create their own worlds. You
have an engine from which you simulate the world that the game is in.
You have the actual game, and you also have the freedom for creators to
create various, in Fortnite, islands of their own. With everything you
ship, that freedom to create is always there. That’s really interesting.

**莱克斯·弗里德曼：**
但在编辑器方面，这是一种非常迷人的哲学，你总是允许人们创造自己的世界。你有一个引擎，用来模拟游戏所在的世界。你有实际的游戏，你也给予创作者自由，让他们在《堡垒之夜》中创造各种属于自己的岛屿。你发布的每一件东西，都始终包含着创造的自由。这真的很有趣。

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

**Lex Fridman:** If we could just linger on the 90s, so you said
bulletin boards, maybe you can explain what that’s like and also explain
the birth of the internet, what that was like. What was the internet
like in the 90s?

**莱克斯·弗里德曼：**
如果我们可以稍微停留在90年代，你说到电子布告栏系统，也许你可以解释一下那是什么样的，并且也解释一下互联网的诞生，那是什么样的。90年代的互联网是什么样的？

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

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。

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

**Tim Sweeney:** And then Steam came along and introduced digital
distribution and made digital distribution of legit games so convenient
that most players moved away from piracy towards that, and their
practices were then followed by others, and the early digital industry
took form.

**蒂姆·斯威尼：** 然后 Steam
出现了，引入了数字分发，并使正版游戏的数字分发变得如此方便，以至于大多数玩家从盗版转向了它，他们的做法随后被其他人效仿，早期的数字产业由此形成。

## Indie game development

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

**Lex Fridman:** And constantly try to do something that others aren’t
doing.

**莱克斯·弗里德曼：** 并且不断尝试做一些别人没有在做的事情。

**Tim Sweeney:** Yeah, that’s right. Because if you look at every
market, there’s a few markets where the current leader…

**蒂姆·斯威尼：**
是的，没错。因为如果你审视每一个市场，会发现有一些市场，其当前的领导者……

**Tim Sweeney:** Look at every market. There’s a few markets where the
current leader came late to the space, usually because the prior leader
failed so horribly. But most of the time the company that’s succeeding
and winning in a market is the first or second entrant there. They’ve
just continually buoyed their success.

**蒂姆·斯威尼：**
审视每一个市场。有一些市场，当前的领导者是后来才进入这个领域的，通常是因为之前的领导者失败得太惨。但大多数时候，在一个市场中取得成功并获胜的公司，是第一个或第二个进入者。他们只是不断地巩固自己的成功。

**Lex Fridman:** Great advice and fascinating. But on a human level, was
it lonely, was it scary, you sitting there as a developer?

**莱克斯·弗里德曼：**
很棒的建议，而且引人入胜。但在人性的层面上，你作为一名开发者坐在那里，会感到孤独、害怕吗？

**Tim Sweeney:** I’d say it was the opposite of lonely because the thing
that spurred me to actually release this was seeing kids playing the
game in my neighborhood and having fun and being like, “This is really
good.” And seeing them enjoying it and laughing and pointing at the
screen and getting together and just wanting to play more.

**蒂姆·斯威尼：**
我会说恰恰相反，一点也不孤独，因为真正促使我发布这个游戏的是看到邻居家的孩子们玩这个游戏，玩得很开心，并且说：“这个真好玩。”看到他们享受其中，欢笑，指着屏幕，聚在一起，并且想玩更多。

**Lex Fridman:** That’s awesome.

**莱克斯·弗里德曼：** 太棒了。

**Tim Sweeney:** And the human element was always pervasive because I
did not only receive orders, but people would actually write letters. We
wrote letters back then in the 1990s. People would say how much they
were enjoying the game and how their kids were playing the game and so
on and so on. So it felt very connected.

**蒂姆·斯威尼：**
人文因素始终无处不在，因为我不仅收到订单，人们还会真的写信。在20世纪90年代，我们还写信。人们会说他们多么喜欢这款游戏，他们的孩子如何玩这款游戏等等。所以感觉联系非常紧密。

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

**Lex Fridman:** So I’m sure people know, but Epic Games was created in
1991 and went on to transform the gaming industry several times, one of
which is Unreal Engine. So let’s talk through the origin story of that.
You said that when Wolfenstein and Doom came out, that changed
everything, so take me to that moment.

**莱克斯·弗里德曼：** 我相信人们都知道，Epic Games 成立于 1991
年，并多次改变了游戏行业，其中之一就是虚幻引擎。那么让我们来谈谈它的起源故事。你说过当《德军总部》和《毁灭战士》问世时，一切都改变了，所以带我回到那个时刻。

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

**Lex Fridman:** I mean for me, just sorry to pause on that, I think
Wolfenstein was one of the most amazing moments of my own life. Just
being able to, like you said, in real time move about a
three-dimensional world. I just remember just moving around just in what
is that feeling like? I mean, you feel transported into another world.

**莱克斯·弗里德曼：**
我的意思是，对我来说，很抱歉打断一下，我认为《德军总部》是我生命中最令人惊叹的时刻之一。就像你说的，能够实时地在一个三维世界中移动。我只记得在那种感觉中四处走动，那是什么感觉？我的意思是，你感觉自己被传送到了另一个世界。

**Tim Sweeney:** You feel that you’re there.

**蒂姆·斯威尼：** 你感觉自己身临其境。

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。

**Tim Sweeney:** Especially when you turn the lights down in your room
and you turn the sound up on your speakers and it will scare you. And
you’ll feel like that fireball that’s coming at you is going to kill
you. That was an amazing time. Because we hadn’t experienced that
before. There was nothing like that. You’d watch a movie, a scary movie
or whatever. It was just this thing that was happening. This was you.
This was you in a 3D world.

**蒂姆·斯威尼：**
尤其是当你调暗房间的灯光，调大扬声器的音量时，它会吓到你。你会感觉那个向你飞来的火球会杀死你。那是一个令人惊叹的时代。因为我们以前从未体验过那种感觉。没有任何东西能与之相比。你看电影，恐怖电影或其他什么。那只是正在发生的事情。而这是你。这是你在一个3D世界里。

**Lex Fridman:** So how did that change Epic, this realization that the
future of gaming is going to be 3D?

**莱克斯·弗里德曼：**
那么，这种认识——游戏的未来将是3D的——是如何改变Epic的呢？

**Tim Sweeney:** Well, at first I was really depressed.

**蒂姆·斯威尼：** 嗯，起初我非常沮丧。

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。

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

**Lex Fridman:** Wow.

**莱克斯·弗里德曼：** 哇。

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

**Tim Sweeney:** And it was a crazy project because it was three and a
half years of development on a game that we always thought was six
months from shipping. And it was like three and a half years of 70 or 80
hour weeks for most everybody working on the project, not even knowing
what problems we’d need to solve next because we were so immersed in the
current ones.

**蒂姆·斯威尼：**
那是一个疯狂的项目，因为我们花三年半的时间开发一款我们一直认为离发售只有六个月的游戏。对于项目中的大多数人来说，那是三年半每周工作70或80个小时的日子，甚至不知道接下来需要解决什么问题，因为我们完全沉浸在当前的问题中。

**Lex Fridman:** Were there moments when you were losing hope that this
might take too long and the company will run out of money?

**莱克斯·弗里德曼：**
有没有那么一些时刻，你开始失去希望，觉得这可能会花费太长时间，公司会没钱了？

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

**Lex Fridman:** What about the interdisciplinary aspect of it? Like you
said, sort of artists, engineers or programmers, designers, all of them
working together. What was that, the 20 people, what was the dynamic
there like working insane hours? What was it like to make a team like
that work together well as an orchestra to actually deliver the game?

**莱克斯·弗里德曼：**
那它的跨学科方面呢？就像你说的，艺术家、工程师或程序员、设计师，他们都在一起工作。那20个人，在疯狂工作的情况下，那里的动态是怎样的？让这样一个团队像管弦乐队一样良好合作，最终交付游戏，那是什么感觉？

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

**Tim Sweeney:** And so everybody was very new to this and didn’t have
any assumptions about how companies worked. And so you put all of these
people together and it was really a constant interplay of talent as
people were learning how to work together as a team. Nobody had
management experience. Most people hadn’t chipped a game before they
worked with Epic. And we were figuring it out as we went.

**蒂姆·斯威尼：**
所以每个人对这个都很陌生，对公司如何运作也没有任何先入为主的观念。所以你把所有这些人聚集在一起，这实际上是人才之间持续不断的相互作用，因为人们在学习如何作为一个团队一起工作。没有人有管理经验。大多数人在与Epic合作之前都没有制作过游戏。我们是一边做一边摸索的。

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

**Lex Fridman:** I heard you still program, but how much programming
were you doing back then? You mentioned the hours, probably insane
hours, so it’d be almost fun to talk about your setup, what a day in the
life of Tim Sweeney in the ’90 when you were building Unreal looked
like.

**莱克斯·弗里德曼：**
我听说你现在还在编程，但当时你做了多少编程工作？你提到了工作时间，可能是疯狂的工作时间，所以谈论你的工作环境，90年代你构建《虚幻》时蒂姆·斯威尼的一天是什么样的，可能会很有趣。

**Tim Sweeney:** Well, we’d all gravitated towards a work schedule that
maximized productivity. And that usually meant waking up late. Usually
we’d get to work around noon, usually work till like 2:00 A.M. or so,
3:00 A.M. sometimes.

**蒂姆·斯威尼：**
嗯，我们都倾向于一种能最大限度提高生产力的工作时间表。那通常意味着晚起。通常我们会在中午左右开始工作，一直工作到凌晨两点左右，有时是凌晨三点。

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。

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

**Lex Fridman:** What programming language are we talking about? C? You
mentioned there’s this pile of assembly. What was your decision in
choosing the programming language that Unreal Engine would be written
in?

**莱克斯·弗里德曼：**
我们在谈论什么编程语言？C语言？你提到有一堆汇编代码。你选择用什么编程语言来编写虚幻引擎的决定是什么？

**Tim Sweeney:** I’d grown up learning with Pascal as my favorite
language.

**蒂姆·斯威尼：** 我从小学习 Pascal，那是我的最爱语言。

**Lex Fridman:** Nice.

**莱克斯·弗里德曼：** 不错。

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

**Lex Fridman:** Yeah and turned out to be a pretty good bet because C++
out of all of those languages ended up being the dominant
performance-oriented language that survives to this day.

**莱克斯·弗里德曼：**
是的，结果证明这是一个相当不错的赌注，因为在所有这些语言中，C++
最终成为主流的性能导向语言，并且一直沿用至今。

**Tim Sweeney:** Yeah, yeah. It’s because it solves all the problems at
scale. Often through manual pain, but always solves them.

**蒂姆·斯威尼：**
是的，是的。因为它能大规模地解决所有问题。通常需要付出艰辛的努力，但总能解决它们。

**Lex Fridman:** Yeah.

**莱克斯·弗里德曼：** 是的。

**Tim Sweeney:** And a lot of other languages do better in a lot of
theoretical aspects and are better for some usage cases, but you can’t
do everything and that’s very limiting.

**蒂姆·斯威尼：**
很多其他语言在许多理论方面做得更好，并且更适合某些使用场景，但你无法做到所有事情，这非常具有局限性。

**Lex Fridman:** All right, so ridiculous questions, but did you have
one monitor, two monitors? Were you picking on the keyboard?

**莱克斯·弗里德曼：**
好吧，所以有些荒谬的问题，但是你用一个显示器还是两个显示器？你对键盘有什么特别的要求吗？

**Tim Sweeney:** Okay.

**蒂姆·斯威尼：** 好的。

**Lex Fridman:** Were you picking on the chair? What are we talking
about? Let’s paint a picture.

**莱克斯·弗里德曼：** 你挑椅子吗？我们到底在说什么？让我们描绘一下情景。

**Tim Sweeney:** Okay. I went through a big transition there.

**蒂姆·斯威尼：** 好的。我经历了一个很大的转变。

**Lex Fridman:** Okay, great.

**莱克斯·弗里德曼：** 好的，太棒了。

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

**Lex Fridman:** Wow. Nice.

**莱克斯·弗里德曼：** 哇。不错。

**Tim Sweeney:** View in 1996.

**蒂姆·斯威尼：** 1996年的视野。

**Lex Fridman:** State of the art.

**莱克斯·弗里德曼：** 顶尖水平。

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

**Lex Fridman:** Wow.

**莱克斯·弗里德曼：** 哇。

**Tim Sweeney:** And a 200 megahertz CPU. So it tripled the speed of
compiles and just made me massively more productive. So that’s what I
was using throughout Unreal Engine development and chipped with that.

**蒂姆·斯威尼：**
还有一个200兆赫的CPU。所以它使编译速度提高了三倍，让我变得效率极高。这就是我在整个虚幻引擎开发过程中使用的配置，并用它完成了开发。

**Lex Fridman:** By the way, people in the ’90s would’ve been blown away
by this workstation. I love it. Yeah, yeah. In writing, were you
considering the hardware much? Was there a sense, so for people who
don’t know Unreal Engine, rendering, I guess, is all software. Doesn’t
use the hardware. But were you trying to optimize, as I understand,
maybe you can correct me, but were you trying to optimize to the
hardware at all?

**莱克斯·弗里德曼：**
顺便说一句，90年代的人看到这个工作站一定会惊呆的。我喜欢。是的，是的。在写作时，你是否会过多考虑硬件？是否有这样一种感觉，对于那些不了解虚幻引擎的人来说，渲染，我想，完全是软件的。不使用硬件。但据我所知，你是否试图优化，也许你可以纠正我，但你是否试图针对硬件进行优化？

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
