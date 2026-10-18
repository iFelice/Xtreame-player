package E3;

import A0.O;
import android.os.Looper;
import android.util.SparseIntArray;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f2842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List f2843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseIntArray f2844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final w f2845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f2846g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayDeque f2847h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final X3.d f2848i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final v f2849j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public BasePendingResult f2850k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public BasePendingResult f2851l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Set f2852m = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final H3.b f2840a = new H3.b("MediaQueue", null);

    public d(j jVar) {
        this.f2842c = jVar;
        Math.max(20, 1);
        this.f2843d = new ArrayList();
        this.f2844e = new SparseIntArray();
        this.f2846g = new ArrayList();
        this.f2847h = new ArrayDeque(20);
        this.f2848i = new X3.d(Looper.getMainLooper(), 1);
        this.f2849j = new v(this);
        F3.k kVar = new F3.k(this, 1);
        jVar.getClass();
        com.bumptech.glide.c.d("Must be called from the main thread.");
        jVar.f2910i.add(kVar);
        this.f2845f = new w(this);
        this.f2841b = e();
        d();
    }

    public static void a(d dVar) {
        synchronized (dVar.f2852m) {
            try {
                Iterator it = dVar.f2852m.iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ void b(d dVar) {
        dVar.f2844e.clear();
        for (int i8 = 0; i8 < dVar.f2843d.size(); i8++) {
            dVar.f2844e.put(((Integer) dVar.f2843d.get(i8)).intValue(), i8);
        }
    }

    public final void c() {
        h();
        this.f2843d.clear();
        this.f2844e.clear();
        this.f2845f.evictAll();
        this.f2846g.clear();
        this.f2848i.removeCallbacks(this.f2849j);
        this.f2847h.clear();
        BasePendingResult basePendingResult = this.f2851l;
        if (basePendingResult != null) {
            basePendingResult.G0();
            this.f2851l = null;
        }
        BasePendingResult basePendingResult2 = this.f2850k;
        if (basePendingResult2 != null) {
            basePendingResult2.G0();
            this.f2850k = null;
        }
        g();
        f();
    }

    public final void d() {
        BasePendingResult basePendingResult;
        BasePendingResult basePendingResultQ;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (this.f2841b != 0 && (basePendingResult = this.f2851l) == null) {
            if (basePendingResult != null) {
                basePendingResult.G0();
                this.f2851l = null;
            }
            BasePendingResult basePendingResult2 = this.f2850k;
            if (basePendingResult2 != null) {
                basePendingResult2.G0();
                this.f2850k = null;
            }
            j jVar = this.f2842c;
            jVar.getClass();
            com.bumptech.glide.c.d("Must be called from the main thread.");
            int i8 = 0;
            if (jVar.t()) {
                k kVar = new k(jVar, 0);
                j.u(kVar);
                basePendingResultQ = kVar;
            } else {
                basePendingResultQ = j.q();
            }
            this.f2851l = basePendingResultQ;
            basePendingResultQ.M0(new u(this, i8));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    public final long e() {
        C3.r rVarD = this.f2842c.d();
        if (rVarD == null) {
            return 0L;
        }
        MediaInfo mediaInfo = rVarD.f1570G;
        int i8 = mediaInfo == null ? -1 : mediaInfo.f11704H;
        int i9 = rVarD.f1574K;
        int i10 = rVarD.f1575L;
        int i11 = rVarD.f1581R;
        if (i9 == 1) {
            if (i10 == 1) {
                if (i11 == 0) {
                    return 0L;
                }
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return 0L;
                }
                if (i11 == 0) {
                    return 0L;
                }
            } else if (i8 != 2) {
                return 0L;
            }
        }
        return rVarD.f1571H;
    }

    public final void f() {
        synchronized (this.f2852m) {
            try {
                Iterator it = this.f2852m.iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        synchronized (this.f2852m) {
            try {
                Iterator it = this.f2852m.iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        synchronized (this.f2852m) {
            try {
                Iterator it = this.f2852m.iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
