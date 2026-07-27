const button = document.getElementById("colorBtn");

const colors = [
    "#FFCDD2",
    "#C8E6C9",
    "#BBDEFB",
    "#FFF9C4",
    "#D1C4E9",
    "#FFE0B2"
];

button.addEventListener("click", () => {
    const randomColor = colors[Math.floor(Math.random() * colors.length)];
    document.body.style.backgroundColor = randomColor;
});


