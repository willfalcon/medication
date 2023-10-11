/*
  Warnings:

  - Added the required column `code` to the `LogNote` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_LogNote" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "logId" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "note" TEXT NOT NULL,
    "medId" INTEGER NOT NULL,
    CONSTRAINT "LogNote_logId_fkey" FOREIGN KEY ("logId") REFERENCES "Log" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "LogNote_medId_fkey" FOREIGN KEY ("medId") REFERENCES "Medication" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_LogNote" ("id", "logId", "medId", "note") SELECT "id", "logId", "medId", "note" FROM "LogNote";
DROP TABLE "LogNote";
ALTER TABLE "new_LogNote" RENAME TO "LogNote";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
