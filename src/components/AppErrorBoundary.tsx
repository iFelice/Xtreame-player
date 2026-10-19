import React from 'react';

interface Props {
  children: React.ReactNode;
}

interface State {
  failed: boolean;
}

export class AppErrorBoundary extends React.Component<Props, State> {
  state: State = { failed: false };

  static getDerivedStateFromError(): State {
    return { failed: true };
  }

  componentDidCatch(error: unknown): void {
    console.error('Desktop UI failed to load:', error);
  }

  render(): React.ReactNode {
    if (!this.state.failed) return this.props.children;
    return (
      <main className="min-h-screen bg-surface-0 text-label flex items-center justify-center p-6">
        <section className="max-w-lg rounded-3xl border border-separator bg-surface-0 p-8 text-center shadow-2xl">
          <h1 className="text-xl font-bold">Impossibile caricare questa sezione</h1>
          <p className="mt-3 text-sm text-label-secondary">
            La sessione resta sul dispositivo. Ricarica l’interfaccia per riprovare.
          </p>
          <button
            type="button"
            onClick={() => window.location.reload()}
            className="mt-6 rounded-xl bg-accent px-5 py-3 font-bold text-label hover:bg-accent"
          >
            Ricarica l’app
          </button>
        </section>
      </main>
    );
  }
}
