
const isodd = require('is-odd')
const fs = require('fs')

if(process.argv.length != 3) {
    process.exitCode = 1
    throw new Error("Invalid invocation.")
}

const data = fs.readFileSync(process.argv[2], 'utf-8');

data.split('\n').forEach((elem, idx) => {
    console.log(!isodd(idx) ? '.intel_syntax noprefix' : '.att_syntax')
    console.log(elem)
})
