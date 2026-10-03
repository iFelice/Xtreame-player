package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Executor;
import p052g4.d;
import p052g4.h;
import p052g4.o;
import p052g4.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzpr {
    public static zzuu zza(h hVar, p052g4.a aVar) {
        final zzpq zzpqVar = new zzpq(hVar, null);
        Executor executorZzb = zzvb.zzb();
        d dVar = new d() { // from class: com.google.ads.interactivemedia.v3.internal.zzpp
            @Override // p052g4.d
            public final void onComplete(h hVar2) {
                zzpq zzpqVar2 = zzpqVar;
                if (((r) hVar2).f25372d) {
                    zzpqVar2.cancel(false);
                    return;
                }
                if (hVar2.h()) {
                    zzpqVar2.zzc(hVar2.f());
                    return;
                }
                Exception excE = hVar2.e();
                if (excE == null) {
                    throw new IllegalStateException();
                }
                zzpqVar2.zzd(excE);
            }
        };
        r rVar = (r) hVar;
        rVar.getClass();
        rVar.f25370b.i(new o(executorZzb, dVar));
        rVar.o();
        return zzpqVar;
    }
}
