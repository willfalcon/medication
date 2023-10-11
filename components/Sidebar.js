import { Sheet, SheetContent, SheetDescription, SheetTitle, SheetTrigger } from './ui/sheet';
import { Menu } from './Menu';

export function Sidebar({ className }) {
  return (
    <>
      <Sheet>
        <SheetTrigger className="md:hidden">
          <svg
            className="w-8 h-8 text-gray-500"
            fill="none"
            strokeLinecap="round"
            strokeLinejoin="round"
            strokeWidth="2"
            viewBox="0 00 24 24"
            stroke="currentColor"
          >
            <path d="m4 6h16M4 12h16M4 18h16" />
          </svg>
        </SheetTrigger>
        <SheetContent side="left">
          <SheetDescription>
            <Menu />
          </SheetDescription>
        </SheetContent>
      </Sheet>
      <Menu className="hidden md:block" />
    </>
  );
}
