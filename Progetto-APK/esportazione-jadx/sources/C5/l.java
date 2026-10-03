package C5;

import java.util.EnumMap;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1666c = {1, 1, 2};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.l f1667a = new p096m2.l(24);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f1668b = new k();

    public final p130q5.m a(int i8, int i9, p176w5.a aVar) throws p130q5.i {
        EnumMap enumMap;
        int i10 = 0;
        int[] iArrN = m.n(aVar, i9, false, f1666c, new int[3]);
        try {
            return this.f1668b.a(i8, aVar, iArrN);
        } catch (p130q5.l unused) {
            p096m2.l lVar = this.f1667a;
            StringBuilder sb = (StringBuilder) lVar.f27232I;
            sb.setLength(0);
            int[] iArr = (int[]) lVar.f27231H;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            int i11 = aVar.f31090H;
            int iF = iArrN[1];
            int i12 = 0;
            int i13 = 0;
            while (i12 < 2 && iF < i11) {
                int iJ = m.j(aVar, iArr, iF, m.f1672g);
                sb.append((char) ((iJ % 10) + 48));
                int length = iArr.length;
                while (i10 < length) {
                    iF += iArr[i10];
                    i10++;
                }
                if (iJ >= 10) {
                    i13 |= 1 << (1 - i12);
                }
                if (i12 != 1) {
                    iF = aVar.f(aVar.e(iF));
                }
                i12++;
                i10 = 0;
            }
            if (sb.length() != 2) {
                throw p130q5.i.f29623I;
            }
            if (Integer.parseInt(sb.toString()) % 4 != i13) {
                throw p130q5.i.f29623I;
            }
            String string = sb.toString();
            if (string.length() != 2) {
                enumMap = null;
            } else {
                enumMap = new EnumMap(p130q5.n.class);
                enumMap.put(p130q5.n.f29637J, Integer.valueOf(string));
            }
            float f8 = i8;
            p130q5.m mVar = new p130q5.m(string, null, new o[]{new o((iArrN[0] + iArrN[1]) / 2.0f, f8), new o(iF, f8)}, p130q5.a.f29594W);
            if (enumMap != null) {
                mVar.a(enumMap);
            }
            return mVar;
        }
    }
}
