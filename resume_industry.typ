#import "@preview/clickworthy-resume:1.0.1": *

// Personal Information
#let name = "Litian Gong"
#let email = "lgong024@ucr.edu"
#let website = "gonglitian.github.io"
#let github = "github.com/Gonglitian"
#let linkedin = "linkedin.com/in/Gonglitian"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + website)[#website]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "Riverside, CA"

// Professional Summary
#let summary = "Building end-to-end brain for robots."

// Resume configuration
#let theme = rgb(0, 79, 144)
#let font = "New Computer Modern"
#let fontSize = 9.5pt
#let lang = "en"
#let margin = (
  top: 0.8cm,
  bottom: 0.8cm,
  left: 1.2cm,
  right: 1.2cm,
)

#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  summary: summary,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

// Skills
= Technical Skills
#skills((
  ("AI & Motion Control", (
    [Reinforcement Learning],
    [Imitation Learning],
    [Whole-Body Control],
    [Motion Planning (cuRobo)],
    [Inverse Kinematics],
    [Sim-to-Real Transfer],
    [Trajectory Optimization],
  )),
  ("Robotics & Simulation", (
    [Isaac Lab / Isaac Gym],
    [MuJoCo],
    [Gazebo],
    [ROS1/ROS2],
    [CARLA],
    [OmniGibson],
    [ManiSkill],
    [Webots],
  )),
  ("Programming & ML", (
    [Python],
    [C/C++],
    [CUDA],
    [PyTorch],
    [JAX],
    [Docker],
    [Git],
    [Bash],
    [FastAPI],
    [gRPC],
  )),
  ("Hardware & Platforms", (
    [Unitree G1 Humanoid],
    [WidowX Robot Arm],
    [TIAGo],
    [Hesai LiDAR],
    [PCB Design],
    [Microcontrollers],
  )),
))

// Experience
= Experience

#exp(
  title: "Research Intern — Imitation Learning, RL for VLMs",
  organization: [Learning and Interactive Robot Autonomy Lab (LIRA), USC],
  date: "Jun 2025 - Present",
  location: "Los Angeles, CA",
  details: [
    - Led *AutoFocus-IL*: VLM-guided saliency pipeline improving imitation learning data efficiency by 50%+ on real WidowX manipulation, eliminating human gaze annotations. *(ICRA 2026)*
    - Implemented DDP multi-GPU training with saliency-guided attention regularization; +104% driving improvement in CARLA.
    - Implemented RL fine-tuning and reward shaping for VLMs, improving object recognition robustness. *(CVPR 2026)*
  ]
)

#exp(
  title: "Graduate Research Assistant — Robotics & AI",
  organization: [Trustworthy Autonomous Systems Lab, UC Riverside],
  date: "Nov 2024 - Present",
  location: "Riverside, CA",
  details: [
    - *Humanoid Whole-Body Control (Unitree G1)*: Designed a reward system for RL-based locomotion + reaching in Isaac Lab.
    - *Real-Time Motion Retargeting*: Camera Streaming → GVHMR 3D reconstruction → GMR retarget → MuJoCo playback on G1; 300ms latency on single RTX 4060.
    - *Sim-to-Real Manipulation Pipeline*: GPU-accelerated regrasp trajectory generation via Isaac Lab + cuRobo + graph search; trained VLA policies for zero-shot sim-to-real transfer. (Targeting TRO)
    - *Navigation & Manipulation*: Indoor navigation framework (Pure Pursuit, occupancy mapping, ORCA); vectorized multi-env TIAGo grasping with VLM inference.
  ]
)

#exp(
  title: "Research Assistant — Intelligent Systems",
  organization: [Smart Grid Operation & Control Group, HUST],
  date: "Sep 2021 - Jun 2024",
  location: "Wuhan, China",
  details: [
    - Designed DQN-based autonomous control policy for inspection robots; validated in Webots with robust trajectory tracking.
    - Built adaptive-depth CNN framework in PyTorch with genetic-algorithm-tuned activations for edge deployment.
  ]
)

// Education
= Education
#edu(
  institution: "University of California, Riverside",
  date: "Sep 2024 - Present",
  location: "Riverside, CA",
  degrees: (
    ("M.S.", "Electrical Engineering"),
  ),
  gpa: "3.95",
)

#edu(
  institution: "Huazhong University of Science and Technology (HUST)",
  date: "Sep 2020 - Jun 2024",
  location: "Wuhan, China",
  degrees: (
    ("B.E.", "Electrical Engineering"),
  ),
  extra: "U.S. News Global Engineering Ranking #8",
)

// Publications
= Publications

#let npub(
  number: 0,
  authors: (),
  bold-author: "",
  title: "",
  venue: "",
  year: "",
  doi-link: "",
  extra: "",
) = {
  let fmt-authors = authors.map(
    a => if a == bold-author { strong[#a] } else { a }
  )
  let fmt-link = if doi-link != "" {
    link("https://" + doi-link)[#quote(title)]
  } else {
    quote(title)
  }
  let citation = [
    \[#number\] #{
      fmt-authors.join(", ") + ", " + fmt-link + ", " + emph(venue) + ", " + year + "." + if extra != "" { " " + strong[#extra] }
    }
  ]
  pad(bottom: -0.3em, align(left)[#citation])
}

#npub(
  number: 2,
  authors: ("Litian Gong", "F. Bahrani", "Y. Zhou", "A. Banayeeanzade", "J. Li", "E. Bıyık"),
  bold-author: "Litian Gong",
  title: "AutoFocus-IL: VLM-based Saliency Maps for Data-Efficient Visual Imitation Learning",
  venue: "ICRA",
  year: "2026",
  doi-link: "arxiv.org/abs/2511.18617",
  extra: "First Author",
)

#npub(
  number: 1,
  authors: ("Zhaoyang Li*", "Zhan Ling*", "Yuchen Zhou", "Litian Gong", "Erdem Bıyık", "Hao Su"),
  bold-author: "Litian Gong",
  title: "ORIC: Benchmarking Object Recognition in Incongruous Context for Large VLMs",
  venue: "CVPR",
  year: "2026",
  doi-link: "arxiv.org/abs/2509.15695",
)

// Honors
= Honors & Awards

- *Outstanding Undergraduate Graduate, HUST* #h(1fr) 2024
- *Honorable Prize, Mathematical Contest In Modeling* #h(1fr) 2023
- *Second Prize, China Undergraduate Mathematical Contest in Modeling* #h(1fr) 2022
