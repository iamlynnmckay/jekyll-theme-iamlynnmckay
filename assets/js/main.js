function randomColor() {
    return '#' + Math.floor(Math.random() * 16777215).toString(16);
}

function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time));
}

window.onload = () => {
    (() => {
        console.log("@iamlynnmckay");
    })();
} 