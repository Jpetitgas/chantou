import { NextResponse } from "next/server"
import { prisma } from "@/db";

export async function GET() {
    const activity = await prisma.activite.findMany();
    
    return NextResponse.json(activity)
}