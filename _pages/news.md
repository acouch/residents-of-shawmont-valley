---
layout: single
title: News
permalink: /news/
collection: news
---
These are neighborhood related items shared with RSVA. To share something with our members, contact us.

<h3>Recent Community News</h3>

{% assign entries_layout = page.entries_layout | default: 'list' %}
<div class="entries-{{ entries_layout }}">
  {% include documents-collection.html collection=page.collection sort_by=page.sort_by sort_order=reverse type=entries_layout %}
</div>
