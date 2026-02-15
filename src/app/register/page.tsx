import RegisterForm from "../../components/RegisterForm";

export default function RegisterPage() {
  return (
    <div className="relative min-h-screen text-white">
      {/* 背景画像 */}
      <div
        className="absolute inset-0 bg-cover bg-center"
        style={{ backgroundImage: "url('/register-bg.jpg')" }}
      />

      {/* 暗くするオーバーレイ（濃さ調整ここ） */}
      <div className="absolute inset-0 bg-black/70" />

      {/* コンテンツ */}
      <div className="relative z-10 p-6 max-w-3xl mx-auto space-y-8">
        <header className="flex items-center justify-between">
          <h1 className="text-3xl font-bold tracking-wide drop-shadow-lg">
            酒を登録する
          </h1>
          <a
            href="/"
            className="text-sm underline text-gray-300 hover:text-white transition"
          >
            戻る
          </a>
        </header>

        {/* ガラス風カード */}
        <div className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-8 shadow-2xl">
          <RegisterForm />
        </div>
      </div>
    </div>
  );
}
