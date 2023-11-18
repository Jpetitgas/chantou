import React from 'react'
import { ActivityProps } from '../../type'
import Image from 'next/image'
import { HiFolderOpen } from "react-icons/hi";
import { FormattedPrice } from '../../lib/formater/FormattedPrice';

export const Activity = ({ activityData }: any) => {

  return (
    <div className='w-full px-6 grid grid-cols-1 md:grid-cols-2 xl:grid-cols-4 gap-6'>
      {activityData.map(({ id, section_id, saison_id, categorie_id, nom, sous_condition, certificat_obligatoire, tarif, nb_de_place, cotisation }: ActivityProps) => (
        <div key={id} className='w-full bg-white text-black p-4 border border-gray-300 rounded-lg group overflow-hidden'>
          <div className='w-full h-[260px] relative'>
            <Image className="w-full h-full objet-cover scale-90 hover:scale-100 transition-transform duration-300" width={300} height={300} src="https://api.lorem.space/image/album?w=300&h=300" alt="activité" />

            <div className="w-12 h-12 absolute bottom-10 right-0 border-[1px] border-gray-400 bg-white rounded-md flex flex-col translate-x-20 group-hover:translate-x-0 trasition-transform duration-300">
              <span className="w-full h-full border-b-[1px] border-b-gray-400 flex items-center justify-center text-xl bg-transparent hover:bg-chantou_color_5 cursor-pointer duration-300">
                <HiFolderOpen />
              </span>
            </div>
          </div>
          <hr />
          <div className='px-4 py-3 flex flex-col gap-1'>
            <p className='text-xs test-gray-500 tracking-wide'>{section_id}</p>
            <p className='text-base font-medium'>{nom}</p>
            <p><span className='font-semibold'><FormattedPrice amount={tarif} /></span></p>
            <p className='text-xs text-gray-600 text-justify'>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea temporibus aliquam ut officia omnis!</p>
            <button className='h-10 font-medium bg-black text-white rounded-md hover:bg-chantou_color_5 hover:text-black duration-300 mt-2'>Ajouter au dossier</button>
          </div>


        </div>

      )
      )}
    </div>
  )
}
