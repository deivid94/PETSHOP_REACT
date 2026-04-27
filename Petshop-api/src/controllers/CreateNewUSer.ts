//Import Service
import type { Request, Response,NextFunction } from "express";
export async function createNewUser(req: Request, res:Response, next:NextFunction ) {
    
    try {
    console.log (req.body())
    res.status(200).send("Usuario cadastrado dom sucesso")
    }catch(error){
        res.status(500).json({"Erro ao cadastrar usuario": error})
    }

}
//verificar se esta correto  a criação 