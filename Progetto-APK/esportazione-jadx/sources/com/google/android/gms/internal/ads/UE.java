package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class UE implements EE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UE f16819a = new UE();

    @Override // com.google.android.gms.internal.ads.EE
    public final Object a(C2246xc c2246xc) throws GeneralSecurityException {
        if (((DE) c2246xc.f21883I) == null) {
            throw new GeneralSecurityException("no primary in primitive set");
        }
        Iterator it = ((Map) c2246xc.f21882H).values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
            }
        }
        return new TE();
    }

    @Override // com.google.android.gms.internal.ads.EE
    public final Class zza() {
        return SE.class;
    }

    @Override // com.google.android.gms.internal.ads.EE
    public final Class zzb() {
        return SE.class;
    }
}
