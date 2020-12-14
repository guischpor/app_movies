module.exports = () => {
    const moviesDB = require('../data/moviesDB');
    const controller = {};

    //console.log(moviesDB);

    controller.listMoviesDB = (req, res) => res.status(200).json(moviesDB);

    return controller;

}