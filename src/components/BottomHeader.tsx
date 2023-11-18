import {LuMenu} from "react-icons/lu"

export const BottomHeader = () => {
  return (
    <div className='w-full bg-chantou_color_2 h-10 text-sm text-white px-4 flex items-center'>
      
      <p className="flex items-center gap-1 h-8 px-2 border border-transparent hover:border-white cursor-pointer duration-300 ">
        <LuMenu className="text-xl"/> Toutes
      </p>
      <p className="hidden md:inline-flex items-center h-8 px-2 border border-transparent hover:border-white cursor-pointer duration-300 ">Réservations</p>
      <p className="hidden md:inline-flex items-center h-8 px-2 border border-transparent hover:border-white cursor-pointer duration-300 ">Boutique</p>
    </div>
  )
}

