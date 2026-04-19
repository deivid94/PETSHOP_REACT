
import { PrismaClient } from '../generated/prisma/client.js';

let prisma = new PrismaClient({
adapter: new prisma ({connectionString: process.env.DATABASE_URL }),
})
export default prisma;