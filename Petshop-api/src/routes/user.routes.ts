import { Router } from "express"
import getAll from "../controllers/getAll.js"

const userRouter =  Router()
userRouter.route("/cliente")

.get(getAll)
export default userRouter