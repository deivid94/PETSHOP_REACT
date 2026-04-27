import express, { Router } from 'express'
import userRouter from './routes/user.routes.js'
import "dotenv/config"

const app = express()
app.use (express.json())
app.use(userRouter,)




app.listen(3333, ()=> {

    console.log ("Server Started on http://localhost:3333")
})