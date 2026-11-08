package R0;

import A0.O;
import java.util.Objects;
import okhttp3.internal.http2.Http2;
import p094m0.C3136t;
import p094m0.g0;
import z4.AbstractC3259x;
import z4.H;
import z4.b0;
import z4.c0;
import z4.k0;

/* JADX INFO: loaded from: classes.dex */
public final class p extends o {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f6214K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final k f6215L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f6216M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f6217N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f6218O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f6219P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f6220Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f6221R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f6222S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f6223T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f6224U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final boolean f6225V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f6226W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final boolean f6227X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final int f6228Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final boolean f6229Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final boolean f6230a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f6231b0;

    /* JADX WARN: Code duplicated, block: B:31:0x004b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0079  */
    public p(int i8, g0 g0Var, int i9, k kVar, int i10, String str, int i11, boolean z7) {
        boolean z8;
        boolean z9;
        int i12;
        int iG;
        boolean z10;
        C3136t c3136t;
        int i13;
        int i14;
        int i15;
        C3136t c3136t2;
        int i16;
        int i17;
        int i18;
        super(i8, i9, g0Var);
        this.f6215L = kVar;
        int i19 = kVar.f6185H ? 24 : 16;
        int i20 = 1;
        int i21 = 0;
        this.f6227X = kVar.f6184G && (i11 & i19) != 0;
        if (!z7 || (((i16 = (c3136t2 = this.f6213J).f27048v) != -1 && i16 > kVar.f26917a) || ((i17 = c3136t2.f27049w) != -1 && i17 > kVar.f26918b))) {
            z8 = false;
        } else {
            float f8 = c3136t2.f27052z;
            if ((f8 == -1.0f || f8 <= kVar.f26919c) && ((i18 = c3136t2.f27036j) == -1 || i18 <= kVar.f26920d)) {
                z8 = true;
            } else {
                z8 = false;
            }
        }
        this.f6214K = z8;
        if (!z7 || (((i13 = (c3136t = this.f6213J).f27048v) != -1 && i13 < kVar.f26921e) || ((i14 = c3136t.f27049w) != -1 && i14 < kVar.f26922f))) {
            z9 = false;
        } else {
            float f9 = c3136t.f27052z;
            if ((f9 == -1.0f || f9 >= kVar.f26923g) && ((i15 = c3136t.f27036j) == -1 || i15 >= kVar.f26924h)) {
                z9 = true;
            } else {
                z9 = false;
            }
        }
        this.f6216M = z9;
        this.f6217N = O.u(i10, false);
        C3136t c3136t3 = this.f6213J;
        float f10 = c3136t3.f27052z;
        this.f6218O = f10 != -1.0f && f10 >= 10.0f;
        this.f6219P = c3136t3.f27036j;
        this.f6220Q = c3136t3.b();
        int i22 = 0;
        while (true) {
            H h8 = kVar.f26930n;
            int size = h8.size();
            i12 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (i22 >= size) {
                i22 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iG = 0;
                break;
            } else {
                iG = q.g(this.f6213J, (String) h8.get(i22), false);
                if (iG > 0) {
                    break;
                } else {
                    i22++;
                }
            }
        }
        this.f6222S = i22;
        this.f6223T = iG;
        this.f6224U = q.c(this.f6213J.f27032f, kVar.f26931o);
        int i23 = this.f6213J.f27032f;
        this.f6225V = i23 == 0 || (i23 & 1) != 0;
        this.f6226W = q.g(this.f6213J, str, q.j(str) == null);
        int i24 = 0;
        while (true) {
            H h9 = kVar.f26929m;
            if (i24 < h9.size()) {
                String str2 = this.f6213J.f27041o;
                if (str2 != null && str2.equals(h9.get(i24))) {
                    i12 = i24;
                    break;
                }
                i24++;
            } else {
                break;
            }
        }
        this.f6221R = i12;
        this.f6229Z = O.p(i10) == 128;
        this.f6230a0 = O.q(i10) == 64;
        this.f6231b0 = q.d(this.f6213J.f27041o);
        C3136t c3136t4 = this.f6213J;
        if ((c3136t4.f27032f & Http2.INITIAL_MAX_FRAME_SIZE) == 0) {
            k kVar2 = this.f6215L;
            if (O.u(i10, kVar2.f6194Q) && ((z10 = this.f6214K) || kVar2.f6183F)) {
                if (O.u(i10, false) && this.f6216M && z10 && c3136t4.f27036j != -1 && !kVar2.f26914C && !kVar2.f26913B && (i19 & i10) != 0) {
                    i20 = 2;
                }
                i21 = i20;
            }
        }
        this.f6228Y = i21;
    }

    public static int c(p pVar, p pVar2) {
        c0 c0VarA = (pVar.f6214K && pVar.f6217N) ? q.f6232k : q.f6232k.a();
        AbstractC3259x abstractC3259xB = AbstractC3259x.f31903a;
        boolean z7 = pVar.f6215L.f26913B;
        int i8 = pVar.f6219P;
        if (z7) {
            abstractC3259xB = abstractC3259xB.b(Integer.valueOf(i8), Integer.valueOf(pVar2.f6219P), q.f6232k.a());
        }
        return abstractC3259xB.b(Integer.valueOf(pVar.f6220Q), Integer.valueOf(pVar2.f6220Q), c0VarA).b(Integer.valueOf(i8), Integer.valueOf(pVar2.f6219P), c0VarA).e();
    }

    public static int d(p pVar, p pVar2) {
        AbstractC3259x abstractC3259xC = AbstractC3259x.f31903a.c(pVar.f6217N, pVar2.f6217N);
        Integer numValueOf = Integer.valueOf(pVar.f6222S);
        Integer numValueOf2 = Integer.valueOf(pVar2.f6222S);
        b0.f31836G.getClass();
        k0 k0Var = k0.f31876G;
        AbstractC3259x abstractC3259xB = abstractC3259xC.b(numValueOf, numValueOf2, k0Var).a(pVar.f6223T, pVar2.f6223T).a(pVar.f6224U, pVar2.f6224U).c(pVar.f6225V, pVar2.f6225V).a(pVar.f6226W, pVar2.f6226W).c(pVar.f6218O, pVar2.f6218O).c(pVar.f6214K, pVar2.f6214K).c(pVar.f6216M, pVar2.f6216M).b(Integer.valueOf(pVar.f6221R), Integer.valueOf(pVar2.f6221R), k0Var);
        boolean z7 = pVar2.f6229Z;
        boolean z8 = pVar.f6229Z;
        AbstractC3259x abstractC3259xC2 = abstractC3259xB.c(z8, z7);
        boolean z9 = pVar2.f6230a0;
        boolean z10 = pVar.f6230a0;
        AbstractC3259x abstractC3259xC3 = abstractC3259xC2.c(z10, z9);
        if (z8 && z10) {
            abstractC3259xC3 = abstractC3259xC3.a(pVar.f6231b0, pVar2.f6231b0);
        }
        return abstractC3259xC3.e();
    }

    @Override // R0.o
    public final int a() {
        return this.f6228Y;
    }

    @Override // R0.o
    public final boolean b(o oVar) {
        p pVar = (p) oVar;
        if (this.f6227X || Objects.equals(this.f6213J.f27041o, pVar.f6213J.f27041o)) {
            if (!this.f6215L.f6186I) {
                if (this.f6229Z != pVar.f6229Z || this.f6230a0 != pVar.f6230a0) {
                }
            }
            return true;
        }
        return false;
    }
}
