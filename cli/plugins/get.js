// Examples
// PLUGIN=$(node get plugin $@)
// SUBCOMMAND=$(node get subcommand $@)

// Execute example
// node get plugin alpinize >> meteor
// node get plugin /meteor/alpinize >> meteor
// node get plugin alpinize --plugin nodejs >> nodejs
//
// node get subcommand alpinize >> alpinize
// node get subcommand /meteor/alpinize >> alpinize
// node get subcommand alpinize --plugin nodejs >> alpinize

function get(args) {
  var plugin = 'meteor';
  var subcommand = args[0];
  if (subcommand[0] === '/') {
    var cmd = subcommand.split(/\//);
    if (cmd.length > 2) {
      plugin = cmd[1];
      subcommand = cmd.slice(2).join('/');
    }
  }

  var index = args.indexOf('--plugin');
  if (index > 0) {
    plugin = args[++index];
    args.splice(index, 2); // don't use for now
  }
  return {subcommand, plugin};
}

var field = process.argv[2];
var args = process.argv.slice(3);
console.log(get(args)[field]);
