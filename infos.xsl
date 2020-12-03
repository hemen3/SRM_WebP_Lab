<?xml version="1.0" encoding="UTF-8"?> 
<?xml-stylesheet type="text/css" href="../style.css"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>  
    <title>Easy Flight</title>
</head> 
<style>
    html, body {
    background-image: url("/FBS/images/fbg.jpg");  
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
        margin: 0;
    }
    .offer-table{
    width: 80%;
    margin: auto;
    margin-top: 4%;
    }
    table, th, td {
		font-size:20px;
        border-collapse: collapse;
        padding: 15px;
        text-align: center;
    }
    td{
        background-color: rgb(203, 224, 243);
    }
    tr{
        border: 1px solid red;
    }
    th{
        background-color: #0093E9;
        color: white;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: medium;
    }
   .logo{
		width: 50px;
		padding-top: 10px;
		padding-bottom: 10px;
		margin-left: 80px;
		float: left;
	}
	.header{
		height: 70px;
		display: flex;
		justify-content: space-around;
		margin-bottom: 5px;
		background-color: #244093;
	     border-top: solid rgb(133, 0, 0) 5px;
}
footer {
    position: fixed;
    bottom: 0;
    border-bottom: solid rgb(133, 0, 0) 5px;
    background-color:#244093;
    color: white;
    width: 100%;
    text-align: center;
    line-height: 10px;
}
	.heading{
		font-size: xx-large;
		text-align: center;
		color:#c3e6f9;
		padding: 15px;
		margin: auto;
		margin-left:10px;
	}
	.header-buttons{
		margin: auto;
		height: 75px;
		display: flex;
		margin-left: 630px;
		justify-content: space-around;
	}
	.header_btn_text{
		text-align: center;
		margin-top: 30%;
		font-size: 14pt;
	}

	.header-button{

		color: white;
		height: 100%;
		width: 100px;
		font-size: medium;
		margin-right: 2%;
	}
	.header-button:hover{
		background-color:#bde2f5;
		color: black;
	}

	a:link {
		text-decoration: none;
	}
	
	.blinking{
	margin-top: 20px;
	color: red;
	font-size:50px;
	 background-color: black;
    animation:blinkingText 1.2s infinite;
}
@keyframes blinkingText{
    0%{     color: red;    }
    49%{    color: red; }
    60%{    color:yellow; }
    99%{    color:yellow;  }
    100%{   color: red;    }
}
</style>
    <body>
        <div class ="header">
            <img src ="../images/favicon.ico" alt ="Easy Flight" class = "logo"></img>   
            <div class="heading">
                Easy Flight
            </div>
            <div class="header-buttons">
                <a href="../pages/home.html" class="header-button">
                    <div class="header_btn_text">
                        Home
                    </div>
                </a>
                <a href="../pages/infos.html" class="header-button">
                    <div class="header_btn_text">
                        Offers
                    </div>
                </a>
                <a href="../pages/feedback.html" class="header-button">
                    <div class="header_btn_text">
                        Contact Us
                    </div>
                </a>
                <a href="../pages/login.html" class="header-button">
                    <div class="header_btn_text">
                        Login
                    </div>
                </a>
            </div>
        </div>
        <div style="text-align:center">
            <p class="blinking">Today Offers</p> 
            <table class="offer-table">
                <tr > 
                    <th>Airline</th> 
						<th>From</th> 
						<th>Destination</th>
						<th>Real Price</th>
						<th>Special Price</th>
						<th>Class</th>
                </tr>
                <xsl:for-each select="infos/info">
                <tr>
                    <td><xsl:value-of select="airline"/></td> 
						<td><xsl:value-of select="from"/></td> 
						<td><xsl:value-of select="to"/></td> 
						<td><xsl:value-of select="price"/></td>
						<td><xsl:value-of select="offer_price"/></td> 						
						<td><xsl:value-of select="class"/></td>
                </tr> 
                </xsl:for-each>
            </table> 
        </div>
        <footer >
        <p style="text-align: center;">
			Easy Flight
        </p>
        <p style="text-align: center;">
        <a href="mailto:hd7781@srmist.edu.in" style="color:rgb(185, 183, 183);text-decoration: underline;">
			Mail us
        </a>
        </p>
        </footer>
    </body>
</html> 
</xsl:template>
</xsl:stylesheet>