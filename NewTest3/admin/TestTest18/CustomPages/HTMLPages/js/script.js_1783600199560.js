const colors = [
    "#ffadad",
    "#ffd6a5",
    "#fdffb6",
    "#caffbf",
    "#9bf6ff",
    "#a0c4ff",
    "#bdb2ff"
];

const button = document.getElementById("colorBtn");

button.addEventListener("click", () => {
    const randomColor = colors[Math.floor(Math.random() * colors.length)];
    document.body.style.backgroundColor = randomColor;
});
