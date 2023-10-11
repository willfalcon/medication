import AddMedicationForm from '@/components/forms/AddMedicationForm';
import { Separator } from '@/components/ui/separator';

export default function addMedication() {
  return (
    <div className="space-y-6">
      <div>
        <h3 className="text-lg font-medium">Add Medication</h3>
      </div>
      <Separator />
      <AddMedicationForm />
    </div>
  );
}
