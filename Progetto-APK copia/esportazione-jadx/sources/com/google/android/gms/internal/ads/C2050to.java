package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.measurement.AbstractC2617p2;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.to, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2050to extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f21139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f21140f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f21141g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BinderC2258xo f21142h;

    public C2050to(BinderC2258xo binderC2258xo, String str, String str2, int i8) {
        this.f21139e = i8;
        if (i8 == 1) {
            this.f21140f = str;
            this.f21141g = str2;
            this.f21142h = binderC2258xo;
        } else if (i8 != 2) {
            this.f21140f = str;
            this.f21141g = str2;
            this.f21142h = binderC2258xo;
        } else {
            this.f21140f = str;
            this.f21141g = str2;
            this.f21142h = binderC2258xo;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void h(p043f3.j jVar) {
        int i8 = this.f21139e;
        String str = this.f21141g;
        BinderC2258xo binderC2258xo = this.f21142h;
        switch (i8) {
            case 0:
                binderC2258xo.E3(BinderC2258xo.D3(jVar), str);
                break;
            case 1:
                binderC2258xo.E3(BinderC2258xo.D3(jVar), str);
                break;
            default:
                binderC2258xo.E3(BinderC2258xo.D3(jVar), str);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final /* bridge */ /* synthetic */ void i(Object obj) {
        int i8 = this.f21139e;
        String str = this.f21141g;
        String str2 = this.f21140f;
        BinderC2258xo binderC2258xo = this.f21142h;
        switch (i8) {
            case 0:
                binderC2258xo.z3((Z5) obj, str2, str);
                break;
            case 1:
                binderC2258xo.z3((C2351zd) obj, str2, str);
                break;
            default:
                binderC2258xo.z3((C0713Ed) obj, str2, str);
                break;
        }
    }
}
