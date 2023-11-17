import type { Config } from 'tailwindcss'

const config: Config = {
  content: [
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      screens: {
        xs: "320px",
        sm: "375px",
        sml: "667px",
        md: "768px",
        mdl: "960px",
        lg: "960px",
        lgl: "1024px",
        xl:"1280px",
      },
      colors: {
        chantou_color_1: "#EFEFF5",
        chantou_color_2: "#e21a7a",
        text_1: "#032075",
       
      },
      
    },
  },
  plugins: [],
}
export default config
