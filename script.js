const userData = JSON.parse(localStorage.getItem('userData')) || [];

function onLoginPress() {
    var username = document.getElementById('loginUsername').value;
    var password = document.getElementById('loginPassword').value;
    loginHelper(username, password);
    console.log(userData);
}

function onRegisterPress() {
    var username = document.getElementById('registerUsername').value;
    var password = document.getElementById('registerPassword').value;
    var firstName = document.getElementById('firstName').value;
    var lastName = document.getElementById('lastName').value;
    registerHelper(username, password, firstName, lastName);
    console.log(userData);
}

function registerHelper(username, password, firstName, lastName) {
    if (username.endsWith('@ou.edu') && username.length > 7 && password.length > 4 && firstName !== "" && lastName !== "") {
        for (const data of userData) {
            var temp = data.split(",");
            if (temp[0] === username) {
                alert('Email already registered');
                return;
            }
        }
        userData.push(username + "," + password + "," + firstName + "," + lastName);
        localStorage.setItem('userData', JSON.stringify(userData));
        alert('Registration successful');
    } else {
        alert('Email must be an OU email and password must be > 4 characters');
    }
}

function loginHelper(username, password) {
    for (const data of userData) {
        var temp = data.split(",");
        if (temp[0] === username && temp[1] === password) {
            alert('Successfully logged in');
            return;
        }
    }
    alert('Invalid Credentials');
}