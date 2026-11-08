package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1989sf implements InterfaceC1556kC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1556kC f20912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f20913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC1556kC f20914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f20915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Uri f20916e;

    public C1989sf(C2177wA c2177wA, int i8, InterfaceC1556kC interfaceC1556kC) {
        this.f20912a = c2177wA;
        this.f20913b = i8;
        this.f20914c = interfaceC1556kC;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) {
        CD cd2;
        this.f20916e = cd.f12592a;
        CD cd3 = null;
        long j8 = cd.f12595d;
        long j9 = cd.f12594c;
        long j10 = this.f20913b;
        if (j9 >= j10) {
            cd2 = null;
        } else {
            long jMin = j10 - j9;
            if (j8 != -1) {
                jMin = Math.min(j8, jMin);
            }
            cd2 = new CD(cd.f12592a, j9, jMin);
        }
        long j11 = cd.f12594c;
        if (j8 == -1 || j11 + j8 > j10) {
            cd3 = new CD(cd.f12592a, Math.max(j10, j11), j8 != -1 ? Math.min(j8, (j11 + j8) - j10) : -1L);
        }
        long jA = cd2 != null ? this.f20912a.a(cd2) : 0L;
        long jA2 = cd3 != null ? this.f20914c.a(cd3) : 0L;
        this.f20915d = j11;
        if (jA == -1 || jA2 == -1) {
            return -1L;
        }
        return jA + jA2;
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        int i10;
        long j8 = this.f20915d;
        long j9 = this.f20913b;
        if (j8 < j9) {
            int iE = this.f20912a.e(bArr, i8, (int) Math.min(i9, j9 - j8));
            long j10 = this.f20915d + ((long) iE);
            this.f20915d = j10;
            i10 = iE;
            j8 = j10;
        } else {
            i10 = 0;
        }
        if (j8 < j9) {
            return i10;
        }
        int iE2 = this.f20914c.e(bArr, i8 + i10, i9 - i10);
        int i11 = i10 + iE2;
        this.f20915d += (long) iE2;
        return i11;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void f(InterfaceC1615lJ interfaceC1615lJ) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f20916e;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        this.f20912a.zzd();
        this.f20914c.zzd();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        return UA.f16803M;
    }
}
