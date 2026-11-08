package p161u5;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.util.Log;
import java.io.IOException;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30514b = true;

    public d(Activity activity) {
        activity.setVolumeControlStream(3);
        this.f30513a = activity.getApplicationContext();
    }

    public final void a() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        mediaPlayer.setOnCompletionListener(new b());
        mediaPlayer.setOnErrorListener(new c());
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.f30513a.getResources().openRawResourceFd(R.raw.zxing_beep);
            try {
                mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                assetFileDescriptorOpenRawResourceFd.close();
                mediaPlayer.setVolume(0.1f, 0.1f);
                mediaPlayer.prepare();
                mediaPlayer.start();
            } catch (Throwable th) {
                assetFileDescriptorOpenRawResourceFd.close();
                throw th;
            }
        } catch (IOException e8) {
            Log.w("d", e8);
            mediaPlayer.reset();
            mediaPlayer.release();
        }
    }
}
