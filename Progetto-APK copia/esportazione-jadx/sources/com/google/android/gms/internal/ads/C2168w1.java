package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2168w1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1234e0 f21623a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public G1 f21626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C2012t1 f21627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f21628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f21629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f21631i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f21634l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final F1 f21624b = new F1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f21625c = new C1534jr();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1534jr f21632j = new C1534jr(1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C1534jr f21633k = new C1534jr();

    public C2168w1(InterfaceC1234e0 interfaceC1234e0, G1 g8, C2012t1 c2012t1) {
        this.f21623a = interfaceC1234e0;
        this.f21626d = g8;
        this.f21627e = c2012t1;
        this.f21626d = g8;
        this.f21627e = c2012t1;
        interfaceC1234e0.d(g8.f13462a.f12743f);
        d();
    }

    public final int a() {
        int i8;
        if (this.f21634l) {
            i8 = this.f21624b.f13283j[this.f21628f] ? 1 : 0;
        } else {
            i8 = this.f21626d.f13468g[this.f21628f];
        }
        return c() != null ? i8 | 1073741824 : i8;
    }

    public final int b(int i8, int i9) {
        C1534jr c1534jr;
        E1 e1C = c();
        if (e1C == null) {
            return 0;
        }
        F1 f8 = this.f21624b;
        int length = e1C.f12927d;
        if (length != 0) {
            c1534jr = f8.f13287n;
        } else {
            int i10 = Et.f13234a;
            byte[] bArr = e1C.f12928e;
            length = bArr.length;
            C1534jr c1534jr2 = this.f21633k;
            c1534jr2.h(length, bArr);
            c1534jr = c1534jr2;
        }
        boolean z7 = f8.f13284k && f8.f13285l[this.f21628f];
        boolean z8 = z7 || i9 != 0;
        int i11 = true != z8 ? 0 : 128;
        C1534jr c1534jr3 = this.f21632j;
        c1534jr3.f19515a[0] = (byte) (i11 | length);
        c1534jr3.j(0);
        InterfaceC1234e0 interfaceC1234e0 = this.f21623a;
        interfaceC1234e0.a(c1534jr3, 1, 1);
        interfaceC1234e0.a(c1534jr, length, 1);
        if (!z8) {
            return length + 1;
        }
        C1534jr c1534jr4 = this.f21625c;
        if (!z7) {
            c1534jr4.g(8);
            byte[] bArr2 = c1534jr4.f19515a;
            bArr2[0] = 0;
            bArr2[1] = 1;
            bArr2[2] = 0;
            bArr2[3] = (byte) i9;
            bArr2[4] = (byte) ((i8 >> 24) & 255);
            bArr2[5] = (byte) ((i8 >> 16) & 255);
            bArr2[6] = (byte) ((i8 >> 8) & 255);
            bArr2[7] = (byte) (i8 & 255);
            interfaceC1234e0.a(c1534jr4, 8, 1);
            return length + 9;
        }
        int i12 = length + 1;
        C1534jr c1534jr5 = f8.f13287n;
        int iA = c1534jr5.A();
        c1534jr5.k(-2);
        int i13 = (iA * 6) + 2;
        if (i9 != 0) {
            c1534jr4.g(i13);
            byte[] bArr3 = c1534jr4.f19515a;
            c1534jr5.f(0, bArr3, i13);
            int i14 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i9;
            bArr3[2] = (byte) ((i14 >> 8) & 255);
            bArr3[3] = (byte) (i14 & 255);
        } else {
            c1534jr4 = c1534jr5;
        }
        interfaceC1234e0.a(c1534jr4, i13, 1);
        return i12 + i13;
    }

    public final E1 c() {
        if (!this.f21634l) {
            return null;
        }
        F1 f8 = this.f21624b;
        C2012t1 c2012t1 = f8.f13274a;
        int i8 = Et.f13234a;
        int i9 = c2012t1.f21025a;
        E1 e8 = f8.f13286m;
        if (e8 == null) {
            e8 = this.f21626d.f13462a.f12748k[i9];
        }
        if (e8 == null || !e8.f12924a) {
            return null;
        }
        return e8;
    }

    public final void d() {
        F1 f8 = this.f21624b;
        f8.f13277d = 0;
        f8.f13289p = 0L;
        f8.f13290q = false;
        f8.f13284k = false;
        f8.f13288o = false;
        f8.f13286m = null;
        this.f21628f = 0;
        this.f21630h = 0;
        this.f21629g = 0;
        this.f21631i = 0;
        this.f21634l = false;
    }

    public final boolean e() {
        this.f21628f++;
        if (!this.f21634l) {
            return false;
        }
        int i8 = this.f21629g + 1;
        this.f21629g = i8;
        int[] iArr = this.f21624b.f13280g;
        int i9 = this.f21630h;
        if (i8 != iArr[i9]) {
            return true;
        }
        this.f21630h = i9 + 1;
        this.f21629g = 0;
        return false;
    }
}
