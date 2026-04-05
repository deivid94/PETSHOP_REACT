import express from 'express'

const app = express()
app.use (express.json())

app.get('/healthcheck', (req,res)=> {
    return res.json ({message:"esta funcionando"})
});

app.listen(3333, ()=> {

    console.log ("Server Started on http://localhost:3333")
})