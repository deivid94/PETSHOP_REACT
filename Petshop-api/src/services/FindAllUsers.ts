import prisma from "../libs/prisma.js"

export default async function findAllUser() {
    return await prisma.user.findMany()
}

