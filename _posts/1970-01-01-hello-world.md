---
layout: post
title:  "Hello World!"
tags: helloworld hello-world
---

lorem ipsum

```sh
# This is a comment
function main() {
    echo "Enter some text."
    while read -r line
    do
        echo "You entered..."
        echo "'$line'"
    done
}
```

{% capture document %}{% include documents/hello-world.md start="##" %}{% endcapture %}
{% include transclude.html document=document %}


