#!/usr/bin/node

const fs = require('fs');

function readAndPrintFileContent(filePath) {
  fs.readFile(filePath, 'utf8', function (error, content) {
    if (error) {
      console.error("Error occurred while reading the file:");
      console.error(error);
    } else {
      console.log(content);
    }
  });
}

if (process.argv.length !== 3) {
  console.error("Usage: node read_file.js <file_path>");
  process.exit(1);
}

const filePath = process.argv[2];
readAndPrintFileContent(filePath);
