export type PipCapableVideo = {
  webkitSupportsPresentationMode?: (mode: string) => boolean;
};

/**
 * WebKit bug 303885: inside a Home Screen web app `document.pictureInPictureEnabled`
 * stays true while `requestPictureInPicture()` is rejected as unsupported. The
 * video element answers correctly through `webkitSupportsPresentationMode`, so
 * on Apple mobile the PiP button is only offered when it can actually work.
 * Every other platform keeps the previous behaviour (button always available).
 */
export function shouldShowPipButton(appleMobile: boolean, video: unknown): boolean {
  if (!appleMobile) return true;

  const supportsPresentationMode = (video as PipCapableVideo | null | undefined)
    ?.webkitSupportsPresentationMode;
  if (typeof supportsPresentationMode !== 'function') return false;

  try {
    return supportsPresentationMode.call(video, 'picture-in-picture') === true;
  } catch {
    return false;
  }
}
