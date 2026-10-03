package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1694mv implements InterfaceC2161vv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p004a3.b f20018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f20019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p021c4.A f20020c = new p021c4.A(6, 0);

    public C1694mv(p004a3.b bVar, C1936re c1936re) {
        this.f20018a = bVar;
        this.f20019b = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final /* bridge */ /* synthetic */ D4.b a(C0871Om c0871Om, Xu xu) {
        return b(c0871Om, xu, null);
    }

    public final D4.b b(C0871Om c0871Om, InterfaceC2109uv interfaceC2109uv, InterfaceC1165cj interfaceC1165cj) {
        D4.b bVarN1;
        D4.b bVarW1;
        p004a3.b bVar = this.f20018a;
        Executor executor = this.f20019b;
        C2246xc c2246xc = new C2246xc(bVar, interfaceC1165cj, executor);
        C1953rv c1953rv = (C1953rv) c2246xc.f21885K;
        if (c1953rv == null) {
            if (((Boolean) AbstractC2279y8.f21995a.l()).booleanValue()) {
                InterfaceC1165cj interfaceC1165cj2 = (InterfaceC1165cj) c2246xc.f21883I;
                p004a3.b bVar2 = (p004a3.b) c2246xc.f21882H;
                C0823Li c0823LiZzb = interfaceC1165cj2.zzb();
                C1799ow c1799ow = (C1799ow) bVar2.f8651I;
                Iw iw = Iw.GET_CACHE_KEY;
                Fw fwC = c0823LiZzb.f14533c.b(c0823LiZzb.f14539i.a(), iw).m(new C0957Va(4, c0823LiZzb, c1799ow)).c();
                Cw.h2(fwC, new C0793Ji(c0823LiZzb, 1), c0823LiZzb.f14540j);
                bVarW1 = Cw.w1(Cw.b2(AbstractC1040aC.r(fwC), new C1902qv(c2246xc, 1), (Executor) c2246xc.f21884J), C1274ep.class, new C1902qv(c2246xc, 0), (Executor) c2246xc.f21884J);
            } else {
                C1953rv c1953rv2 = new C1953rv(null, c2246xc.E());
                c2246xc.f21885K = c1953rv2;
                bVarW1 = Cw.N1(c1953rv2);
            }
            bVarN1 = Cw.b2(bVarW1, new C2064u1(19), (Executor) c2246xc.f21884J);
        } else {
            bVarN1 = Cw.N1(c1953rv);
        }
        return Cw.w1(Cw.d2(AbstractC1040aC.r(bVarN1), new C0957Va(15, this, interfaceC1165cj), executor), Exception.class, new C2064u1(18, 0), executor);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
