package M5;

import java.util.ArrayList;
import p130q5.p;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p176w5.b f4813a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f4819g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p f4821i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4814b = new ArrayList(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f4820h = new int[3];

    public b(p176w5.b bVar, int i8, int i9, int i10, int i11, float f8, p pVar) {
        this.f4813a = bVar;
        this.f4815c = i8;
        this.f4816d = i9;
        this.f4817e = i10;
        this.f4818f = i11;
        this.f4819g = f8;
        this.f4821i = pVar;
    }

    public final boolean a(int[] iArr) {
        float f8 = this.f4819g;
        float f9 = f8 / 2.0f;
        for (int i8 = 0; i8 < 3; i8++) {
            if (Math.abs(f8 - iArr[i8]) >= f9) {
                return false;
            }
        }
        return true;
    }

    public final a b(int i8, int i9, int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = i10 + i11 + i12;
        float f8 = (i9 - i12) - (i11 / 2.0f);
        int i14 = (int) f8;
        int i15 = i11 * 2;
        p176w5.b bVar = this.f4813a;
        int i16 = bVar.f31092H;
        int[] iArr2 = this.f4820h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        int i17 = i8;
        while (i17 >= 0 && bVar.b(i14, i17)) {
            int i18 = iArr2[1];
            if (i18 > i15) {
                break;
            }
            iArr2[1] = i18 + 1;
            i17--;
        }
        float f9 = Float.NaN;
        if (i17 >= 0 && iArr2[1] <= i15) {
            while (i17 >= 0 && !bVar.b(i14, i17)) {
                int i19 = iArr2[0];
                if (i19 > i15) {
                    break;
                }
                iArr2[0] = i19 + 1;
                i17--;
            }
            if (iArr2[0] <= i15) {
                int i20 = i8 + 1;
                while (i20 < i16 && bVar.b(i14, i20)) {
                    int i21 = iArr2[1];
                    if (i21 > i15) {
                        break;
                    }
                    iArr2[1] = i21 + 1;
                    i20++;
                }
                if (i20 != i16 && iArr2[1] <= i15) {
                    while (i20 < i16 && !bVar.b(i14, i20)) {
                        int i22 = iArr2[2];
                        if (i22 > i15) {
                            break;
                        }
                        iArr2[2] = i22 + 1;
                        i20++;
                    }
                    int i23 = iArr2[2];
                    if (i23 <= i15 && Math.abs(((iArr2[0] + iArr2[1]) + i23) - i13) * 5 < i13 * 2 && a(iArr2)) {
                        f9 = (i20 - iArr2[2]) - (iArr2[1] / 2.0f);
                    }
                }
            }
        }
        if (Float.isNaN(f9)) {
            return null;
        }
        float f10 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        ArrayList<a> arrayList = this.f4814b;
        for (a aVar : arrayList) {
            if (Math.abs(f9 - aVar.f29646b) <= f10) {
                float f11 = aVar.f29645a;
                if (Math.abs(f8 - f11) <= f10) {
                    float f12 = aVar.f4812c;
                    float fAbs = Math.abs(f10 - f12);
                    if (fAbs <= 1.0f || fAbs <= f12) {
                        return new a((f11 + f8) / 2.0f, (aVar.f29646b + f9) / 2.0f, (f12 + f10) / 2.0f);
                    }
                } else {
                    continue;
                }
            }
        }
        a aVar2 = new a(f8, f9, f10);
        arrayList.add(aVar2);
        p pVar = this.f4821i;
        if (pVar == null) {
            return null;
        }
        pVar.a(aVar2);
        return null;
    }
}
