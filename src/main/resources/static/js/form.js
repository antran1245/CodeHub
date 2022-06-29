function checkFileSize(file) {
	let maxSize = 10485760;
	console.log("here")
	if(file.files && file.files[0].size > maxSize) {
		alert("File is too large")
		file.value = null;
	}
}