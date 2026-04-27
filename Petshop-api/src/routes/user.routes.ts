import { Router } from "express"
import getAll from "../controllers/getAll.js"
import { createNewUser } from "../controllers/CreateNewUSer.js"

const userRouter =  Router()
userRouter.route("/cliente")

.get(getAll)
.post(createNewUser)
export default userRouter