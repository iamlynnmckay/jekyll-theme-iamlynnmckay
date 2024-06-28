
{{ include.start }} This document is transcluded by a document which is transcluded by a post.

It also transludes another document.

{% capture start %}{{ include.start }}#{% endcapture %}
{% capture document %}
{% include documents/my-directory/my-subdirectory/my-nested-transcluded-document.md start=start %}
{% endcapture %}
{% include transclude.html document=document %}

