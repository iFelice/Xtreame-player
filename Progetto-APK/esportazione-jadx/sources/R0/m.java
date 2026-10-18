package R0;

import A0.O;
import java.util.Comparator;
import okhttp3.HttpUrl;
import p094m0.g0;
import z4.AbstractC3259x;
import z4.H;
import z4.b0;
import z4.k0;

/* JADX INFO: loaded from: classes.dex */
public final class m extends o implements Comparable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f6201K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f6202L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f6203M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f6204N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f6205O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f6206P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f6207Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f6208R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f6209S;

    public m(int i8, g0 g0Var, int i9, k kVar, int i10, String str, String str2) {
        int iG;
        super(i8, i9, g0Var);
        int i11 = 0;
        this.f6202L = O.u(i10, false);
        int i12 = this.f6213J.f27031e & (~kVar.f26941y);
        this.f6203M = (i12 & 1) != 0;
        this.f6204N = (i12 & 2) != 0;
        H h8 = kVar.f26938v;
        H hX = str2 != null ? H.x(str2) : h8.isEmpty() ? H.x(HttpUrl.FRAGMENT_ENCODE_SET) : h8;
        int i13 = 0;
        while (true) {
            if (i13 >= hX.size()) {
                i13 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iG = 0;
                break;
            } else {
                iG = q.g(this.f6213J, (String) hX.get(i13), kVar.f26942z);
                if (iG > 0) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        this.f6205O = i13;
        this.f6206P = iG;
        int iC = q.c(this.f6213J.f27032f, str2 != null ? 1088 : kVar.f26939w);
        this.f6207Q = iC;
        this.f6209S = (1088 & this.f6213J.f27032f) != 0;
        int iG2 = q.g(this.f6213J, str, q.j(str) == null);
        this.f6208R = iG2;
        boolean z7 = iG > 0 || (h8.isEmpty() && iC > 0) || this.f6203M || (this.f6204N && iG2 > 0);
        if (O.u(i10, kVar.f6194Q) && z7) {
            i11 = 1;
        }
        this.f6201K = i11;
    }

    @Override // R0.o
    public final int a() {
        return this.f6201K;
    }

    @Override // R0.o
    public final /* bridge */ /* synthetic */ boolean b(o oVar) {
        return false;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(m mVar) {
        AbstractC3259x abstractC3259xC = AbstractC3259x.f31903a.c(this.f6202L, mVar.f6202L);
        Integer numValueOf = Integer.valueOf(this.f6205O);
        Integer numValueOf2 = Integer.valueOf(mVar.f6205O);
        Comparator comparator = b0.f31836G;
        comparator.getClass();
        k0 k0Var = k0.f31876G;
        AbstractC3259x abstractC3259xB = abstractC3259xC.b(numValueOf, numValueOf2, k0Var);
        int i8 = this.f6206P;
        AbstractC3259x abstractC3259xA = abstractC3259xB.a(i8, mVar.f6206P);
        int i9 = this.f6207Q;
        AbstractC3259x abstractC3259xC2 = abstractC3259xA.a(i9, mVar.f6207Q).c(this.f6203M, mVar.f6203M);
        Boolean boolValueOf = Boolean.valueOf(this.f6204N);
        Boolean boolValueOf2 = Boolean.valueOf(mVar.f6204N);
        if (i8 != 0) {
            comparator = k0Var;
        }
        AbstractC3259x abstractC3259xA2 = abstractC3259xC2.b(boolValueOf, boolValueOf2, comparator).a(this.f6208R, mVar.f6208R);
        if (i9 == 0) {
            abstractC3259xA2 = abstractC3259xA2.d(this.f6209S, mVar.f6209S);
        }
        return abstractC3259xA2.e();
    }
}
