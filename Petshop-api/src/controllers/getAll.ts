import { Router} from "express";
import  type {Request, Response} from "express" 

const app = Router()

export default function getAll (req: Request, res:Response){

return  res.json({messag : "ok"})

}