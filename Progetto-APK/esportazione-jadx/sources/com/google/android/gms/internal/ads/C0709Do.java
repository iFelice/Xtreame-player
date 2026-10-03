package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Do, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0709Do implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M3.a f12879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12881d;

    public /* synthetic */ C0709Do(Object obj, M3.a aVar, int i8, int i9) {
        this.f12878a = i9;
        this.f12881d = obj;
        this.f12879b = aVar;
        this.f12880c = i8;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) {
        int i8 = this.f12878a;
        int i9 = this.f12880c;
        M3.a aVar = this.f12879b;
        Object obj2 = this.f12881d;
        switch (i8) {
            case 0:
                C0724Eo c0724Eo = (C0724Eo) obj2;
                C0973Wc c0973Wc = (C0973Wc) aVar;
                if (c0973Wc != null) {
                    c0724Eo.getClass();
                    Bundle bundle = c0973Wc.f17262S;
                    if (bundle != null) {
                        bundle.putBoolean("ls", true);
                    }
                }
                return Cw.d2(((Gp) c0724Eo.f13217d.zzb()).A3(c0973Wc, i9), new C0694Co(c0973Wc, 0), c0724Eo.f13215b);
            case 1:
                C0814Ko c0814Ko = (C0814Ko) obj2;
                C0973Wc c0973Wc2 = (C0973Wc) aVar;
                if (c0973Wc2 != null) {
                    c0814Ko.getClass();
                    Bundle bundle2 = c0973Wc2.f17262S;
                    if (bundle2 != null) {
                        bundle2.putBoolean("ls", true);
                    }
                }
                return Cw.d2(((Gp) c0814Ko.f14413e.zzb()).B3(c0973Wc2, i9), new C0694Co(c0973Wc2, 1), c0814Ko.f14410b);
            default:
                return ((Hp) ((C1636lp) obj2).f19852d.zzb()).z3((C0787Jc) aVar, i9);
        }
    }
}
