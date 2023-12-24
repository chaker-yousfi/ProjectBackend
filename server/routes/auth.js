const express = require("express");
const User = require( "../models/user" );
const bcryptjs = require("bcryptjs");
const jwt = require("jsonwebtoken");

const authRouter = express.Router()


// Sign Up Route
authRouter.post("/api/signup", async(req, res)=>{
    try{
        const {name, email, password} = req.body;

    const existingUser = await User.findOne({email});
    if(existingUser){
        return res.status(400).json({msg: "User already exists !"});
    }

    const hashedPassword = await bcryptjs.hash(password,8)
    let user = new User({email, password:hashedPassword, name,});
    user = await user.save();
    res.json(user);
    }catch(e){
        res.status(500).json({error: e.message});
    }
});


// Login Route
authRouter.post("/api/signin", async (req, res) => {
  try {
    const { email, password } = req.body;
   console.log(req.body);

    const user = await User.findOne({ email });

   
    console.log(user)
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User not found!" });
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Incorrect password." });
    }

    const token = jwt.sign({ id: user._id }, "passwordKey");
    res.json({ token, ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});


module.exports = authRouter;