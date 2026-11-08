package p178x;

import p027d2.v;
import p130q5.i;
import p130q5.o;
import p176w5.b;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f31158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31160f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f31161g;

    public n(b bVar, int i8, int i9, int i10) throws i {
        this.f31161g = bVar;
        int i11 = bVar.f31092H;
        this.f31155a = i11;
        int i12 = bVar.f31091G;
        this.f31156b = i12;
        int i13 = i8 / 2;
        int i14 = i9 - i13;
        this.f31157c = i14;
        int i15 = i9 + i13;
        this.f31158d = i15;
        int i16 = i10 - i13;
        this.f31160f = i16;
        int i17 = i10 + i13;
        this.f31159e = i17;
        if (i16 < 0 || i14 < 0 || i17 >= i11 || i15 >= i12) {
            throw i.f29623I;
        }
    }

    public final boolean a(int i8, int i9, int i10, boolean z7) {
        Object obj = this.f31161g;
        if (z7) {
            while (i8 <= i9) {
                if (((b) obj).b(i8, i10)) {
                    return true;
                }
                i8++;
            }
            return false;
        }
        while (i8 <= i9) {
            if (((b) obj).b(i10, i8)) {
                return true;
            }
            i8++;
        }
        return false;
    }

    public final o[] b() throws i {
        int i8;
        boolean z7;
        int i9;
        int i10 = this.f31157c;
        int i11 = this.f31158d;
        int i12 = this.f31160f;
        int i13 = this.f31159e;
        boolean z8 = true;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (true) {
            i8 = this.f31156b;
            if (!z8) {
                z7 = false;
                break;
            }
            boolean zA = true;
            boolean z13 = false;
            while (true) {
                if ((!zA && z9) || i11 >= i8) {
                    break;
                }
                zA = a(i12, i13, i11, false);
                if (zA) {
                    i11++;
                    z9 = true;
                    z13 = true;
                } else if (!z9) {
                    i11++;
                }
            }
            if (i11 < i8) {
                boolean zA2 = true;
                while (true) {
                    i9 = this.f31155a;
                    if ((!zA2 && z10) || i13 >= i9) {
                        break;
                    }
                    zA2 = a(i10, i11, i13, true);
                    if (zA2) {
                        i13++;
                        z10 = true;
                        z13 = true;
                    } else if (!z10) {
                        i13++;
                    }
                }
                if (i13 < i9) {
                    boolean zA3 = true;
                    while (true) {
                        if ((!zA3 && z11) || i10 < 0) {
                            break;
                        }
                        zA3 = a(i12, i13, i10, false);
                        if (zA3) {
                            i10--;
                            z11 = true;
                            z13 = true;
                        } else if (!z11) {
                            i10--;
                        }
                    }
                    if (i10 >= 0) {
                        z8 = z13;
                        boolean zA4 = true;
                        while (true) {
                            if ((!zA4 && z12) || i12 < 0) {
                                break;
                            }
                            zA4 = a(i10, i11, i12, true);
                            if (zA4) {
                                i12--;
                                z8 = true;
                                z12 = true;
                            } else if (!z12) {
                                i12--;
                            }
                        }
                        if (i12 < 0) {
                        }
                    }
                }
            }
            z7 = true;
            break;
        }
        if (z7) {
            throw i.f29623I;
        }
        int i14 = i11 - i10;
        o oVarC = null;
        for (int i15 = 1; oVarC == null && i15 < i14; i15++) {
            oVarC = c(i10, i13 - i15, i10 + i15, i13);
        }
        if (oVarC == null) {
            throw i.f29623I;
        }
        o oVarC2 = null;
        for (int i16 = 1; oVarC2 == null && i16 < i14; i16++) {
            oVarC2 = c(i10, i12 + i16, i10 + i16, i12);
        }
        if (oVarC2 == null) {
            throw i.f29623I;
        }
        o oVarC3 = null;
        for (int i17 = 1; oVarC3 == null && i17 < i14; i17++) {
            oVarC3 = c(i11, i12 + i17, i11 - i17, i12);
        }
        if (oVarC3 == null) {
            throw i.f29623I;
        }
        o oVarC4 = null;
        for (int i18 = 1; oVarC4 == null && i18 < i14; i18++) {
            oVarC4 = c(i11, i13 - i18, i11 - i18, i13);
        }
        if (oVarC4 == null) {
            throw i.f29623I;
        }
        float f8 = i8 / 2.0f;
        float f9 = oVarC4.f29645a;
        float f10 = oVarC.f29645a;
        float f11 = oVarC3.f29645a;
        float f12 = oVarC2.f29645a;
        float f13 = oVarC4.f29646b;
        float f14 = oVarC.f29646b;
        float f15 = oVarC3.f29646b;
        float f16 = oVarC2.f29646b;
        return f9 < f8 ? new o[]{new o(f12 - 1.0f, f16 + 1.0f), new o(f10 + 1.0f, f14 + 1.0f), new o(f11 - 1.0f, f15 - 1.0f), new o(f9 + 1.0f, f13 - 1.0f)} : new o[]{new o(f12 + 1.0f, f16 + 1.0f), new o(f10 + 1.0f, f14 - 1.0f), new o(f11 - 1.0f, f15 + 1.0f), new o(f9 - 1.0f, f13 - 1.0f)};
    }

    public final o c(float f8, float f9, float f10, float f11) {
        int iS = v.s(v.h(f8, f9, f10, f11));
        float f12 = iS;
        float f13 = (f10 - f8) / f12;
        float f14 = (f11 - f9) / f12;
        for (int i8 = 0; i8 < iS; i8++) {
            float f15 = i8;
            int iS2 = v.s((f15 * f13) + f8);
            int iS3 = v.s((f15 * f14) + f9);
            if (((b) this.f31161g).b(iS2, iS3)) {
                return new o(iS2, iS3);
            }
        }
        return null;
    }

    public n(b bVar) {
        this(bVar, 10, bVar.f31091G / 2, bVar.f31092H / 2);
    }
}
