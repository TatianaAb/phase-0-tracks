// Release 0: Work with Arrays

var arrayOfNames=["Bill","Anna","Peter"];
var arrayOfColores=["Red","Blue","Pink"];
var horsesDate={} 

for (var i=0; i < arrayOfColores.length; i++) {
  horsesDate[arrayOfNames[i]]=arrayOfColores[i];
}

//Release 2: Build Many Objects Using a Constructor

function Car(name,color,convertable,good_weather) {
  this.name=name;
  this.color=color;
  this.convertable=convertable;
  this.good_weather=good_weather;
  
  this.sunRoofStatus = function() {
    if ((this.convertable) && (this.good_weather)) {
      console.log("the sunroof is open"); 
    }
    else if ((this.convertable)&&(!this.good_weather)) {
      console.log("the weather isn't so good");
    }
    else if ((!this.convertable) && (this.good_weather)) {
      console.log("we don't have a sunroof");
    } else {
      console.log("smthg went wrong");
    }
    return;
  };

}

//Driver code
console.log(horsesDate);

// let's call a new car

var ford= new Car("mustang","red",true,false);

console.log("our function:");
console.log("");
console.log(ford);
console.log("our function in function:");
console.log("");
console.log(ford.sunRoofStatus());
ford.sunRoofStatus()