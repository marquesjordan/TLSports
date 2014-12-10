var vid = document.getElementById("bgvid");
var pauseButton = document.getElementById("vidpause");
var icon = document.getElementById("icon");

function vidFade() {
	vid.classList.add("stopfade");
}


pauseButton.addEventListener("click", function() {

	console.log("clicked!!");

	vid.classList.toggle("stopfade");
	if (vid.paused) {
		vid.play();
		icon.className = "glyphicon glyphicon-pause";
		// pauseButton.innerHTML = "Pause";
	} else {
		vid.pause();
		// pauseButton.innerHTML = "Paused";
		icon.className += "glyphicon glyphicon-play";
	}
});



