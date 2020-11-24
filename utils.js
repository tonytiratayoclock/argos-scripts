const fs = require('fs');
module.exports = {
  display: (title = 'title', options = {}) => {
    let string = `${title}|`;
    for (option in options) {
      string += `${option}="${options[option]}" `;
    }
    console.log(string);
  },
  base64_encode: (file) => {
    // read binary data
    var bitmap = fs.readFileSync(file);
    // convert binary data to base64 encoded string
    return new Buffer.from(bitmap).toString('base64');
  },
};
