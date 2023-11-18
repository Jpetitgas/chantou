import Image from "next/image"
import logo from "src/images/logo.png"
import folder from "src/images/folder.png"
import { HiOutlineSearch, HiOutlineArrowDown } from "react-icons/hi";
import Link from "next/link";


export const Header = () => {
  return (
    <div className="w-full h-20 bg-chantou_color_1 sticky top-0 z-50">
      <div className="h-full w-full mx-auto inline-flex items-center justify-between gap-1 mdl:gap-3 px-4">
        <Link href={"/"} className="px-2 border border-transparent hover:border-black cursor-pointer duration-300 flex items-center justify-center h-[70%]">
          <Image className="w-28 object-cover mt-1" src={logo} alt="logoImg" />
        </Link>
        <div className="flex-1 h-10 hidden md:inline-flex items-center justify-between relative">
          <input
            className="w-full h-full rounded-md px-2 placeholder:text-sm text-base text-black border-[3px] border-transparent outline-none focus-visible:border-chantou_color_5"
            type="text"
            placeholder="Rechercher une activité du Chantou" />
          <span className="w-12 h-full bg-chantou_color_5 text-black text-2xl flex items-center justify-center absolute right-0 rounded-tr-md rounded-br-md">
            <HiOutlineSearch />
          </span>
        </div>
        <div className="text-xs text-black flex flex-col  justify-center px-2 border border-transparent hover:border-black ">
          <p>Bonjour,Identifiez-vous</p>
          <p className="font-bold flex items-center">Compte<span><HiOutlineArrowDown /></span></p>
        </div>
        <Link href="/dossier" className="flex items-center px-2 border border-transparent hover:border-black cursor-pointer duration-300 h-[70%] relative">
          <Image className="w-auto object-cover h-8" src={folder} alt="file" />
          <p className="text-xs font-bold mt-3 ">Dossier</p>
          <span className="absolute text-chantou_color_5 text-sm top-5 left-[20px] font-semibold">0</span>
        </Link>
      </div>
    </div>
  )
}
