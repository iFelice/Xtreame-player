package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1775oN implements InterfaceC1556kC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1556kC f20275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GN f20277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f20278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f20279e;

    public C1775oN(RI ri, int i8, GN gn) {
        p113o3.r.J(i8 > 0);
        this.f20275a = ri;
        this.f20276b = i8;
        this.f20277c = gn;
        this.f20278d = new byte[1];
        this.f20279e = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        int i10 = this.f20279e;
        InterfaceC1556kC interfaceC1556kC = this.f20275a;
        if (i10 == 0) {
            byte[] bArr2 = this.f20278d;
            int i11 = 0;
            if (interfaceC1556kC.e(bArr2, 0, 1) != -1) {
                int i12 = (bArr2[0] & 255) << 4;
                if (i12 != 0) {
                    byte[] bArr3 = new byte[i12];
                    int i13 = i12;
                    while (i13 > 0) {
                        int iE = interfaceC1556kC.e(bArr3, i11, i13);
                        if (iE != -1) {
                            i11 += iE;
                            i13 -= iE;
                        }
                    }
                    while (i12 > 0) {
                        int i14 = i12 - 1;
                        if (bArr3[i14] != 0) {
                            break;
                        }
                        i12 = i14;
                    }
                    if (i12 > 0) {
                        C1534jr c1534jr = new C1534jr(bArr3, i12);
                        GN gn = this.f20277c;
                        long jMax = !gn.f13548l ? gn.f13545i : Math.max(gn.f13549m.n(true), gn.f13545i);
                        int iO = c1534jr.o();
                        InterfaceC1234e0 interfaceC1234e0 = gn.f13547k;
                        interfaceC1234e0.getClass();
                        interfaceC1234e0.f(iO, c1534jr);
                        interfaceC1234e0.b(jMax, 1, iO, 0, null);
                        gn.f13548l = true;
                    }
                }
                i10 = this.f20276b;
                this.f20279e = i10;
            }
            return -1;
        }
        int iE2 = interfaceC1556kC.e(bArr, i8, Math.min(i10, i9));
        if (iE2 != -1) {
            this.f20279e -= iE2;
        }
        return iE2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void f(InterfaceC1615lJ interfaceC1615lJ) {
        interfaceC1615lJ.getClass();
        this.f20275a.f(interfaceC1615lJ);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f20275a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        return this.f20275a.zze();
    }
}
