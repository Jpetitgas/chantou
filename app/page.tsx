import { Banner } from "@/src/components/Banner";
import { Activity } from "@/src/components/Activity";
import { prisma } from "@/db";
import { ActivityProps } from "../type";

interface props{
  activityData: ActivityProps
}

export default async function Accueil() {
  const activityData = await prisma.activite.findMany();
  
  return (
    <main>
      <div className="max-w-screen-2xl mx-auto ">
        <Banner />
        <div className="relative md:-mt020 lgl:-mt-32 xl:-mt-60 z-20 mb-10">
          <Activity activityData={activityData} />
        </div>
        
      </div>

    </main>
  )
}

