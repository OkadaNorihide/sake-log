import { redirect } from "next/navigation";

export default async function BottleRedirect({ params }: { params: Promise<{ name: string }> }) {
  const { name } = await params;
  redirect(`/whisky/bottle/${name}`);
}
