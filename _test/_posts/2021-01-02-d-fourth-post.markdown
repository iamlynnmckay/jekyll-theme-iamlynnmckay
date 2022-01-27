---
layout: post
title: "d fourth post"
date: 2021-01-02 00:00:02 -700
categories: second/category
tags: fourth-tag
excerpt: ""
---


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

