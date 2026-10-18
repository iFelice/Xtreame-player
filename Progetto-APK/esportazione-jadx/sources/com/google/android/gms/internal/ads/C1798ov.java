package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ov, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1798ov implements InterfaceC2161vv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InterfaceC1165cj f20349a;

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final /* bridge */ /* synthetic */ D4.b a(C0871Om c0871Om, Xu xu) {
        return b(c0871Om, xu, null);
    }

    public final synchronized D4.b b(C0871Om c0871Om, InterfaceC2109uv interfaceC2109uv, InterfaceC1165cj interfaceC1165cj) {
        InterfaceC1165cj interfaceC1165cjA;
        C0823Li c0823LiZzb;
        try {
            if (interfaceC1165cj != null) {
                this.f20349a = interfaceC1165cj;
            } else {
                C0701Dg c0701DgF = ((Xu) interfaceC2109uv).f((InterfaceC2057tv) c0871Om.f15197I);
                switch (c0701DgF.f12838a) {
                    case 0:
                        interfaceC1165cjA = c0701DgF.a();
                        break;
                    default:
                        interfaceC1165cjA = c0701DgF.b();
                        break;
                }
                this.f20349a = interfaceC1165cjA;
            }
            c0823LiZzb = this.f20349a.zzb();
        } catch (Throwable th) {
            throw th;
        }
        return c0823LiZzb.a(c0823LiZzb.b());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final Object zzd() {
        InterfaceC1165cj interfaceC1165cj;
        synchronized (this) {
            interfaceC1165cj = this.f20349a;
        }
        return interfaceC1165cj;
    }
}
