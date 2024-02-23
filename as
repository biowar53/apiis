const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Промежуточное ПО для обработки JSON и urlencoded данных
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Пример маршрута для обработки GET запроса
app.get('/api/greet', (req, res) => {
    res.json({ message: 'Привет, мир!' });
});

// Пример маршрута для обработки POST запроса с данными в теле запроса
app.post('/api/user', (req, res) => {
    const { username, email } = req.body;
    res.json({ message: `Привет, ${username}! Твоя почта: ${email}` });
});

// Слушаем порт 3000
app.listen(port, () => {
    console.log(`Сервер запущен на http://localhost:${port}`);
});
