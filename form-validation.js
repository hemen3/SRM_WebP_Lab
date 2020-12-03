function formValidation()
	{
		var uid = document.registration.username.value;
		var ufname = document.registration.fname.value;
		var ulname = document.registration.lname.value;
		var udob = document.registration.dob.value;
		var usex = document.getElementsByName("sex");
		var uadd = document.registration.add.value;
		var unat = document.registration.nat.value;
		var umob = document.registration.mob.value;
		var uemail = document.registration.mail.value;
		var upass = document.registration.pwd.value;
		var ucpass = document.registration.cpass.value;


		if(userid_validation(uid,5,12))
		{
		if(allLetter(ufname))
		{
		if(allLetter(ulname))
		{
		if(dobcheck(udob))
		{
		if(validsex(usex))
		{
		if(alphanumeric(uadd))
		{ 
		if(countryselect(unat))
		{
		if(allnumeric(umob))
		{
		if(ValidateEmail(uemail))
		{
		if(passid_validation(upass,8,23))
		{
		if(passid_confirmation(upass,ucpass))
		{
		} 
		}
		}
		} 
		}
		}
		}
		}
		}
		}
		}
		return false;
	}


function userid_validation(uid,mx,my)
	{
	var uid_len = uid.length;
	if (uid_len == 0 || uid_len >= my || uid_len < mx)
		{
			alert("User Id should not be empty / length be between "+mx+" to "+my);
			return false;
		}
	return true;
	}

function allLetter(uname)
	{ 
		var letters = /^[A-Za-z]+$/;
		if(uname.match(letters))
		{
			return true;
		}
		else
		{
			alert('First/Last name must have alphabet characters only');
			return false;
		}
	}

function dobcheck(udob)
	{
		var pattern = /^(?:0[1-9]|[12]\d|3[01])([\/.-])(?:0[1-9]|1[0-2])\1(?:19|20)\d\d$/;
		if (udob == null || udob == "" || !udob.match(pattern))
		{
			alert('Date of birth not be empty/Invalid date of birth');
			return false;
		}
		else 
		{
			return true
		}
	}		

function validsex(usex)
	{
		x=0;
		if(usex[0].checked) 
		{
			x++;
		}
		if(usex[1].checked) 
		{
			x++;
		}
		if(x==0)
		{
			alert('Select Male/Female');
			return false;
		}
		else
		{
			return true;
		}
	}

function alphanumeric(uadd)
	{ 
		var letters = /^[#.0-9a-zA-Z\s,-]+$/;
		if(uadd.match(letters))
		{
			return true;
		}
		else
		{
			alert('Address must have alphanumeric characters [-.#, allowed]only');
			return false;
		}
	}

function countryselect(unat)
	{
		if(unat == "Default")
		{
			alert('Select your country from the list');
			return false;
		}
		else
		{
			return true;
		}
	}

function allnumeric(umob)
	{ 
		var umob_len = umob.length;
		var numbers = /^[0-9]+$/;
		if (umob_len >= 11 || umob_len <= 9)
		{
			alert("Mobile Number should not be empty / length be 10 digits");
			return false;
		}
		else if(umob.match(numbers))
		{
			return true;
		}
		else
		{
			alert('Mobile Number must have numeric characters only');
			return false;
		}
	}

function ValidateEmail(uemail)
	{
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(uemail.match(mailformat))
		{
			return true;
		}
		else
		{
			alert("You have entered an invalid email address!");
			return false;
		}
	}
	
function passid_validation(upass,mx,my)
	{
		var passid_len = upass.length;
		if (passid_len == 0 ||passid_len >= my || passid_len < mx)
		{
			alert("Password should not be empty / length be between "+mx+" to "+my);
			return false;
		}
		return true;
	}

function passid_confirmation(upass,ucpass)
	{
		var upass_len = upass.length;
		var ucpass_len = ucpass.length;
		if (ucpass_len == 0)
		{
			alert("Confirm Password should not be empty");
			return false;
		}
		else if (ucpass != upass)
		{
			alert("Password does not match");
			return false;
		}
		else
		{
			return true;

		}
	}	

