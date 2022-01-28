(() => {
    document.querySelectorAll("i.fa, i.fas, i.fab").forEach((elem) => {
        elem.style.color = randomColor();
    });
})();