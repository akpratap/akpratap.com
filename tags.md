---
layout: page
title: Tag Cloud
sitemap: true
---

<div class="archives" itemscope itemtype="http://schema.org/Blog">

{% for tag in site.tags %}
 <span style="margin: 10px;"><a href="/tags/{{ tag[0] }}/" style="font-size: {{ tag[1] | size | times: 3 | plus: 20 }}px">{{ tag[0] }}</a></span>
{% endfor %}
</div>
