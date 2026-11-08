package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1538jv implements InterfaceC2161vv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2161vv f19526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC2161vv f19527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2266xw f19528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f19529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC1165cj f19530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f19531f;

    public C1538jv(C1850pv c1850pv, C1694mv c1694mv, C2266xw c2266xw, String str, C1936re c1936re) {
        this.f19526a = c1850pv;
        this.f19527b = c1694mv;
        this.f19528c = c2266xw;
        this.f19529d = str;
        this.f19531f = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final D4.b a(final C0871Om c0871Om, final Xu xu) {
        InterfaceC1165cj interfaceC1165cjA;
        D4.b bVarB;
        synchronized (this) {
            C0701Dg c0701DgF = xu.f((InterfaceC2057tv) c0871Om.f15197I);
            C1590kv c1590kv = new C1590kv(this.f19529d);
            int i8 = c0701DgF.f12838a;
            switch (i8) {
                case 0:
                    c0701DgF.f12841d = c1590kv;
                    break;
                default:
                    c0701DgF.f12841d = c1590kv;
                    break;
            }
            switch (i8) {
                case 0:
                    interfaceC1165cjA = c0701DgF.a();
                    break;
                default:
                    interfaceC1165cjA = c0701DgF.b();
                    break;
            }
            final InterfaceC1165cj interfaceC1165cj = interfaceC1165cjA;
            interfaceC1165cj.zzg();
            interfaceC1165cj.zzg();
            p090l3.b1 b1Var = interfaceC1165cj.zzg().f17677d;
            if (b1Var.f26535Y == null && b1Var.f26540d0 == null) {
                Yv yvZzg = interfaceC1165cj.zzg();
                final C1486iv c1486iv = new C1486iv(xu, c0871Om, yvZzg.f17677d, yvZzg.f17679f, this.f19531f, yvZzg.f17683j, null);
                bVarB = Cw.d2(AbstractC1040aC.r(((C1694mv) this.f19527b).b(c0871Om, xu, interfaceC1165cj)), new RB() { // from class: com.google.android.gms.internal.ads.hv
                    @Override // com.google.android.gms.internal.ads.RB
                    public final D4.b zza(Object obj) {
                        C1918rB c1918rBA;
                        C1538jv c1538jv = this.f19181a;
                        C0871Om c0871Om2 = c0871Om;
                        C1486iv c1486iv2 = c1486iv;
                        InterfaceC2109uv interfaceC2109uv = xu;
                        InterfaceC1165cj interfaceC1165cj2 = interfaceC1165cj;
                        C1642lv c1642lv = (C1642lv) obj;
                        if (c1642lv != null) {
                            c1538jv.getClass();
                            C1486iv c1486iv3 = new C1486iv(c1486iv2.f19380a, c1486iv2.f19381b, c1486iv2.f19382c, c1486iv2.f19383d, c1486iv2.f19384e, c1486iv2.f19385f, c1642lv.f19874a);
                            if (c1642lv.f19876c != null) {
                                c1538jv.f19530e = null;
                                c1538jv.f19528c.a(c1486iv3);
                                return c1538jv.b(c1642lv.f19876c, c0871Om2);
                            }
                            C2266xw c2266xw = c1538jv.f19528c;
                            synchronized (c2266xw) {
                                c2266xw.f21955e = 2;
                                c1918rBA = c2266xw.c() ? null : c2266xw.f21954d.a(c1486iv3);
                            }
                            if (c1918rBA != null) {
                                c1538jv.f19530e = null;
                                return Cw.d2(c1918rBA, new No(c1538jv, 17), c1538jv.f19531f);
                            }
                            c1538jv.f19528c.a(c1486iv3);
                            c0871Om2 = new C0871Om((InterfaceC2057tv) c0871Om2.f15197I, c1642lv.f19875b, 13);
                        }
                        D4.b bVarB2 = ((C1850pv) c1538jv.f19526a).b(c0871Om2, interfaceC2109uv, interfaceC1165cj2);
                        c1538jv.f19530e = interfaceC1165cj2;
                        return bVarB2;
                    }
                }, this.f19531f);
            } else {
                this.f19530e = interfaceC1165cj;
                bVarB = ((C1850pv) this.f19526a).b(c0871Om, xu, interfaceC1165cj);
            }
        }
        return bVarB;
    }

    public final D4.b b(C1851pw c1851pw, C0871Om c0871Om) {
        InterfaceC1165cj interfaceC1165cj = c1851pw.f20503a;
        this.f19530e = interfaceC1165cj;
        if (c1851pw.f20505c != null) {
            if (interfaceC1165cj.zzf() != null) {
                c1851pw.f20505c.f21916e.c(c1851pw.f20503a.zzf());
            }
            return Cw.N1(c1851pw.f20505c);
        }
        interfaceC1165cj.zzb().f14537g = c1851pw.f20504b;
        return ((C1850pv) this.f19526a).b(c0871Om, null, c1851pw.f20503a);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final Object zzd() {
        InterfaceC1165cj interfaceC1165cj;
        synchronized (this) {
            interfaceC1165cj = this.f19530e;
        }
        return interfaceC1165cj;
    }
}
