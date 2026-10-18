package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class JB extends LB {
    @Override // com.google.android.gms.internal.ads.LB
    public final Object s(Object obj, Object obj2) {
        RB rb = (RB) obj;
        D4.b bVarZza = rb.zza(obj2);
        if (bVarZza != null) {
            return bVarZza;
        }
        throw new NullPointerException(Q3.b.I("AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", rb));
    }

    @Override // com.google.android.gms.internal.ads.LB
    public final /* synthetic */ void t(Object obj) {
        l((D4.b) obj);
    }
}
