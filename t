function appendImage() {
	var image = document.createElement('img');
	image.src = getPicture();
	
	document.body.appendChild(image);
}

function getPicture() {
	var canvas = document.createElement('canvas');
	
	var aspectRatio = video.videoWidth/video.videoHeight;
	canvas.width = 320;
	canvas.height = canvas.width / aspectRatio;
	
	var ctx = canvas.getContext('2d');
	ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
				
	return canvas.toDataURL('image/jpeg');
}