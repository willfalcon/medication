import LogForm from '@/components/forms/LogForm';
import { Separator } from '@/components/ui/separator';
import prisma from '@/lib/prisma';

export default function log({ meds }) {
  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-4xl font-bold mb-4">Log</h2>
      </div>
      <Separator />
      <LogForm meds={meds} />
    </div>
  );
}

export const getServerSideProps = async () => {
  const meds = await prisma.medication.findMany();
  return { props: { meds: JSON.parse(JSON.stringify(meds)) } };
};
