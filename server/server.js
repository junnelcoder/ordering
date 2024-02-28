const express = require('express');
const app = express();
const PORT = 3000;


app.use(express.json());
// app.use(cors({
//     origin: '*',
//     credentials: false,
//   }));
// Sample categories data
const categories = ['Drink', 'Pizza',  'Pasta', 'Pastry', 'Burger', 'Coffee', 'Chicken Joy'];

// Endpoint to get categories
app.get('/categories', (req, res) => {
    console.log('Sending categories:', categories);
    res.json(categories);
});
// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://192.168.2.102:${PORT}`);
});
