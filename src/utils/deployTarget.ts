/** The Vite mode is fixed at build time; keep deploy-specific decisions here. */
export const STATIC_DEPLOY = import.meta.env.MODE === 'static';

export function isStaticDeploy(): boolean {
  return STATIC_DEPLOY;
}
