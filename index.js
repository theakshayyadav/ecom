var express = require("express");
var body_parser = require("body-parser");
const jwt = require("jsonwebtoken")



var app = express();

app.use(body_parser.json({limit:'50mb'}));
app.use(body_parser.urlencoded({limit:'50mb', extended: true}));

app.use(express.json());

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    if (req.method == "OPTIONS") {

        res.header("Access-Control-Allow-Methods", "POST, GET, PUT, PATCH, DELETE");
        return res.status(200).json({});
    }
    next();

});

app.get("/", (req,res)=>{
    res.send("Welcome to NodeJS");
    res.end();
})
app.use("/business/business_productpictures" , require("./routes/business/igap_venderproductpictures"))

const  PORT = process.env.PORT || 8081;

// const createtoken = async()=>{
//   const token = await  jwt.sign({_id:"1234567"},"akshayyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
//   {expiresIn:"2 seconds"})
//   console.log(token);
//   const userver = await jwt.verify(token,"akshayyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
//   console.log(userver)
// }
// createtoken()

app.listen(PORT,function(){
    console.log("website is running...");
})