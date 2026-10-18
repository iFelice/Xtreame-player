package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1850pv implements InterfaceC2161vv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2161vv f20501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InterfaceC1165cj f20502b;

    public C1850pv(C1798ov c1798ov) {
        this.f20501a = c1798ov;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final /* bridge */ /* synthetic */ D4.b a(C0871Om c0871Om, Xu xu) {
        return b(c0871Om, xu, null);
    }

    public final synchronized D4.b b(C0871Om c0871Om, InterfaceC2109uv interfaceC2109uv, InterfaceC1165cj interfaceC1165cj) {
        this.f20502b = interfaceC1165cj;
        if (((C0973Wc) c0871Om.f15196H) == null) {
            return ((C1798ov) this.f20501a).b(c0871Om, interfaceC2109uv, interfaceC1165cj);
        }
        C0823Li c0823LiZzb = interfaceC1165cj.zzb();
        return c0823LiZzb.a(c0823LiZzb.c(Cw.N1((C0973Wc) c0871Om.f15196H)));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final Object zzd() {
        InterfaceC1165cj interfaceC1165cj;
        synchronized (this) {
            interfaceC1165cj = this.f20502b;
        }
        return interfaceC1165cj;
    }
}
