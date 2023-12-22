---
layout: page
permalink: /publications/
title: publications
description:
years: [2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2008, 2007, 2006, 2003]
nav: false
nav_order: 1
published: false
---
<!-- _pages/publications.md -->
For up-to-date pubications list, check out my [google scholar](https://scholar.google.com/citations?user=TrDQTukAAAAJ&hl=en) page.
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
