console.log("test");

const express = require("express");
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");

const app = express();
const PORT = 3000;
const DB = "mongodb+srv://lok:tPb3UjXrzwS8zh1H@cluster0.38jhnar.mongodb.net/?retryWrites=true&w=majority";

app.use(express.json());
app.use(authRouter);

mongoose
.connect(DB)
.then(()=>{
    console.log("Success!");
})
.catch((e) => {
    console.log("error!");
    console.log(e);
});


app.listen(PORT, "0.0.0.0", ()=>{
    console.log(`Listening on port: ${PORT}`);
});