package b7;

import android.content.Intent;
import android.media.MediaPlayer;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.SplashVideoActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class K1 implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ SplashVideoActivity f10098G;

    public K1(SplashVideoActivity splashVideoActivity) {
        this.f10098G = splashVideoActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        int i8 = SplashVideoActivity.f29221H;
        SplashVideoActivity splashVideoActivity = this.f10098G;
        splashVideoActivity.getClass();
        splashVideoActivity.startActivity(new Intent(splashVideoActivity, (Class<?>) SplashActivity.class));
        splashVideoActivity.finish();
    }
}
