//Import Service
import type { Request, Response,NextFunction } from "express";
import insertNewUser from "../services/InsertNewUSer.js";

export async function createNewUser(req: Request, res:Response, next:NextFunction ) {
    
    try {
    console.log (req.body)
    const data = req.body
    const newUser = await insertNewUser (data)
    res.status(201).json({data:newUser})

    }catch(error){
        res.status(500).json({"Erro ao cadastrar usuario": error})
    }

}
//verificar se esta correto  a criação 