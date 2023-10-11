import Link from 'next/link';
import { Button } from './ui/button';

import classNames from 'classnames';

export function Menu({ className }) {
  return (
    <div className={classNames('pb-12 space-y-4 px-3 py-6', className)}>
      <h2 className="mb-2 px-4 text-lg font-semibold tracking-tight">Menu</h2>
      <div className="space-y-1">
        <Button variant="ghost" className="w-full justify-start" asChild>
          <Link href="/log">Log</Link>
        </Button>
        <Button variant="ghost" className="w-full justify-start" asChild>
          <Link href="/medications">Medications</Link>
        </Button>
        <Button variant="ghost" className="w-full justify-start" asChild>
          <Link href="/history">History</Link>
        </Button>
      </div>
    </div>
  );
}
