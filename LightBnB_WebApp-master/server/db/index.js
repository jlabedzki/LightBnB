const { Pool } = require('pg');

const pool = new Pool({
  user: 'johnny',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

module.exports = {
  query: (text, params) => {
    return pool.query(text, params);
  }
}