package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
final class zzaax extends zzwj {
    final /* synthetic */ Class zza;
    final /* synthetic */ zzaay zzb;

    public zzaax(zzaay zzaayVar, Class cls) {
        this.zza = cls;
        this.zzb = zzaayVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final Object read(zzacc zzaccVar) {
        Object obj = this.zzb.zzb.read(zzaccVar);
        if (obj == null || this.zza.isInstance(obj)) {
            return obj;
        }
        Class cls = this.zza;
        Class<?> cls2 = obj.getClass();
        String name = cls.getName();
        String name2 = cls2.getName();
        String strZzf = zzaccVar.zzf();
        StringBuilder sbQ = U2.q("Expected a ", name, " but was ", name2, "; at path ");
        sbQ.append(strZzf);
        throw new zzwe(sbQ.toString());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final void write(zzace zzaceVar, Object obj) {
        this.zzb.zzb.write(zzaceVar, obj);
    }
}
