package p151t2;

import A2.a;
import A2.b;
import B0.C0041c;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.measurement.C2533b1;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p021c4.A1;
import p021c4.C0597l0;
import p021c4.E;
import p021c4.Z;
import p096m2.l;
import p173w2.i;
import y2.k;

/* JADX INFO: loaded from: classes.dex */
public final class c implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public long f30271G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f30272H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f30273I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Serializable f30274J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f30275K;

    public /* synthetic */ c(A1 a8) {
        this.f30272H = a8;
    }

    @Override // A2.a
    public final File a(i iVar) {
        String strJ = ((l) this.f30273I).j(iVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strJ + " for for Key: " + iVar);
        }
        try {
            c cVarB0 = b().b0(strJ);
            if (cVarB0 != null) {
                return ((File[]) cVarB0.f30275K)[0];
            }
            return null;
        } catch (IOException e8) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e8);
            return null;
        }
    }

    public final synchronized d b() {
        try {
            if (((d) this.f30272H) == null) {
                this.f30272H = d.d0((File) this.f30274J, this.f30271G);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (d) this.f30272H;
    }

    @Override // A2.a
    public final void c(i iVar, k kVar) {
        b bVarA;
        String strJ = ((l) this.f30273I).j(iVar);
        p096m2.c cVar = (p096m2.c) this.f30275K;
        synchronized (cVar) {
            try {
                bVarA = (b) ((Map) cVar.f27210H).get(strJ);
                if (bVarA == null) {
                    bVarA = ((A2.c) cVar.f27211I).a();
                    ((Map) cVar.f27210H).put(strJ, bVarA);
                }
                bVarA.f619b++;
            } catch (Throwable th) {
                throw th;
            }
        }
        bVarA.f618a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strJ + " for for Key: " + iVar);
            }
            try {
                d dVarB = b();
                if (dVarB.b0(strJ) != null) {
                    ((p096m2.c) this.f30275K).x(strJ);
                    return;
                }
                C0041c c0041cO = dVarB.O(strJ);
                if (c0041cO == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: ".concat(strJ));
                }
                try {
                    if (((p173w2.c) kVar.f31310a).n(kVar.f31311b, c0041cO.h(), (p173w2.l) kVar.f31312c)) {
                        d.k((d) c0041cO.f916J, c0041cO, true);
                        c0041cO.f913G = true;
                    }
                    if (!c0041cO.f913G) {
                        try {
                            c0041cO.c();
                        } catch (IOException unused) {
                        }
                    }
                    ((p096m2.c) this.f30275K).x(strJ);
                } catch (Throwable th2) {
                    if (!c0041cO.f913G) {
                        try {
                            c0041cO.c();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th2;
                }
            } catch (IOException e8) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e8);
                }
            }
        } catch (Throwable th3) {
            ((p096m2.c) this.f30275K).x(strJ);
            throw th3;
        }
    }

    public final boolean d(long j8, C2533b1 c2533b1) {
        if (((List) this.f30275K) == null) {
            this.f30275K = new ArrayList();
        }
        if (((List) this.f30274J) == null) {
            this.f30274J = new ArrayList();
        }
        if (!((List) this.f30275K).isEmpty() && ((((C2533b1) ((List) this.f30275K).get(0)).t() / 1000) / 60) / 60 != ((c2533b1.t() / 1000) / 60) / 60) {
            return false;
        }
        long jE = this.f30271G + ((long) c2533b1.e());
        A1 a8 = (A1) this.f30272H;
        if (!a8.c0().B(null, E.f10817r1)) {
            a8.c0();
            if (jE >= Math.max(0, ((Integer) E.f10791j.a(null)).intValue())) {
                return false;
            }
        } else if (!((List) this.f30275K).isEmpty()) {
            a8.c0();
            if (jE >= Math.max(0, ((Integer) E.f10791j.a(null)).intValue())) {
                return false;
            }
        }
        this.f30271G = jE;
        ((List) this.f30275K).add(c2533b1);
        ((List) this.f30274J).add(Long.valueOf(j8));
        int size = ((List) this.f30275K).size();
        a8.c0();
        return size < Math.max(1, ((Integer) E.f10794k.a(null)).intValue());
    }

    public final void e() {
        Z z7 = (Z) this.f30272H;
        z7.m();
        ((C0597l0) z7.f10616G).f11263T.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = z7.s().edit();
        editorEdit.remove((String) this.f30274J);
        editorEdit.remove((String) this.f30275K);
        editorEdit.putLong((String) this.f30273I, jCurrentTimeMillis);
        editorEdit.apply();
    }
}
