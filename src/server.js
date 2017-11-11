const app = require('./app');

const { PORT } = process.env;

const server = app.listen(PORT, () => {
  console.log(`Listening on http://localhost:${PORT}`);
});
