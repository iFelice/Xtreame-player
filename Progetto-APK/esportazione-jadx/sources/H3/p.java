package H3;

import android.os.Looper;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f3711i = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f3712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3714c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o f3718g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p000a.f f3719h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3716e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3717f = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final X3.d f3715d = new X3.d(Looper.getMainLooper(), 1);

    public p(long j8, String str) {
        this.f3713b = j8;
        this.f3714c = str;
        this.f3712a = new b("RequestTracker", str);
    }

    public final void a(long j8, o oVar) {
        o oVar2;
        long j9;
        long j10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Object obj = f3711i;
        synchronized (obj) {
            oVar2 = this.f3718g;
            j9 = this.f3716e;
            j10 = this.f3717f;
            this.f3716e = j8;
            this.f3718g = oVar;
            this.f3717f = jCurrentTimeMillis;
        }
        if (oVar2 != null) {
            oVar2.a(this.f3714c, j9, j10, jCurrentTimeMillis);
        }
        synchronized (obj) {
            try {
                p000a.f fVar = this.f3719h;
                if (fVar != null) {
                    this.f3715d.removeCallbacks(fVar);
                }
                p000a.f fVar2 = new p000a.f(this, 28);
                this.f3719h = fVar2;
                this.f3715d.postDelayed(fVar2, this.f3713b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(m mVar, int i8, long j8) {
        synchronized (f3711i) {
            try {
                if (c(j8)) {
                    Locale locale = Locale.ROOT;
                    e("request " + j8 + " completed", i8, mVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(long j8) {
        boolean z7;
        synchronized (f3711i) {
            long j9 = this.f3716e;
            z7 = false;
            if (j9 != -1 && j9 == j8) {
                z7 = true;
            }
        }
        return z7;
    }

    public final boolean d() {
        boolean z7;
        synchronized (f3711i) {
            z7 = this.f3716e != -1;
        }
        return z7;
    }

    public final void e(String str, int i8, m mVar) {
        this.f3712a.b(str, new Object[0]);
        Object obj = f3711i;
        synchronized (obj) {
            try {
                if (this.f3718g != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    o oVar = this.f3718g;
                    com.bumptech.glide.c.h(oVar);
                    oVar.b(i8, this.f3716e, this.f3717f, jCurrentTimeMillis, mVar, this.f3714c);
                }
                this.f3716e = -1L;
                this.f3718g = null;
                synchronized (obj) {
                    try {
                        p000a.f fVar = this.f3719h;
                        if (fVar != null) {
                            this.f3715d.removeCallbacks(fVar);
                            this.f3719h = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean f(int i8) {
        synchronized (f3711i) {
            try {
                if (!d()) {
                    return false;
                }
                Locale locale = Locale.ROOT;
                e("clearing request " + this.f3716e, i8, null);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
