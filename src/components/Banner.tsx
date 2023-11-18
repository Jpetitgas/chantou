"use client";

import { Carousel } from "react-responsive-carousel";
import "react-responsive-carousel/lib/styles/carousel.min.css";
import danse from '@/src/images/slider/danse.webp'
import theatre from '@/src/images/slider/theatre.webp'
import yoga from '@/src/images/slider/yoga.jpg'

import Image from 'next/image';
export const Banner = () => {
    return (
        <div className="relative">
            <Carousel autoPlay infiniteLoop showStatus={false} showIndicators={false} showThumbs={false} interval={3000}>
                <div>
                    <Image priority src={danse} alt="danse au Chantou" />
                </div>
                <div>
                    <Image src={theatre} alt="theatre au Chantou" />
                </div>
                <div>
                    <Image src={yoga} alt="yoga au  Chantou" />
                </div>

            </Carousel>
            <div className="w-full h-80 bg-gradient-to-t from-gray-100 to-transparent absolute bottom-0 z-20"></div>
        </div>
    )
}
