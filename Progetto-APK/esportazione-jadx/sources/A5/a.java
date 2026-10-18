package A5;

import java.util.Map;
import p096m2.l;
import p130q5.b;
import p130q5.e;
import p130q5.i;
import p130q5.k;
import p130q5.m;
import p130q5.n;
import p130q5.o;
import p176w5.d;
import p198z5.c;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o[] f655b = new o[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f656a = new c(1);

    @Override // p130q5.k
    public final m b(l lVar) {
        return c(lVar, null);
    }

    @Override // p130q5.k
    public final m c(l lVar, Map map) throws i, b, e {
        p176w5.b bVarI = lVar.i();
        int i8 = bVarI.f31091G;
        int i9 = -1;
        int i10 = bVarI.f31092H;
        int i11 = i10;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = 0;
            while (true) {
                int i15 = bVarI.f31093I;
                if (i14 < i15) {
                    int i16 = bVarI.f31094J[(i15 * i13) + i14];
                    if (i16 != 0) {
                        if (i13 < i11) {
                            i11 = i13;
                        }
                        if (i13 > i12) {
                            i12 = i13;
                        }
                        int i17 = i14 << 5;
                        if (i17 < i8) {
                            int i18 = 0;
                            while ((i16 << (31 - i18)) == 0) {
                                i18++;
                            }
                            int i19 = i18 + i17;
                            if (i19 < i8) {
                                i8 = i19;
                            }
                        }
                        if (i17 + 31 > i9) {
                            int i20 = 31;
                            while ((i16 >>> i20) == 0) {
                                i20--;
                            }
                            int i21 = i17 + i20;
                            if (i21 > i9) {
                                i9 = i21;
                            }
                        }
                    }
                    i14++;
                }
            }
        }
        int[] iArr = (i9 < i8 || i12 < i11) ? null : new int[]{i8, i11, (i9 - i8) + 1, (i12 - i11) + 1};
        if (iArr == null) {
            throw i.f29623I;
        }
        int i22 = iArr[0];
        int i23 = iArr[1];
        int i24 = iArr[2];
        int i25 = iArr[3];
        p176w5.b bVar = new p176w5.b(30, 33);
        for (int i26 = 0; i26 < 33; i26++) {
            int i27 = (((i25 / 2) + (i26 * i25)) / 33) + i23;
            for (int i28 = 0; i28 < 30; i28++) {
                if (bVarI.b((((((i26 & 1) * i24) / 2) + ((i24 / 2) + (i28 * i24))) / 30) + i22, i27)) {
                    bVar.f(i28, i26);
                }
            }
        }
        d dVarE = this.f656a.e(bVar, map);
        m mVar = new m(dVarE.f31101b, dVarE.f31100a, f655b, p130q5.a.f29587P);
        String str = dVarE.f31103d;
        if (str != null) {
            mVar.b(n.f29636I, str);
        }
        return mVar;
    }

    @Override // p130q5.k
    public final void a() {
    }
}
