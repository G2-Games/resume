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
)
#show link: l => {
    text(blue)[
        #underline()[#l]
    ]
}
#set par(
    justify: true,
    linebreaks: "optimized",
)
#show heading.where(level: 1): h => {
    v(5pt)
    h
    v(-0.9em)
    line(length: 100%, stroke: 1pt)
}

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
    align(center + horizon)[#rect(fill: white, outset: 5pt)[
        #text(font: "Lexend", size: 2em, weight: "bold")[
            Grant Gardner
        ]
    ]],
    align(center)[#columns(2)[
        Email:\
        #link("mailto:ke0bhogsg@gmail.com")[ke0bhogsg\@gmail.com]

        Telephone:\
        #link("tel:402-430-5445")[402-430-5445]

        #colbreak()

        Github:\
        #link("https://github.com/G2-Games/")[\@G2-Games]

        #box(height: 2em)[
            #align(left + horizon)[
                Website - #link("https://g2games.dev/")[g2games.dev]\
                LinkedIn - #link("https://www.linkedin.com/in/g2games")[\@g2games]
            ]
        ]
    ]]
)

#v(5mm)
#columns(2)[
Full-stack software engineer with experience in web technologies, embedded
systems, and systems programming. 1 year of professional software development
experience & 5 years of experience in open source. 3 years of experience in
Rust. Leads multiple UNL Aerospace Club teams in software and embedded
systems development, with electrical engineering components.

#colbreak()

= Education
== University of Nebraska–Lincoln
- Bachelor of Computer Science (2027)
]

= Experience
#columns(2)[
== Drone Amplified #text(size: 11pt, weight: 500)[(2024 - Ongoing)]
Integrating high-bandwidth long range radio modules. Additionally created
programs for support of imaging systems.

== President of UNL Amateur Radio Club #text(size: 11pt, weight: 500)[(2024 - Ongoing)]
Leads activities pertaining to the operations of the UNL Amateur Radio Club. Participated in Fram2Ham.

== UNL Rocket Propulsion Group Lead #text(size: 11pt, weight: 500)[(2024 - Ongoing)]
Led the electrical and programming team in creating systems for safe rocket
motor ignition and testing equipment

#colbreak()

== UNL Rocketry Lead #text(size: 11pt, weight: 500)[(2024 - 2025)]
Programming lead for the University of Nebraska–Lincoln Aerospace club, created
and worked on multiple payloads leading a development team which competed at the
IREC.

== Lab Assistant #text(size: 11pt, weight: 500)[(2023 - 2024)]
Data entry of a backlog of 50 years of specimen information into a digital
database for preservation.
]

#line(length: 100%, stroke: 1pt)

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
    - Highly active contributor on open source repositories
    - Experience leading teams on open-source and proprietary projects
- Experience reverse engineering software
    - Ghidra, Cutter, GDB
- Experience in embedded systems
    - RP2040/RP2350, STM32, ESP32, ATMega
    - Rust, C, C++, MicroPython
- Amateur Radio operator since 2014
    - General class license holder (KE0BHO)
    - Nebraska Young Ham of the Year Award
- Web design and website creation
- Linux systems administration
    - Homelab
    - Personal website
- Electrical Engineering hobbyist
    - Soldering
    - PCB design & EDA (KiCad)
- Graphic design hobbyist
    - Logo for the #link("https://kate-editor.org/")[Kate text editor]:
        #link("https://kate-editor.org/post/2024/2024-06-08-kate-fun-logo/")[Link]
    - Logos for the UNL Aerospace Club for various purposes:
        #link("https://github.com/unl-rpg/branding")[Link 1,]
        #link("https://github.com/G2-Games/unl-aerospace-logos")[Link 2]
    - Logos and icons for Dangoware.
]

= Clubs and Groups
== Dangoware
TODO: Write something about Dangoware here
== UNL Aerospace Club
TODO: Write something about the club here
=== Rocket Propulsion Group
TODO: Write something about RPG here
=== Rocketry
TODO: Write something about Rocketry here

= Projects
#columns(1)[
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
designed to be Web Assembly compatible. Designed to eventually replace
`netmd-js` in the backend of `Web Minidisc`.

]
