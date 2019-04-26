document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas");
    const ctx = canvas.getContext("2d");
//   canvas.setAttribute("height", "500");
//   canvas.setAttribute("width", "500");
    canvas.width = 500;
    canvas.height = 500;
    ctx.fillStyle = "red";
    ctx.fillRect(100,100, 200, 200);

    
    ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();

  
});
