package com.google.android.gms.common.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends E {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11810g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q(AbstractC0631g abstractC0631g, int i8, Bundle bundle) {
        super(abstractC0631g, i8, bundle);
        this.f11810g = abstractC0631g;
    }

    @Override // com.google.android.gms.common.internal.E
    public final void b(J3.b bVar) {
        AbstractC0631g abstractC0631g = this.f11810g;
        if (abstractC0631g.enableLocalFallback() && AbstractC0631g.zzo(abstractC0631g)) {
            AbstractC0631g.zzk(abstractC0631g, 16);
        } else {
            abstractC0631g.zzc.a(bVar);
            abstractC0631g.onConnectionFailed(bVar);
        }
    }

    @Override // com.google.android.gms.common.internal.E
    public final boolean c() {
        this.f11810g.zzc.a(J3.b.f4131K);
        return true;
    }
}
