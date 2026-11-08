package U0;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.gms.internal.measurement.H1;
import p117p0.InterfaceC3168f;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final D f6629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final I f6630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6632d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f6635g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6638j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f6641m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6642n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6633e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f6634f = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f6636h = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6637i = -9223372036854775807L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f6639k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public InterfaceC3168f f6640l = InterfaceC3168f.f28080a;

    public E(Context context, D d6, long j8) {
        this.f6629a = d6;
        this.f6631c = j8;
        this.f6630b = new I(context, 0);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    public final int a(long j8, long j9, long j10, long j11, boolean z7, boolean z8, C c8) {
        long j12;
        long j13;
        long j14;
        c8.f6627a = -9223372036854775807L;
        c8.f6628b = -9223372036854775807L;
        if (this.f6632d && this.f6634f == -9223372036854775807L) {
            this.f6634f = j9;
        }
        if (this.f6636h != j8) {
            I i8 = this.f6630b;
            long j15 = i8.f6664k;
            if (j15 != -1) {
                i8.f6666m = j15;
                i8.f6667n = i8.f6665l;
            }
            i8.f6663j++;
            C0340f c0340f = (C0340f) i8.f6668o;
            long j16 = j8 * 1000;
            c0340f.f6742a.b(j16);
            if (c0340f.f6742a.a()) {
                c0340f.f6744c = false;
            } else if (c0340f.f6745d != -9223372036854775807L) {
                if (c0340f.f6744c) {
                    C0339e c0339e = c0340f.f6743b;
                    long j17 = c0339e.f6737d;
                    if (j17 != 0) {
                        if (c0339e.f6740g[(int) ((j17 - 1) % 15)]) {
                            c0340f.f6743b.c();
                            c0340f.f6743b.b(c0340f.f6745d);
                        }
                    }
                } else {
                    c0340f.f6743b.c();
                    c0340f.f6743b.b(c0340f.f6745d);
                }
                c0340f.f6744c = true;
                c0340f.f6743b.b(j16);
            }
            if (c0340f.f6744c && c0340f.f6743b.a()) {
                C0339e c0339e2 = c0340f.f6742a;
                c0340f.f6742a = c0340f.f6743b;
                c0340f.f6743b = c0339e2;
                c0340f.f6744c = false;
            }
            c0340f.f6745d = j16;
            c0340f.f6746e = c0340f.f6742a.a() ? 0 : c0340f.f6746e + 1;
            i8.c();
            this.f6636h = j8;
        }
        long jR = (long) ((j8 - j9) / ((double) this.f6639k));
        if (this.f6632d) {
            ((p117p0.G) this.f6640l).getClass();
            jR -= p117p0.M.R(SystemClock.elapsedRealtime()) - j10;
        }
        long j18 = jR;
        c8.f6627a = j18;
        if (z7 && !z8) {
            return 3;
        }
        if (!this.f6641m) {
            this.f6642n = true;
            if (((C0345k) this.f6629a).k0(j18, j9, z8, true)) {
                return 4;
            }
            return (!this.f6632d || c8.f6627a >= 30000) ? 5 : 3;
        }
        if (this.f6637i == -9223372036854775807L || this.f6638j) {
            int i9 = this.f6633e;
            if (i9 != 0) {
                if (i9 == 1) {
                    return 0;
                }
                if (i9 != 2) {
                    if (i9 != 3) {
                        throw new IllegalStateException();
                    }
                    ((p117p0.G) this.f6640l).getClass();
                    long jR2 = p117p0.M.R(SystemClock.elapsedRealtime()) - this.f6635g;
                    if (this.f6632d) {
                        long j19 = this.f6634f;
                        if (j19 != -9223372036854775807L && j19 != j9) {
                            ((C0345k) this.f6629a).getClass();
                            if (j18 < -30000 && jR2 > 100000) {
                                return 0;
                            }
                        }
                    }
                } else if (j9 >= j11) {
                    return 0;
                }
            } else if (this.f6632d) {
                return 0;
            }
        }
        if (!this.f6632d || j9 == this.f6634f) {
            return 5;
        }
        ((p117p0.G) this.f6640l).getClass();
        long jNanoTime = System.nanoTime();
        I i10 = this.f6630b;
        long j20 = c8.f6627a;
        Long.signum(j20);
        long j21 = (j20 * 1000) + jNanoTime;
        if (i10.f6666m == -1 || !((C0340f) i10.f6668o).f6742a.a()) {
            j12 = jNanoTime;
        } else {
            C0340f c0340f2 = (C0340f) i10.f6668o;
            if (c0340f2.f6742a.a()) {
                C0339e c0339e3 = c0340f2.f6742a;
                long j22 = c0339e3.f6738e;
                j14 = j22 == 0 ? 0L : c0339e3.f6739f / j22;
            } else {
                j14 = -9223372036854775807L;
            }
            j12 = jNanoTime;
            long j23 = i10.f6667n + ((long) (((i10.f6663j - i10.f6666m) * j14) / i10.f6659f));
            if (Math.abs(j21 - j23) <= 20000000) {
                j21 = j23;
            } else {
                i10.f6663j = 0L;
                i10.f6666m = -1L;
                i10.f6664k = -1L;
            }
        }
        i10.f6664k = i10.f6663j;
        i10.f6665l = j21;
        H h8 = (H) i10.f6670q;
        if (h8 != null && i10.f6661h != -9223372036854775807L) {
            long j24 = h8.f6650G;
            if (j24 != -9223372036854775807L) {
                long j25 = i10.f6661h;
                long j26 = (((j21 - j24) / j25) * j25) + j24;
                if (j21 <= j26) {
                    j13 = j26 - j25;
                } else {
                    j13 = j26;
                    j26 = j25 + j26;
                }
                if (j26 - j21 >= j21 - j13) {
                    j26 = j13;
                }
                j21 = j26 - i10.f6662i;
            }
        }
        c8.f6628b = j21;
        long j27 = (j21 - j12) / 1000;
        c8.f6627a = j27;
        boolean z9 = (this.f6637i == -9223372036854775807L || this.f6638j) ? false : true;
        if (((C0345k) this.f6629a).k0(j27, j9, z8, z9)) {
            return 4;
        }
        D d6 = this.f6629a;
        long j28 = c8.f6627a;
        ((C0345k) d6).getClass();
        if (j28 >= -30000 || z8) {
            return c8.f6627a > 50000 ? 5 : 1;
        }
        return z9 ? 3 : 2;
    }

    public final boolean b(boolean z7) {
        if (z7 && (this.f6633e == 3 || (!this.f6641m && this.f6642n))) {
            this.f6637i = -9223372036854775807L;
            return true;
        }
        if (this.f6637i == -9223372036854775807L) {
            return false;
        }
        ((p117p0.G) this.f6640l).getClass();
        if (SystemClock.elapsedRealtime() < this.f6637i) {
            return true;
        }
        this.f6637i = -9223372036854775807L;
        return false;
    }

    public final void c(boolean z7) {
        long jElapsedRealtime;
        this.f6638j = z7;
        long j8 = this.f6631c;
        if (j8 > 0) {
            ((p117p0.G) this.f6640l).getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime() + j8;
        } else {
            jElapsedRealtime = -9223372036854775807L;
        }
        this.f6637i = jElapsedRealtime;
    }

    public final void d() {
        this.f6632d = true;
        ((p117p0.G) this.f6640l).getClass();
        this.f6635g = p117p0.M.R(SystemClock.elapsedRealtime());
        I i8 = this.f6630b;
        i8.f6654a = true;
        i8.f6663j = 0L;
        i8.f6666m = -1L;
        i8.f6664k = -1L;
        G g8 = (G) i8.f6669p;
        if (g8 != null) {
            H h8 = (H) i8.f6670q;
            h8.getClass();
            h8.f6651H.sendEmptyMessage(2);
            Handler handlerN = p117p0.M.n(null);
            DisplayManager displayManager = g8.f6647a;
            displayManager.registerDisplayListener(g8, handlerN);
            I.a(g8.f6648b, displayManager.getDisplay(0));
        }
        i8.d(false);
    }

    public final void e() {
        this.f6632d = false;
        this.f6637i = -9223372036854775807L;
        I i8 = this.f6630b;
        i8.f6654a = false;
        G g8 = (G) i8.f6669p;
        if (g8 != null) {
            g8.f6647a.unregisterDisplayListener(g8);
            H h8 = (H) i8.f6670q;
            h8.getClass();
            h8.f6651H.sendEmptyMessage(3);
        }
        i8.b();
    }

    public final void f(int i8) {
        if (i8 == 0) {
            this.f6633e = 1;
        } else if (i8 == 1) {
            this.f6633e = 0;
        } else {
            if (i8 != 2) {
                throw new IllegalStateException();
            }
            this.f6633e = Math.min(this.f6633e, 2);
        }
    }

    public final void g(float f8) {
        I i8 = this.f6630b;
        i8.f6656c = f8;
        C0340f c0340f = (C0340f) i8.f6668o;
        c0340f.f6742a.c();
        c0340f.f6743b.c();
        c0340f.f6744c = false;
        c0340f.f6745d = -9223372036854775807L;
        c0340f.f6746e = 0;
        i8.c();
    }

    public final void h(Surface surface) {
        this.f6641m = surface != null;
        this.f6642n = false;
        I i8 = this.f6630b;
        if (i8.f6655b != surface) {
            i8.b();
            i8.f6655b = surface;
            i8.d(true);
        }
        this.f6633e = Math.min(this.f6633e, 1);
    }

    public final void i(float f8) {
        H1.d(f8 > 0.0f);
        if (f8 == this.f6639k) {
            return;
        }
        this.f6639k = f8;
        I i8 = this.f6630b;
        i8.f6659f = f8;
        i8.f6663j = 0L;
        i8.f6666m = -1L;
        i8.f6664k = -1L;
        i8.d(false);
    }
}
