function titleize(names, callback) {
    let titleized = names.map(name => "Mx. ${name} Jingleheimer Schmidt");
    callback(titleized);
}


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log("${this.name} the elephant goes phrRRRRRRRR!!!!!!")
};

Elephant.prototype.grow = function () {
    this.height = this.height + 12;
  };
  
Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick);
};

Elephant.prototype.play = function(){
    trick = this.tricks[Math.floor(Math.random() * Math.floor(this.tricks.length))];
    console.log("${name} is ${trick}");
};

Elephant.prototype.paradeHelper = function(elephant){
    console.log("${elephant.name} is trotting by!");
};

function dinerBreakfast(){
    let order = ["I'd like cheesy scrambled eggs please."];
    console.log(order);

    return function(food) {
        order.push(food);
        console.log(order);
    }
}