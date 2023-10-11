/*
  Warnings:

  - Added the required column `asNeeded` to the `Medication` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Medication" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dose" INTEGER NOT NULL,
    "morning" BOOLEAN NOT NULL,
    "night" BOOLEAN NOT NULL,
    "asNeeded" BOOLEAN NOT NULL
);
INSERT INTO "new_Medication" ("dose", "id", "morning", "name", "night") SELECT "dose", "id", "morning", "name", "night" FROM "Medication";
DROP TABLE "Medication";
ALTER TABLE "new_Medication" RENAME TO "Medication";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
