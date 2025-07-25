---
title: "苹果炮轰大模型不懂推理？OpenAI O3 pro发布奥特曼说奇点已到？｜苹果论文GSM-Symbolic深度解读"
layout: "post.njk"  
date: "2025-07-10"
tags:
  - "视频笔记"
  - "苹果"
  - "OpenAI"
  - "大语言模型"
  - "推理能力"
  - "奇点"
data:
  author: "Lei"
  podcast_program: ""
  speaker: ""
  guest: "" 
  source: "#${id}"
---

# 苹果炮轰大模型不懂推理？OpenAI O3 pro发布奥特曼说奇点已到？｜苹果论文GSM-Symbolic深度解读

<div class="intro">

苹果公司的“GSM-Symbolic”研究指出大型语言模型（LLM）可能缺乏真正的逻辑推理能力，而更像是通过模式匹配来预测答案。一时间舆论哗然，正值WWDC苹果AI发布反响平平，OpenAI
O3
Pro刚发布就惨遭“背刺”，苹果这番言论让科技圈群情激愤。那么，苹果的批评是否成立？这场争论背后又揭示了AI发展的何种趋势？



<div class="stats">

### 报告信息

总字数：约 7420 字  
预计阅读时间：约 25 分钟



<div class="toc">

### 目录



一键复制为Markdown

## 一、Apple的论文揭示了什么行业真相？

### 大模型只是背题机器吗？

最近，苹果公司发表的一篇论文引发了热议，其核心观点是严厉批评大型模型的推理能力，甚至有观点认为“还不如狗”。当然，“不如狗”是个人化的解读，但论文确实指出了大模型在推理方面存在的根本性问题，即它们常常会犯一些非常基础的错误。

这篇论文的标题就极具冲击力，直指模型的推理和计算能力本质上是一种“幻觉”。其中一个最直接、最能引起共鸣的实验，让人联想到大学数学考试的场景：老师告诉你某道题非常重要，你只需要背下来即可。然而到了考场，老师仅仅更换了题目中的数字，大多数人就束手无策了。苹果的研究者用同样的方法测试大模型，发现其错误率显著提高。这不禁让人惊呼，原来大模型也和那些只会背题、不懂变通的学生一样，稍微改变条件就不会解答了。

另一个场景是在题目中加入干扰信息。比如，在解决一个数学问题时，旁边突然插入一句“苹果树上的苹果有点少”。结果，大模型在回答时竟会将这句话理解进去，从而减少答案的数值。这同样与我们作为学生时的经历高度相似：当我们对知识点掌握不牢时，任何一点细微的条件变化或无关的干扰都可能让我们感到困惑，从而偏离正确的解题思路。

此外，论文还指出大模型在面对难题时容易“放弃”。对于简单问题，模型通常能迅速给出答案，不会耗费太多时间。但研究者使用了一个经典的游戏——**汉诺塔**（**Hanoi
Tower:**
一种经典的数学谜题和递归算法问题，常用于测试逻辑和规划能力。）——来测试模型。当问题变得更加复杂，例如增加到十几轮时，无论是常规的“快思考”模型还是专门的推理模型，都出现了无响应的情况。

值得注意的是，这篇论文不仅批评了推理模型，也顺带对普通的大型模型进行了再次抨击。这实际上是延续了他们去年10月份一篇论文的论调，这次是将旧论点重提，并把推理模型也纳入了批评范围。包括Anthropic的Claude、OpenAI的模型以及DeepSeek等，几乎所有主流模型都被拿来测试并受到了批评。这让业界感到震惊：这些模型的表现真的有这么差吗？似乎与我们日常使用的体验并不完全相符。

### 苹果是在洗白还是故意设局？

这篇论文发布的时间点非常微妙。就在苹果WWDC大会之后，苹果自家的人工智能（Apple
Intelligence）被认为沉寂了一年，未能带来颠覆性的突破。紧接着，苹果就发表了这样一篇指出业界主流大模型推理能力不足的论文。这不禁让人猜测，苹果是否在为自己的AI进展缓慢而“洗白”，通过指出“别人也不行”来为自己辩护。

论文在6月7日发布，但很快，到了6月10日，就出现了反转，而且是相当“打脸”的反转。后续的批评声音指出，苹果的实验设计本身可能存在问题，其得出的结论有失偏颇。

一个有趣的细节是，这篇引发巨大争议的论文，其第一作者是一名实习生。这位在读博士生于今年2月才加入苹果实习，6月便发表了这篇论文，其后署名的是一众辅助研究人员。一个实习生在短短几个月内主导了如此一篇具有争议性的研究，并在实习期结束前发表，整个操作显得十分奇特，也为关于其背后动机的“阴谋论”提供了土壤。

### 打脸苹果的竟是Claude？

这场争论的核心并非关于大模型的下限，而是关于其上限。苹果的论文通过一系列实验，试图证明大模型的下限很低，存在严重的逻辑缺陷。然而，反驳的声音则认为，是苹果的实验参数和设置问题导致了模型表现不佳，这并不能证明模型本身缺乏推理能力。

最戏剧性的反转在于，一篇反驳苹果论文的文章，其主要作者竟然是Claude
4模型本身。Anthropic公司的研究员仅作为**Co-pilot**（**Co-pilot:**
在编程或写作中提供智能辅助的工具，此处指研究员在AI辅助下工作。）的角色，协助模型整理并发表了这篇论文，第一作者署名的正是Claude
4。这堪称是一次由AI亲自下场进行的回击。

### 苹果的实验有何猫腻？

由Claude
4主导的论文复现了苹果的实验场景，并指出了几个关键问题。在苹果的设计中，一个重要的限制是要求模型在每一步移动时都必须记录下所有的步骤。这就像一个刷盘子的工人，不仅要完成刷100次盘子的任务，还被老板要求用笔记下每一步是怎么刷的、刷完的效果如何。当任务进行到几十次时，记录详细过程本身消耗了大量的**TOKEN**（**TOKEN:**
在大语言模型中，文本被分割成的基本单位，可以是单词、子词或字符。），导致模型因为资源耗尽而无法继续执行。模型实际上很清楚，如果不进行如此详尽的记录，它可以完成任务，但正因为这个附加要求，它才“走不下去”。因此，所谓的“死机”并非因为无法推理，而是因为记录过程的成本过高。模型甚至会明确表示，再这样下去资源消耗过大，它将停止工作。

相比之下，如果只要求最终结果，Claude
4可以轻松应对。它选择使用自己最擅长的编程方式，编写简单的代码来实现汉诺塔的解法，不仅快速完成了任务，结果完全正确，且消耗的TOKEN极少。这表明，苹果的测试可能是一种在纯净、无外部工具连接的实验室环境下的测试，这种测试方式本身就带有很大的局限性。

### 是AI差还是题本来就无解？

来自Xerox的研究员也指出，苹果的实验打开方式不对。其中一个经典的“过桥问题”，即在特定条件下，几艘船一次能载几个人过河，计算需要多少次才能将所有人运到对岸。实验发现，当一次需要运送的人数增加到五六人时，模型会一直失败，从而被判定为“不行”。

然而，这种特定场景下的问题，在数学领域早已被证明是无解的。模型无法成功，恰恰是正确的表现。大模型给出了“做不出来”的答案，这本身是符合逻辑的。但是，实验设计者在归因时，却将其错误地判定为大模型的能力缺陷，让模型“背了锅”。

因此，这个结果不行，并不能直接推导出是推理模型不行。苹果的论文似乎是紧抓着“预测下一个token”这一机制的弱点，去寻找其逻辑上的漏洞。然而，序列上的因果关系不等于逻辑上的因果关系。不能因为模型在序列预测上出现了问题，就全盘否定其逻辑推理能力，这本身就存在一种强词夺理和逻辑混淆的问题。

如果不仔细审视或缺乏专业知识，普通人很容易被苹果的结论所迷惑。但经过反转和深入分析后，人们有充分的理由怀疑其原始实验结果的公正性和有效性。

## 二、O3-pro解决了推理问题？

### 苹果唱衰，奥特曼凭什么乐观？

在这样的背景下，OpenAI发布了其最新的O3
Pro模型，而公司CEO山姆·奥特曼更是兴奋地发表了一篇题为《温和的奇点》的文章。他认为，AI发展最艰难的时期已经过去，奇点将会以一种温和的方式到来，而不是一场翻天覆地的革命。他强调，未来的创新将更多地体现在工程化层面，以及解决数据对齐、提高模型准确性等问题上。这番言论，在某种程度上也是对苹果论文所提出的关于模型不准确、推理能力差等质疑的侧面回应。

从我的个人感受来看，苹果这篇论文确实不够“敞亮”。就像一个在酒局上迟到的人，非但没有自罚三杯，反而要求桌上的每个人都陪他喝三杯。这种做法自然会引人反感。苹果自己姗姗来迟，却试图通过否定别人的努力来彰显自己的路线正确，这种姿态显得格局太小。如果这篇论文是由OpenAI或Google自己发表的，那将是一种自我批判的勇气，值得尊敬。但由苹果来做这件事，就显得非常没有行业领袖的气派。

它试图否定的不仅是大型推理模型（LRM），更是其背后整个行业的发展方向，这种初衷未免过于狭隘。从学术角度看，论文本身提供了特定的测试方法和视角，有其一定价值。它揭示了在复杂环境下，现有模型的推理能力确实存在瑕疵，并且会意识到自身的边界。尤其是在要求记录每一步推理过程时，模型确实难以达成最终目标。

论文将问题分为简单、中等和复杂三类。在简单问题上，普通大语言模型（LLM）表现更好，因为它能像人类背诵“1+1=2”一样，不经思考直接给出答案。在中等问题上，推理模型（LRM）则表现出明显优势，准确率高且TOKEN使用量少。而在复杂问题上，两种模型都可能因上下文和前置条件的限制而崩溃。这个分类对我们理解模型的适用场景很有启发。

然而，苹果的意图似乎不止于此。它似乎想证明：看，我不用你们那种复杂的推理模型，我只用大模型解决翻译、总结等具体的、范围框定的问题，然后通过我的Apple
Intelligence展示出来，效果同样优秀，大家快来用我的本地模型吧。这种做法，虽然思路本身有其合理性——大模型在特定场景的应用确实已经足够强大——但通过这种扭扭捏捏、贬低他人的方式来展示自己的产品结论，就显得不够坦荡了。

### 我们是爱AI还是怕AI？

无论是苹果的论文，还是奥特曼的文章，都带有强烈的营销属性，并精准地击中了当前人们对AI的矛盾心态。一方面，如果大模型真的具备超乎想象的推理能力，且其能力上限远超人类，那它无疑能帮助我们达到前所未有的高度。但另一方面，一个我们自己都无法完全理解的工具，其失控的风险也同样巨大。这种对未知的恐惧，使得人们既希望AI强大，又害怕它过于强大。

从技术角度看，苹果所指出的“下限很低”的问题，在实际应用中可能并不存在。我们自己的AI应用和产品实践已经证明，模型的下限能力足以创造巨大的商业价值。目前的争论，更多应聚焦于其上限能达到何种程度，而非纠结于其基础能力。下限问题，已经没有再讨论的必要。

而对于奥特曼的O3
Pro，尽管我尚未亲自实测，但从大量深度用户的反馈来看，其准确性和可靠性确实比以往更胜一筹。这背后运用了诸如“私有思维链”、“多通道推理结构”等技术。这些技术本质上都是让模型在给出答案前，进行更多轮次的内部模拟和分析。例如，所谓的“私有思维链”，就是模型在收到问题后，会先生成一个初步答案，然后模拟用户可能的追问，经过几轮推敲，再给出它认为最合适的最终答案。这种“三思而后行”的机制，使得输出结果更加可靠。

有趣的是，这些技术并非OpenAI独有，Gemini等其他模型也已采用。奥特曼之所以高调宣扬，或许也是感受到了竞争的压力，意识到各家技术正在迅速趋同。当基础能力不再是壁垒，竞争的焦点自然会转向更深层次的上限比拼，例如在推理、数学、编码等领域的极限突破。但这个上限将如何突破，目前无人知晓。

### 奥特曼《温柔的奇点》难道是突破了什么？

一位技术高管曾说，当前最重要的不是让大模型像人一样思考，这就像要求猫像狗一样叫，本身就是一个伪命题。我们真正需要的是能切实提高生产力、拓展能力上限的解决方案。从这个角度看，奥特曼的言论或许暗示，未来的颠覆性突破可能不再来自于模型本身，而是来自于工程化创新。

推理能力，或许是模型自己的事，而不是用户需要关心的。用户是问题驱动和答案驱动的，他们不需要知道模型在后台是长思考还是短思考，他们只需要一个能快速、准确解决问题的方案。正如我曾向Google
Gemini的负责人提问：为什么需要用户去选择模型？用户关心的是解决问题，而不是用哪个模型。像Claude很早就实现了模型的自动选择，用户无需纠结。奥特曼的表态，可能也是在为未来没有颠覆性大招提前降低预期，暗示行业将进入一个渗透和工程化的新阶段。

他提到“最困难的地方已经过去”，可能指的是模型研发本身最艰难的阶段已经渡过。OpenAI团队从不到200人扩张到2000多人，也反映了其从科研创新为主向工程化落地的转型。他们开始进行大量的收购和跨界合作，比如将大模型植入玩具，这些都是工程化和商业化的明确信号。

奥特曼的远见和团队管理能力令人佩服，他正带领OpenAI从一个科研机构，走向一条能将技术转化为生产力和消费级产品的道路。他可能已经看到了未来一两年内，仅凭现有的大模型技术，就足以做出许多优秀的产品。

### 他是对齐信徒还是职场权谋家？

山姆·奥特曼无疑是一个非常聪明的人，他对AI发展的贡献功不可没。但他的《温柔的奇点》这篇文章，更多是一次高明的营销。发布时间点恰逢Google
I/O大会大获成功和苹果WWDC反响平平之后，OpenAI需要重新夺回市场的注意力。

这篇文章非常乐观，甚至为AI规划了未来五年的发展蓝图。对于普通读者而言，这种充满希望的愿景极具吸引力。他把自己和这个美好的未来深度绑定，强化了OpenAI作为行业引领者的形象，向投资者和公众喊话：不要忘记我，我才是AI的未来。

然而，仔细分析他文中的两个核心观点——AI对齐和权力均分——就会发现其中的讽刺意味。他高喊AI要对齐，但他本人却是加速主义的代表，甚至赶走了坚持“超级对齐”理念的联合创始人伊利亚·苏茨克维。他呼吁AI能力不应被少数群体或国家掌握，但他自己却曾要求美国国会禁止使用中国的DeepSeek模型。他所呼吁的，恰恰是他自己正在做或不想做的事情。

这展现了他高超的公关技巧：他深知大众的恐惧和渴望，并利用这些情绪来塑造自己“伟光正”的形象。对于不了解其背景的人来说，他是一位充满正义感的领袖；而对于了解他过往行为的人来说，他的言行充满了矛盾，堪称“现代版岳不群”。

将苹果那篇严谨但狭隘的学术论文，与奥特曼这篇充满人文色彩和营销技巧的博客放在一起对比，会产生一种奇妙的化学反应。苹果试图告诉我们，AI目前还不行，我们应专注于当下能落地的应用。而奥特曼则完全相反，他不谈具体细节，只谈宏大愿景，用“画饼”的能力来凝聚人心，まさに“fake
it until you make it”。

在我看来，无论是速胜论还是崩溃论都过于极端。正确的道路或许更像毛泽东的《论持久战》——我们与AI的磨合将是一个长达10到15年的过程。作为每天都在使用和开发AI的从业者，我们能清晰地判断出，苹果的结论是不完整的，而奥特曼的五年规划则过于乐观。事实是，只要善用工具，AI已经能帮助我们完成许多过去难以想象的任务。既然如此，与其听信他人的宏大叙事，不如尽快动手去做。

## 三、后LLM时代，系统1+系统2才是未来！

### Talk is cheap, show me the code

对于技术人员而言，苹果和奥特曼的争论或许并没有那么重要。问题的核心很简单：**Talk
is cheap, show me the code**（**Talk is cheap, show me the code:**
一句程序员俚语，意思是“空谈无益，拿出实际代码来证明”。）。无论愿景多么宏大，理论多么精妙，最终都要落实到可用的代码、SDK和实际能力上。

如何使用大模型，以及如何评估其产出，是区分初学者和专业人士的关键。苹果论文的作者可能更偏向学术研究，对大模型的工程化应用了解有限，因此其使用方式和评估标准存在局限性。而Claude团队的专业人员则能一眼看出问题所在，通过调整参数就能解决。这体现了使用者水平的巨大差异。

最终，争议的焦点都会回到如何定义和评估“好”的结果。苹果可以说不好，大模型厂商可以说好，但对于用户而言，唯一有效的标准是：它是否适合你？你是否能用它来解决你自己的问题，并用你自己的标准评估出它比以前的方法更好。只有当你亲自拿着自己的问题去测试模型，不断匹配和调整，才能提炼出真正属于你的标准。我们近半年来的大量工作都与评估有关，这项工作极其困难，但又是所有创业者必须迈过的坎。如果你无法评估自己的工作成果，商业化就无从谈起。

### AI终局是快思考加慢思考吗？

这场讨论也让人联想到心理学中的**系统一和系统二**（**System 1 and System
2:**
心理学家丹尼尔·卡尼曼提出的双过程理论，系统一指快速、直觉的思考；系统二指缓慢、有意识的逻辑思考。）理论。OpenAI所描绘的愿景，像一个强大而快速的“系统一”，能处理大量智能任务。而我们同样需要一个逻辑严谨、慢思考、不出错的“系统二”来保证结果的精确和可控。

这个“系统二”不一定是大语言模型，它可能是一个融合了AI 1.0、AI
2.0和传统业务流程的复杂工程化架构。它可能不是技术上的颠覆，而是回归到传统的工程组合创新。苹果的路线，某种程度上就像是在坚守“系统二”的阵地。他们可能坚信未来十年仍是**GUI**（**GUI
(Graphical User Interface):**
图形用户界面，用户通过图形图标和视觉指示与电子设备交互的方式。）的时代，因此选择将AI能力融入操作系统的具体环节，解决翻译、总结等基础问题。而ChatGPT或Claude则在努力打造一个更强大的“系统一”。

未来，我们很可能需要在这种智能与精确之间寻找一个平衡点。最终的解决方案，必然是一个混合体，用灵活的组合方式去解决复杂世界中的各种问题。只有智能而没有精确，是不可控的，这触及了人类对技术最本质的担忧。一个无法控制、结果不可预测的黑盒，是无法被广泛接受的。

### 世界模型是通往AGI的捷径吗？

Meta的杨立昆（Yann
LeCun）也一直在批评现有的大语言模型架构，认为它无法通向**AGI**（**AGI
(Artificial General Intelligence):**
通用人工智能，指具备与人类同等智慧，能执行人类任何智力任务的AI。）。他主张的**世界模型**（**World
Model:**
AI领域的一个概念，指AI系统内部构建的、对世界运作方式的模拟和理解，使其能预测和规划。）——通过大量的视觉信息来构建对世界运作方式的理解——是另一条截然不同的技术路线。这同样是百家争鸣中的一家之言，其背后有他的立场和希望主推的技术方向。

因此，我们必须兼听则明。如果全盘听信任何一方，都可能走偏。去年我就曾判断，单纯做聊天框作为第一屏的AI产品注定失败，因为它们缺乏与具体业务流的结合。如今看来，这个判断是正确的。现在成功的AI产品，无一不是将AI能力与现有业务（如设计、浏览器）深度融合。

作为创业者，我们不能盲目跟风。OpenAI喊登月，我们不能头脑一热就跟上去。我们心中要有自己的火把，用自己的判断去探索黑暗的洞穴。AI的浪潮给了我们火把，让我们能照亮前路，找到自己的方向。

### 非理性才是创新的核心吗？

苹果的论文中有一个有趣的发现：大模型在找到一个正确解之后并不会停止，而是会继续推论，反复验证，消耗更多资源，表现出一种“犹豫”。而人类则不同，一旦认定某个解是正确的，就会果断地一往无前。这种“偏执”恰恰是许多成功创业者的共同特质，无论是乔布斯还是马斯克，他们的成功都离不开这种近乎偏执的自信。

如果大语言模型始终处于怀疑和推论的过程中，它可能永远无法像人类一样，在某个时间点选择All
in。而创业，正是需要这种坚定的信念。创业就像在黑暗的山洞中探索未知的出口，你手中的火把就是你的信念。只要你坚定地向前走，就会有人跟随，就有可能找到出路。而且，这个山洞的出口，可能不止一个。

AI的出现，给了创业者更强大的武器。当你遇到南墙时，AI可能就是那把能凿开墙壁的锤子，甚至是直接推倒墙壁的推土机。过去无法逾越的障碍，现在可能变成了通向成功的道路。在AI时代，创业者无疑是幸福的。利用这些尚不完善但极其强大的工具，去探索已被证明可盈利的领域，用AI带来的效率优势去“卷”掉那些未使用AI的同行，成功将是大概率事件。

### 嘴里全是主义，心里都是生意？

我们现在就像古代的君王，面对着百家争鸣。每一位“思想家”都在宣扬自己的理论，希望被采纳。我们可以静静地听他们表演，但最终要选择适合自己的那条路。要记住，所有观点的背后都是主义，而主义的背后往往都是生意。无论是OpenAI、苹果，还是其他科技巨头，他们的观点必然为其商业目的服务。一个完全客观、一碗水端平的观点，往往也是没有价值的。

正因为有争议，才会有动力，才代表着这个领域充满了活力和价值。这个道理，无论是在传播、创业还是技术发展中，都是相通的。

### 与其谈AGI，不如推平行业壁垒？

对于普通人而言，首先要保持对AI的敏感性，更重要的是要亲身去实践。我们自己就在不断尝试，无论是内容输出，还是开发AI产品和优化工作流。这些实践让我们清楚地知道，AI现在能做什么，不能做什么。

尽管最新的模型在跑分上不断刷新纪录，但真正的价值在于将AI应用到实际的工作流中，实现效率的提升。我们身边有大量的重复性工作可以被AI取代，但目前仍有许多机会尚未被发掘。每当有朋友和我聊AI，我总会问他从事什么行业，在过去积累了哪些可以被量化、有边界的经验。这些，就是最好的创业切入点。

我们已经进入了一个“一个人+AI”就能顶替过去一个团队的时代。这并非夸张，AI确实已经解放了我们大量繁重、重复的工作。这需要我们掌握使用AI的技巧，并能自己搭建AI工作流，而不是仅仅把它当成一个聊天框。

古人云，兼听则明，但最终还是要自己有坚定的信念。如果你相信苹果的路线，专注于在现有生态下做应用优化，同样能创造价值。如果你相信奥特曼描绘的未来，投身于推动通用人工智能的浪潮，你可能会成为时代的弄潮儿。

但无论相信什么，我们首先要解决的是人类自身的问题——心理、生理、情感和社交。AI应该去做的，是那些我们不愿做的重复性工作，从而解放我们的时间，让我们能更多地去创造、去体验、去享乐。如果AI能替代我们60-70%的重复劳动，整个人类文明必将迎来一次璀璨的飞跃，而我们自己的一些商用业务场景，已经证明了这一点。
