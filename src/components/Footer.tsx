import Image from "next/image"
import logo from "src/images/logo.png"

export const Footer = () => {
  return (
    <div className="w-full h-20 bg-chantou_color_1 text--gray-300 flex items-center justify-center gap-4">
      <Image className="w-24" src={logo} alt="logo" />
      <p className="text-sm mt-4">
        Tous droits reservés {""}
      <a className="hover:text-white hover:underline decoration-[1px] cursor-pointer duration-300" href="" target="_blank">www.lechantou.fr</a>
      </p>
    </div>
  )
}
