import Image from "next/image"
import logo from "src/images/logo.png"
import { HiOutlineSearch } from "react-icons/hi";

export const Header = () => {
  return (
    <div className="w-full h-20 bg-chantou_color_1 sticky top-0 z-50">
      <div className="h-full w-full mx-auto inline-flex items-center justify-between gap-1 mdl:gap-3 px-4">
        <div className="px-2 border border-transparent hover:border-black cursor-pointer duration-300 flex items-center justify-center h-[70%]">
          <Image className="w-28 object-cover mt-1" src={logo} alt="logoImg"/>
        </div>
        <div className="flex-1 h-10 hidenn md:inline-flex items-center justify-between relative">
          <input
            className="w-full h-full rounded-md px-2 placeholder:text-sm text-base text-black border-[3px] border-transparent outline-none focus-visible:border-chantou_color_2"
            type="text"
            placeholder="Rechercher une activité du Chantou" />
          <span className="w-12 h-full bg-chantou_color_2 text-black text-2xl flex items-center justify-center absolute right-0 rounded-tr-md rounded-br-md">
            <HiOutlineSearch />
          </span>
        </div>
      </div>
    </div>
  )
}
