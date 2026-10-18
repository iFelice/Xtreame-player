package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class zzyi extends zzyl {
    final /* synthetic */ Method zza;
    final /* synthetic */ int zzb;

    public zzyi(Method method, int i8) {
        this.zza = method;
        this.zzb = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzyl
    public final Object zza(Class cls) {
        zzyl.zzb(cls);
        return this.zza.invoke(null, cls, Integer.valueOf(this.zzb));
    }
}
