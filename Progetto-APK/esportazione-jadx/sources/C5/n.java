package C5;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f1676i = {1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[][] f1677j = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f1678h = new int[4];

    @Override // C5.m
    public final boolean i(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c8 = cArr[5];
        switch (c8) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c8);
                sb.append("0000");
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append("0000");
                sb.append(c8);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return super.i(sb.toString());
    }

    @Override // C5.m
    public final int[] k(int i8, p176w5.a aVar) {
        return m.n(aVar, i8, true, f1676i, new int[6]);
    }

    @Override // C5.m
    public final int l(p176w5.a aVar, int[] iArr, StringBuilder sb) throws p130q5.i {
        int[] iArr2 = this.f1678h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i8 = aVar.f31090H;
        int i9 = iArr[1];
        int i10 = 0;
        for (int i11 = 0; i11 < 6 && i9 < i8; i11++) {
            int iJ = m.j(aVar, iArr2, i9, m.f1672g);
            sb.append((char) ((iJ % 10) + 48));
            for (int i12 : iArr2) {
                i9 += i12;
            }
            if (iJ >= 10) {
                i10 |= 1 << (5 - i11);
            }
        }
        for (int i13 = 0; i13 <= 1; i13++) {
            for (int i14 = 0; i14 < 10; i14++) {
                if (i10 == f1677j[i13][i14]) {
                    sb.insert(0, (char) (i13 + 48));
                    sb.append((char) (i14 + 48));
                    return i9;
                }
            }
        }
        throw p130q5.i.f29623I;
    }

    @Override // C5.m
    public final p130q5.a p() {
        return p130q5.a.f29593V;
    }
}
