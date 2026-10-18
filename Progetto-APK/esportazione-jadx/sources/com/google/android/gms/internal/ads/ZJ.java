package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class ZJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioManager f17755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XJ f17756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public YJ f17757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f17759e = 1.0f;

    public ZJ(Context context, Handler handler, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        audioManager.getClass();
        this.f17755a = audioManager;
        this.f17757c = surfaceHolderCallbackC1979sK;
        this.f17756b = new XJ(this, handler);
        this.f17758d = 0;
    }

    public final void a() {
        int i8 = this.f17758d;
        if (i8 == 1 || i8 == 0 || Et.f13234a >= 26) {
            return;
        }
        this.f17755a.abandonAudioFocus(this.f17756b);
    }

    public final void b(int i8) {
        YJ yj = this.f17757c;
        if (yj != null) {
            int i9 = i8 == -1 ? 2 : 1;
            C2135vK c2135vK = ((SurfaceHolderCallbackC1979sK) yj).f20880G;
            c2135vK.o(c2135vK.u(), i8, i9);
        }
    }

    public final void c(int i8) {
        if (this.f17758d == i8) {
            return;
        }
        this.f17758d = i8;
        float f8 = i8 == 4 ? 0.2f : 1.0f;
        if (this.f17759e != f8) {
            this.f17759e = f8;
            YJ yj = this.f17757c;
            if (yj != null) {
                C2135vK c2135vK = ((SurfaceHolderCallbackC1979sK) yj).f20880G;
                c2135vK.l(1, Float.valueOf(c2135vK.f21473J * c2135vK.f21504v.f17759e), 2);
            }
        }
    }
}
