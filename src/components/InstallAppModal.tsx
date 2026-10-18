import { RemoteImage } from './RemoteImage';
import React, { useState } from 'react';
import { X, Download, Monitor, Smartphone, Check, Sparkles, Palette } from 'lucide-react';
import { storage, AVAILABLE_APP_ICONS } from '../services/storage';

interface InstallAppModalProps {
  onClose: () => void;
  canPrompt: boolean;
  onTriggerPrompt: () => void;
  currentIcon?: string;
  onIconChange?: (iconPath: string) => void;
}

export const InstallAppModal: React.FC<InstallAppModalProps> = ({
  onClose,
  canPrompt,
  onTriggerPrompt,
  currentIcon: initialIcon,
  onIconChange,
}) => {
  const [selectedIcon, setSelectedIcon] = useState<string>(
    initialIcon || storage.getAppIcon()
  );

  const handleSelectIcon = (iconPath: string) => {
    setSelectedIcon(iconPath);
    storage.setAppIcon(iconPath);
    if (onIconChange) {
      onIconChange(iconPath);
    }
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/85 backdrop-blur-xs flex items-center justify-center p-4">
      <div className="relative w-full max-w-lg bg-zinc-900 border border-zinc-800 rounded-3xl overflow-hidden shadow-2xl animate-in fade-in duration-200 max-h-[90vh] flex flex-col">
        {/* Header */}
        <div className="p-6 bg-gradient-to-r from-emerald-950/70 via-zinc-900 to-zinc-900 border-b border-zinc-800 flex items-start justify-between gap-4 shrink-0">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 rounded-2xl bg-zinc-950 p-1 flex items-center justify-center border border-zinc-700 overflow-hidden shrink-0 shadow-lg">
              <RemoteImage src={selectedIcon} alt="App Logo" className="w-full h-full object-contain" />
            </div>
            <div>
              <div className="flex items-center gap-1.5">
                <h2 className="text-base font-bold text-white">Installa & Personalizza App</h2>
                <span className="px-1.5 py-0.5 rounded bg-emerald-950 border border-emerald-800/60 text-emerald-400 text-[10px] font-semibold">
                  PWA & Icone
                </span>
              </div>
              <p className="text-xs text-zinc-400 mt-0.5">
                Personalizza l'icona per le schede del browser e installa l'app su desktop
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

        {/* Content (Scrollable) */}
        <div className="p-6 space-y-5 text-xs overflow-y-auto">
          {/* Icon Chooser Section */}
          <div className="space-y-2.5">
            <div className="flex items-center justify-between">
              <h3 className="font-semibold text-zinc-200 flex items-center gap-1.5 text-xs">
                <Palette className="w-4 h-4 text-emerald-400" />
                Scegli l'Icona dell'App & Favicon Schede:
              </h3>
              <span className="text-[11px] text-zinc-400">Si aggiorna all'istante</span>
            </div>

            <div className="grid grid-cols-2 sm:grid-cols-5 gap-2.5">
              {AVAILABLE_APP_ICONS.map((icon) => {
                const isSelected = selectedIcon === icon.path;
                return (
                  <button
                    key={icon.id}
                    onClick={() => handleSelectIcon(icon.path)}
                    className={`relative p-2.5 rounded-2xl border flex flex-col items-center gap-1.5 transition cursor-pointer text-center ${
                      isSelected
                        ? 'bg-zinc-800 border-emerald-400 shadow-md ring-1 ring-emerald-400'
                        : 'bg-zinc-950 border-zinc-800 hover:border-zinc-700 hover:bg-zinc-900'
                    }`}
                  >
                    <div className="w-10 h-10 rounded-xl overflow-hidden shadow-md flex items-center justify-center p-0.5 bg-black/60">
                      <RemoteImage src={icon.path} alt={icon.name} className="w-full h-full object-contain" />
                    </div>
                    <span className="text-[10px] font-semibold text-zinc-200 leading-tight">
                      {icon.name}
                    </span>
                    <span className="text-[9px] text-zinc-400">
                      {icon.colorName}
                    </span>

                    {isSelected && (
                      <div className="absolute -top-1.5 -right-1.5 w-5 h-5 rounded-full bg-emerald-500 text-black flex items-center justify-center shadow">
                        <Check className="w-3 h-3 stroke-[3]" />
                      </div>
                    )}
                  </button>
                );
              })}
            </div>
          </div>

          {canPrompt && (
            <button
              onClick={() => {
                onTriggerPrompt();
                onClose();
              }}
              className="w-full py-3 px-4 rounded-xl bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-500 hover:to-teal-500 text-white font-semibold flex items-center justify-center gap-2 shadow-lg shadow-emerald-950/50 transition cursor-pointer text-sm"
            >
              <Download className="w-4 h-4" />
              Installa Ora come App Desktop con 1 Clic
            </button>
          )}

          <div className="space-y-3 pt-1 border-t border-zinc-800">
            <h3 className="font-semibold text-zinc-200 flex items-center gap-1.5 text-xs">
              <Monitor className="w-4 h-4 text-emerald-400" />
              Come installare su Desktop (Windows / Mac / Linux):
            </h3>
            <div className="p-3.5 rounded-xl bg-zinc-950 border border-zinc-800 space-y-2 text-zinc-300">
              <p className="leading-relaxed">
                1. Su <strong>Google Chrome</strong> o <strong>Microsoft Edge</strong>, guarda a destra nella barra degli indirizzi URL in alto.
              </p>
              <p className="leading-relaxed">
                2. Troverai l'icona <strong className="text-emerald-400">Installa app</strong> (a forma di schermo con una freccia in basso o simbolo <span className="font-mono text-zinc-200">⊕</span>).
              </p>
              <p className="leading-relaxed">
                3. Clicca su <strong>Installa</strong>: verrà creata l'icona sul tuo desktop e nel menu avvio, con finestra a schermo intero senza barre del browser!
              </p>
            </div>

            <h3 className="font-semibold text-zinc-200 flex items-center gap-1.5 text-xs pt-1">
              <Smartphone className="w-4 h-4 text-blue-400" />
              Come installare su Smartphone o Tablet (Android / iOS):
            </h3>
            <div className="p-3.5 rounded-xl bg-zinc-950 border border-zinc-800 space-y-2 text-zinc-300">
              <p className="leading-relaxed">
                • <strong>Android (Chrome)</strong>: premi il menu a 3 puntini ⋮ e scegli <em>"Installa app"</em> oppure <em>"Aggiungi a schermata Home"</em>.
              </p>
              <p className="leading-relaxed">
                • <strong>iPhone / iPad (Safari)</strong>: tocca il tasto Condividi (icona quadrato con freccia verso l'alto 📤) e seleziona <em>"Aggiungi alla schermata Home"</em>.
              </p>
            </div>
          </div>
        </div>

        {/* Footer */}
        <div className="p-4 bg-zinc-950 border-t border-zinc-800 flex justify-end shrink-0">
          <button
            onClick={onClose}
            className="px-4 py-2 bg-zinc-800 hover:bg-zinc-700 text-white rounded-xl text-xs font-semibold transition cursor-pointer"
          >
            Fatto
          </button>
        </div>
      </div>
    </div>
  );
};
