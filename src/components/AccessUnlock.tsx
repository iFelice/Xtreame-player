import { useState } from 'react';

export function AccessUnlock() {
  const [token, setToken] = useState(''); const [error, setError] = useState(''); const [loading, setLoading] = useState(false);
  const submit = async (event: React.FormEvent) => {
    event.preventDefault(); setLoading(true); setError('');
    try {
      const response = await fetch('/api/auth/unlock', { method: 'POST', headers: { 'Content-Type': 'application/json' }, credentials: 'same-origin', body: JSON.stringify({ token }) });
      if (!response.ok) throw new Error(response.status === 429 ? 'Troppi tentativi. Riprova più tardi.' : 'Token non valido.');
      window.location.reload();
    } catch (e) { setError(e instanceof Error ? e.message : 'Accesso non riuscito.'); setLoading(false); }
  };
  return <main className="min-h-screen bg-zinc-950 text-zinc-100 flex items-center justify-center p-5"><form onSubmit={submit} className="w-full max-w-md rounded-3xl border border-zinc-800 bg-zinc-900 p-7 shadow-2xl"><h1 className="text-2xl font-black">Sblocca Xtream Player</h1><p className="mt-2 text-sm text-zinc-400">Inserisci il token di accesso dell’istanza.</p><input type="password" autoComplete="current-password" value={token} onChange={e=>setToken(e.target.value)} className="mt-6 w-full rounded-xl border border-zinc-700 bg-zinc-950 px-4 py-3 outline-none focus:border-emerald-500" placeholder="Token di accesso" autoFocus />{error && <p className="mt-3 text-sm text-rose-400">{error}</p>}<button disabled={loading || !token} className="mt-5 w-full rounded-xl bg-emerald-600 px-4 py-3 font-bold disabled:opacity-50">{loading?'Verifica…':'Sblocca'}</button></form></main>;
}
