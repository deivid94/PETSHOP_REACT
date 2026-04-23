import  {PrismaCliente}  from "@prisma/client"
import { SortOrder } from "../generated/prisma/internal/prismaNamespace.js"

const prisma = new PrismaCliente()

async function findAllUser() {
    return await prisma.user.findMany({
        SortOrder: {createAt: 'desc'},
        take: 10,
        
    })
}