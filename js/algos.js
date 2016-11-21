// Release 0: Find the Longest Phrase
// Take an array and loop trough each element in it.
// IF length of first element less then length of second,
//  then delete first element
//  ELSE 
//  delete second element
//  
//  RETURN first element which is also the only element left in array.

function longestPhrase (b){
  for (var i=1; i< b.length;) {
    if (b[0].length < b[1].length){
      b.splice(0,1);
    }
    else {
      b.splice(1,1);
    }
  }
return  b[0]
} 

// Release 1: Find a Key-Value Match
// Take two Objects set output var to false.
// Loop trough each key in first object and compare it with every key in second object.
// IF same key is found and their values are equal the set output to true.
// RETURN output

function match(first, second) {
var output = false  
  for (var x in first){
    if (first[x] == second[x]){
        output = true;
    }
  }
return output;  
}

// Release 2: Generate Random Test Data
Take any number.


function CreateArray (arrayLength){
  this.arrayLength = arrayLength;
  this.newArray=[];
  this.alphabet = "abcdefghijklmnopqrstuvwxyz";
  
  this.randomString = function (){
    this.string = '';
    this.stringLength = Math.floor(Math.random() * 10) + 1;
    for (i=1; i<=this.stringLength; i++){
      this.index = Math.floor(Math.random() * 26); 
      this.string += this.alphabet[this.index];
  }
  return this.string;
  };
   
  this.randomArray = function (){
  for (t=0; t<this.arrayLength; t++){
    this.newArray.push(this.randomString());
  }
return this.newArray;
};
}
} 


// Driver Code for Release 2 Generate Random Test Data

 for (p=0; p<10; p++){
 var x = new CreateArray(5).randomArray();
 console.log(x);
 console.log(longestPhrase(x));
 }


// Driver Code for Release 1: Find a Key-Value Match

// var firstGroup = {'Anna':23, 'Maria': 45, 'Gregg':22};
// var secondGroup = {'Fred': 45, 'Harry':56, 'Anna':23};
// match(firstGroup,secondGroup);



// new Array(40, 100);  // Creates an array with two elements (40 and 100)
// new Array(40);       // Creates an array with 40 undefined elements !!!!!
// Math.floor(Math.random() * 10) + 1;  // returns a number between 1 and 10
