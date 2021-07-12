addiForm.onsubmit = async (e) => {
    e.preventDefault();

    let response = await fetch('https://www.naviteam.tk/assignment4/addParticipantForm', {
      method: 'POST',
      body: new FormData(addiForm)
    });

    let result = await response.json();

    alert('Click the Participants button to check');
};

delForm.onsubmit = async (e) => {
    e.preventDefault();

    let response = await fetch('https://www.naviteam.tk/assignment4/deleteParticipantForm', {
      method: 'POST',
      body: new FormData(delForm)
    });

    let result = await response.json();

    alert('Click the Participants button to check');
};