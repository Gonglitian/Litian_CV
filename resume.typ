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

// Resume configuration
#let theme = rgb(0, 79, 144)
#let font = "New Computer Modern"
#let fontSize = 10pt
#let lang = "en"
#let margin = (
  top: 1cm,
  bottom: 1cm,
  left: 1.35cm,
  right: 1.35cm,
)

// Resume Header and configuration
#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

// Education
= Education
#edu(
  institution: "University of California, Riverside",
  date: "Sep 2024 - Present",
  location: "Riverside, CA, USA",
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
)

// Research Interest
= Research Interest

My research focuses on building *embodied intelligent agents* capable of learning robust, generalizable behaviors from data and interaction. I work at the intersection of *(1) scalable robot learning frameworks*, *(2) imitation and reinforcement learning*, and *(3) visual-language models* for long-horizon decision making. Ultimately, my goal is to enable agents to *reason over multimodal observations*, *acquire manipulation and navigation skills efficiently*, and *bridge the sim-to-real gap* for deployment in real-world autonomous systems, and develop trustworthy, data-efficient, and generalizable learning algorithms.

// Publications & Preprints
= Publications & Preprints

#pub(
  authors: (
    "Litian Gong",
    "Fatemeh Bahrani",
    "Yutai Zhou",
    "Amin Banayeeanzade",
    "Jiachen Li",
    "Erdem Bıyık",
  ),
  bold-author: "Litian Gong",
  title: "AutoFocus-IL: VLM-based Saliency Maps for Data-Efficient Visual Imitation Learning without Extra Human Annotations",
  venue: "IEEE International Conference on Robotics and Automation (ICRA)",
  year: "2026",
  doi-link: "arxiv.org/abs/2511.18617",
)

#pub(
  authors: (
    "Zhaoyang Li*",
    "Zhan Ling*",
    "Yuchen Zhou",
    "Litian Gong",
    "Erdem Bıyık",
    "Hao Su",
  ),
  bold-author: "Litian Gong",
  title: "ORIC: Benchmarking Object Recognition in Incongruous Context for Large Vision-Language Models",
  venue: "IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)",
  year: "2026",
  doi-link: "arxiv.org/abs/2509.15695",
)

#pub(
  authors: (
    "Litian Gong",
    "Jiaxuan Ren",
    "Shuoyu Jin",
    "Shaorong Wang",
  ),
  bold-author: "Litian Gong",
  title: "A Friendly Grid-connected Distribution System with PV and ESS for Remote Rural Residential Family",
  venue: "IEEE International Conference on New Energy and Power Engineering (ICNEPE)",
  year: "2023",
  doi-link: "doi.org/10.1109/ICNEPE60694.2023.10429728",
)

// Patents
= Patents

- *Litian Gong*, Shuoyu Jin, and Shaorong Wang, "*A friendly grid-connected Grid-PV-ESS remote residential home power supply system and its working method*", in application.

- Shuoyu Jin, *Litian Gong* and Shaorong Wang, "#link("https://worldwide.espacenet.com/patent/search?q=pn%3DCN116612338A")[Image recognition method and system based on network state index convolutional neural network set]", CN 116612338A, 2023.

- Shuoyu Jin, Shaorong Wang and *Litian Gong*, "#link("https://worldwide.espacenet.com/patent/search?q=pn%3DCN114662678A")[Variable activation function convolutional neural network and training method thereof]", CN 114662678A, 2023.

// Research Experience
= Research Experience

#exp(
  title: "Learning and Interactive Robot Autonomy Lab",
  organization: [Advisor: Prof. Erdem Bıyık, USC],
  date: "Jun 2025 - Present",
  location: "Los Angeles, CA, USA",
  details: [
    - *Augmented Visual Imitation Learning with Saliency Maps (Led project)*
      - Developed AutoFocus-IL, a VLM-guided saliency framework that enhances data efficiency and generalization in visual imitation learning without human gaze supervision.
      - Implemented context-aware object filtering and temporal saliency modeling using Qwen2.5-VL and Grounding DINO to identify and track task-relevant visual cues.
      - Integrated saliency-guided regularization into behavior cloning, improving policy robustness in CARLA simulation and real-robot (WidowX) experiments; paper accepted to ICRA 2026.
    - *Benchmarking Object Recognition under Contextual Incongruity in Large Vision-Language Models* \
      Co-advisor: Prof. Hao Su, UCSD
      - Implemented RL fine-tuning for VLM and hyperparameter search, utilizing reward shaping to mitigate contextual incongruity and ensure more coherent, reliable visual reasoning; paper accepted to CVPR 2026.
  ]
)

#exp(
  title: "Trustworthy Autonomous Systems Lab",
  organization: [Advisor: Prof. Jiachen Li, UC Riverside],
  date: "Nov 2024 - Present",
  location: "Riverside, CA, USA",
  details: [
    - *Real-to-Sim-to-Real Regrasp Policy Learning by High-Fidelity Simulator Data Pipeline (Co-leading project)*
      - Reconstructed real scenes in IsaacLab for large-scale parallel sampling of robot-arm regrasp trajectories.
      - Designed data synthesis pipeline using stochastic sampling, Curobo motion planning, and graph algorithm.
      - Trained VLA policies purely from simulation for zero-shot sim-to-real transfer; aiming RSS 2026.
    - *VLM-guided Desktop Disassembly Planning with Multi-turn RFT and Error-aware Feedback (Leading project)* \
      Co-advisor: Prof. Minghui Zheng, TAMU
      - Built VLM framework generating desktop disassembly sequences from multi-view images and state.
      - Implemented multi-turn RFT and error-aware feedback for self-correcting disassembly planning.
    - *Simulation Environment and Hardware Development for Embodied AI (Led project)*
      - Indoor navigation framework integrating path planning, trajectory tracking, crowd simulation and ORCA collision avoidance. #link("https://github.com/Gonglitian/og_nav")[\[code\]]
      - Developed VLM-based object grasping in cluttered desktop environments. #link("https://github.com/Gonglitian/OmniGibson-grasp")[\[code\]]
      - Hesai Lidar sensor configuration. #link("https://github.com/Gonglitian/TASL-Hesai-QT128")[\[code\]]
    - *Adaptive Entropy Regularization for VLM Multi-turn Reinforcement Fine-tuning*
      - Designed an adaptive entropy regularization method for GRPO multi-turn VLM reinforcement learning.
      - Implemented a LoRA-based high-efficiency RFT pipeline by improving VeRL framework.
      - Improved Sokoban success rate from 54% to 98% with faster convergence; targeting ICML 2026.
  ]
)

#exp(
  title: "Smart Grid Operation & Control Group",
  organization: [Advisor: Prof. Shaorong Wang, HUST],
  date: "Sep 2021 - Jun 2024",
  location: "Wuhan, China",
  details: [
    - *Intelligent Inspection Algorithm for Substation Robots (Led project)*
      - Designed a DQN-based autonomous control policy for substation inspection robots, modeling two-wheel-drive kinematics and validating robust localization and trajectory tracking in Webots.
    - *Photovoltaic and Energy Storage Grid-Connected System for Remote Rural Homes (Led project)*
      - Developed a Simulink-based control and planning framework for a modular PV–ESS hybrid distribution system with real-time PV optimization and phase-imbalance-tolerant three-phase inverter control.
    - *Adaptive Neural Network Optimization for Image Recognition (Co-led project)*
      - Built an entropy-driven adaptive-depth CNN framework in PyTorch that selects network depth by image complexity and optimizes the accuracy–efficiency trade-off via genetic-algorithm-tuned polynomial heads.
  ]
)

// Academic Service
= Academic Service

*Conference Reviewer*
- IEEE International Conference on Robotics and Automation (ICRA), 2026
- IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR), 2026

// Industry Experience
= Industry Experience

#exp(
  title: "Intern Engineer",
  organization: "Sifang Electric Co., Ltd",
  date: "Jun 2022 - Sep 2022",
  location: "Wuhan, China",
  details: [
    - Engineered electrical equipment layouts and computed line parameters for power substations.
    - Developed single-line diagrams and schematic drawings using CAD software.
    - Modeled and optimized photovoltaic systems for renewable energy substations.
  ]
)

// Honors & Awards
= Honors & Awards

- *Outstanding Undergraduate Graduate, HUST* #h(1fr) 2024
- *Honorable Prize, Mathematical Contest In Modeling* #h(1fr) 2023
- *Second Prize, China Undergraduate Mathematical Contest in Modeling* #h(1fr) 2022

// Skills
= Skills
#skills((
  ("Programming & ML", (
    [Python],
    [C/C++],
    [Bash],
    [Docker],
    [Git],
    [LaTeX],
    [CUDA],
    [PyTorch],
    [JAX],
    [MMCV],
    [VeRL],
  )),
  ("Robotics & Simulation", (
    [ROS1/ROS2],
    [IsaacLab],
    [CARLA],
    [ManiSkill],
    [Habitat],
    [MuJoCo],
    [Gazebo],
    [Webots],
  )),
  ("Hardware & Embedded", (
    [WidowX],
    [TIAGo],
    [Microcontrollers],
    [PCB design],
  )),
  ("Language", (
    [English (Fluent)],
    [Chinese (Native)],
  )),
))
