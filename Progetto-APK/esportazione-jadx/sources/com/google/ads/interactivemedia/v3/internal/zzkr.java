package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzkr extends zzkx {
    private final zzjq zzh;
    private long zzi;

    public zzkr(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9, zzjq zzjqVar) {
        super(zzjjVar, "S2bj7XqeiGNcYHcKeeGhBD7AjwenAND57ZasB9YyvkNKuXmMxi2URXZo9xEY1HWC", "FYnfwG63I09Vg7QzBJMFCV+7n/vqGsbswosvmgiipjk=", zzanVar, i8, 53);
        this.zzh = zzjqVar;
        if (zzjqVar != null) {
            this.zzi = zzjqVar.zza();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        if (this.zzh != null) {
            this.zzd.zzP(((Long) this.zze.invoke(null, Long.valueOf(this.zzi))).longValue());
        }
    }
}
