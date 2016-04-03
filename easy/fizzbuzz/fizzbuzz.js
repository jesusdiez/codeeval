var fs = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        var p = line.split(' ').map(Number);
        fizzbuzz(p[0], p[1], p[2]);
    }
});

function fizzbuzz(x, y, n)
{
    var output = "";
    for (i = 1; i <= n; i++) {
        if (i%x === 0 && i%y === 0) {
            output += "FB";
        } else if (i%x === 0) {
            output += "F";
        } else if (i%y === 0) {
            output += "B";
        } else {
            output += i;
        }
        output += " ";
    }
    console.log(output);
}