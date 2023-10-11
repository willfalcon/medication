import { Calendar } from '@/components/ui/calendar';
import Cal from '@/components/Cal';
import { createContext, useContext, useState } from 'react';

const CalContext = createContext();

export default function history() {
  return (
    <>
      <Cal />
    </>
  );
}
