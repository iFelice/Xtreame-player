package p111o1;

import W0.L;
import p094m0.C3136t;
import p117p0.E;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f27697a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f27700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f f27701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f27703g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f27704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f27705i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C3136t f27706j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f27709m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f27698b = new r();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f27699c = new E();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final E f27707k = new E(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final E f27708l = new E();

    public h(L l4, s sVar, f fVar, C3136t c3136t) {
        this.f27697a = l4;
        this.f27700d = sVar;
        this.f27701e = fVar;
        this.f27706j = c3136t;
        this.f27700d = sVar;
        this.f27701e = fVar;
        l4.b(c3136t);
        e();
    }

    public final int a() {
        int i8;
        if (this.f27709m) {
            i8 = this.f27698b.f27824j[this.f27702f] ? 1 : 0;
        } else {
            i8 = this.f27700d.f27838g[this.f27702f];
        }
        return b() != null ? i8 | 1073741824 : i8;
    }

    public final q b() {
        if (!this.f27709m) {
            return null;
        }
        r rVar = this.f27698b;
        f fVar = rVar.f27815a;
        String str = M.f28050a;
        int i8 = fVar.f27690a;
        q qVar = rVar.f27827m;
        if (qVar == null) {
            q[] qVarArr = this.f27700d.f27832a.f27809l;
            qVar = qVarArr == null ? null : qVarArr[i8];
        }
        if (qVar == null || !qVar.f27810a) {
            return null;
        }
        return qVar;
    }

    public final boolean c() {
        this.f27702f++;
        if (!this.f27709m) {
            return false;
        }
        int i8 = this.f27703g + 1;
        this.f27703g = i8;
        int[] iArr = this.f27698b.f27821g;
        int i9 = this.f27704h;
        if (i8 != iArr[i9]) {
            return true;
        }
        this.f27704h = i9 + 1;
        this.f27703g = 0;
        return false;
    }

    public final int d(int i8, int i9) {
        E e8;
        q qVarB = b();
        if (qVarB == null) {
            return 0;
        }
        r rVar = this.f27698b;
        int length = qVarB.f27813d;
        if (length != 0) {
            e8 = rVar.f27828n;
        } else {
            String str = M.f28050a;
            byte[] bArr = qVarB.f27814e;
            int length2 = bArr.length;
            E e9 = this.f27708l;
            e9.J(length2, bArr);
            length = bArr.length;
            e8 = e9;
        }
        boolean z7 = rVar.f27825k && rVar.f27826l[this.f27702f];
        boolean z8 = z7 || i9 != 0;
        E e10 = this.f27707k;
        e10.f28035a[0] = (byte) ((z8 ? 128 : 0) | length);
        e10.L(0);
        L l4 = this.f27697a;
        l4.a(1, 1, e10);
        l4.a(length, 1, e8);
        if (!z8) {
            return length + 1;
        }
        E e11 = this.f27699c;
        if (!z7) {
            e11.I(8);
            byte[] bArr2 = e11.f28035a;
            bArr2[0] = 0;
            bArr2[1] = 1;
            bArr2[2] = (byte) 0;
            bArr2[3] = (byte) (i9 & 255);
            bArr2[4] = (byte) ((i8 >> 24) & 255);
            bArr2[5] = (byte) ((i8 >> 16) & 255);
            bArr2[6] = (byte) ((i8 >> 8) & 255);
            bArr2[7] = (byte) (i8 & 255);
            l4.a(8, 1, e11);
            return length + 9;
        }
        E e12 = rVar.f27828n;
        int iF = e12.F();
        e12.M(-2);
        int i10 = (iF * 6) + 2;
        if (i9 != 0) {
            e11.I(i10);
            byte[] bArr3 = e11.f28035a;
            e12.j(0, bArr3, i10);
            int i11 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i9;
            bArr3[2] = (byte) ((i11 >> 8) & 255);
            bArr3[3] = (byte) (i11 & 255);
        } else {
            e11 = e12;
        }
        l4.a(i10, 1, e11);
        return length + 1 + i10;
    }

    public final void e() {
        r rVar = this.f27698b;
        rVar.f27818d = 0;
        rVar.f27830p = 0L;
        rVar.f27831q = false;
        rVar.f27825k = false;
        rVar.f27829o = false;
        rVar.f27827m = null;
        this.f27702f = 0;
        this.f27704h = 0;
        this.f27703g = 0;
        this.f27705i = 0;
        this.f27709m = false;
    }
}
