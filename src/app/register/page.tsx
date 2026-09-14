import { redirect } from "next/navigation";

export default async function RegisterRedirect({ searchParams }: { searchParams: Promise<{ name?: string }> }) {
  const { name } = await searchParams;
  if (name) {
    redirect(`/whisky/register?name=${name}`);
  }
  redirect("/whisky/register");
}
