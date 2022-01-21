---
layout: post
title: "d fourth post"
date: 2021-01-02 00:00:02 -700
categories: second/category
tags: fourth-tag
excerpt: ""
---

  <div class="text-center">
    <div class="text-lg">
      {{ site.title | escape }}
    </div>
    <div class="text-sm m-2">
      {{- site.description | escape -}}
    </div>
  </div>
  <div class="flex flex-wrap justify-center m-2">
    <div class="m-2">
      <a href="{{ " /feed.xml" | relative_url }}">
        <i class="fas fa-rss"></i>
      </a>
    </div>
    
    <div class="m-2">
      <a href="https://bandcamp.com/{{ site.twitter.username }}">
        <i class="fab fa-bandcamp"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://facebook.com/{{ site.twitter.username }}">
        <i class="fab fa-facebook"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://github.com/{{ site.twitter.username }}">
        <i class="fab fa-github"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://instagram.com/{{ site.twitter.username }}">
        <i class="fab fa-instagram"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://patreon.com/{{ site.twitter.username }}">
        <i class="fab fa-patreon"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://pinterest.com/{{ site.twitter.username }}">
        <i class="fab fa-pinterest"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://reddit.com/{{ site.twitter.username }}">
        <i class="fab fa-reddit"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://soundcloud.com/{{ site.twitter.username }}">
        <i class="fab fa-soundcloud"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://stack-overflow.com/{{ site.twitter.username }}">
        <i class="fab fa-stack-overflow"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://twitch.com/{{ site.twitter.username }}">
        <i class="fab fa-twitch"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://twitter.com/{{ site.twitter.username }}">
        <i class="fab fa-twitter"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://venmo.com/u/{{ site.twitter.username }}">
        <i class="fab fa-paypal"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://wikipedia.com/{{ site.twitter.username }}">
        <i class="fab fa-wikipedia-w"></i>
      </a>
    </div>
    
    
    <div class="m-2">
      <a href="https://youtube.com/{{ site.twitter.username }}">
        <i class="fab fa-youtube"></i>
      </a>
    </div>
    
  </div>

<canvas id="canvas" width="300"></canvas>

<script>
    window.onload = () => {

        function randomColor() {
            return '#' + Math.floor(Math.random() * 16777215).toString(16);
        }

        function sleep(time) {
            return new Promise((resolve) => setTimeout(resolve, time));
        }

        (() => {

            document.querySelectorAll("i.fa, i.fas, i.fab").forEach((elem) => {
                elem.style.color = randomColor();
            });
        })();

        (() => {
            var canvas = document.getElementById('canvas');
            var ctx = canvas.getContext('2d');
            var raf;

            var ball = {
                x: 1,
                y: 0,
                vx: 3,
                vy: 2,
                radius: 5,
                color: 'white',
                draw: function () {
                    ctx.beginPath();
                    ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2, true);
                    ctx.closePath();
                    ctx.fillStyle = this.color;
                    ctx.fill();
                }
            };


            function draw() {
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                ball.draw();
                ball.x += ball.vx;
                ball.y += ball.vy;
                if (ball.y + ball.vy > canvas.height || ball.y + ball.vy < 0) {
                    ball.color = randomColor();
                    ball.vy = -ball.vy;
                }
                if (ball.x + ball.vx > canvas.width || ball.x + ball.vx < 0) {
                    ball.color = randomColor();
                    ball.vx = -ball.vx;
                }
                raf = window.requestAnimationFrame(draw);
            }

            raf = window.requestAnimationFrame(draw);
           
        })();

    };
</script>
