---
layout: post
title:  "Hello World!"
tags: helloworld hello-world
---

lorem ipsum

{% capture document %}{% include hello-world.md %}{% endcapture %}{{ document | markdownify }}
