package p198z5;

import K.k;
import N.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d[] f31918h = {new d(1, 10, 10, 8, 8, new k(5, new r(1, 3, 0), 0)), new d(2, 12, 12, 10, 10, new k(7, new r(1, 5, 0), 0)), new d(3, 14, 14, 12, 12, new k(10, new r(1, 8, 0), 0)), new d(4, 16, 16, 14, 14, new k(12, new r(1, 12, 0), 0)), new d(5, 18, 18, 16, 16, new k(14, new r(1, 18, 0), 0)), new d(6, 20, 20, 18, 18, new k(18, new r(1, 22, 0), 0)), new d(7, 22, 22, 20, 20, new k(20, new r(1, 30, 0), 0)), new d(8, 24, 24, 22, 22, new k(24, new r(1, 36, 0), 0)), new d(9, 26, 26, 24, 24, new k(28, new r(1, 44, 0), 0)), new d(10, 32, 32, 14, 14, new k(36, new r(1, 62, 0), 0)), new d(11, 36, 36, 16, 16, new k(42, new r(1, 86, 0), 0)), new d(12, 40, 40, 18, 18, new k(48, new r(1, 114, 0), 0)), new d(13, 44, 44, 20, 20, new k(56, new r(1, 144, 0), 0)), new d(14, 48, 48, 22, 22, new k(68, new r(1, 174, 0), 0)), new d(15, 52, 52, 24, 24, new k(42, new r(2, 102, 0), 0)), new d(16, 64, 64, 14, 14, new k(56, new r(2, 140, 0), 0)), new d(17, 72, 72, 16, 16, new k(36, new r(4, 92, 0), 0)), new d(18, 80, 80, 18, 18, new k(48, new r(4, 114, 0), 0)), new d(19, 88, 88, 20, 20, new k(56, new r(4, 144, 0), 0)), new d(20, 96, 96, 22, 22, new k(68, new r(4, 174, 0), 0)), new d(21, 104, 104, 24, 24, new k(56, new r(6, 136, 0), 0)), new d(22, 120, 120, 18, 18, new k(68, new r(6, 175, 0), 0)), new d(23, 132, 132, 20, 20, new k(62, new r(8, 163, 0), 0)), new d(24, 144, 144, 22, 22, new k(new r(8, 156, 0), new r(2, 155, 0))), new d(25, 8, 18, 6, 16, new k(7, new r(1, 5, 0), 0)), new d(26, 8, 32, 6, 14, new k(11, new r(1, 10, 0), 0)), new d(27, 12, 26, 10, 24, new k(14, new r(1, 16, 0), 0)), new d(28, 12, 36, 10, 16, new k(18, new r(1, 22, 0), 0)), new d(29, 16, 36, 14, 16, new k(24, new r(1, 32, 0), 0)), new d(30, 16, 48, 14, 22, new k(28, new r(1, 49, 0), 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f31919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f31922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final k f31924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f31925g;

    public d(int i8, int i9, int i10, int i11, int i12, k kVar) {
        int i13;
        this.f31919a = i8;
        this.f31920b = i9;
        this.f31921c = i10;
        this.f31922d = i11;
        this.f31923e = i12;
        this.f31924f = kVar;
        int i14 = kVar.f4294H;
        int i15 = 0;
        for (r rVar : (r[]) kVar.f4295I) {
            int iA = rVar.a();
            switch (rVar.f4918G) {
                case 12:
                    i13 = rVar.f4920I;
                    break;
                default:
                    i13 = rVar.f4920I;
                    break;
            }
            i15 += (i13 + i14) * iA;
        }
        this.f31925g = i15;
    }

    public final String toString() {
        return String.valueOf(this.f31919a);
    }
}
