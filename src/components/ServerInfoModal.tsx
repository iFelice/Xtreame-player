import React from 'react';
import { X, Server, User, Calendar, ShieldCheck, Activity, Globe, Clock, Radio } from 'lucide-react';
import { XtreamAuthResponse } from '../types/xtream';
import { formatExpiryDate } from '../utils/parseXtreamUrl';

interface ServerInfoModalProps {
  authData: XtreamAuthResponse | null;
  serverUrl: string;
  onClose: () => void;
  lastRefreshedAt?: number | null;
}

export const ServerInfoModal: React.FC<ServerInfoModalProps> = ({
  authData,
  serverUrl,
  onClose,
  lastRefreshedAt = null,
}) => {
  if (!authData) return null;

  const user = authData.user_info;
  const server = authData.server_info;

  return (
    <div className="fixed inset-0 z-50 bg-black/50 flex items-center justify-center safe-area-overlay-lg">
      <div className="relative w-full max-w-lg glass border border-glass-edge rounded-2xl overflow-hidden shadow-2xl p-6">
        <div className="flex items-center justify-between pb-4 border-b border-separator">
          <div className="flex items-center gap-2">
            <Server className="w-5 h-5 text-accent-strong" />
            <h2 className="text-base font-bold text-label">Dettagli Server & Account Xtream</h2>
          </div>
          <button
            onClick={onClose}
            className="p-1.5 text-label-secondary hover:text-label rounded-lg hover:bg-surface-1 transition"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        <div className="space-y-4 py-4 text-xs">
          {/* Status Box */}
          <div className="p-3 rounded-xl bg-surface-0/80 border border-separator/80 flex items-center justify-between">
            <div className="flex items-center gap-2">
              <span
                className={`w-2.5 h-2.5 rounded-full ${
                  user?.status === 'Active' ? 'bg-accent animate-pulse' : 'bg-favorite'
                }`}
              ></span>
              <span className="text-label-secondary font-medium">Stato Account:</span>
              <strong className="text-label uppercase">{user?.status || 'Attivo'}</strong>
            </div>
            {user?.is_trial === '1' && (
              <span className="px-2 py-0.5 rounded bg-favorite text-on-accent font-semibold border border-favorite/60">
                PROVA (Trial)
              </span>
            )}
          </div>

          {/* Grid Information */}
          <div className="grid grid-cols-2 gap-3">
            <div className="p-3 rounded-xl bg-surface-0/60 border border-separator">
              <div className="flex items-center gap-1.5 text-label-secondary mb-1">
                <User className="w-3.5 h-3.5 text-series" />
                <span>Nome Utente</span>
              </div>
              <p className=" text-label text-sm font-semibold truncate">
                {user?.username || '-'}
              </p>
            </div>

            <div className="p-3 rounded-xl bg-surface-0/60 border border-separator">
              <div className="flex items-center gap-1.5 text-label-secondary mb-1">
                <Calendar className="w-3.5 h-3.5 text-accent-strong" />
                <span>Scadenza Abbonamento</span>
              </div>
              <p className=" text-label text-sm font-semibold">
                {formatExpiryDate(user?.exp_date)}
              </p>
            </div>

            <div className="p-3 rounded-xl bg-surface-0/60 border border-separator">
              <div className="flex items-center gap-1.5 text-label-secondary mb-1">
                <Activity className="w-3.5 h-3.5 text-favorite" />
                <span>Connessioni Attive</span>
              </div>
              <p className=" text-label text-sm font-semibold">
                {user?.active_cons || 0} / {user?.max_connections || '1'}
              </p>
            </div>

            <div className="p-3 rounded-xl bg-surface-0/60 border border-separator">
              <div className="flex items-center gap-1.5 text-label-secondary mb-1">
                <Globe className="w-3.5 h-3.5 text-label-secondary" />
                <span>Host Server</span>
              </div>
              <p className=" text-label text-sm font-semibold truncate" title={serverUrl}>
                {server?.url || serverUrl}
              </p>
            </div>
          </div>

          {/* Server details */}
          <div className="p-3 rounded-xl bg-surface-0/60 border border-separator space-y-1.5 text-label-secondary">
            <div className="flex justify-between">
              <span>Porta Server:</span>
              <span className=" text-label">{server?.port || '80'}</span>
            </div>
            {server?.timezone && (
              <div className="flex justify-between">
                <span>Fuso Orario:</span>
                <span className=" text-label">{server.timezone}</span>
              </div>
            )}
            {server?.time_now && (
              <div className="flex justify-between">
                <span>Ora Server:</span>
                <span className=" text-label">{server.time_now}</span>
              </div>
            )}
            {user?.allowed_output_formats && (
              <div className="flex justify-between">
                <span>Formati supportati:</span>
                <span className=" text-label">
                  {user.allowed_output_formats.join(', ')}
                </span>
              </div>
            )}
            <div className="flex justify-between">
              <span>Ultimo aggiornamento del catalogo:</span>
              <span className=" text-label">
                {lastRefreshedAt
                  ? new Date(lastRefreshedAt).toLocaleTimeString('it-IT', { hour: '2-digit', minute: '2-digit' })
                  : 'non disponibile'}
              </span>
            </div>
          </div>
        </div>

        <div className="pt-2 flex justify-end">
          <button
            onClick={onClose}
            className="px-4 py-2 bg-surface-1 hover:bg-surface-2 text-label rounded-xl text-xs font-medium transition"
          >
            Chiudi
          </button>
        </div>
      </div>
    </div>
  );
};
