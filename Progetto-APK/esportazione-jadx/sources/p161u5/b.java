package p161u5;

import android.media.MediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements MediaPlayer.OnCompletionListener {
    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
    }
}
