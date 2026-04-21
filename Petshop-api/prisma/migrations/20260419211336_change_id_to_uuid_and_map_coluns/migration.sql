/*
  Warnings:

  - You are about to drop the `Pet` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Schedule` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Service` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Pet";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Schedule";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Service";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "User";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "users" (
    "clientId" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,
    "phone" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "address" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "pets" (
    "petId" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT,
    "species" TEXT NOT NULL DEFAULT 'CACHORRO',
    "clientId" TEXT NOT NULL,
    CONSTRAINT "pets_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "users" ("clientId") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "agendamentos" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "date" DATETIME NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "petId" TEXT NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'PENDING',
    CONSTRAINT "agendamentos_petId_fkey" FOREIGN KEY ("petId") REFERENCES "pets" ("petId") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "servicos" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" REAL NOT NULL
);

-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new__ScheduleToService" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,
    CONSTRAINT "_ScheduleToService_A_fkey" FOREIGN KEY ("A") REFERENCES "agendamentos" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_ScheduleToService_B_fkey" FOREIGN KEY ("B") REFERENCES "servicos" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new__ScheduleToService" ("A", "B") SELECT "A", "B" FROM "_ScheduleToService";
DROP TABLE "_ScheduleToService";
ALTER TABLE "new__ScheduleToService" RENAME TO "_ScheduleToService";
CREATE UNIQUE INDEX "_ScheduleToService_AB_unique" ON "_ScheduleToService"("A", "B");
CREATE INDEX "_ScheduleToService_B_index" ON "_ScheduleToService"("B");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
