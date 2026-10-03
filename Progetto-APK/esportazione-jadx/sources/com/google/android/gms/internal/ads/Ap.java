package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Ap implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D4.b f12042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ D4.b f12043c;

    public /* synthetic */ Ap(D4.b bVar, C1298fC c1298fC, int i8) {
        this.f12041a = i8;
        this.f12042b = bVar;
        this.f12043c = c1298fC;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i8 = this.f12041a;
        D4.b bVar = this.f12043c;
        D4.b bVar2 = this.f12042b;
        switch (i8) {
            case 0:
                return new Fp((Jp) bVar2.get(), ((Ep) bVar.get()).f13219b, ((Ep) bVar.get()).f13218a);
            default:
                return new C1279eu((String) bVar2.get(), (String) bVar.get(), 1);
        }
    }
}
