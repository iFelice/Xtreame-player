package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class RI implements InterfaceC1556kC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1556kC f16234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Uri f16235b = Uri.EMPTY;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map f16236c = Collections.emptyMap();

    public RI(InterfaceC1556kC interfaceC1556kC) {
        this.f16234a = interfaceC1556kC;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) {
        this.f16235b = cd.f12592a;
        this.f16236c = Collections.emptyMap();
        InterfaceC1556kC interfaceC1556kC = this.f16234a;
        long jA = interfaceC1556kC.a(cd);
        Uri uriZzc = interfaceC1556kC.zzc();
        uriZzc.getClass();
        this.f16235b = uriZzc;
        this.f16236c = interfaceC1556kC.zze();
        return jA;
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        return this.f16234a.e(bArr, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void f(InterfaceC1615lJ interfaceC1615lJ) {
        interfaceC1615lJ.getClass();
        this.f16234a.f(interfaceC1615lJ);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f16234a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        this.f16234a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        return this.f16234a.zze();
    }
}
