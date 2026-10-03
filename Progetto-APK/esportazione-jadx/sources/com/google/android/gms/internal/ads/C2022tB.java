package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2022tB extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CD f21045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f21046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f21047g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21048h;

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws C0800Ka, C2231xC {
        j(cd);
        this.f21045e = cd;
        Uri uriNormalizeScheme = cd.f12592a.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        p113o3.r.L("data".equals(scheme), "Unsupported scheme: ".concat(String.valueOf(scheme)));
        String schemeSpecificPart = uriNormalizeScheme.getSchemeSpecificPart();
        int i8 = Et.f13234a;
        String[] strArrSplit = schemeSpecificPart.split(",", -1);
        if (strArrSplit.length != 2) {
            throw new C0800Ka("Unexpected URI format: ".concat(String.valueOf(uriNormalizeScheme)), null, true, 0);
        }
        String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f21046f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e8) {
                throw new C0800Ka("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e8, true, 0);
            }
        } else {
            this.f21046f = URLDecoder.decode(str, AbstractC2113uz.f21411a.name()).getBytes(StandardCharsets.UTF_8);
        }
        int length = this.f21046f.length;
        long j8 = length;
        long j9 = cd.f12594c;
        if (j9 > j8) {
            this.f21046f = null;
            throw new C2231xC(2008);
        }
        int i9 = (int) j9;
        this.f21047g = i9;
        int i10 = length - i9;
        this.f21048h = i10;
        long j10 = cd.f12595d;
        if (j10 != -1) {
            this.f21048h = (int) Math.min(i10, j10);
        }
        k(cd);
        return j10 != -1 ? j10 : this.f21048h;
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        if (i9 == 0) {
            return 0;
        }
        int i10 = this.f21048h;
        if (i10 == 0) {
            return -1;
        }
        int iMin = Math.min(i9, i10);
        byte[] bArr2 = this.f21046f;
        int i11 = Et.f13234a;
        System.arraycopy(bArr2, this.f21047g, bArr, i8, iMin);
        this.f21047g += iMin;
        this.f21048h -= iMin;
        zzg(iMin);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        CD cd = this.f21045e;
        if (cd != null) {
            return cd.f12592a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        if (this.f21046f != null) {
            this.f21046f = null;
            i();
        }
        this.f21045e = null;
    }
}
