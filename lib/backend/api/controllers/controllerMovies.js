module.exports = () => {
    const moviesDB = require('../data/moviesDB');
    const controller = {};

    controller.listMoviesDB = (req, res) => res.status(200).json(moviesDB);

    return controller;
}