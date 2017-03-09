let ejs = window.ejs;

let CodeTemplate = module.exports = function(opts) {
  this.swagger = opts.swagger;
  this.template = opts.template;
}

CodeTemplate.prototype.render = function(opts) {
  return ejs.render(this.template, opts);
}
