const app = require('./src/app');
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`servicio Backend establecido en http://localhost:${PORT}`);
});