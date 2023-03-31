---
title: Usefull ngrok scripts
author: Oleg Chuev
date: 2023-03-31
category: Development
layout: post
tags: ngrok
---

Script below will stop all backgrounded ngrok processes

```bash
  echo "Stopping background ngrok process"
  kill -9 $(ps -ef | grep 'ngrok' | grep -v 'grep' | awk '{print $2}')
  echo "ngrok stopped"
```