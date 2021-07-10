//initialize the chats with their names from the database


loadUsersInfo();
var rynId;
var azamId;
function loadUsersInfo() {
    window.onload = function () {
        $.ajax({

            url: "http://assignment4.test/ryan/chat/all",
            method: 'GET',
            processData: false,
            header: {
                'Content-Type': 'application/json',
            },
            success: (resultJson) => {
                var ryan = resultJson[0];
                var azam = resultJson[1];
                rynId = ryan.id;
                azamId = azam.id;
                $('#name1').html(ryan.username.toUpperCase());
                $('#name2').html(azam.username.toUpperCase());
                loadUserChat(ryan.id);
                loadUserChat(azam.id);
            }
        })
    }
}

function loadUserChat($id) {

    $.ajax({

        url: "http://assignment4.test/ryan/chat/" + $id,
        method: 'GET',
        processData: false,
        header: {
            'Content-Type': 'application/json',
        },
        success: (chatJson) => {

            $.each(chatJson, function (i, item) {
                if (item.user_id == $id) {
                    addHtml(item.content, $id);
                }
            })
        },
        error: err => console.log(err),

    })



}

function addHtml(message, id) {
    if ($.trim(message) == '') {
        return false;
    }

    if (id == 1) {
        $('<li class="sent"><p>' + message + '</p></li').appendTo($('#messageRyan'));
        $('<li class="replies"><p>' + message + '</p></li').appendTo($('#messageAzam'));
        $('#chatbox1text').val(null);

    }

    else {
        $('<li class="sent"><p>' + message + '</p></li').appendTo($('#messageAzam'));
        $('<li class="replies"><p>' + message + '</p></li').appendTo($('#messageRyan'));
        $('#chatbox2text').val(null);
    }



}

//get icon and add event listener
var chat1 = document.getElementById('chat1');
var chatbox1 = document.getElementById('chatbox1');
var msg1 = document.getElementById('messages1');
// active element of chat box
chat1.addEventListener('click', function () {
    if (chatbox1.style.display == "block") {
        chatbox1.style.display = "none";
        chat1.classList.remove("icons-active");
        msg1.style.display = "none";
    }
    else {
        chatbox1.style.display = "block";
        chat1.classList.add("icons-active");
        msg1.style.display = "block";

    }

})





$('#ChatRyan').click(function () {
    // newMessageSentFromRyan();
    addHtml($('#chatbox1text').val(), rynId);
    newFileSentFromRyan();
});

//file for ryan
var fileRyan = document.getElementById('FileRyan');
var fileForm1 = document.getElementById('file-form1');
fileRyan.addEventListener('click', function () {
    if (fileForm1.style.display == "block") {
        fileForm1.style.display = "none";
        $('input[name="file-radio-1"]').prop('checked', false);
    }
    else {
        fileForm1.style.display = "block";
    }
})

function newFileSentFromRyan() {
    choice = $('input[name="file-radio-1"]:checked').val();
    if (choice != null) {
        $('<li class="sent sendFile"><p>' + choice + '</p></li').appendTo($('#messageRyan'));
        $('<li class="replies sendFile"><p>' + choice + '</p></li').appendTo($('#messageAzam'));
        $('input[name="file-radio-1"]').prop('checked', false);

    }
    else
        return false;
};
//for azam
var msg2 = document.getElementById('messages2');
var chat2 = document.getElementById('chat2');
var chatbox2 = document.getElementById('chatbox2');
chat2.addEventListener('click', function () {
    if (chatbox2.style.display == "block") {
        chatbox2.style.display = "none";
        chat2.classList.remove("icons-active");
        msg2.style.display = "none";
    }
    else {
        chatbox2.style.display = "block";
        chat2.classList.add("icons-active");
        msg2.style.display = "block";
    }
})

function newMessageSentFromAzam() {
    message = $('#chatbox2text').val();

    if ($.trim(message) == '') {
        return false;
    }

    $('<li class="sent"><p>' + message + '</p></li').appendTo($('#messageAzam'));
    $('<li class="replies"><p>' + message + '</p></li').appendTo($('#messageRyan'));
    $('#chatbox2text').val(null);
};

$('#ChatAzam').click(function () {
    newMessageSentFromAzam();
    newFileSentFromAzam();
});

//file for azam

var fileAzam = document.getElementById('FileAzam');
var fileForm2 = document.getElementById('file-form2');
fileAzam.addEventListener('click', function () {
    if (fileForm2.style.display == "block") {
        fileForm2.style.display = "none";
        $('input[name="file-radio-2"]').prop('checked', false);
    }
    else {
        fileForm2.style.display = "block";
    }
})

function newFileSentFromAzam() {
    choice = $('input[name="file-radio-2"]:checked').val();
    if (choice != null) {
        $('<li class="replies sendFile2"><p>' + choice + '</p></li').appendTo($('#messageRyan'));
        $('<li class="sent sendFile2"><p>' + choice + '</p></li').appendTo($('#messageAzam'));
        $('input[name="file-radio-2"]').prop('checked', false);

    }
    else
        return false;
};