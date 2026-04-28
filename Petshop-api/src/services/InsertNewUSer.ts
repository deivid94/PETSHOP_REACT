import { randomUUID } from 'node:crypto';
import prisma from '../libs/prisma.js'


interface CreateUserData{
    name:string,
    lastname:string,
    phone:string,
    email:string,
    address:string
}

export default async function insertNewUser(data: CreateUserData) {
    
    const createUser = await prisma.user.create ({
 data: {
        clientId: randomUUID(),
        name: data.name,
        lastname:data.lastname,
        phone: data.phone,
        email: data.email,
        address:data.address,
        },
    })
    return createUser
}
