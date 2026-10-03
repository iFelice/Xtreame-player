package C5;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f1650i = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f1651h = new int[4];

    @Override // C5.m
    public final int l(p176w5.a aVar, int[] iArr, StringBuilder sb) throws p130q5.i {
        int[] iArr2 = this.f1651h;
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
        for (int i13 = 0; i13 < 10; i13++) {
            if (i10 == f1650i[i13]) {
                sb.insert(0, (char) (i13 + 48));
                int i14 = m.n(aVar, i9, true, m.f1670e, new int[5])[1];
                for (int i15 = 0; i15 < 6 && i14 < i8; i15++) {
                    sb.append((char) (m.j(aVar, iArr2, i14, m.f1671f) + 48));
                    for (int i16 : iArr2) {
                        i14 += i16;
                    }
                }
                return i14;
            }
        }
        throw p130q5.i.f29623I;
    }

    @Override // C5.m
    public final p130q5.a p() {
        return p130q5.a.f29585N;
    }
}
