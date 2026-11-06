#set document(title: "Citations in Org Mode Export for Typst")
#set document(author: "Randy Ridenour")
#set page(paper: "us-letter", margin: (x: 1.5in, y: 1.5in))
#set text(font: "Libertinus Serif", size: 12pt,)
#set heading(numbering: "1.1")
#show title: set text(font: "Libertinus Serif", size: 20pt, weight: "regular")
#show heading: set text(font: "Libertinus Sans", weight: "regular")
#show math.equation: set text(font: "Libertinus Math")
#show heading: smallcaps
#show heading: set block(above: 2em, below: 1em)
#align(center)[
#title()
#v(1em)
#set text(14pt)
Randy Ridenour
#v(.05em)
July 16, 2026]

These are examples of citation exports using my custom ox-rlr-typst Org mode exporter for Typst. All of the following are using the Chicago Author-Date style.

The default citation, `[cite:@Ridenour2019b]`, prints the author and year in parentheses:

#cite(<Ridenour2019b>, form: "normal")

#cite(<Ridenour2019b>, supplement: "for more", form: "normal")

To add a page or page-range reference, use `[cite:@Ridenour2019b 7-10]`:

#cite(<Ridenour2019b>, supplement: "7-10", form: "normal")

`[cite/text:@Ridenour2019b]` moves the author name outside the parentheses:

see #cite(<Ridenour2019b>, form: "prose") for more.

To print the author name only, use `[cite/author:@Ridenour2019b]`:

#cite(<Ridenour2019b>, form: "author")

Likewise, for only the year, use `[cite/na/b:@Ridenour2019b]`:

#cite(<Ridenour2019b>, form: "year")

`[cite/bibentry:@Ridenour2019b]` prints a standard biliography entry:

#cite(<Ridenour2019b>, form: "full")

Finally, `[cite/nocite:@Ridenour2019b]` prints nothing, but adds the reference to the bibliography.

#cite(<Ridenour2019b>, form: none)

#bibliography("sources.bib", style: "chicago-author-date")
