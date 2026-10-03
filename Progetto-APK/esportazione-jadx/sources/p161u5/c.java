package p161u5;

import android.media.MediaPlayer;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements MediaPlayer.OnErrorListener {
    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i8, int i9) {
        Log.w("d", "Failed to beep " + i8 + ", " + i9);
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
        return true;
    }
}
