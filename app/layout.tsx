import './globals.css'
import type { Metadata } from 'next'
import { Josefin_Sans } from 'next/font/google'


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
      <body className={`${josephin.className} antialiased`}>{children}</body>
    </html>
  )
}
