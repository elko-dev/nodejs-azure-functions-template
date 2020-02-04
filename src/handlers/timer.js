"use strict";

module.exports.hello = function(context, timerObj) {
  context.log('Timer ran');
  context.log(timerObj);
  context.done();
};