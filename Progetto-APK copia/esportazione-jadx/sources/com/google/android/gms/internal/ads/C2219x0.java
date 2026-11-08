package com.google.android.gms.internal.ads;

import W0.C0372e;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2219x0 extends AbstractC1666mI {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1534jr f21781H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1534jr f21782I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f21783J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f21784K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f21785L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f21786M;

    public C2219x0(InterfaceC1234e0 interfaceC1234e0) {
        super(interfaceC1234e0);
        this.f21781H = new C1534jr(AbstractC2008sy.f21015a);
        this.f21782I = new C1534jr(4);
    }

    public final boolean a1(C1534jr c1534jr) throws C2167w0 {
        int iW = c1534jr.w();
        int i8 = iW >> 4;
        int i9 = iW & 15;
        if (i9 != 7) {
            throw new C2167w0(p000a.r.f("Video format not supported: ", i9));
        }
        this.f21786M = i8;
        return i8 != 5;
    }

    public final boolean b1(long j8, C1534jr c1534jr) {
        int i8;
        int iW = c1534jr.w();
        byte[] bArr = c1534jr.f19515a;
        int i9 = c1534jr.f19516b;
        int i10 = bArr[i9] & 255;
        int i11 = bArr[i9 + 1] & 255;
        c1534jr.f19516b = i9 + 3;
        long j9 = (bArr[i9 + 2] & 255) | ((i10 << 24) >> 8) | (i11 << 8);
        Object obj = this.f19929G;
        if (iW == 0) {
            if (!this.f21784K) {
                byte[] bArr2 = new byte[c1534jr.o()];
                C1534jr c1534jr2 = new C1534jr(bArr2);
                c1534jr.f(0, bArr2, c1534jr.o());
                C0372e c0372eB = C0372e.b(c1534jr2);
                this.f21783J = c0372eB.f7394b;
                K k8 = new K();
                k8.f("video/avc");
                k8.f14268i = c0372eB.f7404l;
                k8.f14277r = c0372eB.f7395c;
                k8.f14278s = c0372eB.f7396d;
                k8.f14281v = c0372eB.f7403k;
                k8.f14274o = c0372eB.f7393a;
                ((InterfaceC1234e0) obj).d(new C1804p0(k8));
                this.f21784K = true;
                return false;
            }
        } else if (iW == 1 && this.f21784K) {
            int i12 = this.f21786M == 1 ? 1 : 0;
            if (this.f21785L) {
                i8 = i12;
            } else if (i12 != 0) {
                i8 = 1;
            }
            C1534jr c1534jr3 = this.f21782I;
            byte[] bArr3 = c1534jr3.f19515a;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i13 = 4 - this.f21783J;
            int i14 = 0;
            while (c1534jr.o() > 0) {
                c1534jr.f(i13, c1534jr3.f19515a, this.f21783J);
                c1534jr3.j(0);
                int iZ = c1534jr3.z();
                C1534jr c1534jr4 = this.f21781H;
                c1534jr4.j(0);
                InterfaceC1234e0 interfaceC1234e0 = (InterfaceC1234e0) obj;
                interfaceC1234e0.f(4, c1534jr4);
                interfaceC1234e0.f(iZ, c1534jr);
                i14 = i14 + 4 + iZ;
            }
            ((InterfaceC1234e0) obj).b((j9 * 1000) + j8, i8, i14, 0, null);
            this.f21785L = true;
            return true;
        }
        return false;
    }
}
