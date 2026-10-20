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
    <div className="fixed inset-0 z-50 bg-black/50 flex items-center justify-center p-4 overflow-y-auto">
      <div className="relative w-full max-w-2xl glass border border-glass-edge rounded-3xl overflow-hidden shadow-2xl animate-in fade-in duration-200 my-8">
        {/* Header */}
        <div className="p-6 border-b border-separator flex items-start justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-2xl bg-accent/20 text-accent-strong flex items-center justify-center border border-accent/30">
              <ShieldCheck className="w-6 h-6" />
            </div>
            <div>
              <h2 className="text-lg font-bold text-label">Privacy & Deploy Privato su Render</h2>
              <p className="text-xs text-label-secondary">
                Come eseguire l'app su Render o in locale per il controllo totale dei tuoi dati
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-label-secondary hover:text-label rounded-lg hover:bg-surface-1 transition"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        <div className="p-6 space-y-6 text-xs max-h-[75vh] overflow-y-auto">
          {/* Privacy Guarantee Banner */}
          <div className="p-4 rounded-2xl bg-accent/15 border border-accent/40 text-label space-y-2">
            <div className="flex items-center gap-2 text-sm font-semibold text-label">
              <Lock className="w-4 h-4 text-accent" />
              Nessun dato viene inviato a una AI o a terzi
            </div>
            <p className="leading-relaxed text-label">
              L'applicazione non effettua alcuna chiamata a Gemini, OpenAI o altri modelli AI quando inserisci il link. I flussi video e le richieste alle API Xtream Codes transitano <strong>esclusivamente dal proxy Node.js verso il server Xtream che hai inserito</strong>, e la cronologia/preferiti vengono salvati solo nella memoria locale del tuo browser (<code className="text-label">localStorage</code>).
            </p>
          </div>

          {/* Option 1: Deploy su Render */}
          <div className="p-4 rounded-2xl bg-surface-0 border border-separator space-y-3">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2 text-label font-semibold text-sm">
                <Cloud className="w-4 h-4 text-label-secondary" />
                Opzione 1: Deploy Gratuito su Render.com
              </div>
              <button
                onClick={() => copyToClipboard(renderSteps, 'render')}
                className="flex items-center gap-1 px-2.5 py-1 rounded-lg bg-surface-1 hover:bg-surface-2 text-label text-[11px] transition"
              >
                {copiedSection === 'render' ? (
                  <Check className="w-3.5 h-3.5 text-accent-strong" />
                ) : (
                  <Copy className="w-3.5 h-3.5" />
                )}
                Copia Passaggi
              </button>
            </div>

            <p className="text-label-secondary leading-relaxed">
              Il progetto è già preconfigurato con il file <code className="text-label">render.yaml</code>, <code className="text-label">Dockerfile</code> e lo script di produzione Node.js.
            </p>

            <ol className="list-decimal list-inside space-y-1.5 text-label-secondary ml-1">
              <li>
                Scarica i file del progetto o fai push su un tuo <strong>repository privato su GitHub</strong>.
              </li>
              <li>
                Accedi a <strong>Render.com</strong> e clicca su <strong>New + &gt; Web Service</strong>.
              </li>
              <li>
                Collega il tuo repository GitHub: Render leggerà in automatico i comandi di build (<code className="text-label-secondary">npm install && npm run build</code>) e avvio (<code className="text-label-secondary">npm start</code>).
              </li>
              <li>
                Nel giro di 2 minuti il tuo lettore personale sarà attivo su un dominio sicuro (es. <code className="text-label-secondary">https://tuo-player.onrender.com</code>).
              </li>
            </ol>
          </div>

          {/* Option 2: Run in Locale */}
          <div className="p-4 rounded-2xl bg-surface-0 border border-separator space-y-3">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2 text-label font-semibold text-sm">
                <Laptop className="w-4 h-4 text-series" />
                Opzione 2: Esegui in Locale sul tuo PC (Offline / Privato)
              </div>
              <button
                onClick={() => copyToClipboard(localSteps, 'local')}
                className="flex items-center gap-1 px-2.5 py-1 rounded-lg bg-surface-1 hover:bg-surface-2 text-label text-[11px] transition"
              >
                {copiedSection === 'local' ? (
                  <Check className="w-3.5 h-3.5 text-accent-strong" />
                ) : (
                  <Copy className="w-3.5 h-3.5" />
                )}
                Copia Comandi
              </button>
            </div>

            <p className="text-label-secondary">
              Se non vuoi usare nessun servizio cloud, puoi avviare l'app direttamente sul tuo computer con Node.js:
            </p>

            <pre className="p-3 rounded-xl bg-surface-0 border border-separator  text-[11px] text-label overflow-x-auto">
              {localSteps}
            </pre>
          </div>
        </div>

        {/* Footer */}
        <div className="p-4 bg-surface-0 border-t border-separator flex justify-end">
          <button
            onClick={onClose}
            className="px-5 py-2 bg-accent hover:bg-accent-strong text-on-accent rounded-xl text-xs font-semibold transition"
          >
            Ho Capito, Chiudi
          </button>
        </div>
      </div>
    </div>
  );
};
