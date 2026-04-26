import findAllUser from "../services/FindAllUsers.js"
import  type {NextFunction, Request, Response} from "express"

export default async  function getAll (req: Request, res:Response,next: NextFunction){
  try {
    const users = await findAllUser()
  res.status(200).json({"data": users})
  }catch (erro){
    console.log (erro)
    res.status(500).json({"erro": "Erro ao buscar todos usuarios"})
  }
}