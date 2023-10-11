-- CreateTable
CREATE TABLE "Medication" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "dose" INTEGER NOT NULL,
    "morning" BOOLEAN NOT NULL,
    "night" BOOLEAN NOT NULL
);
