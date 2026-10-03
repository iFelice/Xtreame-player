package W0;

import java.util.Collections;
import java.util.List;
import p094m0.P;
import p117p0.AbstractC3169g;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f7305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7310f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f7311g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f7313i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7314j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f7315k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float f7316l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f7317m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f7318n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p125q0.m f7319o;

    public B(List list, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f8, int i18, String str, p125q0.m mVar) {
        this.f7305a = list;
        this.f7306b = i8;
        this.f7307c = i9;
        this.f7308d = i10;
        this.f7309e = i11;
        this.f7310f = i12;
        this.f7311g = i13;
        this.f7312h = i14;
        this.f7313i = i15;
        this.f7314j = i16;
        this.f7315k = i17;
        this.f7316l = f8;
        this.f7317m = i18;
        this.f7318n = str;
        this.f7319o = mVar;
    }

    public static B a(p117p0.E e8, boolean z7, p125q0.m mVar) {
        F2.G gH;
        int i8 = 4;
        try {
            if (z7) {
                e8.M(4);
            } else {
                e8.M(21);
            }
            int iZ = e8.z() & 3;
            int iZ2 = e8.z();
            int iE = e8.e();
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < iZ2; i11++) {
                e8.M(1);
                int iF = e8.F();
                for (int i12 = 0; i12 < iF; i12++) {
                    int iF2 = e8.F();
                    i10 += iF2 + 4;
                    e8.M(iF2);
                }
            }
            e8.L(iE);
            byte[] bArr = new byte[i10];
            p125q0.m mVar2 = mVar;
            String strA = null;
            int i13 = 0;
            int i14 = 0;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            int i23 = -1;
            float f8 = 1.0f;
            int i24 = -1;
            while (i13 < iZ2) {
                int iZ3 = e8.z() & 63;
                int iF3 = e8.F();
                p125q0.m mVarJ = mVar2;
                int i25 = 0;
                while (i25 < iF3) {
                    int iF4 = e8.F();
                    int i26 = iZ2;
                    System.arraycopy(p125q0.p.f29508a, i9, bArr, i14, i8);
                    int i27 = i14 + 4;
                    System.arraycopy(e8.d(), e8.e(), bArr, i27, iF4);
                    if (iZ3 == 32 && i25 == 0) {
                        mVarJ = p125q0.p.j(i27, bArr, i27 + iF4);
                        iF3 = iF3;
                    } else if (iZ3 == 33 && i25 == 0) {
                        p125q0.k kVarI = p125q0.p.i(bArr, i27, i27 + iF4, mVarJ);
                        int i28 = kVarI.f29467a + 1;
                        int i29 = kVarI.f29473g;
                        int i30 = kVarI.f29474h;
                        i18 = kVarI.f29469c + 8;
                        i19 = kVarI.f29470d + 8;
                        int i31 = kVarI.f29477k;
                        int i32 = kVarI.f29478l;
                        int i33 = kVarI.f29479m;
                        float f9 = kVarI.f29475i;
                        int i34 = kVarI.f29476j;
                        p125q0.i iVar = kVarI.f29468b;
                        if (iVar != null) {
                            strA = AbstractC3169g.a(iVar.f29456a, iVar.f29457b, iVar.f29458c, iVar.f29459d, iVar.f29460e, iVar.f29461f);
                        }
                        i15 = i28;
                        i16 = i29;
                        i9 = 0;
                        i21 = i32;
                        i17 = i30;
                        i24 = i34;
                        i22 = i33;
                        i20 = i31;
                        f8 = f9;
                    } else {
                        iF3 = iF3;
                        if (iZ3 != 39 || i25 != 0 || (gH = p125q0.p.h(i27, bArr, i27 + iF4)) == null || mVarJ == null) {
                            i9 = 0;
                        } else {
                            i9 = 0;
                            i23 = gH.f3116G == ((p125q0.h) mVarJ.f29483a.get(0)).f29455b ? 4 : 5;
                        }
                    }
                    i14 = i27 + iF4;
                    e8.M(iF4);
                    i25++;
                    iZ2 = i26;
                    iF3 = iF3;
                    i8 = 4;
                }
                i13++;
                mVar2 = mVarJ;
                i8 = 4;
            }
            return new B(i10 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iZ + 1, i15, i16, i17, i18, i19, i20, i21, i22, i23, f8, i24, strA, mVar2);
        } catch (ArrayIndexOutOfBoundsException e9) {
            throw P.a("Error parsing".concat(z7 ? "L-HEVC config" : "HEVC config"), e9);
        }
    }
}
