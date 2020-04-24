	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!-- fb comment Script -->
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0&appId=996966353998009&autoLogAppEvents=1">
	</script>
	<!-- End of fb comment Script -->
	<script>
			// 1. load các thành phần cần thiết
			   window.fbAsyncInit = function () {
				 FB.init({
				   appId: '996966353998009', //test 2603350006563664 //Bmovie 996966353998009
				   cookie: true,                     // Enable cookies to allow the server to access the session.
				   xfbml: true,                     // Parse social plugins on this webpage.
				   version: 'v5.0'           // Use this Graph API version for this call.
				 });
			  // kiểm tra trạng thái hiện tại
				 FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
				   statusChangeCallback(response);        // Returns the login status.
				 });
			   };
		   
			   (function (d, s, id) {                      // Load the SDK asynchronously
				 var js, fjs = d.getElementsByTagName(s)[0];
				 if (d.getElementById(id)) return;
				 js = d.createElement(s); js.id = id;
				 js.src = "https://connect.facebook.net/en_US/sdk.js";
				 fjs.parentNode.insertBefore(js, fjs);
			   }(document, 'script', 'facebook-jssdk'));
		   //2. kiểm tra, xử lý trạng thái đăng nhập
			   function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
				 console.log('statusChangeCallback');
				 console.log(response);                   // The current login status of the person.
				 if (response.status === 'connected') {   // Logged into your webpage and Facebook.
				   fbAPIGetInfo();
				 } else if (response.status === 'unknown') {
				   console.log('statusChangeCallback unknown unknown unknown');
				 }
				 else {                                 // Not logged into your webpage or we are unable to tell.
				   document.getElementById('status').innerHTML = 'Please log ' +
					 'into this webpage.';
				 }
			   }
		   
			   function checkLoginState() {               // Called when a person is finished with the Login Button.
				 FB.getLoginStatus(function (response) {   // See the onlogin handler
				   statusChangeCallback(response);
				 });
			   }
			   
			   function fbAPIGetInfo() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
				 FB.api('/me', 'get', { fields: 'email,id,name,picture{url}' }, function (response) {
				   document.getElementById("fb-login-button").setAttribute('style', 'display:none');
				   document.getElementById("loginlocalemail").setAttribute('style', 'display:none');
				   document.getElementById("loginlocalpsw").setAttribute('style', 'display:none');
				   document.getElementById("loginlocalbtn").setAttribute('style', 'display:none');
				   document.getElementById("facebookpic").setAttribute('style', 'display:block');
				   document.getElementById("facebookpic").src = response.picture.data.url;
				   document.getElementById("facebookname").setAttribute('style', 'display:block');
				   document.getElementById("facebookname").innerHTML = response.name;
				   document.getElementById("facebookid").setAttribute('style', 'display:block');
				   document.getElementById("facebookid").innerHTML = "ID: "+response.id;
				   document.getElementById("facebookemail").setAttribute('style', 'display:block');
				   document.getElementById("facebookemail").innerHTML = "Email: "+response.email;
				   document.getElementById('titlehello').innerHTML ="Wellcome!";
				 });
			   } 
			   
	</script>
