package R0;

import A0.O;
import android.text.TextUtils;
import java.util.Objects;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.M;
import z4.AbstractC3259x;
import z4.H;
import z4.b0;
import z4.c0;
import z4.k0;

/* JADX INFO: loaded from: classes.dex */
public final class g extends o implements Comparable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f6141K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f6142L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f6143M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final k f6144N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f6145O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f6146P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f6147Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f6148R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f6149S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f6150T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f6151U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final int f6152V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final boolean f6153W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final int f6154X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final int f6155Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final int f6156Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f6157a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final boolean f6158b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final boolean f6159c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final boolean f6160d0;

    public g(int i8, g0 g0Var, int i9, k kVar, int i10, boolean z7, f fVar, int i11) {
        int i12;
        int iG;
        int iG2;
        boolean z8;
        super(i8, i9, g0Var);
        this.f6144N = kVar;
        int i13 = kVar.f6192O ? 24 : 16;
        int i14 = 1;
        int i15 = 0;
        this.f6149S = kVar.f6188K && (i11 & i13) != 0;
        this.f6143M = q.j(this.f6213J.f27030d);
        this.f6145O = O.u(i10, false);
        int i16 = 0;
        while (true) {
            H h8 = kVar.f26932p;
            int size = h8.size();
            i12 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (i16 >= size) {
                i16 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iG = 0;
                break;
            } else {
                iG = q.g(this.f6213J, (String) h8.get(i16), false);
                if (iG > 0) {
                    break;
                } else {
                    i16++;
                }
            }
        }
        this.f6147Q = i16;
        this.f6146P = iG;
        this.f6148R = q.c(this.f6213J.f27032f, kVar.f26933q);
        C3136t c3136t = this.f6213J;
        int i17 = c3136t.f27032f;
        this.f6150T = i17 == 0 || (i17 & 1) != 0;
        this.f6153W = (c3136t.f27031e & 1) != 0;
        this.f6160d0 = q.e(c3136t);
        C3136t c3136t2 = this.f6213J;
        int i18 = c3136t2.f27016G;
        this.f6154X = i18;
        this.f6155Y = c3136t2.f27017H;
        int i19 = c3136t2.f27036j;
        this.f6156Z = i19;
        this.f6142L = (i19 == -1 || i19 <= kVar.f26935s) && (i18 == -1 || i18 <= kVar.f26934r) && fVar.apply(c3136t2);
        String[] strArrE = M.E();
        int i20 = 0;
        while (true) {
            if (i20 >= strArrE.length) {
                i20 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iG2 = 0;
                break;
            } else {
                iG2 = q.g(this.f6213J, strArrE[i20], false);
                if (iG2 > 0) {
                    break;
                } else {
                    i20++;
                }
            }
        }
        this.f6151U = i20;
        this.f6152V = iG2;
        int i21 = 0;
        while (true) {
            H h9 = kVar.f26936t;
            if (i21 < h9.size()) {
                String str = this.f6213J.f27041o;
                if (str != null && str.equals(h9.get(i21))) {
                    i12 = i21;
                    break;
                }
                i21++;
            } else {
                break;
            }
        }
        this.f6157a0 = i12;
        this.f6158b0 = O.p(i10) == 128;
        this.f6159c0 = O.q(i10) == 64;
        k kVar2 = this.f6144N;
        if (O.u(i10, kVar2.f6194Q) && ((z8 = this.f6142L) || kVar2.f6187J)) {
            kVar2.f26937u.getClass();
            if (O.u(i10, false) && z8 && this.f6213J.f27036j != -1 && !kVar2.f26914C && !kVar2.f26913B && ((kVar2.f6196S || !z7) && (i13 & i10) != 0)) {
                i14 = 2;
            }
            i15 = i14;
        }
        this.f6141K = i15;
    }

    @Override // R0.o
    public final int a() {
        return this.f6141K;
    }

    @Override // R0.o
    public final boolean b(o oVar) {
        int i8;
        String str;
        int i9;
        g gVar = (g) oVar;
        k kVar = this.f6144N;
        boolean z7 = kVar.f6190M;
        C3136t c3136t = gVar.f6213J;
        C3136t c3136t2 = this.f6213J;
        if ((z7 || ((i9 = c3136t2.f27016G) != -1 && i9 == c3136t.f27016G)) && ((this.f6149S || ((str = c3136t2.f27041o) != null && TextUtils.equals(str, c3136t.f27041o))) && (kVar.f6189L || ((i8 = c3136t2.f27017H) != -1 && i8 == c3136t.f27017H)))) {
            if (!kVar.f6191N) {
                if (this.f6158b0 != gVar.f6158b0 || this.f6159c0 != gVar.f6159c0) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(g gVar) {
        boolean z7 = this.f6145O;
        boolean z8 = this.f6142L;
        c0 c0VarA = (z8 && z7) ? q.f6232k : q.f6232k.a();
        AbstractC3259x abstractC3259xC = AbstractC3259x.f31903a.c(z7, gVar.f6145O);
        Integer numValueOf = Integer.valueOf(this.f6147Q);
        Integer numValueOf2 = Integer.valueOf(gVar.f6147Q);
        b0.f31836G.getClass();
        k0 k0Var = k0.f31876G;
        AbstractC3259x abstractC3259xB = abstractC3259xC.b(numValueOf, numValueOf2, k0Var).a(this.f6146P, gVar.f6146P).a(this.f6148R, gVar.f6148R).c(this.f6153W, gVar.f6153W).c(this.f6150T, gVar.f6150T).b(Integer.valueOf(this.f6151U), Integer.valueOf(gVar.f6151U), k0Var).a(this.f6152V, gVar.f6152V).c(z8, gVar.f6142L).b(Integer.valueOf(this.f6157a0), Integer.valueOf(gVar.f6157a0), k0Var);
        boolean z9 = this.f6144N.f26913B;
        int i8 = this.f6156Z;
        int i9 = gVar.f6156Z;
        if (z9) {
            abstractC3259xB = abstractC3259xB.b(Integer.valueOf(i8), Integer.valueOf(i9), q.f6232k.a());
        }
        AbstractC3259x abstractC3259xB2 = abstractC3259xB.c(this.f6158b0, gVar.f6158b0).c(this.f6159c0, gVar.f6159c0).c(this.f6160d0, gVar.f6160d0).b(Integer.valueOf(this.f6154X), Integer.valueOf(gVar.f6154X), c0VarA).b(Integer.valueOf(this.f6155Y), Integer.valueOf(gVar.f6155Y), c0VarA);
        if (Objects.equals(this.f6143M, gVar.f6143M)) {
            abstractC3259xB2 = abstractC3259xB2.b(Integer.valueOf(i8), Integer.valueOf(i9), c0VarA);
        }
        return abstractC3259xB2.e();
    }
}
