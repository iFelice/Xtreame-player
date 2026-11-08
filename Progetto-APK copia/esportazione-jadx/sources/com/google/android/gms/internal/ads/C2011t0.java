package com.google.android.gms.internal.ads;

import java.util.Collections;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2011t0 extends AbstractC1666mI {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final int[] f21021K = {5512, 11025, 22050, 44100};

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f21022H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f21023I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f21024J;

    public final boolean a1(C1534jr c1534jr) throws C2167w0 {
        if (this.f21022H) {
            c1534jr.k(1);
        } else {
            int iW = c1534jr.w();
            int i8 = iW >> 4;
            this.f21024J = i8;
            Object obj = this.f19929G;
            if (i8 == 2) {
                int i9 = f21021K[(iW >> 2) & 3];
                K k8 = new K();
                k8.f("audio/mpeg");
                k8.f14285z = 1;
                k8.f14253A = i9;
                ((InterfaceC1234e0) obj).d(new C1804p0(k8));
                this.f21023I = true;
            } else if (i8 == 7 || i8 == 8) {
                K k9 = new K();
                k9.f(i8 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw");
                k9.f14285z = 1;
                k9.f14253A = 8000;
                ((InterfaceC1234e0) obj).d(new C1804p0(k9));
                this.f21023I = true;
            } else if (i8 != 10) {
                throw new C2167w0(p000a.r.f("Audio format not supported: ", i8));
            }
            this.f21022H = true;
        }
        return true;
    }

    public final boolean b1(long j8, C1534jr c1534jr) throws C0800Ka {
        int i8 = this.f21024J;
        Object obj = this.f19929G;
        if (i8 == 2) {
            int iO = c1534jr.o();
            InterfaceC1234e0 interfaceC1234e0 = (InterfaceC1234e0) obj;
            interfaceC1234e0.f(iO, c1534jr);
            interfaceC1234e0.b(j8, 1, iO, 0, null);
            return true;
        }
        int iW = c1534jr.w();
        if (iW != 0 || this.f21023I) {
            if (this.f21024J == 10 && iW != 1) {
                return false;
            }
            int iO2 = c1534jr.o();
            InterfaceC1234e0 interfaceC1234e1 = (InterfaceC1234e0) obj;
            interfaceC1234e1.f(iO2, c1534jr);
            interfaceC1234e1.b(j8, 1, iO2, 0, null);
            return true;
        }
        int iO3 = c1534jr.o();
        byte[] bArr = new byte[iO3];
        c1534jr.f(0, bArr, iO3);
        W0.r rVarC = AbstractC1717nH.c(new C1286f0(bArr, iO3), false);
        K k8 = new K();
        k8.f("audio/mp4a-latm");
        k8.f14268i = rVarC.f7454a;
        k8.f14285z = rVarC.f7456c;
        k8.f14253A = rVarC.f7455b;
        k8.f14274o = Collections.singletonList(bArr);
        ((InterfaceC1234e0) obj).d(new C1804p0(k8));
        this.f21023I = true;
        return false;
    }
}
