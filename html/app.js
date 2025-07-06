window.addEventListener('message', (event) => {
    let data = event.data
    // When a 'setMiniUserInfo' action message is received from the client script
    if(data.action == 'setMiniUserInfo') {
        // Set the received data to each HTML element.
        document.getElementById('Date').innerText = data.date
        document.getElementById('Weekday').innerText = data.weekday
        document.getElementById('Time').innerText = data.time
        document.getElementById('ServerName').innerText = data.server
        document.getElementById('PlayerID').innerText = data.userid
        document.getElementById('PlayerName').innerText = data.name
        // Displays the job name. If QBCore is not used, this might be undefined.
        // You might want to add a check here if you don't want to display 'undefined'.
        document.getElementById('JobName').innerText = data.jobname
        // Display the main display area and hide the loading display.
        document.getElementById('main').style.display = "block"
        document.getElementById('loading').style.display = "none"
    }
})