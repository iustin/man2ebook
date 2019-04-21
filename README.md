# man2ebook

This is a _trivial_ script to generate an epub from a list of man
pages. I wrote this as none of the alternatives did what I wanted, and
I find reading man pages on my ebook reader on the go very practical.

## Requirements

You need `man2html` and `calibre` installed, and of course the list of
man pages you want to read, installed such that `man` can find them.

## Usage

Simply run the generate script, passing the list of desired man pages,
ideally in the form of `name.section`:

```
./generate.sh namespaces.7 credentials.7
```

The section is required when the name resolves to multiple sections.

The output will be left as `index.epub`. You can customise the
metadata as needed, of course.

## Notes

### Backend

The current backend is `man2html`, more specifically the version as
distributed in Debian—and this has lots of patches. I've tried to use
`mandoc` as well, but it has worse quirks than `man2html`.

The advantage of `man2html` is that it can generate a tree of
documents for which internal links (references) work correctly, which
almost makes the result feel like a coherent document.

### Alternatives

There are a couple of repositories that seem to do the same, but not
quite:

- https://github.com/younix/man2epub: doesn't seem to generate
  cross-links, only standalone pages in the document; also very
  specific to openbsd/its man syntax, I think;
- https://github.com/nerab/manbook: while promising, it's untouched
  (except bumping of dependencies) in a long while, and actually
  misses the main functionality, of combining pages into a book;

On the "generate HTML from man pages" there are other tools, but even
investigating them seemed more complex than just writing a simple
shell script. So, that's the story.

Iustin Pop, <iustin@k1024.org>.
