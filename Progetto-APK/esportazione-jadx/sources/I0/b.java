package I0;

import B0.w0;
import O0.C0292p;
import O0.C0296u;
import O0.D;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p039f.RunnableC3004t;
import p094m0.P;
import p141s0.A;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.M;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class b implements S0.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Uri f3790G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final S0.m f3791H = new S0.m("DefaultHlsPlaylistTracker:MediaPlaylist");

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC3184i f3792I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public l f3793J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f3794K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f3795L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f3796M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f3797N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f3798O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public IOException f3799P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f3800Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final /* synthetic */ c f3801R;

    public b(c cVar, Uri uri) {
        this.f3801R = cVar;
        this.f3790G = uri;
        this.f3792I = cVar.f3803G.f3436a.a();
    }

    public static boolean a(b bVar, long j8) {
        bVar.f3797N = SystemClock.elapsedRealtime() + j8;
        c cVar = bVar.f3801R;
        if (!bVar.f3790G.equals(cVar.f3813Q)) {
            return false;
        }
        List list = cVar.f3812P.f3909e;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i8 = 0; i8 < size; i8++) {
            b bVar2 = (b) cVar.f3806J.get(((n) list.get(i8)).f3901a);
            bVar2.getClass();
            if (jElapsedRealtime > bVar2.f3797N) {
                Uri uri = bVar2.f3790G;
                cVar.f3813Q = uri;
                bVar2.f(cVar.b(uri));
                return false;
            }
        }
        return true;
    }

    public final Uri b() {
        l lVar = this.f3793J;
        Uri uri = this.f3790G;
        if (lVar != null) {
            k kVar = lVar.f3896v;
            if (kVar.f3873a != -9223372036854775807L || kVar.f3877e) {
                Uri.Builder builderBuildUpon = uri.buildUpon();
                l lVar2 = this.f3793J;
                if (lVar2.f3896v.f3877e) {
                    builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(lVar2.f3885k + ((long) lVar2.f3892r.size())));
                    l lVar3 = this.f3793J;
                    if (lVar3.f3888n != -9223372036854775807L) {
                        H h8 = lVar3.f3893s;
                        int size = h8.size();
                        if (!h8.isEmpty() && ((g) p190y4.k.G(h8)).f3856S) {
                            size--;
                        }
                        builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                    }
                }
                k kVar2 = this.f3793J.f3896v;
                if (kVar2.f3873a != -9223372036854775807L) {
                    builderBuildUpon.appendQueryParameter("_HLS_skip", kVar2.f3874b ? "v2" : "YES");
                }
                return builderBuildUpon.build();
            }
        }
        return uri;
    }

    @Override // S0.h
    public final void c(S0.j jVar, long j8, long j9, boolean z7) {
        S0.p pVar = (S0.p) jVar;
        long j10 = pVar.f6369G;
        M m7 = pVar.f6372J;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        c cVar = this.f3801R;
        cVar.f3805I.getClass();
        cVar.f3808L.c(c0292p, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    public final void d(boolean z7) {
        f(z7 ? b() : this.f3790G);
    }

    public final void e(Uri uri) {
        c cVar = this.f3801R;
        S0.o oVarC = cVar.f3804H.C(cVar.f3812P, this.f3793J);
        Map mapEmptyMap = Collections.emptyMap();
        H1.k(uri, "The uri must be set.");
        S0.p pVar = new S0.p(this.f3792I, new C3188m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 1, null), 4, oVarC);
        this.f3791H.g(pVar, this, cVar.f3805I.Y(pVar.f6371I));
    }

    public final void f(Uri uri) {
        this.f3797N = 0L;
        if (this.f3798O) {
            return;
        }
        S0.m mVar = this.f3791H;
        if (mVar.e() || mVar.d()) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j8 = this.f3796M;
        if (jElapsedRealtime >= j8) {
            e(uri);
        } else {
            this.f3798O = true;
            this.f3801R.f3810N.postDelayed(new RunnableC3004t(26, this, uri), j8 - jElapsedRealtime);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x023c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x023e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0249  */
    /* JADX WARN: Code duplicated, block: B:105:0x024b  */
    /* JADX WARN: Code duplicated, block: B:107:0x0250  */
    /* JADX WARN: Code duplicated, block: B:110:0x0264  */
    /* JADX WARN: Code duplicated, block: B:112:0x026c  */
    /* JADX WARN: Code duplicated, block: B:118:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:53:0x0102  */
    /* JADX WARN: Code duplicated, block: B:55:0x0106  */
    /* JADX WARN: Code duplicated, block: B:56:0x0109  */
    /* JADX WARN: Code duplicated, block: B:59:0x010d  */
    /* JADX WARN: Code duplicated, block: B:61:0x0119  */
    /* JADX WARN: Code duplicated, block: B:62:0x0120  */
    /* JADX WARN: Code duplicated, block: B:64:0x0123  */
    /* JADX WARN: Code duplicated, block: B:66:0x0135  */
    /* JADX WARN: Code duplicated, block: B:70:0x0191  */
    /* JADX WARN: Code duplicated, block: B:72:0x019e  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:79:0x01bd A[LOOP:0: B:77:0x01b7->B:79:0x01bd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:84:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:91:0x0203  */
    /* JADX WARN: Code duplicated, block: B:94:0x021f A[LOOP:1: B:92:0x0219->B:94:0x021f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:97:0x0235 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x0238  */
    public final void g(l lVar, C0292p c0292p) {
        long j8;
        long j9;
        long j10;
        boolean z7;
        H h8;
        l lVar2;
        int i8;
        int i9;
        H h9;
        i iVar;
        int i10;
        l lVar3;
        CopyOnWriteArrayList copyOnWriteArrayList;
        boolean z8;
        Uri uri;
        boolean z9;
        long size;
        l lVar4;
        u uVar;
        w0 w0Var;
        Iterator it;
        l lVar5;
        boolean z10;
        long j11;
        long j12;
        long j13;
        long j14;
        Iterator it2;
        int size2;
        int size3;
        int size4;
        l lVar6 = this.f3793J;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f3794K = jElapsedRealtime;
        c cVar = this.f3801R;
        cVar.getClass();
        if (lVar6 != null) {
            long j15 = lVar.f3885k;
            long j16 = lVar6.f3885k;
            if (j15 <= j16) {
                boolean z11 = lVar6.f3889o;
                H h10 = lVar6.f3893s;
                H h11 = lVar6.f3892r;
                boolean z12 = lVar.f3889o;
                if (j15 < j16 || ((size2 = lVar.f3892r.size() - h11.size()) == 0 ? !((size3 = lVar.f3893s.size()) > (size4 = h10.size()) || (size3 == size4 && z12 && !z11)) : size2 <= 0)) {
                    lVar3 = (!z12 || z11) ? lVar6 : new l(lVar6.f3878d, lVar6.f3918a, lVar6.f3919b, lVar6.f3879e, lVar6.f3881g, lVar6.f3882h, lVar6.f3883i, lVar6.f3884j, lVar6.f3885k, lVar6.f3886l, lVar6.f3887m, lVar6.f3888n, lVar6.f3920c, true, lVar6.f3890p, lVar6.f3891q, h11, h10, lVar6.f3896v, lVar6.f3894t, lVar6.f3897w);
                }
            }
            this.f3793J = lVar3;
            copyOnWriteArrayList = cVar.f3807K;
            z8 = true;
            uri = this.f3790G;
            z9 = lVar3.f3889o;
            if (lVar3 != lVar6) {
                this.f3799P = null;
                this.f3795L = jElapsedRealtime;
                if (uri.equals(cVar.f3813Q)) {
                    if (cVar.f3814R == null) {
                        cVar.f3815S = !z9;
                        cVar.f3816T = lVar3.f3882h;
                    }
                    cVar.f3814R = lVar3;
                    ((H0.o) cVar.f3811O).u(lVar3);
                }
                it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    ((t) it2.next()).b();
                }
            } else if (!z9) {
                size = lVar.f3885k + ((long) lVar.f3892r.size());
                lVar4 = this.f3793J;
                if (size < lVar4.f3885k) {
                    uVar = new u();
                } else {
                    if (jElapsedRealtime - this.f3795L > p117p0.M.e0(lVar4.f3887m) * 3.5d) {
                        uVar = new u();
                    } else {
                        uVar = null;
                    }
                    z8 = false;
                }
                if (uVar != null) {
                    this.f3799P = uVar;
                    w0Var = new w0(c0292p, new C0296u(4), uVar, 1, 1);
                    it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        ((t) it.next()).c(uri, w0Var, z8);
                    }
                }
            }
            lVar5 = this.f3793J;
            z10 = lVar5.f3896v.f3877e;
            j11 = lVar5.f3887m;
            if (!z10) {
                if (lVar5 == lVar6) {
                    j11 /= 2;
                }
                j12 = j11;
            } else if (lVar5 == lVar6) {
                j13 = lVar5.f3888n;
                if (j13 != -9223372036854775807L) {
                    j14 = j13 / 2;
                } else {
                    j14 = j11 / 2;
                }
                j12 = j14;
            } else {
                j12 = 0;
            }
            this.f3796M = (p117p0.M.e0(j12) + jElapsedRealtime) - c0292p.f5229b;
            if (this.f3793J.f3889o) {
            }
            if (!uri.equals(cVar.f3813Q) || this.f3800Q) {
                f(b());
            }
            return;
        }
        lVar.getClass();
        boolean z13 = lVar.f3890p;
        long j17 = lVar.f3885k;
        if (!z13) {
            l lVar7 = cVar.f3814R;
            j8 = lVar7 != null ? lVar7.f3882h : 0L;
            if (lVar6 != null) {
                H h12 = lVar6.f3892r;
                int size5 = h12.size();
                long j18 = lVar6.f3885k;
                int i11 = (int) (j17 - j18);
                i iVar2 = i11 < h12.size() ? (i) h12.get(i11) : null;
                long j19 = lVar6.f3882h;
                if (iVar2 != null) {
                    j10 = iVar2.f3866K;
                } else if (size5 == j17 - j18) {
                    j10 = lVar6.f3895u;
                } else {
                    j9 = j8;
                }
                j8 = j19 + j10;
            }
            z7 = lVar.f3883i;
            h8 = lVar.f3892r;
            if (z7) {
                lVar2 = cVar.f3814R;
                if (lVar2 != null) {
                    i8 = lVar2.f3884j;
                } else {
                    i8 = 0;
                }
                if (lVar6 == null) {
                    i9 = (int) (j17 - lVar6.f3885k);
                    h9 = lVar6.f3892r;
                    if (i9 < h9.size()) {
                        iVar = (i) h9.get(i9);
                    } else {
                        iVar = null;
                    }
                    if (iVar != null) {
                        i8 = (lVar6.f3884j + iVar.f3865J) - ((i) h8.get(0)).f3865J;
                    }
                    i10 = i8;
                }
                lVar3 = new l(lVar.f3878d, lVar.f3918a, lVar.f3919b, lVar.f3879e, lVar.f3881g, j9, true, i10, lVar.f3885k, lVar.f3886l, lVar.f3887m, lVar.f3888n, lVar.f3920c, lVar.f3889o, lVar.f3890p, lVar.f3891q, h8, lVar.f3893s, lVar.f3896v, lVar.f3894t, lVar.f3897w);
                this.f3793J = lVar3;
                copyOnWriteArrayList = cVar.f3807K;
                z8 = true;
                uri = this.f3790G;
                z9 = lVar3.f3889o;
                if (lVar3 != lVar6) {
                    this.f3799P = null;
                    this.f3795L = jElapsedRealtime;
                    if (uri.equals(cVar.f3813Q)) {
                        if (cVar.f3814R == null) {
                            cVar.f3815S = !z9;
                            cVar.f3816T = lVar3.f3882h;
                        }
                        cVar.f3814R = lVar3;
                        ((H0.o) cVar.f3811O).u(lVar3);
                    }
                    it2 = copyOnWriteArrayList.iterator();
                    while (it2.hasNext()) {
                        ((t) it2.next()).b();
                    }
                } else if (!z9) {
                    size = lVar.f3885k + ((long) lVar.f3892r.size());
                    lVar4 = this.f3793J;
                    if (size < lVar4.f3885k) {
                        uVar = new u();
                    } else {
                        if (jElapsedRealtime - this.f3795L > p117p0.M.e0(lVar4.f3887m) * 3.5d) {
                            uVar = new u();
                        } else {
                            uVar = null;
                        }
                        z8 = false;
                    }
                    if (uVar != null) {
                        this.f3799P = uVar;
                        w0Var = new w0(c0292p, new C0296u(4), uVar, 1, 1);
                        it = copyOnWriteArrayList.iterator();
                        while (it.hasNext()) {
                            ((t) it.next()).c(uri, w0Var, z8);
                        }
                    }
                }
                lVar5 = this.f3793J;
                z10 = lVar5.f3896v.f3877e;
                j11 = lVar5.f3887m;
                if (!z10) {
                    if (lVar5 == lVar6) {
                        j11 /= 2;
                    }
                    j12 = j11;
                } else if (lVar5 == lVar6) {
                    j13 = lVar5.f3888n;
                    if (j13 != -9223372036854775807L) {
                        j14 = j13 / 2;
                    } else {
                        j14 = j11 / 2;
                    }
                    j12 = j14;
                } else {
                    j12 = 0;
                }
                this.f3796M = (p117p0.M.e0(j12) + jElapsedRealtime) - c0292p.f5229b;
                if (this.f3793J.f3889o) {
                    if (uri.equals(cVar.f3813Q)) {
                    }
                    f(b());
                }
            }
            i8 = lVar.f3884j;
            i10 = i8;
            lVar3 = new l(lVar.f3878d, lVar.f3918a, lVar.f3919b, lVar.f3879e, lVar.f3881g, j9, true, i10, lVar.f3885k, lVar.f3886l, lVar.f3887m, lVar.f3888n, lVar.f3920c, lVar.f3889o, lVar.f3890p, lVar.f3891q, h8, lVar.f3893s, lVar.f3896v, lVar.f3894t, lVar.f3897w);
            this.f3793J = lVar3;
            copyOnWriteArrayList = cVar.f3807K;
            z8 = true;
            uri = this.f3790G;
            z9 = lVar3.f3889o;
            if (lVar3 != lVar6) {
                this.f3799P = null;
                this.f3795L = jElapsedRealtime;
                if (uri.equals(cVar.f3813Q)) {
                    if (cVar.f3814R == null) {
                        cVar.f3815S = !z9;
                        cVar.f3816T = lVar3.f3882h;
                    }
                    cVar.f3814R = lVar3;
                    ((H0.o) cVar.f3811O).u(lVar3);
                }
                it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    ((t) it2.next()).b();
                }
            } else if (!z9) {
                size = lVar.f3885k + ((long) lVar.f3892r.size());
                lVar4 = this.f3793J;
                if (size < lVar4.f3885k) {
                    uVar = new u();
                } else {
                    if (jElapsedRealtime - this.f3795L > p117p0.M.e0(lVar4.f3887m) * 3.5d) {
                        uVar = new u();
                    } else {
                        uVar = null;
                    }
                    z8 = false;
                }
                if (uVar != null) {
                    this.f3799P = uVar;
                    w0Var = new w0(c0292p, new C0296u(4), uVar, 1, 1);
                    it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        ((t) it.next()).c(uri, w0Var, z8);
                    }
                }
            }
            lVar5 = this.f3793J;
            z10 = lVar5.f3896v.f3877e;
            j11 = lVar5.f3887m;
            if (!z10) {
                if (lVar5 == lVar6) {
                    j11 /= 2;
                }
                j12 = j11;
            } else if (lVar5 == lVar6) {
                j13 = lVar5.f3888n;
                if (j13 != -9223372036854775807L) {
                    j14 = j13 / 2;
                } else {
                    j14 = j11 / 2;
                }
                j12 = j14;
            } else {
                j12 = 0;
            }
            this.f3796M = (p117p0.M.e0(j12) + jElapsedRealtime) - c0292p.f5229b;
            if (this.f3793J.f3889o) {
                if (uri.equals(cVar.f3813Q)) {
                }
                f(b());
            }
        }
        j8 = lVar.f3882h;
        j9 = j8;
        z7 = lVar.f3883i;
        h8 = lVar.f3892r;
        if (z7) {
            lVar2 = cVar.f3814R;
            if (lVar2 != null) {
                i8 = lVar2.f3884j;
            } else {
                i8 = 0;
            }
            if (lVar6 == null) {
                i9 = (int) (j17 - lVar6.f3885k);
                h9 = lVar6.f3892r;
                if (i9 < h9.size()) {
                    iVar = (i) h9.get(i9);
                } else {
                    iVar = null;
                }
                if (iVar != null) {
                    i8 = (lVar6.f3884j + iVar.f3865J) - ((i) h8.get(0)).f3865J;
                }
                i10 = i8;
            }
            lVar3 = new l(lVar.f3878d, lVar.f3918a, lVar.f3919b, lVar.f3879e, lVar.f3881g, j9, true, i10, lVar.f3885k, lVar.f3886l, lVar.f3887m, lVar.f3888n, lVar.f3920c, lVar.f3889o, lVar.f3890p, lVar.f3891q, h8, lVar.f3893s, lVar.f3896v, lVar.f3894t, lVar.f3897w);
            this.f3793J = lVar3;
            copyOnWriteArrayList = cVar.f3807K;
            z8 = true;
            uri = this.f3790G;
            z9 = lVar3.f3889o;
            if (lVar3 != lVar6) {
                this.f3799P = null;
                this.f3795L = jElapsedRealtime;
                if (uri.equals(cVar.f3813Q)) {
                    if (cVar.f3814R == null) {
                        cVar.f3815S = !z9;
                        cVar.f3816T = lVar3.f3882h;
                    }
                    cVar.f3814R = lVar3;
                    ((H0.o) cVar.f3811O).u(lVar3);
                }
                it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    ((t) it2.next()).b();
                }
            } else if (!z9) {
                size = lVar.f3885k + ((long) lVar.f3892r.size());
                lVar4 = this.f3793J;
                if (size < lVar4.f3885k) {
                    uVar = new u();
                } else {
                    if (jElapsedRealtime - this.f3795L > p117p0.M.e0(lVar4.f3887m) * 3.5d) {
                        uVar = new u();
                    } else {
                        uVar = null;
                    }
                    z8 = false;
                }
                if (uVar != null) {
                    this.f3799P = uVar;
                    w0Var = new w0(c0292p, new C0296u(4), uVar, 1, 1);
                    it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        ((t) it.next()).c(uri, w0Var, z8);
                    }
                }
            }
            lVar5 = this.f3793J;
            z10 = lVar5.f3896v.f3877e;
            j11 = lVar5.f3887m;
            if (!z10) {
                if (lVar5 == lVar6) {
                    j11 /= 2;
                }
                j12 = j11;
            } else if (lVar5 == lVar6) {
                j13 = lVar5.f3888n;
                if (j13 != -9223372036854775807L) {
                    j14 = j13 / 2;
                } else {
                    j14 = j11 / 2;
                }
                j12 = j14;
            } else {
                j12 = 0;
            }
            this.f3796M = (p117p0.M.e0(j12) + jElapsedRealtime) - c0292p.f5229b;
            if (this.f3793J.f3889o) {
                if (uri.equals(cVar.f3813Q)) {
                }
                f(b());
            }
        }
        i8 = lVar.f3884j;
        i10 = i8;
        lVar3 = new l(lVar.f3878d, lVar.f3918a, lVar.f3919b, lVar.f3879e, lVar.f3881g, j9, true, i10, lVar.f3885k, lVar.f3886l, lVar.f3887m, lVar.f3888n, lVar.f3920c, lVar.f3889o, lVar.f3890p, lVar.f3891q, h8, lVar.f3893s, lVar.f3896v, lVar.f3894t, lVar.f3897w);
        this.f3793J = lVar3;
        copyOnWriteArrayList = cVar.f3807K;
        z8 = true;
        uri = this.f3790G;
        z9 = lVar3.f3889o;
        if (lVar3 != lVar6) {
            this.f3799P = null;
            this.f3795L = jElapsedRealtime;
            if (uri.equals(cVar.f3813Q)) {
                if (cVar.f3814R == null) {
                    cVar.f3815S = !z9;
                    cVar.f3816T = lVar3.f3882h;
                }
                cVar.f3814R = lVar3;
                ((H0.o) cVar.f3811O).u(lVar3);
            }
            it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                ((t) it2.next()).b();
            }
        } else if (!z9) {
            size = lVar.f3885k + ((long) lVar.f3892r.size());
            lVar4 = this.f3793J;
            if (size < lVar4.f3885k) {
                uVar = new u();
            } else {
                if (jElapsedRealtime - this.f3795L > p117p0.M.e0(lVar4.f3887m) * 3.5d) {
                    uVar = new u();
                } else {
                    uVar = null;
                }
                z8 = false;
            }
            if (uVar != null) {
                this.f3799P = uVar;
                w0Var = new w0(c0292p, new C0296u(4), uVar, 1, 1);
                it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).c(uri, w0Var, z8);
                }
            }
        }
        lVar5 = this.f3793J;
        z10 = lVar5.f3896v.f3877e;
        j11 = lVar5.f3887m;
        if (!z10) {
            if (lVar5 == lVar6) {
                j11 /= 2;
            }
            j12 = j11;
        } else if (lVar5 == lVar6) {
            j13 = lVar5.f3888n;
            if (j13 != -9223372036854775807L) {
                j14 = j13 / 2;
            } else {
                j14 = j11 / 2;
            }
            j12 = j14;
        } else {
            j12 = 0;
        }
        this.f3796M = (p117p0.M.e0(j12) + jElapsedRealtime) - c0292p.f5229b;
        if (this.f3793J.f3889o) {
            if (uri.equals(cVar.f3813Q)) {
            }
            f(b());
        }
    }

    @Override // S0.h
    public final S0.g n(S0.j jVar, long j8, long j9, IOException iOException, int i8) {
        S0.g gVarC;
        S0.p pVar = (S0.p) jVar;
        long j10 = pVar.f6369G;
        M m7 = pVar.f6372J;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        boolean z7 = uri.getQueryParameter("_HLS_msn") != null;
        boolean z8 = iOException instanceof q;
        c cVar = this.f3801R;
        int i9 = pVar.f6371I;
        if (z7 || z8) {
            int i10 = iOException instanceof A ? ((A) iOException).f29862J : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (z8 || i10 == 400 || i10 == 503) {
                this.f3796M = SystemClock.elapsedRealtime();
                d(false);
                D d6 = cVar.f3808L;
                String str = p117p0.M.f28050a;
                d6.f(c0292p, i9, iOException, true);
                return S0.m.f6364K;
            }
        }
        w0 w0Var = new w0(c0292p, new C0296u(i9), iOException, i8, 1);
        Iterator it = cVar.f3807K.iterator();
        boolean z9 = false;
        while (it.hasNext()) {
            z9 |= !((t) it.next()).c(this.f3790G, w0Var, false);
        }
        U4.b bVar = cVar.f3805I;
        if (z9) {
            bVar.getClass();
            long jZ = U4.b.Z(w0Var);
            gVarC = jZ != -9223372036854775807L ? S0.m.c(jZ, false) : S0.m.f6365L;
        } else {
            gVarC = S0.m.f6364K;
        }
        boolean z10 = !gVarC.a();
        cVar.f3808L.f(c0292p, i9, iOException, z10);
        if (!z10) {
            return gVarC;
        }
        bVar.getClass();
        return gVarC;
    }

    @Override // S0.h
    public final void o(S0.j jVar, long j8, long j9) {
        S0.p pVar = (S0.p) jVar;
        p pVar2 = (p) pVar.f6374L;
        M m7 = pVar.f6372J;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        if (pVar2 instanceof l) {
            g((l) pVar2, c0292p);
            this.f3801R.f3808L.d(c0292p, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        } else {
            P pB = P.b("Loaded playlist has unexpected type.", null);
            this.f3799P = pB;
            this.f3801R.f3808L.f(c0292p, 4, pB, true);
        }
        this.f3801R.f3805I.getClass();
    }

    @Override // S0.h
    public final void p(S0.j jVar, long j8, long j9, int i8) {
        C0292p c0292p;
        S0.p pVar = (S0.p) jVar;
        if (i8 == 0) {
            c0292p = new C0292p(pVar.f6369G, pVar.f6370H, j8);
        } else {
            long j10 = pVar.f6369G;
            M m7 = pVar.f6372J;
            Uri uri = m7.f29910c;
            c0292p = new C0292p(m7.f29911d, j9);
        }
        this.f3801R.f3808L.g(c0292p, pVar.f6371I, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, i8);
    }
}
