import './globals.css'
import type { Metadata } from 'next'
import { Josefin_Sans } from 'next/font/google'
import { BottomHeader } from "@/src/components/BottomHeader";
import { Footer } from "@/src/components/Footer";
import { Header } from "@/src/components/Header";



// const inter = Inter({ subsets: ['latin'] })
const josephin = Josefin_Sans({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'New Chantou',
  description: 'Nouvelle application du Chantou',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="fr">
      <body className={`${josephin.className} antialiased`}>
        <Header />
        <BottomHeader />
        <div className='bg-gray-300'>
          {children}
        </div>
        
        <Footer />
      </body>
    </html>
  )
}
