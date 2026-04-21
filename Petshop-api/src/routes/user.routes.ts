import { Router } from "express"
import type {Request, Response }  from "express";


const userRouter = Router()

userRouter.get("/clientes", (req:Request, res:Response)=>{
    return res.json({ "message": "buscando todos usuarios"})
})

export default userRouter