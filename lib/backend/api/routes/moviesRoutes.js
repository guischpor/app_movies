module.exports = app => {
    const controller = require('../controllers/controllerMovies')();

    app.route('/api/data/moviesDB')
        .get(controller.listMoviesDB);
}