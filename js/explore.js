
for (var i=10; i> 0; i-=1) {
    console.log(i);
}

// "Reverse function"
// Take a word or a phrase and change position of every character in reverse order, 
// so it will be written backwards.  

function reverse (string){
  var newString = '';
  for (var i = string.length-1; i >= 0; i--) {
      newString = newString + string[i];
}
return newString;
}

var reverseName = reverse("Fred");

if (1>0) {console.log(reverseName)}