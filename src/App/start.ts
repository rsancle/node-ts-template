import express from 'express';
import Server from './Server';


const app = express();

console.log("hello world");


app.all('*', async () => {
    console.log("hello world");
})

const start = async () => {
};
const PORT = 3000;
app.listen(PORT, () => {
    console.log('Listening on port ' + PORT);
});
start();
