import "./globals.css";

export const metadata = {
  title: "SAKE-LOG",
  description: "酒ログ MVP",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="ja">
      <body>{children}</body>
    </html>
  );
}
