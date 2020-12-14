module.exports = app => {
    const controller = require('../controllers/controllerMovies')();

    // console.log(app.route('/api/data/moviesDB')
    //     .get(controller.listMoviesDB));

    app.route('/api/data/moviesDB')
        .get(controller.listMoviesDB);
}
