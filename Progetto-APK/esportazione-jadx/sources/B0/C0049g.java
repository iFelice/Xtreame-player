package B0;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.AbstractC0760Hf;
import com.google.protobuf.U2;
import p094m0.C3121d;

/* JADX INFO: renamed from: B0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0049g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p190y4.t f942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InterfaceC0047f f944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C3121d f945d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f947f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p102n0.b f949h;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f948g = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f946e = 0;

    public C0049g(Context context, Looper looper, InterfaceC0047f interfaceC0047f) {
        this.f942a = p190y4.k.Y(new C0045e(context, 0));
        this.f944c = interfaceC0047f;
        this.f943b = new Handler(looper);
    }

    public final void a() {
        int i8 = this.f946e;
        if (i8 == 1 || i8 == 0 || this.f949h == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) this.f942a.get();
        p102n0.b bVar = this.f949h;
        if (Build.VERSION.SDK_INT < 26) {
            audioManager.abandonAudioFocus(bVar.f27307b);
            return;
        }
        Object obj = bVar.f27311f;
        obj.getClass();
        audioManager.abandonAudioFocusRequest(AbstractC0760Hf.n(obj));
    }

    public final void b(int i8) {
        InterfaceC0047f interfaceC0047f = this.f944c;
        if (interfaceC0047f != null) {
            p117p0.I i9 = ((X) interfaceC0047f).f864N;
            i9.getClass();
            p117p0.H hB = p117p0.I.b();
            hB.f28041a = i9.f28043a.obtainMessage(33, i8, 0);
            hB.b();
        }
    }

    public final void c(int i8) {
        if (this.f946e == i8) {
            return;
        }
        this.f946e = i8;
        float f8 = i8 == 4 ? 0.2f : 1.0f;
        if (this.f948g == f8) {
            return;
        }
        this.f948g = f8;
        InterfaceC0047f interfaceC0047f = this.f944c;
        if (interfaceC0047f != null) {
            ((X) interfaceC0047f).f864N.e(34);
        }
    }

    public final int d(int i8, boolean z7) {
        int i9;
        int iRequestAudioFocus;
        p117p0.C c8;
        if (i8 == 1 || (i9 = this.f947f) != 1) {
            a();
            c(0);
            return 1;
        }
        if (!z7) {
            int i10 = this.f946e;
            if (i10 != 1) {
                return i10 != 3 ? 1 : 0;
            }
            return -1;
        }
        if (this.f946e == 2) {
            return 1;
        }
        p102n0.b bVar = this.f949h;
        if (bVar == null) {
            if (bVar == null) {
                c8 = new p117p0.C(i9, 1);
            } else {
                p117p0.C c9 = new p117p0.C();
                c9.f28022G = bVar.f27306a;
                c9.f28024I = bVar.f27307b;
                c9.f28025J = bVar.f27308c;
                c9.f28026K = bVar.f27309d;
                c9.f28023H = bVar.f27310e;
                c8 = c9;
            }
            C3121d c3121d = this.f945d;
            c3121d.getClass();
            c8.f28026K = c3121d;
            c8.f28023H = false;
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: B0.d
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i11) {
                    C0049g c0049g = this.f920a;
                    c0049g.getClass();
                    if (i11 == -3 || i11 == -2) {
                        if (i11 != -2) {
                            c0049g.c(4);
                            return;
                        } else {
                            c0049g.b(0);
                            c0049g.c(3);
                            return;
                        }
                    }
                    if (i11 == -1) {
                        c0049g.b(-1);
                        c0049g.a();
                        c0049g.c(1);
                    } else if (i11 != 1) {
                        U2.v("Unknown focus change type: ", i11, "AudioFocusManager");
                    } else {
                        c0049g.c(2);
                        c0049g.b(1);
                    }
                }
            };
            Handler handler = this.f943b;
            handler.getClass();
            c8.f28024I = onAudioFocusChangeListener;
            c8.f28025J = handler;
            this.f949h = new p102n0.b(c8.f28022G, onAudioFocusChangeListener, handler, (C3121d) c8.f28026K, c8.f28023H);
        }
        AudioManager audioManager = (AudioManager) this.f942a.get();
        p102n0.b bVar2 = this.f949h;
        if (Build.VERSION.SDK_INT >= 26) {
            Object obj = bVar2.f27311f;
            obj.getClass();
            iRequestAudioFocus = audioManager.requestAudioFocus(AbstractC0760Hf.n(obj));
        } else {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener2 = bVar2.f27307b;
            bVar2.f27309d.getClass();
            iRequestAudioFocus = audioManager.requestAudioFocus(onAudioFocusChangeListener2, 3, bVar2.f27306a);
        }
        if (iRequestAudioFocus == 1) {
            c(2);
            return 1;
        }
        c(1);
        return -1;
    }
}
