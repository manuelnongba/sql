const app = require('./src/app');
const pool = require('./src/pool');

pool
  .connect({
    host: 'localhost',
    port: 5432,
    database: 'socialnetwork',
    user: 'emmanuelanongba',
    password: '',
  })
  .then(() => {
    app().listen(3005, () => {
      console.log('listening...');
    });
  })
  .catch((err) => console.error(err));
