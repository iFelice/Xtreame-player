package C5;

import java.util.EnumMap;
import okhttp3.HttpUrl;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1663c = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1664a = new int[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f1665b = new StringBuilder();

    /* JADX WARN: Code duplicated, block: B:30:0x0096  */
    /* JADX WARN: Code duplicated, block: B:67:0x0121  */
    public final p130q5.m a(int i8, p176w5.a aVar, int[] iArr) throws p130q5.i {
        String str;
        String str2;
        EnumMap enumMap;
        StringBuilder sb = this.f1665b;
        int i9 = 0;
        sb.setLength(0);
        int[] iArr2 = this.f1664a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i10 = aVar.f31090H;
        int iF = iArr[1];
        int i11 = 0;
        int i12 = 0;
        while (i11 < 5 && iF < i10) {
            int iJ = m.j(aVar, iArr2, iF, m.f1672g);
            sb.append((char) ((iJ % 10) + 48));
            int length = iArr2.length;
            while (i9 < length) {
                iF += iArr2[i9];
                i9++;
            }
            if (iJ >= 10) {
                i12 |= 1 << (4 - i11);
            }
            if (i11 != 4) {
                iF = aVar.f(aVar.e(iF));
            }
            i11++;
            i9 = 0;
        }
        if (sb.length() != 5) {
            throw p130q5.i.f29623I;
        }
        for (int i13 = 0; i13 < 10; i13++) {
            if (i12 == f1663c[i13]) {
                String string = sb.toString();
                int length2 = string.length();
                int iCharAt = 0;
                for (int i14 = length2 - 2; i14 >= 0; i14 -= 2) {
                    iCharAt += string.charAt(i14) - '0';
                }
                int iCharAt2 = iCharAt * 3;
                for (int i15 = length2 - 1; i15 >= 0; i15 -= 2) {
                    iCharAt2 += string.charAt(i15) - '0';
                }
                if ((iCharAt2 * 3) % 10 != i13) {
                    throw p130q5.i.f29623I;
                }
                String string2 = sb.toString();
                if (string2.length() == 5) {
                    char cCharAt = string2.charAt(0);
                    if (cCharAt == '0') {
                        str = "£";
                    } else if (cCharAt != '5') {
                        str = HttpUrl.FRAGMENT_ENCODE_SET;
                        if (cCharAt == '9') {
                            switch (string2) {
                                case "90000":
                                    str2 = null;
                                    break;
                                case "99990":
                                    str2 = "Used";
                                    break;
                                case "99991":
                                    str2 = "0.00";
                                    break;
                            }
                        }
                        if (str2 == null) {
                            enumMap = null;
                        } else {
                            enumMap = new EnumMap(p130q5.n.class);
                            enumMap.put(p130q5.n.f29638K, str2);
                        }
                    } else {
                        str = "$";
                    }
                    int i16 = Integer.parseInt(string2.substring(1));
                    String strValueOf = String.valueOf(i16 / 100);
                    int i17 = i16 % 100;
                    str2 = str + strValueOf + '.' + (i17 < 10 ? "0".concat(String.valueOf(i17)) : String.valueOf(i17));
                    if (str2 == null) {
                        enumMap = null;
                    } else {
                        enumMap = new EnumMap(p130q5.n.class);
                        enumMap.put(p130q5.n.f29638K, str2);
                    }
                } else {
                    enumMap = null;
                }
                float f8 = i8;
                p130q5.m mVar = new p130q5.m(string2, null, new o[]{new o((iArr[0] + iArr[1]) / 2.0f, f8), new o(iF, f8)}, p130q5.a.f29594W);
                if (enumMap != null) {
                    mVar.a(enumMap);
                }
                return mVar;
            }
        }
        throw p130q5.i.f29623I;
    }
}
