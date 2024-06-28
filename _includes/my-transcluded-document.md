
## This document is transcluded by a document which is transcluded by a post.

It also transludes another document.

{% capture document %}{% include my-nested-transcluded-document.md %}{% endcapture %}{{ document | markdownify }}
