package p102n0;

import android.media.AudioAttributes;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import com.google.android.gms.internal.ads.AbstractC0760Hf;
import java.util.Objects;
import p094m0.C3121d;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioManager.OnAudioFocusChangeListener f27307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f27308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C3121d f27309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f27311f;

    public b(int i8, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, C3121d c3121d, boolean z7) {
        this.f27306a = i8;
        this.f27308c = handler;
        this.f27309d = c3121d;
        this.f27310e = z7;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 < 26) {
            this.f27307b = new a(onAudioFocusChangeListener, handler);
        } else {
            this.f27307b = onAudioFocusChangeListener;
        }
        if (i9 >= 26) {
            this.f27311f = AbstractC0760Hf.i(i8).setAudioAttributes((AudioAttributes) c3121d.a().f24988H).setWillPauseWhenDucked(z7).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            this.f27311f = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f27306a == bVar.f27306a && this.f27310e == bVar.f27310e && Objects.equals(this.f27307b, bVar.f27307b) && Objects.equals(this.f27308c, bVar.f27308c) && Objects.equals(this.f27309d, bVar.f27309d);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f27306a), this.f27307b, this.f27308c, this.f27309d, Boolean.valueOf(this.f27310e));
    }
}
