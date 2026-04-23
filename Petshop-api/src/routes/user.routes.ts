import { Router } from "express"
import getAll from "../controllers/getAll.js"



const userRouter =  Router()
userRouter.get ("/clientes",getAll )

