package H0;

import C0.I;
import D0.U;
import O0.C0278b;
import android.net.Uri;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.M;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.O;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f3454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3184i f3455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC3184i f3456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final U f3457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri[] f3458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C3136t[] f3459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final I0.w f3460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g0 f3461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f3462i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final I f3464k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f3465l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3466m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0278b f3468o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Uri f3469p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Uri f3470q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3471r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public R0.t f3472s;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p140s.b f3463j = new p140s.b(0);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f3467n = M.f28051b;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f3473t = -9223372036854775807L;

    public j(k kVar, I0.w wVar, Uri[] uriArr, C3136t[] c3136tArr, c cVar, O o4, U u7, long j8, List list, I i8) {
        this.f3454a = kVar;
        this.f3460g = wVar;
        this.f3458e = uriArr;
        this.f3459f = c3136tArr;
        this.f3457d = u7;
        this.f3465l = j8;
        this.f3462i = list;
        this.f3464k = i8;
        InterfaceC3184i interfaceC3184iA = cVar.f3436a.a();
        this.f3455b = interfaceC3184iA;
        if (o4 != null) {
            interfaceC3184iA.p(o4);
        }
        this.f3456c = cVar.f3436a.a();
        this.f3461h = new g0(HttpUrl.FRAGMENT_ENCODE_SET, c3136tArr);
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < uriArr.length; i9++) {
            if ((c3136tArr[i9].f27032f & Http2.INITIAL_MAX_FRAME_SIZE) == 0) {
                arrayList.add(Integer.valueOf(i9));
            }
        }
        g0 g0Var = this.f3461h;
        int[] iArrG0 = p190y4.k.g0(arrayList);
        h hVar = new h(g0Var, iArrG0);
        hVar.f3449g = hVar.o(g0Var.f26860d[iArrG0[0]]);
        this.f3472s = hVar;
    }

    public static i d(I0.l lVar, long j8, int i8) {
        int i9 = (int) (j8 - lVar.f3885k);
        H h8 = lVar.f3892r;
        int size = h8.size();
        H h9 = lVar.f3893s;
        if (i9 == size) {
            if (i8 == -1) {
                i8 = 0;
            }
            if (i8 < h9.size()) {
                return new i((I0.j) h9.get(i8), j8, i8);
            }
            return null;
        }
        I0.i iVar = (I0.i) h8.get(i9);
        if (i8 == -1) {
            return new i(iVar, j8, -1);
        }
        if (i8 < iVar.f3861S.size()) {
            return new i((I0.j) iVar.f3861S.get(i8), j8, i8);
        }
        int i10 = i9 + 1;
        if (i10 < h8.size()) {
            return new i((I0.j) h8.get(i10), j8 + 1, -1);
        }
        if (h9.isEmpty()) {
            return null;
        }
        return new i((I0.j) h9.get(0), j8 + 1, 0);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00e1  */
    public final P0.q[] a(long j8, l lVar) {
        List listUnmodifiableList;
        int iB = lVar == null ? -1 : this.f3461h.b(lVar.f5723J);
        int length = ((R0.c) this.f3472s).f6127c.length;
        P0.q[] qVarArr = new P0.q[length];
        boolean z7 = false;
        int i8 = 0;
        while (i8 < length) {
            int i9 = ((R0.c) this.f3472s).f6127c[i8];
            Uri uri = this.f3458e[i9];
            I0.c cVar = (I0.c) this.f3460g;
            if (cVar.d(uri)) {
                I0.l lVarA = cVar.a(uri, z7);
                lVarA.getClass();
                long j9 = lVarA.f3882h - cVar.f3816T;
                Pair pairC = c(lVar, i9 != iB, lVarA, j9, j8);
                long jLongValue = ((Long) pairC.first).longValue();
                int iIntValue = ((Integer) pairC.second).intValue();
                int i10 = (int) (jLongValue - lVarA.f3885k);
                if (i10 >= 0) {
                    H h8 = lVarA.f3892r;
                    if (h8.size() < i10) {
                        F f8 = H.f31804H;
                        listUnmodifiableList = d0.f31844K;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        if (i10 < h8.size()) {
                            if (iIntValue != -1) {
                                I0.i iVar = (I0.i) h8.get(i10);
                                if (iIntValue == 0) {
                                    arrayList.add(iVar);
                                } else if (iIntValue < iVar.f3861S.size()) {
                                    H h9 = iVar.f3861S;
                                    arrayList.addAll(h9.subList(iIntValue, h9.size()));
                                }
                                i10++;
                            }
                            arrayList.addAll(h8.subList(i10, h8.size()));
                            iIntValue = 0;
                        }
                        if (lVarA.f3888n != -9223372036854775807L) {
                            if (iIntValue == -1) {
                                iIntValue = 0;
                            }
                            H h10 = lVarA.f3893s;
                            if (iIntValue < h10.size()) {
                                arrayList.addAll(h10.subList(iIntValue, h10.size()));
                            }
                        }
                        listUnmodifiableList = Collections.unmodifiableList(arrayList);
                    }
                } else {
                    F f9 = H.f31804H;
                    listUnmodifiableList = d0.f31844K;
                }
                qVarArr[i8] = new g(j9, listUnmodifiableList);
            } else {
                qVarArr[i8] = P0.q.f5771i;
            }
            i8++;
            z7 = false;
        }
        return qVarArr;
    }

    public final int b(l lVar) {
        if (lVar.f3479U == -1) {
            return 1;
        }
        I0.l lVarA = ((I0.c) this.f3460g).a(this.f3458e[this.f3461h.b(lVar.f5723J)], false);
        lVarA.getClass();
        int i8 = (int) (lVar.f5770P - lVarA.f3885k);
        if (i8 < 0) {
            return 1;
        }
        H h8 = lVarA.f3892r;
        H h9 = i8 < h8.size() ? ((I0.i) h8.get(i8)).f3861S : lVarA.f3893s;
        int size = h9.size();
        int i9 = lVar.f3479U;
        if (i9 >= size) {
            return 2;
        }
        I0.g gVar = (I0.g) h9.get(i9);
        if (gVar.f3856S) {
            return 0;
        }
        return Objects.equals(Uri.parse(Q3.b.u(lVarA.f3918a, gVar.f3862G)), lVar.f5721H.f29963a) ? 1 : 2;
    }

    public final Pair c(l lVar, boolean z7, I0.l lVar2, long j8, long j9) {
        boolean z8 = true;
        int i8 = -1;
        if (lVar != null && !z7) {
            boolean z9 = lVar.f3499o0;
            long jA = lVar.f5770P;
            int i9 = lVar.f3479U;
            if (!z9) {
                return new Pair(Long.valueOf(jA), Integer.valueOf(i9));
            }
            if (i9 == -1) {
                jA = lVar.a();
            }
            return new Pair(Long.valueOf(jA), Integer.valueOf(i9 != -1 ? i9 + 1 : -1));
        }
        long j10 = lVar2.f3895u + j8;
        if (lVar != null && !this.f3471r) {
            j9 = lVar.f5726M;
        }
        boolean z10 = lVar2.f3889o;
        long j11 = lVar2.f3885k;
        H h8 = lVar2.f3892r;
        if (!z10 && j9 >= j10) {
            return new Pair(Long.valueOf(j11 + ((long) h8.size())), -1);
        }
        long j12 = j9 - j8;
        Long lValueOf = Long.valueOf(j12);
        if (((I0.c) this.f3460g).f3815S && lVar != null) {
            z8 = false;
        }
        int iC = M.c(h8, lValueOf, z8);
        long j13 = ((long) iC) + j11;
        if (iC >= 0) {
            I0.i iVar = (I0.i) h8.get(iC);
            long j14 = iVar.f3866K + iVar.f3864I;
            H h9 = lVar2.f3893s;
            H h10 = j12 < j14 ? iVar.f3861S : h9;
            for (int i10 = 0; i10 < h10.size(); i10++) {
                I0.g gVar = (I0.g) h10.get(i10);
                if (j12 < gVar.f3866K + gVar.f3864I) {
                    if (!gVar.f3855R) {
                        break;
                    }
                    j13 += h10 == h9 ? 1L : 0L;
                    i8 = i10;
                    break;
                }
            }
        }
        return new Pair(Long.valueOf(j13), Integer.valueOf(i8));
    }

    public final f e(Uri uri, int i8, boolean z7) {
        if (uri == null) {
            return null;
        }
        p140s.b bVar = this.f3463j;
        bVar.getClass();
        LinkedHashMap linkedHashMap = bVar.f29861a;
        byte[] bArr = (byte[]) linkedHashMap.remove(uri);
        if (bArr != null) {
            return null;
        }
        C3188m c3188m = new C3188m(uri, 0L, 1, null, Collections.emptyMap(), 0L, -1L, null, 1, null);
        C3136t c3136t = this.f3459f[i8];
        int iF = this.f3472s.f();
        Object objH = this.f3472s.h();
        byte[] bArr2 = this.f3467n;
        f fVar = new f(this.f3456c, c3188m, 3, c3136t, iF, objH, -9223372036854775807L, -9223372036854775807L);
        if (bArr2 == null) {
            bArr2 = M.f28051b;
        }
        fVar.f3444P = bArr2;
        return fVar;
    }
}
