window.setTimeout(function(){
    alert('Hammer Time!');
}, 5000);


function hammerTime (time){
    window.setTimeout(function(){
        alert('${time} is Hammer Time!');
    }, time);
}

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits() {
    let first, second;
    reader.question("Would you like some tea?", (res1) => {
        
        console.log("You replied ${res}")
    });
    reader.question("Would you like some biscuits?", (res2) => {
        
        console.log("You replied ${res}")
    });

    const firstRes = (res1 === 'yes') ? 'do' : 'don\'t';
    const secondRes = (res2 === 'yes') ? 'do' : 'don\'t';
    console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
    reader.close();
}

function Cat () {
    this.name = 'Markov';
    this.age = 3;
  }
  
  function Dog () {
    this.name = 'Noodles';
    this.age = 4;
  }
  
  Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
  };
  
  const Markov = new Cat ();
  const Noodles = new Dog ();

  Noodles.chase(Markov);

  Noodles.chase.call(Markow, Noodles);
  Noodles.chase.apply(Markow, [Noodles]);