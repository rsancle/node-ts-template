import express from 'express';
import 'express-async-errors';


const app = express();




app.all('*', async () => {

})

const start = async () => {
};
const PORT = 3000;
app.listen(PORT, () => {
    console.log('Listening on port ' + PORT);
});
start();
