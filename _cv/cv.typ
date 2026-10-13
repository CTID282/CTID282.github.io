// CV source. Build: typst compile _cv/cv.typ assets/pdf/CV.pdf
#set document(title: "Yongjae Shin - CV", author: "Yongjae Shin")
#set page(paper: "us-letter", margin: (x: 0.8in, y: 0.7in))
#set text(font: "Libertinus Serif", size: 10.5pt)
#set par(justify: false, leading: 0.55em)
#show link: set text(fill: rgb("#1a4f8b"))

#let accent = rgb("#1a4f8b")
#let me = strong[Yongjae Shin]

#let section(title) = {
  v(10pt)
  text(size: 12pt, weight: "bold", fill: accent, smallcaps(title))
  v(-7pt)
  line(length: 100%, stroke: 0.5pt + accent)
  v(2pt)
}

#let entry(what, when, body: none) = {
  grid(columns: (1fr, auto), what, align(right, text(fill: luma(80), when)))
  if body != none { pad(left: 1em, top: -2pt, body) }
  v(3pt)
}

#let pubs(items) = {
  for (i, p) in items.enumerate() {
    grid(
      columns: (2.2em, 1fr),
      text(fill: luma(90))[[#(items.len() - i)]],
      p,
    )
    v(5pt)
  }
}

#let paper(url) = link(url)[[paper]]
#let lg = [ \ #text(size: 9pt, fill: luma(90))[_Work done during an internship at LG AI Research._]]

// Header
#align(center)[
  #text(size: 22pt, weight: "bold")[Yongjae Shin]
  #v(-6pt)
  Ph.D. Student, Korea Advanced Institute of Science and Technology (KAIST)
  #v(-4pt)
  #link("mailto:yongjae.shin@kaist.ac.kr")[yongjae.shin\@kaist.ac.kr] ·
  #link("https://ctid282.github.io")[ctid282.github.io] ·
  #link("https://scholar.google.com/citations?user=T_gtsOYAAAAJ")[Google Scholar] ·
  #link("https://github.com/CTID282")[GitHub] ·
  #link("https://www.linkedin.com/in/yongjae-shin-543590374")[LinkedIn]
]

#section[Research Interests]
My research aims to make reinforcement learning sample-efficient and reliable for real-world decision making.
I study how agents can leverage offline data and generative policies such as flow matching and continually
improve them online, with a recent focus on fine-tuning vision-language-action (VLA) models for robot manipulation.

#section[Education]
#let sisrel = [
  #link("https://sites.google.com/view/sisrelkaist")[Smart Information Systems Research Lab (SISReL)] \
  Advisor: Prof. #link("https://sites.google.com/view/youngchulsung")[Youngchul Sung]
]
#entry([*Ph.D.*, Korea Advanced Institute of Science and Technology (KAIST)], [2024 -- Present], body: sisrel)
#entry([*M.S.*, Korea Advanced Institute of Science and Technology (KAIST)], [2022 -- 2024], body: sisrel)
#entry([*B.S.* in Electrical Engineering, Korea University], [2018 -- 2022])

#section[Work Experience]
#entry(
  [*Research Intern*, #link("https://www.lgresearch.ai/")[LG AI Research]],
  [Mar 2024 -- Dec 2024],
  body: [Publications: OPT, PARS (ICML 2025); RL-Studio (AAAI 2026 Demonstration).],
)

#section[Publications]
#text(size: 9pt, fill: luma(90))[\* equal contribution, † corresponding author]
#v(2pt)

#pubs((
  [#me, Seongmin Kim, Jongseong Chae, Jongeui Park, Jeongwoo Park, Youngchul Sung.
    "Steer, Refine, and Select: Adapting Generative Policies for Robot Manipulation via Online RL."
    _Preprint_.],
  [Minho Park\*, Kinam Kim\*, Donghu Kim, Byungkun Lee, Dongyoon Hwang, #me, Junha Hyung, Hojoon Lee†, Jaegul Choo†.
    "DiscoDemo: Discovering Efficient and Diverse Robot Demonstrations for Imitation Learning."
    _Preprint_.
    #link("https://davian-robotics.github.io/DiscoDemo/")[[project]]
    #link("https://github.com/DAVIAN-Robotics/DiscoDemo")[[code]]
    #link("https://huggingface.co/collections/DAVIAN-Robotics/discodemo")[[dataset]]],
  [#me, Jongseong Chae, Seongmin Kim, Jongeui Park, Youngchul Sung.
    "Adaptive Action Chunking via Multi-Chunk Q Value Estimation."
    _NeurIPS 2026 Workshop PTA_. #paper("https://arxiv.org/abs/2605.10044")],
  [#me, Jongseong Chae, Jongeui Park, Youngchul Sung.
    "Flow Matching with Injected Noise for Offline-to-Online Reinforcement Learning."
    _ICLR 2026_. #paper("https://arxiv.org/abs/2602.18117v1")],
  [Jongseong Chae, Jongeui Park, #me, Gyeongmin Kim, Seungyul Han, Youngchul Sung.
    "Flow Actor-Critic for Offline Reinforcement Learning."
    _ICLR 2026_. #paper("https://arxiv.org/abs/2602.18015v1")],
  [Whiyoung Jung, Sunghoon Hong, Deunsol Yoon, Jeonghye Kim, #me, Suhyun Jung, Hyundam Yoo, Youngjin Kim,
    Chanwoo Moon, Woohyung Lim, Soonyoung Lee, Kanghoon Lee.
    "RL-Studio: A System for Multi-Phase Reinforcement Learning Experimentation."
    _AAAI 2026 Demonstration_. #paper("https://www.lgresearch.ai/publication/view?seq=153")#lg],
  [#me, Jeonghye Kim, Whiyoung Jung, Sunghoon Hong, Deunsol Yoon, Youngsoo Jang, Geon-Hyeong Kim,
    Jongseong Chae, Youngchul Sung, Kanghoon Lee, Woohyung Lim.
    "Online Pre-Training for Offline-to-Online Reinforcement Learning."
    _ICML 2025_. #paper("https://arxiv.org/abs/2507.08387")#lg],
  [Jeonghye Kim, #me, Whiyoung Jung, Sunghoon Hong, Deunsol Yoon, Youngchul Sung, Kanghoon Lee, Woohyung Lim.
    "Penalizing Infeasible Actions and Reward Scaling in Reinforcement Learning with Offline Data."
    _ICML 2025_. #text(fill: rgb("#b22222"))[*Spotlight*] #paper("https://arxiv.org/abs/2507.08761")#lg],
  [Woojun Kim\*, #me\*, Jongeui Park, Youngchul Sung.
    "Sample-efficient and Safe Deep Reinforcement Learning via Reset Deep Ensemble Agents."
    _NeurIPS 2023_. #paper("https://arxiv.org/abs/2310.20287")],
))

#section[Academic Activities]
#entry([*Conference Reviewer*: ICML, NeurIPS, ICLR, AAAI, ICRA], [])

#section[Teaching Experience]
#entry([*Teaching Assistant*, Probability and Introductory Random Processes, KAIST], [Sep 2025 -- Dec 2025])
#entry([*Teaching Assistant*, Machine Learning Basics and Practices, KAIST], [Mar 2025 -- Jun 2025])

#v(1fr)
#align(right, text(size: 8pt, fill: luma(120))[Last updated: October 2026])
