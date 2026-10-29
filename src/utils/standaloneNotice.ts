export const STANDALONE_NOTICE_STORAGE_KEY = 'felixvp_standalone_notice_dismissed';

export interface StandaloneNoticeEnvironment {
  staticDeploy: boolean;
  appleMobile: boolean;
  standalone: boolean;
  dismissed: boolean;
}

/**
 * The notice explains that PiP and downloads require Safari, so it only makes
 * sense in the Home Screen web app of the static Apple build.
 */
export function shouldShowStandaloneNotice(environment: StandaloneNoticeEnvironment): boolean {
  return environment.staticDeploy && environment.appleMobile && environment.standalone && !environment.dismissed;
}

/** localStorage may be unavailable (private WebViews); never let that throw. */
export function wasStandaloneNoticeDismissed(): boolean {
  try {
    if (typeof localStorage === 'undefined') return false;
    return localStorage.getItem(STANDALONE_NOTICE_STORAGE_KEY) === '1';
  } catch {
    return false;
  }
}

export function rememberStandaloneNoticeDismissed(): void {
  try {
    localStorage?.setItem(STANDALONE_NOTICE_STORAGE_KEY, '1');
  } catch {
    // A blocked storage area simply means the notice reappears next time.
  }
}
