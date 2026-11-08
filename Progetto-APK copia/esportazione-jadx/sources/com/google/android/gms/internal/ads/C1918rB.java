package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1918rB extends AbstractRunnableC2074uB {
    @Override // com.google.android.gms.internal.ads.AbstractRunnableC2074uB
    public final Object s(Object obj, Throwable th) {
        RB rb = (RB) obj;
        D4.b bVarZza = rb.zza(th);
        if (bVarZza != null) {
            return bVarZza;
        }
        throw new NullPointerException(Q3.b.I("AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", rb));
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC2074uB
    public final /* synthetic */ void t(Object obj) {
        l((D4.b) obj);
    }
}
