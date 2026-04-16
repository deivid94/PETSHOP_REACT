-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Pet" (
    "petId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "species" TEXT NOT NULL DEFAULT 'CACHORRO',
    "clientId" INTEGER NOT NULL,
    CONSTRAINT "Pet_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "User" ("clientId") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Pet" ("clientId", "name", "petId", "species") SELECT "clientId", "name", "petId", coalesce("species", 'CACHORRO') AS "species" FROM "Pet";
DROP TABLE "Pet";
ALTER TABLE "new_Pet" RENAME TO "Pet";
CREATE TABLE "new_Schedule" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "date" DATETIME NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "petId" INTEGER NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'PENDING',
    CONSTRAINT "Schedule_petId_fkey" FOREIGN KEY ("petId") REFERENCES "Pet" ("petId") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Schedule" ("createdAt", "date", "id", "petId") SELECT "createdAt", "date", "id", "petId" FROM "Schedule";
DROP TABLE "Schedule";
ALTER TABLE "new_Schedule" RENAME TO "Schedule";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
