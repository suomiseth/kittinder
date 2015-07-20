$(function(){ 
  var donutCounter = new DonutCounter();
});

DonutCounter = function() {
  $("#guests > button.add").click(incUpSpan($("#guests > h3 > span")));
  // $("#guests > button.remove").click(function() {incUpSpan($("#guests > h3 > span"));});
  // $("#donuts > button.add").click(function() {incUpSpan($("#donuts > h3 > span"));});
  // $("#donuts > button.remove").click(function() {incUpSpan($("#donuts > h3 > span"));});
};


incUpSpan = function(span) {
  // debugger;
  var count = parseInt(span.text());
  // count = count++;
  // span.text(count);
  return span;
};

incDownSpan = function(span) {
  var count = parseInt(span.text());
  span.text(count--);
  return span;
};