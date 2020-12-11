const request = require('request');
const http = require('http');

const hostname = "https://jsonmock.hackerrank.com/api/movies/";
const path = "search/?Title=Waterworld&page=1";

// request(`${hostname}${path}`, (err, res, body) => {
//     console.log(body);
// });