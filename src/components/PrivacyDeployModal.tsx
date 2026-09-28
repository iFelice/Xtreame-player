import React, { useState } from 'react';
import {
  X,
  ShieldCheck,
  Server,
  Cloud,
  Terminal,
  Lock,
  Copy,
  Check,
  ExternalLink,
  Laptop,
  CheckCircle2,
} from 'lucide-react';

interface PrivacyDeployModalProps {
  onClose: () => void;
}

export const PrivacyDeployModal: React.FC<PrivacyDeployModalProps> = ({ onClose }) => {
  const [copiedSection, setCopiedSection] = useState<string | null>(null);

  const copyToClipboard = (text: string, id: string) => {
    navigator.clipboard.writeText(text);
    setCopiedSection(id);
    setTimeout(() => setCopiedSection(null), 2000);
  };

  const renderSteps = `1. Crea un repo su GitHub (privato) e carica i file
2. Vai su https://render.com e crea un 'New Web Service'
3. Collega il tuo repository GitHub
4. Render leggerà automaticamente il file 'render.yaml'
   - Build: npm install --legacy-peer-deps && npm run build
   - Start: npm start
5. Clicca Deploy e il tuo player privato sarà online in 2 minuti!`;

  const localSteps = `git clone <tuo-repo>
cd mio-xtream-player
npm install
npm run dev

# Apri nel browser:
http://localhost:3000`;

  return (
    <div className="fixed inset-0 z-50 bg-black/85 backdrop-blur-xs flex items-center justify-center p-4 overflow-y-auto">
      <div className="relative w-full max-w-2xl bg-zinc-900 border border-zinc-800 rounded-3xl overflow-hidden shadow-2xl animate-in fade-in duration-200 my-8">
        {/* Header */}
        <div className="p-6 bg-gradient-to-r from-emerald-950/70 via-zinc-900 to-zinc-900 border-b border-zinc-800 flex items-start justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-2xl bg-emerald-500/20 text-emerald-400 flex items-center justify-center border border-emerald-500/30">
              <ShieldCheck className="w-6 h-6" />
            </div>
            <div>
              <h2 className="text-lg font-bold text-white">Privacy & Deploy Privato su Render</h2>
              <p className="text-xs text-zinc-400">
                Come eseguire l'app su Render o in locale per il controllo totale dei tuoi dati
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-zinc-400 hover:text-white rounded-lg hover:bg-zinc-800 transition"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        <div className="p-6 space-y-6 text-xs max-h-[75vh] overflow-y-auto">
          {/* Privacy Guarantee Banner */}
          <div className="p-4 rounded-2xl bg-emerald-950/40 border border-emerald-800/60 text-emerald-200 space-y-2">
            <div className="flex items-center gap-2 text-sm font-semibold text-emerald-400">
              <Lock className="w-4 h-4" />
              Nessun dato viene inviato a una AI o a terzi
            </div>
            <p className="leading-relaxed text-zinc-300">
              L'applicazione non effettua alcuna chiamata a Gemini, OpenAI o altri modelli AI quando inserisci il link. I flussi video e le richieste alle API Xtream Codes transitano <strong>esclusivamente dal proxy Node.js verso il server Xtream che hai inserito</strong>, e la cronologia/preferiti vengono salvati solo nella memoria locale del tuo browser (<code className="text-emerald-300">localStorage</code>).
            </p>
          </div>

          {/* Option 1: Deploy su Render */}
          <div className="p-4 rounded-2xl bg-zinc-950 border border-zinc-800 space-y-3">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2 text-white font-semibold text-sm">
                <Cloud className="w-4 h-4 text-purple-400" />
                Opzione 1: Deploy Gratuito su Render.com
              </div>
              <button
                onClick={() => copyToClipboard(renderSteps, 'render')}
                className="flex items-center gap-1 px-2.5 py-1 rounded-lg bg-zinc-800 hover:bg-zinc-700 text-zinc-200 text-[11px] transition"
              >
                {copiedSection === 'render' ? (
                  <Check className="w-3.5 h-3.5 text-emerald-400" />
                ) : (
                  <Copy className="w-3.5 h-3.5" />
                )}
                Copia Passaggi
              </button>
            </div>

            <p className="text-zinc-400 leading-relaxed">
              Il progetto è già preconfigurato con il file <code className="text-zinc-200">render.yaml</code>, <code className="text-zinc-200">Dockerfile</code> e lo script di produzione Node.js.
            </p>

            <ol className="list-decimal list-inside space-y-1.5 text-zinc-300 ml-1">
              <li>
                Scarica i file del progetto o fai push su un tuo <strong>repository privato su GitHub</strong>.
              </li>
              <li>
                Accedi a <strong>Render.com</strong> e clicca su <strong>New + &gt; Web Service</strong>.
              </li>
              <li>
                Collega il tuo repository GitHub: Render leggerà in automatico i comandi di build (<code className="text-zinc-300">npm install && npm run build</code>) e avvio (<code className="text-zinc-300">npm start</code>).
              </li>
              <li>
                Nel giro di 2 minuti il tuo lettore personale sarà attivo su un dominio sicuro (es. <code className="text-purple-300">https://tuo-player.onrender.com</code>).
              </li>
            </ol>
          </div>

          {/* Option 2: Run in Locale */}
          <div className="p-4 rounded-2xl bg-zinc-950 border border-zinc-800 space-y-3">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2 text-white font-semibold text-sm">
                <Laptop className="w-4 h-4 text-blue-400" />
                Opzione 2: Esegui in Locale sul tuo PC (Offline / Privato)
              </div>
              <button
                onClick={() => copyToClipboard(localSteps, 'local')}
                className="flex items-center gap-1 px-2.5 py-1 rounded-lg bg-zinc-800 hover:bg-zinc-700 text-zinc-200 text-[11px] transition"
              >
                {copiedSection === 'local' ? (
                  <Check className="w-3.5 h-3.5 text-emerald-400" />
                ) : (
                  <Copy className="w-3.5 h-3.5" />
                )}
                Copia Comandi
              </button>
            </div>

            <p className="text-zinc-400">
              Se non vuoi usare nessun servizio cloud, puoi avviare l'app direttamente sul tuo computer con Node.js:
            </p>

            <pre className="p-3 rounded-xl bg-zinc-900 border border-zinc-800 font-mono text-[11px] text-zinc-200 overflow-x-auto">
              {localSteps}
            </pre>
          </div>
        </div>

        {/* Footer */}
        <div className="p-4 bg-zinc-950 border-t border-zinc-800 flex justify-end">
          <button
            onClick={onClose}
            className="px-5 py-2 bg-emerald-600 hover:bg-emerald-500 text-white rounded-xl text-xs font-semibold transition"
          >
            Ho Capito, Chiudi
          </button>
        </div>
      </div>
    </div>
  );
};
