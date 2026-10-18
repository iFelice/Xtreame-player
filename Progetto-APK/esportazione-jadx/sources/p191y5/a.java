package p191y5;

import java.util.List;
import java.util.Map;
import p096m2.l;
import p130q5.b;
import p130q5.e;
import p130q5.i;
import p130q5.k;
import p130q5.m;
import p130q5.o;
import p176w5.d;
import p178x.n;
import p198z5.c;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o[] f31452b = new o[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f31453a = new c(0);

    @Override // p130q5.k
    public final m b(l lVar) {
        return c(lVar, null);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0166  */
    @Override // p130q5.k
    public final m c(l lVar, Map map) throws i, b, e {
        char c8;
        d dVarD;
        o[] oVarArr;
        int i8;
        c cVar = this.f31453a;
        if (map == null || !map.containsKey(p130q5.c.f29597H)) {
            p096m2.c cVar2 = new p096m2.c(lVar.i());
            o[] oVarArrB = ((n) cVar2.f27211I).b();
            o oVar = oVarArrB[0];
            o oVar2 = oVarArrB[1];
            o oVar3 = oVarArrB[3];
            o oVar4 = oVarArrB[2];
            int iA = cVar2.A(oVar, oVar2);
            int iA2 = cVar2.A(oVar2, oVar3);
            int iA3 = cVar2.A(oVar3, oVar4);
            int iA4 = cVar2.A(oVar4, oVar);
            o[] oVarArr2 = {oVar4, oVar, oVar2, oVar3};
            if (iA > iA2) {
                oVarArr2[0] = oVar;
                oVarArr2[1] = oVar2;
                oVarArr2[2] = oVar3;
                oVarArr2[3] = oVar4;
                iA = iA2;
            }
            if (iA > iA3) {
                oVarArr2[0] = oVar2;
                oVarArr2[1] = oVar3;
                oVarArr2[2] = oVar4;
                oVarArr2[3] = oVar;
            } else {
                iA3 = iA;
            }
            if (iA3 > iA4) {
                oVarArr2[0] = oVar3;
                oVarArr2[1] = oVar4;
                oVarArr2[2] = oVar;
                oVarArr2[3] = oVar2;
            }
            o oVar5 = oVarArr2[0];
            o oVar6 = oVarArr2[1];
            o oVar7 = oVarArr2[2];
            o oVar8 = oVarArr2[3];
            int iA5 = (cVar2.A(oVar5, oVar8) + 1) << 2;
            if (cVar2.A(p096m2.c.y(oVar6, oVar7, iA5), oVar5) < cVar2.A(p096m2.c.y(oVar7, oVar6, iA5), oVar8)) {
                oVarArr2[0] = oVar5;
                oVarArr2[1] = oVar6;
                oVarArr2[2] = oVar7;
                c8 = 3;
                oVarArr2[3] = oVar8;
            } else {
                c8 = 3;
                oVarArr2[0] = oVar6;
                oVarArr2[1] = oVar7;
                oVarArr2[2] = oVar8;
                oVarArr2[3] = oVar5;
            }
            o oVar9 = oVarArr2[0];
            o oVar10 = oVarArr2[1];
            o oVar11 = oVarArr2[2];
            o oVar12 = oVarArr2[c8];
            int iA6 = cVar2.A(oVar9, oVar12);
            o oVarY = p096m2.c.y(oVar9, oVar10, (cVar2.A(oVar10, oVar12) + 1) << 2);
            o oVarY2 = p096m2.c.y(oVar11, oVar10, (iA6 + 1) << 2);
            int iA7 = cVar2.A(oVarY, oVar12);
            int iA8 = cVar2.A(oVarY2, oVar12);
            float f8 = oVar11.f29645a;
            float f9 = oVar10.f29645a;
            float f10 = iA7 + 1;
            float f11 = oVar12.f29645a;
            float f12 = oVar11.f29646b;
            float f13 = oVar10.f29646b;
            float f14 = oVar12.f29646b;
            o oVar13 = new o(((f8 - f9) / f10) + f11, ((f12 - f13) / f10) + f14);
            float f15 = oVar9.f29645a - f9;
            float f16 = iA8 + 1;
            o oVar14 = new o((f15 / f16) + f11, ((oVar9.f29646b - f13) / f16) + f14);
            if (cVar2.l(oVar13)) {
                if (cVar2.l(oVar14) && cVar2.A(oVarY2, oVar13) + cVar2.A(oVarY, oVar13) <= cVar2.A(oVarY2, oVar14) + cVar2.A(oVarY, oVar14)) {
                    oVar13 = oVar14;
                }
            } else if (cVar2.l(oVar14)) {
                oVar13 = oVar14;
            } else {
                oVar13 = null;
            }
            oVarArr2[3] = oVar13;
            if (oVar13 == null) {
                throw i.f29623I;
            }
            o oVar15 = oVarArr2[0];
            o oVar16 = oVarArr2[1];
            o oVar17 = oVarArr2[2];
            int iA9 = cVar2.A(oVar15, oVar13) + 1;
            o oVarY3 = p096m2.c.y(oVar15, oVar16, (cVar2.A(oVar17, oVar13) + 1) << 2);
            o oVarY4 = p096m2.c.y(oVar17, oVar16, iA9 << 2);
            int iA10 = cVar2.A(oVarY3, oVar13);
            int i9 = iA10 + 1;
            int iA11 = cVar2.A(oVarY4, oVar13);
            int i10 = iA11 + 1;
            if ((i9 & 1) == 1) {
                i9 = iA10 + 2;
            }
            if ((i10 & 1) == 1) {
                i10 = iA11 + 2;
            }
            float f17 = (((oVar15.f29645a + oVar16.f29645a) + oVar17.f29645a) + oVar13.f29645a) / 4.0f;
            float f18 = (((oVar15.f29646b + oVar16.f29646b) + oVar17.f29646b) + oVar13.f29646b) / 4.0f;
            o oVarT = p096m2.c.t(oVar15, f17, f18);
            o oVarT2 = p096m2.c.t(oVar16, f17, f18);
            o oVarT3 = p096m2.c.t(oVar17, f17, f18);
            o oVarT4 = p096m2.c.t(oVar13, f17, f18);
            int i11 = i10 << 2;
            int i12 = i9 << 2;
            o[] oVarArr3 = {p096m2.c.y(p096m2.c.y(oVarT, oVarT2, i11), oVarT4, i12), p096m2.c.y(p096m2.c.y(oVarT2, oVarT, i11), oVarT3, i12), p096m2.c.y(p096m2.c.y(oVarT3, oVarT4, i11), oVarT2, i12), p096m2.c.y(p096m2.c.y(oVarT4, oVarT3, i11), oVarT, i12)};
            o oVar18 = oVarArr3[0];
            o oVar19 = oVarArr3[1];
            o oVar20 = oVarArr3[2];
            o oVar21 = oVarArr3[3];
            int iA12 = cVar2.A(oVar18, oVar21);
            int iMax = iA12 + 1;
            int iA13 = cVar2.A(oVar20, oVar21);
            int i13 = iA13 + 1;
            if ((iMax & 1) == 1) {
                iMax = iA12 + 2;
            }
            if ((i13 & 1) == 1) {
                i13 = iA13 + 2;
            }
            if (iMax * 4 < i13 * 7 && i13 * 4 < iMax * 7) {
                iMax = Math.max(iMax, i13);
                i13 = iMax;
            }
            float f19 = iMax - 0.5f;
            float f20 = i13 - 0.5f;
            dVarD = cVar.d(p102n0.c.k((p176w5.b) cVar2.f27210H, iMax, i13, F.a.c(0.5f, 0.5f, f19, 0.5f, f19, f20, 0.5f, f20, oVar18.f29645a, oVar18.f29646b, oVar21.f29645a, oVar21.f29646b, oVar20.f29645a, oVar20.f29646b, oVar19.f29645a, oVar19.f29646b)));
            oVarArr = new o[]{oVar18, oVar19, oVar20, oVar21};
        } else {
            p176w5.b bVarI = lVar.i();
            int[] iArrE = bVarI.e();
            int[] iArrC = bVarI.c();
            if (iArrE == null || iArrC == null) {
                throw i.f29623I;
            }
            int i14 = iArrE[0];
            int i15 = iArrE[1];
            while (true) {
                i8 = bVarI.f31091G;
                if (i14 >= i8 || !bVarI.b(i14, i15)) {
                    break;
                }
                i14++;
            }
            if (i14 == i8) {
                throw i.f29623I;
            }
            int i16 = iArrE[0];
            int i17 = i14 - i16;
            if (i17 == 0) {
                throw i.f29623I;
            }
            int i18 = iArrE[1];
            int i19 = iArrC[1];
            int i20 = ((iArrC[0] - i16) + 1) / i17;
            int i21 = ((i19 - i18) + 1) / i17;
            if (i20 <= 0 || i21 <= 0) {
                throw i.f29623I;
            }
            int i22 = i17 / 2;
            int i23 = i18 + i22;
            int i24 = i16 + i22;
            p176w5.b bVar = new p176w5.b(i20, i21);
            for (int i25 = 0; i25 < i21; i25++) {
                int i26 = (i25 * i17) + i23;
                for (int i27 = 0; i27 < i20; i27++) {
                    if (bVarI.b((i27 * i17) + i24, i26)) {
                        bVar.f(i27, i25);
                    }
                }
            }
            dVarD = cVar.d(bVar);
            oVarArr = f31452b;
        }
        m mVar = new m(dVarD.f31101b, dVarD.f31100a, oVarArr, p130q5.a.f29583L);
        List list = dVarD.f31102c;
        if (list != null) {
            mVar.b(p130q5.n.f29635H, list);
        }
        String str = dVarD.f31103d;
        if (str != null) {
            mVar.b(p130q5.n.f29636I, str);
        }
        return mVar;
    }

    @Override // p130q5.k
    public final void a() {
    }
}
