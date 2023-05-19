const express = require('express');
const app = express();

app.use(express.static('public'));

const server = app.listen(9000, () => {
    console.log('Server listening on port 9000');
});


app.get("/toto", () => {
    console.log(1);
    return "toto";
})