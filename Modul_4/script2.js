function changeAlignment() {
  var box = document.getElementById("box");
  var alignment = box.style.textAlign;

  if (alignment === "" || alignment === "left") {
    box.style.textAlign = "center";
  } else if (alignment === "center") {
    box.style.textAlign = "right";
  } else if (alignment === "right") {
    box.style.textAlign = "left";
  }
}

function changeBackgroundColor() {
  var box = document.getElementById("box");
  var currentColor = box.style.backgroundColor;

  if (currentColor === "" || currentColor === "rgb(0, 123, 255)") {
    box.style.backgroundColor = "#ff6347";
  } else {
    box.style.backgroundColor = "#007bff";
  }
}
