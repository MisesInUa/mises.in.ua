# mises.in.ua
Liberty Education Project site


Creating an article:

Convert *.docx (not *.doc) file to *.md via [pandoc](http://pandoc.org).

```bash
pandoc -o new-file-in-markdown.md edited-article-version-in.docx
```

Create new empty aticle:

```bash
> hugo new article/new-article-name.md
~/mises.in.ua/content/article/new-article-name.md created
```

Empty article ***~/mises.in.ua/content/article/new-article-name.md*** created from template:

```markdown
+++
author = "author name"
date = "2016-10-22T10:31:58+03:00"
draft = true
tags = ["x", "y"]
title = "new article name"

+++
```

Fill attributes and copy markdown.

```markdown
+++
author = "Людвиг фон Мизес"
date = "2016-10-22T10:31:58+03:00"
draft = true
tags = ["Людвиг фон Мизес", "австрийская школа", "экономические циклы"]
title = "Австрийская теория экономического цикла"

## h2 titles only - h1 comes from *title* attribute
Regular text
+++
```

Start server:

```bash
hugo server --theme=hugo-geo --buildDrafts
```

Check result at http://localhost:1313/

