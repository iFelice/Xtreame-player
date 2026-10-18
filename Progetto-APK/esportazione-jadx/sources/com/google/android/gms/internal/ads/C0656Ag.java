package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ag, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0656Ag implements MJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12020b;

    public /* synthetic */ C0656Ag(Object obj, int i8) {
        this.f12019a = i8;
        this.f12020b = obj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f12019a;
        Object obj = this.f12020b;
        switch (i8) {
            case 0:
                return new C2354zg(((C0671Bg) obj).f12432c);
            case 1:
                return new C2250xg(((C0671Bg) obj).f12432c);
            default:
                return ((QJ) obj).zzb();
        }
    }
}
