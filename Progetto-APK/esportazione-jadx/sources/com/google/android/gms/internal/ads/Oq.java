package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Oq extends AbstractBinderC1520jd implements InterfaceC0749Gj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InterfaceC1572kd f15210G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public J2.t f15211H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Dr f15212I;

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void K1(R3.a aVar) {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            ((Er) interfaceC1572kd).f13229G.v0();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void d2(R3.a aVar, int i8) {
        J2.t tVar = this.f15211H;
        if (tVar != null) {
            tVar.h(i8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void e3() {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            ((Er) interfaceC1572kd).f13231I.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0749Gj
    public final synchronized void i2(J2.t tVar) {
        this.f15211H = tVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void l3(R3.a aVar) {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            ((Er) interfaceC1572kd).f13232J.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void w0(R3.a aVar, C1624ld c1624ld) {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            ((Er) interfaceC1572kd).f13232J.G(c1624ld);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void x() {
        Dr dr = this.f15212I;
        if (dr != null) {
            p120p3.h.g("Fail to initialize adapter ".concat(String.valueOf(dr.f12886c.f20993a)));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void y(R3.a aVar) {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            ((Er) interfaceC1572kd).f13231I.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void zze(R3.a aVar) {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            ((Er) interfaceC1572kd).f13230H.x();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void zzf(R3.a aVar) {
        InterfaceC1572kd interfaceC1572kd = this.f15210G;
        if (interfaceC1572kd != null) {
            interfaceC1572kd.zzf(aVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void zzi(R3.a aVar) {
        J2.t tVar = this.f15211H;
        if (tVar != null) {
            tVar.o();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1572kd
    public final synchronized void zzl(R3.a aVar) {
        Dr dr = this.f15212I;
        if (dr != null) {
            dr.f12887d.f21398c.execute(new RunnableC1026Zn(dr, 6));
        }
    }
}
