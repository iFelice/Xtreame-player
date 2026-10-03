package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzzk extends zzzm {
    final /* synthetic */ boolean zza;
    final /* synthetic */ Method zzb;
    final /* synthetic */ zzwj zzc;
    final /* synthetic */ zzwj zzd;
    final /* synthetic */ boolean zze;
    final /* synthetic */ boolean zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzk(zzzq zzzqVar, String str, Field field, boolean z7, Method method, zzwj zzwjVar, zzwj zzwjVar2, boolean z8, boolean z9) {
        super(str, field);
        this.zza = z7;
        this.zzb = method;
        this.zzc = zzwjVar;
        this.zzd = zzwjVar2;
        this.zze = z8;
        this.zzf = z9;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzm
    public final void zza(zzacc zzaccVar, int i8, Object[] objArr) {
        Object obj = this.zzd.read(zzaccVar);
        if (obj == null && this.zze) {
            throw new zzwa(U2.m("null is not allowed as value for record component '", this.zzi, "' of primitive type; at path ", zzaccVar.zze()));
        }
        objArr[i8] = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzm
    public final void zzb(zzacc zzaccVar, Object obj) throws IllegalAccessException {
        Object obj2 = this.zzd.read(zzaccVar);
        if (obj2 == null && this.zze) {
            return;
        }
        if (this.zza) {
            zzzq.zzb(obj, this.zzh);
        } else if (this.zzf) {
            throw new zzvx("Cannot set value of 'static final' ".concat(zzabp.zze(this.zzh, false)));
        }
        this.zzh.set(obj, obj2);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzm
    public final void zzc(zzace zzaceVar, Object obj) throws IllegalAccessException {
        Object objInvoke;
        if (this.zza) {
            Method method = this.zzb;
            if (method == null) {
                zzzq.zzb(obj, this.zzh);
            } else {
                zzzq.zzb(obj, method);
            }
        }
        Method method2 = this.zzb;
        if (method2 != null) {
            try {
                objInvoke = method2.invoke(obj, new Object[0]);
            } catch (InvocationTargetException e8) {
                throw new zzvx(r.g("Accessor ", zzabp.zze(this.zzb, false), " threw exception"), e8.getCause());
            }
        } else {
            objInvoke = this.zzh.get(obj);
        }
        if (objInvoke == obj) {
            return;
        }
        zzaceVar.zzf(this.zzg);
        this.zzc.write(zzaceVar, objInvoke);
    }
}
