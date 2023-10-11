const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

export default async function handler(req, res) {
  const meds = await prisma.medication.findMany();
  res.status(200).json(meds);
}
