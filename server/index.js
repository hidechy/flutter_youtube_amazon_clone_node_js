console.log('node starting!!');

const express = require('express');
const mongoose = require('mongoose');

const authRouter = require('./routes/auth');

const port = 3000;

const app = express();

const DB = "mongodb+srv://toyohide:hidechy4819@cluster0.lwt23wy.mongodb.net/?retryWrites=true&w=majority";

app.use(express.json());
app.use(authRouter);

mongoose.connect(DB)
.then(() => {
console.log('Connection Successful');
})
.catch(e => {
console.log(e);
});

app.listen(port, "0.0.0.0", () => {
console.log(`connected at port ${port}`);
});
