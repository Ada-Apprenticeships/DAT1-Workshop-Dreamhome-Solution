const fs = require('fs');
const path = require('path');

const sourcePath = path.join(__dirname, 'data', 'dreamhome.sqlite');
const destinationPath = path.join(__dirname, 'dreamhome.sqlite');

fs.copyFile(sourcePath, destinationPath, (err) => {
    if (err) {
        console.error('Error copying file:', err);
    } else {
        console.log('File copied successfully.');
    }
});