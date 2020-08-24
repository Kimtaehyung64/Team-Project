// Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAf9SzkZ6YTzDkVAUhyzIyXtmL0l1j1SbM",
    authDomain: "budongsan-auction.firebaseapp.com",
    databaseURL: "https://budongsan-auction.firebaseio.com",
    projectId: "budongsan-auction",
    storageBucket: "budongsan-auction.appspot.com",
    messagingSenderId: "319321628575",
    appId: "1:319321628575:web:41ebc4f97b4e64d89127aa",
    measurementId: "G-PSCQ915HJ2"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
  
  const messaging = firebase.messaging()
  messaging.usePublicVapidKey("BILo0yrjHB6Q8Vv1oGFDJfpbXDLnat35EfD8SeAZh4BOWq-1Kx_1GtDLOD-dwq4UuDHIHKVY_c6ZVuBOO3XhcPs");
  Notification.requestPermission().then(function(permission) {
    if (permission === 'granted') {
      console.log('Notification permission granted.');
    } else {
      console.log('Unable to get permission to notify.');
    }
  });
  
  messaging.getToken().then(token =>{
	    console.log(token)
	})
  
  messaging.onMessage(function(payload){
  console.log('onMessage: ', payload);
  var title = payload.notification.title;
  var options = {
    body: payload.notification.body,
    icon: payload.notification.icon
  };
  var notification = new Notification(title,options);
});