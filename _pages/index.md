---
layout: single
excerpt: "Registered Community Organization Serving Shawmont Valley."
title: "Residents of Shawmont Valley Association"
header:
  overlay_image: /assets/imgs/50smap-25.jpg
  actions:
    - label: "Join the RSVA"
      url: "/join"
permalink: /
feature_row:
  - image_path: /assets/imgs/mtg-thumb_325-195.png
    title: "Meetings"
    alt: "Members at Roxborough Church during meeting"
    excerpt: "RSVA meetings and events."
    url: "/events"
    btn_label: "List of Meetings"
    btn_class: "btn--primary"
  - image_path: /assets/imgs/map-thumb_325-195.png
    title: "Map"
    excerpt: "View the catchment area for RSVA and local civics."
    url: "/map"
    btn_label: "RSVA Map"
    btn_class: "btn--primary"
  - title: "Join"
    image_path: /assets/imgs/join_325-195.png  
    excerpt: "Join the RSVA to attend meetings and vote on outcomes."
    url: "/join" 
    btn_label: "Join the RSVA"
    btn_class: "btn--primary"
---

{% include feature_row %}

<div id="front-items">
  <div class="first">
    <h3>Upcoming Meetings</h3>
    {% include events_list type="meeting" epoc="future" %}
  </div>
  <div class="second">
    <h3>Get Updates</h3>
    {% include email-signup-form.html %}
  </div>
</div>
