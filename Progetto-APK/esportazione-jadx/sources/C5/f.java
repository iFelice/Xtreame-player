package C5;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f1652h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f1653i;

    public f(int i8) {
        this.f1652h = i8;
        if (i8 != 1) {
            this.f1653i = new int[4];
        } else {
            this.f1653i = new e();
        }
    }

    public static p130q5.m q(p130q5.m mVar) throws p130q5.e {
        String str = mVar.f29629a;
        if (str.charAt(0) != '0') {
            throw p130q5.e.a();
        }
        p130q5.m mVar2 = new p130q5.m(str.substring(1), null, mVar.f29631c, p130q5.a.f29592U);
        Map map = mVar.f29633e;
        if (map != null) {
            mVar2.a(map);
        }
        return mVar2;
    }

    @Override // C5.j, p130q5.k
    public final p130q5.m b(p096m2.l lVar) {
        switch (this.f1652h) {
            case 1:
                return q(((m) this.f1653i).b(lVar));
            default:
                return c(lVar, null);
        }
    }

    @Override // C5.j, p130q5.k
    public final p130q5.m c(p096m2.l lVar, Map map) {
        switch (this.f1652h) {
            case 1:
                return q(((m) this.f1653i).c(lVar, map));
            default:
                return super.c(lVar, map);
        }
    }

    @Override // C5.m, C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) {
        switch (this.f1652h) {
            case 1:
                return q(((m) this.f1653i).d(i8, aVar, map));
            default:
                return super.d(i8, aVar, map);
        }
    }

    @Override // C5.m
    public final int l(p176w5.a aVar, int[] iArr, StringBuilder sb) {
        int[][] iArr2;
        int i8 = this.f1652h;
        Object obj = this.f1653i;
        switch (i8) {
            case 0:
                int[] iArr3 = (int[]) obj;
                iArr3[0] = 0;
                iArr3[1] = 0;
                iArr3[2] = 0;
                iArr3[3] = 0;
                int i9 = aVar.f31090H;
                int i10 = iArr[1];
                int i11 = 0;
                while (true) {
                    iArr2 = m.f1671f;
                    if (i11 < 4 && i10 < i9) {
                        sb.append((char) (m.j(aVar, iArr3, i10, iArr2) + 48));
                        for (int i12 : iArr3) {
                            i10 += i12;
                        }
                        i11++;
                    }
                }
                int i13 = m.n(aVar, i10, true, m.f1670e, new int[5])[1];
                for (int i14 = 0; i14 < 4 && i13 < i9; i14++) {
                    sb.append((char) (m.j(aVar, iArr3, i13, iArr2) + 48));
                    for (int i15 : iArr3) {
                        i13 += i15;
                    }
                }
                return i13;
            default:
                return ((m) obj).l(aVar, iArr, sb);
        }
    }

    @Override // C5.m
    public final p130q5.m m(int i8, p176w5.a aVar, int[] iArr, Map map) {
        switch (this.f1652h) {
            case 1:
                return q(((m) this.f1653i).m(i8, aVar, iArr, map));
            default:
                return super.m(i8, aVar, iArr, map);
        }
    }

    @Override // C5.m
    public final p130q5.a p() {
        switch (this.f1652h) {
            case 0:
                return p130q5.a.f29584M;
            default:
                return p130q5.a.f29592U;
        }
    }
}
