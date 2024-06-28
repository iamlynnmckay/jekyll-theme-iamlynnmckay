
## This document is transcluded by a post.

It also transcludes another document which transcludes another document.

{% capture document %}{% include my-transcluded-document.md %}{% endcapture %}{{ document | markdownify }}
