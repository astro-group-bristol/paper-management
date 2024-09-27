#import "@preview/polylux:0.3.1": *
#import "tamburlaine.typ": *

#let HANDOUT_MODE = false
#enable-handout-mode(HANDOUT_MODE)

#show: tamburlaine-theme.with(aspect-ratio: "4-3")
#show link: item => underline(text(blue)[#item])

#let COLOR_CD = color.rgb("#56B4E9")
#let COLOR_REFL = color.rgb("#D55E00")
#let COLOR_CONT = color.rgb("#0072B2")

#set par(spacing: 0.5em, leading: 0.5em)
#set text(tracking: -0.5pt, size: 22pt)

#let todo(item) = text(fill: red, [#item])

#title-slide(
  title_size: 30pt,
  title: [
    #set text(tracking: -3pt)
    #set align(left)
    #move(
      dy: -0.3em,
      text(
        size: 90pt,
        move(dy: -31pt, stack(
          spacing: 4pt,
          move(dx: -43pt, dy: 17pt, [#text(fill: TEXT_COLOR)[Paper]]),
          [management#v(1.3em)],
          move(dy: 20pt, dx: 110pt, align(right, text(size: 46pt, [...or, how I learned to stop worrying and love Zotero])))
        )
      ))
    )
    #v(0.5em)
  ],
  authors: ([Fergus Baker], ),
  where: "Astro Dev Group",
)[
]

#slide()[
  #set align(center)
  #align(horizon)[
    #set text(weight: "black", size: 40pt, fill: PRIMARY_COLOR)
    How do you manage your papers?
  ]
]

#slide(title: "Physical")[
  #set align(center)
  #align(horizon)[
    #image("./figs/Fri 27 Sep 14:35:12 BST 2024.png")
  ]
]

#slide(title: "Virtual")[
  #set text(size: 28pt)
  #v(0.5em)
  A *directory* on your machine:
  ```
  $ du -hs papers
  632GB papers
  ```

  #v(1em)

  Read directly in a PDF reader.
  - Like the physical solution, still has a lot of manual housekeeping
  - Automated searching, but only on filenames\*
]

#slide(title: "Zotero")[
  #set text(size: 20pt)
  A tool for keeping track of your papers: #link("https://www.zotero.org/")

  #v(1em)

  #grid(columns: (40%, 1fr),
  [
  Does much more:
  - Metadata
  - Citation helper
  - Notes and papers in one places
  - Expansive search\*
  - Browser extensions ("connectors")
  - Sync between machines\*
  - Plugins
  - Tags
  ],
  [
    #image("./figs/zotero-example.png")
  ])

  #v(1em)
  But it has one substantial problem:
  *it is easier to put information into Zotero than it is to get it out.*


  #v(1fr)
  #text(size: 12pt)[Fergus should do a demo now.]
  #v(1em)
]

#slide(title: "Fergus's tips")[
  #v(1em)
  #set text(size: 28pt)

  - Use *tags*, but remove the default tags
  - *Don't* keep your notes in Zotero (too limited for what you need to be able to do)
  - Have a `todo` tag and a `read` tag (assign them colours)
  - *Flat* collections > nested collections
  - Spend a bit of time every time you add an item adding metadata (tags, comments, etc.)

  #v(1em)
  #align(center)[
    #text(weight: "black", fill: PRIMARY_COLOR)[Your ability to get information out is only as good as the _metadata_ you put in.]
  ]
]


#slide(title: "A deep(ish) dive into shallow waters")[
#set text(size: 20pt)
#v(1em)
Looking inside the directory:
#v(0.3em)
```
~ $ ls Zotero
cache/   storage/      zotero-mirror.sqlite  zotero.sqlite.bak
locate/  styles/       zotero.sqlite         zotero.sqlite-journal
logs/    translators/  zotero.sqlite.1.bak
```
#v(1em)
Looking inside the database with `sqlitebrowser`:
#v(0.3em)
#set align(center)
#image("./figs/sql-database.png", width: 50%)
]

#slide()[
  #v(1em)
  #align(center)[
  #image("./figs/item-annotations.png", width: 100%)
  ]
  You can automate searching through this beyond what Zotero would let you do.
  - You can do it in any programming language
  - You can use your SQL skills (thanks Mark) to query things!
]

#slide()[
  #set align(center)
  #set align(horizon)
  #text(weight: "black", size: 40pt, fill: PRIMARY_COLOR)[
    Fergus's top tip: write your own tools on top of Zotero.
  ]
  #v(5em)

  #text(size: 12pt)[Fergus should do another demo now.]
]

