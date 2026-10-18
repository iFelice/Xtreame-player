package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzxk implements zzya {
    final /* synthetic */ Constructor zza;

    public zzxk(Constructor constructor) {
        this.zza = constructor;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzya
    public final Object zza() {
        try {
            return this.zza.newInstance(new Object[0]);
        } catch (IllegalAccessException e8) {
            throw zzabp.zzb(e8);
        } catch (InstantiationException e9) {
            throw new RuntimeException(r.g("Failed to invoke constructor '", zzabp.zzc(this.zza), "' with no args"), e9);
        } catch (InvocationTargetException e10) {
            throw new RuntimeException(r.g("Failed to invoke constructor '", zzabp.zzc(this.zza), "' with no args"), e10.getCause());
        }
    }
}
