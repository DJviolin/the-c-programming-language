'use strict';

// https://nodejs.org/api/readline.html
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.on('line', (line) => {
  console.log(`Received: ${line}`);

  if(line === 'hello') {
    console.log('hello detected!');
  };

  console.log('Step 1/2: Enter field\'s width (m): ');
  console.log('Step 2/2: Enter field\'s height (m): ');

});

/*rl.question('What do you think of Node.js? ', (answer) => {
  // TODO: Log the answer in a database
  console.log('Thank you for your valuable feedback:', answer);

  rl.close();
});

rl.question('What is your favorite food?', (answer) => {
  console.log(`Oh, so your favorite food is ${answer}`);
});*/

//console.log('Hello World!\n');

rl.on('SIGINT', () => {
  rl.question('Are you sure you want to exit?', (answer) => {
    if(answer.match(/^y(es)?$/i)) {
      rl.pause();
    };
  });
});

rl.on('SIGTSTP', () => {
  // This will override SIGTSTP and prevent the program from going to the
  // background.
  console.log('Caught SIGTSTP.');
});
