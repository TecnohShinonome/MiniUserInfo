window.addEventListener('message', (event) => {
	let data = event.data
	if(data.action == 'setMiniUserInfo') {
		document.getElementById('Date').innerText        = data.date
		document.getElementById('Weekday').innerText     = data.weekday
		document.getElementById('Time').innerText        = data.time
		document.getElementById('ServerName').innerText  = data.server
		document.getElementById('PlayerID').innerText    = data.userid
		document.getElementById('PlayerName').innerText  = data.name
		document.getElementById('JobName').innerText     = data.jobname
		document.getElementById('main').style.display    = "block"
		document.getElementById('loading').style.display = "none"
	}
})