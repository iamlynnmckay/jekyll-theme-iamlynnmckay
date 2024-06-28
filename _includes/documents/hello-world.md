
{{ include.start }} This document is transcluded by a post.

It also transcludes another document which transcludes another document.

{% capture start %}{{ include.start }}#{% endcapture %}
{% capture document %}
{% include documents/my-directory/my-transcluded-document.md start=start %}
{% endcapture %}
{% include transclude.html document=document %}