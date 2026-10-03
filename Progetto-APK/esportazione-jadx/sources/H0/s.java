package H0;

import O0.T;
import W0.K;
import java.util.Map;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.M;
import p094m0.N;

/* JADX INFO: loaded from: classes.dex */
public final class s extends T {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Map f3556H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C3131n f3557I;

    public s(S0.d dVar, G0.r rVar, G0.o oVar, Map map) {
        super(dVar, rVar, oVar);
        this.f3556H = map;
    }

    @Override // O0.T, W0.L
    public final void d(long j8, int i8, int i9, int i10, K k8) {
        super.d(j8, i8, i9, i10, k8);
    }

    @Override // O0.T
    public final C3136t p(C3136t c3136t) {
        C3131n c3131n;
        C3131n c3131n2 = this.f3557I;
        if (c3131n2 == null) {
            c3131n2 = c3136t.f27045s;
        }
        if (c3131n2 != null && (c3131n = (C3131n) this.f3556H.get(c3131n2.f26962I)) != null) {
            c3131n2 = c3131n;
        }
        N n7 = c3136t.f27038l;
        N n8 = null;
        if (n7 == null) {
            n7 = n8;
        } else {
            M[] mArr = n7.f26777a;
            int length = mArr.length;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    i9 = -1;
                    break;
                }
                M m7 = mArr[i9];
                if ((m7 instanceof p065i1.n) && "com.apple.streaming.transportStreamTimestamp".equals(((p065i1.n) m7).f25547b)) {
                    break;
                }
                i9++;
            }
            if (i9 != -1) {
                if (length != 1) {
                    M[] mArr2 = new M[length - 1];
                    while (i8 < length) {
                        if (i8 != i9) {
                            mArr2[i8 < i9 ? i8 : i8 - 1] = mArr[i8];
                        }
                        i8++;
                    }
                    n8 = new N(mArr2);
                }
                n7 = n8;
            }
        }
        if (c3131n2 != c3136t.f27045s || n7 != c3136t.f27038l) {
            C3135s c3135sA = c3136t.a();
            c3135sA.f27000r = c3131n2;
            c3135sA.f26993k = n7;
            c3136t = c3135sA.a();
        }
        return super.p(c3136t);
    }
}
