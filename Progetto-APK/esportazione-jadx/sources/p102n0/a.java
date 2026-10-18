package p102n0;

import F.l;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class a implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f27304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioManager.OnAudioFocusChangeListener f27305b;

    public a(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.f27305b = onAudioFocusChangeListener;
        Looper looper = handler.getLooper();
        String str = M.f28050a;
        this.f27304a = new Handler(looper, null);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i8) {
        M.V(this.f27304a, new l(this, i8, 1));
    }
}
