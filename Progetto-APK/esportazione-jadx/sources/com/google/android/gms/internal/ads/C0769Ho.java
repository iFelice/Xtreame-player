package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ho, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0769Ho implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f13791a;

    public C0769Ho(C1523jg c1523jg) {
        this.f13791a = c1523jg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        String packageName = ((C1523jg) this.f13791a).a().getPackageName();
        Cw.N0(packageName);
        return packageName;
    }
}
