var axios = require('axios');

const movieTitle = "";
const page = "";
var data;

const hostname = "https://jsonmock.hackerrank.com/api/movies/search/?Title=";
const path = `${movieTitle}&page=${page}`;
const url = `${hostname}${path}`;

function moviesDB() {
    return axios.get(url);
}

data = moviesDB();

data.then(function (res) {
    console.log(res);
}).catch(function (error) {
    if (error) {
        console.log(error);
    }
});