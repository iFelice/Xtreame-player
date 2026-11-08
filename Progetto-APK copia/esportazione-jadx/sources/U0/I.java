package U0;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.internal.ads.AbstractC1803p;
import com.google.android.gms.internal.ads.C1855q;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.Zo;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Surface f6655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f6656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f6657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f6658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f6659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f6661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f6663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f6664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f6665l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f6666m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f6667n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Object f6668o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final DisplayManager.DisplayListener f6669p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Object f6670q;

    public I(Context context, int i8) {
        DisplayManager displayManager;
        DisplayManager displayManager2;
        if (i8 != 1) {
            C0340f c0340f = new C0340f();
            c0340f.f6742a = new C0339e(0);
            c0340f.f6743b = new C0339e(0);
            c0340f.f6745d = -9223372036854775807L;
            this.f6668o = c0340f;
            G g8 = (context == null || (displayManager2 = (DisplayManager) context.getSystemService("display")) == null) ? null : new G(this, displayManager2);
            this.f6669p = g8;
            this.f6670q = g8 != null ? H.f6649K : null;
            this.f6661h = -9223372036854775807L;
            this.f6662i = -9223372036854775807L;
            this.f6656c = -1.0f;
            this.f6659f = 1.0f;
            this.f6660g = 0;
            return;
        }
        C0340f c0340f2 = new C0340f();
        c0340f2.f6742a = new C0339e(1);
        c0340f2.f6743b = new C0339e(1);
        c0340f2.f6745d = -9223372036854775807L;
        this.f6668o = c0340f2;
        C1855q c1855q = (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : new C1855q(this, displayManager);
        this.f6669p = c1855q;
        this.f6670q = c1855q != null ? com.google.android.gms.internal.ads.r.f20663K : null;
        this.f6661h = -9223372036854775807L;
        this.f6662i = -9223372036854775807L;
        this.f6656c = -1.0f;
        this.f6659f = 1.0f;
        this.f6660g = 0;
    }

    public static void a(I i8, Display display) {
        i8.getClass();
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            i8.f6661h = refreshRate;
            i8.f6662i = (refreshRate * 80) / 100;
        } else {
            p117p0.x.f("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            i8.f6661h = -9223372036854775807L;
            i8.f6662i = -9223372036854775807L;
        }
    }

    public static /* bridge */ /* synthetic */ void e(I i8, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            i8.f6661h = refreshRate;
            i8.f6662i = (refreshRate * 80) / 100;
        } else {
            Zo.f("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            i8.f6661h = -9223372036854775807L;
            i8.f6662i = -9223372036854775807L;
        }
    }

    public final void b() {
        Surface surface;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.f6655b) == null || this.f6660g == Integer.MIN_VALUE || this.f6658e == 0.0f) {
            return;
        }
        this.f6658e = 0.0f;
        try {
            surface.setFrameRate(0.0f, 0);
        } catch (IllegalStateException e8) {
            p117p0.x.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0074  */
    public final void c() {
        float f8;
        float f9;
        if (Build.VERSION.SDK_INT < 30 || this.f6655b == null) {
            return;
        }
        C0340f c0340f = (C0340f) this.f6668o;
        if (!c0340f.f6742a.a()) {
            f8 = this.f6656c;
        } else if (c0340f.f6742a.a()) {
            C0339e c0339e = c0340f.f6742a;
            long j8 = c0339e.f6738e;
            f8 = (float) (1.0E9d / (j8 != 0 ? c0339e.f6739f / j8 : 0L));
        } else {
            f8 = -1.0f;
        }
        float f10 = this.f6657d;
        if (f8 == f10) {
            return;
        }
        if (f8 != -1.0f && f10 != -1.0f) {
            if (c0340f.f6742a.a()) {
                if ((c0340f.f6742a.a() ? c0340f.f6742a.f6739f : -9223372036854775807L) >= 5000000000L) {
                    f9 = 0.02f;
                } else {
                    f9 = 1.0f;
                }
            } else {
                f9 = 1.0f;
            }
            if (Math.abs(f8 - this.f6657d) < f9) {
                return;
            }
        } else if (f8 == -1.0f && c0340f.f6746e < 30) {
            return;
        }
        this.f6657d = f8;
        d(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    public final void d(boolean z7) {
        Surface surface;
        float f8;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.f6655b) == null || this.f6660g == Integer.MIN_VALUE) {
            return;
        }
        if (this.f6654a) {
            float f9 = this.f6657d;
            if (f9 != -1.0f) {
                f8 = f9 * this.f6659f;
            } else {
                f8 = 0.0f;
            }
        } else {
            f8 = 0.0f;
        }
        if (z7 || this.f6658e != f8) {
            this.f6658e = f8;
            try {
                surface.setFrameRate(f8, f8 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e8) {
                p117p0.x.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e8);
            }
        }
    }

    public final void f() {
        Surface surface;
        if (Et.f13234a < 30 || (surface = this.f6655b) == null || this.f6660g == Integer.MIN_VALUE || this.f6658e == 0.0f) {
            return;
        }
        this.f6658e = 0.0f;
        AbstractC1803p.a(surface, 0.0f);
    }

    public final void g() {
        float f8;
        if (Et.f13234a < 30 || this.f6655b == null) {
            return;
        }
        C0340f c0340f = (C0340f) this.f6668o;
        if (!c0340f.f6742a.f()) {
            f8 = this.f6656c;
        } else if (c0340f.f6742a.f()) {
            C0339e c0339e = c0340f.f6742a;
            long j8 = c0339e.f6738e;
            f8 = (float) (1.0E9d / (j8 != 0 ? c0339e.f6739f / j8 : 0L));
        } else {
            f8 = -1.0f;
        }
        float f9 = this.f6657d;
        if (f8 != f9) {
            if (f8 != -1.0f && f9 != -1.0f) {
                float f10 = 1.0f;
                if (c0340f.f6742a.f()) {
                    if ((c0340f.f6742a.f() ? c0340f.f6742a.f6739f : -9223372036854775807L) >= 5000000000L) {
                        f10 = 0.02f;
                    }
                }
                if (Math.abs(f8 - this.f6657d) < f10) {
                    return;
                }
            } else if (f8 == -1.0f && c0340f.f6746e < 30) {
                return;
            }
            this.f6657d = f8;
            h(false);
        }
    }

    public final void h(boolean z7) {
        Surface surface;
        if (Et.f13234a < 30 || (surface = this.f6655b) == null || this.f6660g == Integer.MIN_VALUE) {
            return;
        }
        float f8 = 0.0f;
        if (this.f6654a) {
            float f9 = this.f6657d;
            if (f9 != -1.0f) {
                f8 = this.f6659f * f9;
            }
        }
        if (z7 || this.f6658e != f8) {
            this.f6658e = f8;
            AbstractC1803p.a(surface, f8);
        }
    }
}
