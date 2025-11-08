#set document(
    title: "Grant Gardner - Resume",
    author: "Grant Gardner",
    date: auto,
)

#let first_page_footer = if "GIT_TAG_VERSION" in sys.inputs.keys() {
    let (
        GIT_TAG_VERSION: git_tag_version,
        GIT_TAG_DATE: git_tag_date,
        GIT_HASH: git_hash
    ) = sys.inputs
    place(top + center)[1]

    text(weight: "bold")[
        #place(top + left)[v#git_tag_version - #git_hash (#git_tag_date)]
        #place(top + right)[#datetime.today().display()]
    ]
} else {
    place(top + center)[1]
}

#set page(
    numbering: "1",
    margin: 1.5cm,
    paper: "us-letter",
    background: context { if(counter(page).get().at(0)== 1) [
        #place(
            top + left,
            image("header_halftone.svg"),
        )
    ]},
    footer: context if(counter(page).get().at(0) == 1) [
        #first_page_footer
    ] else [
        #align(center)[#counter(page).get().at(0)]
    ],
)
#set text(
    font: "Inter",
    slashed-zero: false,
    number-width: "proportional",
    hyphenate: auto,
    features: ("cv08": 1)
)
#show link: l => {
    text(blue)[
        #underline()[#l]
    ]
}
#set par(
    justify: true,
    linebreaks: "optimized",
    spacing: 0.5em,
)
#show heading.where(level: 1): h => {
    v(5pt)
    h
    v(-0.9em)
    line(length: 100%, stroke: 1pt)
}
#show heading.where(level: 2): set text(
  size: 11pt,
)

#let LaTeX = {
  let A = (offset: (x: -0.33em, y: -0.3em), size: 0.7em)
  let T = (x_offset: -0.12em)
  let E = (x_offset: -0.2em, y_offset: 0.23em, size: 1em)
  let X = (x_offset: -0.1em)
  [#text(font: "New Computer Modern")[L#h(A.offset.x)#text(size: A.size, baseline: A.offset.y)[A]#h(T.x_offset)T#h(E.x_offset)#text(size: E.size, baseline: E.y_offset)[E]#h(X.x_offset)X]]
}
#let typst = {
  set text(
    size: 1.05em,
    font: "Buenard",
    weight: "bold",
    fill: rgb("#239dad"),
  )
  box({"ty"
    h(0.035em)
    "p"
    h(-0.025em)
    "s"
    h(-0.015em)
    "t"
  })
}

// Header
#grid(columns: (auto, auto), gutter: 3cm, rows: auto,
    align(center + horizon)[#rect(fill: white, outset: 6pt)[
        #text(font: "Lexend", fill: rgb("#f75c2f"), size: 2em, weight: "bold")[
            Grant Gardner
        ]
    ]],
    align(center)[#rect(fill: white, outset: 5pt)[#columns(2)[
        Email:\
        #link("mailto:ke0bhogsg@gmail.com")[ke0bhogsg\@gmail.com]

        #v(5pt)

        Telephone:\
        #link("tel:402-430-5445")[402-430-5445]

        #colbreak()

        #v(1em)

        #box()[
            #align(left + horizon)[
                Website - #link("https://g2games.dev/")[g2games.dev]\
                Github - #link("https://github.com/G2-Games/")[\@G2-Games]\
                LinkedIn - #link("https://www.linkedin.com/in/g2games")[\@g2games]
            ]
        ]
    ]]]
)

#v(5mm)
Full-stack software engineer with experience in web technologies, embedded
systems, and systems programming. 1 year of professional software development
experience & 5 years of experience in open source. 3 years of experience in
Rust. Leads multiple UNL Aerospace Club teams in software and embedded
systems development, with electrical engineering components.

#columns(2)[
= Education
#v(-0.4em)
== University of Nebraska–Lincoln
- Bachelor of Computer Science (2027)

#colbreak()
= Relevant Projects
- #link("https://github.com/G2-Games/cross-usb")[cross-usb] - Rust cross platform USB
- #link("https://github.com/unl-rocketry/pololu_tic-rs")[pololu_tic-rs] - I#super()[2]C/USB stepper driver in Rust
]

#v(-1.1em)

= Relevant Experience
#columns(2)[
== Drone Amplified #text(size: 11pt, weight: 500)[(Jul 2024 - Ongoing)]
#emph[Software Engineering Intern]
- Integrating radio modules with drones to improve mission-critical firefighting abilities
- Created programs to work with third-party imaging systems
- Developing novel testing strategies for radio evaluation

== UNL Amateur Radio Club #text(size: 11pt, weight: 500)[(2024 - Ongoing)]
#emph[President]
- Restarted the club after it spent years dormant
- Facilitating amateur radio at UNL
- Lead day-to-day activities of over 30 members
- Manages finances and club purchases

#colbreak()

== UNL Rocket Propulsion Group #text(size: 11pt, weight: 500)[(2024 - Ongoing)]
#emph[Electrical & Programming Lead]
- Developing new equipment and software for monitoring motor firing
- Analyzing data produced during tests to iterate on motor designs

== UNL Husker Rocketry #text(size: 11pt, weight: 500)[(2024 - 2025)]
#emph[Programming Lead]
- Created multiple payloads in high-power amateur rockets
- Led a development team of software and mechanical engineers
- Software and hardware competed at the IREC streaming high-bitrate live video
]

== Programming Skills
#columns(3)[
    - #columns(2)[Rust #colbreak() (skilled)]
    - #columns(2)[Python #colbreak() (skilled)]
    - C/C++ #h(10pt) (intermediate)
#colbreak()
    - #columns(2)[HTML #colbreak() (skilled)]
    - #columns(2)[CSS #colbreak() (skilled)]
    - #columns(2)[Java #colbreak() (beginner)]
#colbreak()
    - #columns(2)[Bash/Zsh #colbreak() (skilled)]
    - Java/TypeScript (skilled)
    - #LaTeX/#typst (intermediate)
]

== Technical Skills
#columns(2)[
- Experienced with Git and other VCS
    - Consistent contributor to FOSS projects
    - Open-source and proprietary projects
- Experience reverse engineering software
    - Ghidra, Cutter, GDB, Valgrind
- Experienced with embedded systems
    - RP2040/RP2350, STM32, ESP32, ATMega
    - Embedded Rust, Embassy
- Amateur Radio operator since 2014
    - Extra class license holder (KE0BHO)
- Experienced web designer and creator
- Linux systems administration
    - Personal website
    - Working professionally with Linux systems
- Electrical Engineering hobbyist
    - PCB design & EDA (KiCad)
- Graphic design hobbyist
    - Logo for the #link("https://kate-editor.org/")[Kate text editor]:
        #link("https://kate-editor.org/post/2024/2024-06-08-kate-fun-logo/")[Link]
    - Logos for the UNL Aerospace Club for various purposes:
        #link("https://github.com/unl-rpg/branding")[Link 1,]
        #link("https://github.com/G2-Games/unl-aerospace-logos")[Link 2]
]

= Clubs and Groups
== Dangoware
I co-founded Dangoware (https://dangoware.org), which is an independent software
engineering and creative design group focused on open source projects, many of
which are written in Rust and other rapidly developing new technologies.

== UNL Aerospace Club
As both a lead and regular member in the University of Nebraska–Lincoln
Aerospace Club I work with undergraduate teams of varying skill levels and
backgrounds to compete in high-level intercollegiate competitions and
research using novel technologies.

#v(0.5em)

My team lead positions include or have included:

=== Rocket Propulsion Group
I served as the Mixing and Testing Lead in the UNL Aerospace Rocket Propulsion
Group (UNL Aerospace RPG), co-leading mixing of experimental solid rocket
propellant using club-designed procedures and safety checklists, along with
ensuring safe practices were followed when conducting static-fire tests.

#v(0.5em)

I currently serve as the Electrical Lead, which means I am responsible for
electronics, embedded systems, desktop, and human-machine interface (HMI)
development, including the design of fail-safe software systems for testing
energetics including rocket motors and ignition systems.

=== Rocketry
I served as the Programming Lead in the UNL Husker Rocketry Club, which is the
most successful college rocketry club in Nebraska. During my year as lead, the
team was successful in returning for the first time in 2 years to the
International Rocket Engineering Competition (IREC) and placing successfully.

#v(0.5em)

I led a team of software engineers developing both embedded and desktop
applications for the support of a system to stream live video from an amateur
rocket platform.

= Projects
A few of my most interesting projects can be found here, but a more
comprehensive list of projects can be found on my GitHub profile and website.

== #link("https://c.g2games.dev")[Confetti-Box]
A simple file sharing website for storing large files temporarily. It utilizes
the #link("https://rocket.rs/")[Rocket] web framework along with a simple REST
API and modern web technologies like Websockets.

== #link("https://github.com/G2-Games/cross-usb")[cross-usb]
A Rust library for seamless USB support across native platforms and browsers
with Web Assembly. Written entirely in memory-safe Rust, utilizing `nusb`.

== #link("https://github.com/G2-Games/lbee-utils")[lbee-utils]
Reverse-engineered file decoding for the LUCA System game engine. Supports
extraction, insertion, modification, and completely accurate encoding and
decoding. The only program capable of doing so completely accurately.

== #link("https://github.com/Dangoware/dango-music-player")[Dango Music Player]
A modern, file-first music player designed for use with extremely large personal
libraries. It is designed to be easy to use, but very powerful and customizable
when needed. Written in Rust for speed and cross platform support.

== #link("https://g2games.dev")[Website/Blog]
My personal website written entirely from scratch and self hosted. Also includes
my blog which I use for technical writing about my projects and personal
writing.

== #link("https://github.com/G2-Games/minidisc-rs")[minidisc-rs]
A library for interfacing with Sony Minidisc devices written in pure rust and
designed to be Web Assembly compatible. It is designed to eventually replace
`netmd-js` in the backend of `Web Minidisc`.
