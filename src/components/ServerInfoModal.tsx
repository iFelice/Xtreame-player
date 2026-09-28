import React from 'react';
import { X, Server, User, Calendar, ShieldCheck, Activity, Globe, Clock, Radio } from 'lucide-react';
import { XtreamAuthResponse } from '../types/xtream';
import { formatExpiryDate } from '../utils/parseXtreamUrl';

interface ServerInfoModalProps {
  authData: XtreamAuthResponse | null;
  serverUrl: string;
  onClose: () => void;
}

export const ServerInfoModal: React.FC<ServerInfoModalProps> = ({
  authData,
  serverUrl,
  onClose,
}) => {
  if (!authData) return null;

  const user = authData.user_info;
  const server = authData.server_info;

  return (
    <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-xs flex items-center justify-center p-4">
      <div className="relative w-full max-w-lg bg-zinc-900 border border-zinc-800 rounded-2xl overflow-hidden shadow-2xl p-6">
        <div className="flex items-center justify-between pb-4 border-b border-zinc-800">
          <div className="flex items-center gap-2">
            <Server className="w-5 h-5 text-emerald-400" />
            <h2 className="text-base font-bold text-white">Dettagli Server & Account Xtream</h2>
          </div>
          <button
            onClick={onClose}
            className="p-1.5 text-zinc-400 hover:text-white rounded-lg hover:bg-zinc-800 transition"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        <div className="space-y-4 py-4 text-xs">
          {/* Status Box */}
          <div className="p-3 rounded-xl bg-zinc-950/80 border border-zinc-800/80 flex items-center justify-between">
            <div className="flex items-center gap-2">
              <span
                className={`w-2.5 h-2.5 rounded-full ${
                  user?.status === 'Active' ? 'bg-emerald-500 animate-pulse' : 'bg-amber-500'
                }`}
              ></span>
              <span className="text-zinc-400 font-medium">Stato Account:</span>
              <strong className="text-white uppercase">{user?.status || 'Attivo'}</strong>
            </div>
            {user?.is_trial === '1' && (
              <span className="px-2 py-0.5 rounded bg-amber-950 text-amber-400 font-semibold border border-amber-800/60">
                PROVA (Trial)
              </span>
            )}
          </div>

          {/* Grid Information */}
          <div className="grid grid-cols-2 gap-3">
            <div className="p-3 rounded-xl bg-zinc-950/60 border border-zinc-800">
              <div className="flex items-center gap-1.5 text-zinc-400 mb-1">
                <User className="w-3.5 h-3.5 text-blue-400" />
                <span>Nome Utente</span>
              </div>
              <p className="font-mono text-white text-sm font-semibold truncate">
                {user?.username || '-'}
              </p>
            </div>

            <div className="p-3 rounded-xl bg-zinc-950/60 border border-zinc-800">
              <div className="flex items-center gap-1.5 text-zinc-400 mb-1">
                <Calendar className="w-3.5 h-3.5 text-emerald-400" />
                <span>Scadenza Abbonamento</span>
              </div>
              <p className="font-mono text-white text-sm font-semibold">
                {formatExpiryDate(user?.exp_date)}
              </p>
            </div>

            <div className="p-3 rounded-xl bg-zinc-950/60 border border-zinc-800">
              <div className="flex items-center gap-1.5 text-zinc-400 mb-1">
                <Activity className="w-3.5 h-3.5 text-amber-400" />
                <span>Connessioni Attive</span>
              </div>
              <p className="font-mono text-white text-sm font-semibold">
                {user?.active_cons || 0} / {user?.max_connections || '1'}
              </p>
            </div>

            <div className="p-3 rounded-xl bg-zinc-950/60 border border-zinc-800">
              <div className="flex items-center gap-1.5 text-zinc-400 mb-1">
                <Globe className="w-3.5 h-3.5 text-purple-400" />
                <span>Host Server</span>
              </div>
              <p className="font-mono text-white text-sm font-semibold truncate" title={serverUrl}>
                {server?.url || serverUrl}
              </p>
            </div>
          </div>

          {/* Server details */}
          <div className="p-3 rounded-xl bg-zinc-950/60 border border-zinc-800 space-y-1.5 text-zinc-400">
            <div className="flex justify-between">
              <span>Porta Server:</span>
              <span className="font-mono text-zinc-200">{server?.port || '80'}</span>
            </div>
            {server?.timezone && (
              <div className="flex justify-between">
                <span>Fuso Orario:</span>
                <span className="font-mono text-zinc-200">{server.timezone}</span>
              </div>
            )}
            {server?.time_now && (
              <div className="flex justify-between">
                <span>Ora Server:</span>
                <span className="font-mono text-zinc-200">{server.time_now}</span>
              </div>
            )}
            {user?.allowed_output_formats && (
              <div className="flex justify-between">
                <span>Formati supportati:</span>
                <span className="font-mono text-zinc-200">
                  {user.allowed_output_formats.join(', ')}
                </span>
              </div>
            )}
          </div>
        </div>

        <div className="pt-2 flex justify-end">
          <button
            onClick={onClose}
            className="px-4 py-2 bg-zinc-800 hover:bg-zinc-700 text-white rounded-xl text-xs font-medium transition"
          >
            Chiudi
          </button>
        </div>
      </div>
    </div>
  );
};
