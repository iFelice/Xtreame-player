package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Sp implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f16532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f16533b;

    public Sp(Pp pp, MJ mj) {
        this.f16532a = pp;
        this.f16533b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Rp zzb() {
        return new Rp(new Op(((C1523jg) ((Pp) this.f16532a).f15476a).a()), (InterfaceExecutorServiceC1504jC) this.f16533b.zzb());
    }
}
