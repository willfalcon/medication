/*
  Warnings:

  - You are about to alter the column `dose` on the `Medication` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Float`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Medication" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dose" REAL NOT NULL,
    "morning" BOOLEAN NOT NULL,
    "night" BOOLEAN NOT NULL,
    "asNeeded" BOOLEAN NOT NULL
);
INSERT INTO "new_Medication" ("asNeeded", "dose", "id", "morning", "name", "night") SELECT "asNeeded", "dose", "id", "morning", "name", "night" FROM "Medication";
DROP TABLE "Medication";
ALTER TABLE "new_Medication" RENAME TO "Medication";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
