import  Express, { Router }  from "express";
import { STATUS_CODES } from "node:http";

const app = Router()

app.get('/client', (request:Request, response:Response)=>{~
    response.json(STATUS_CODES+'deu ruim')
})