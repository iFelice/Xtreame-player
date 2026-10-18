package com.google.ads.interactivemedia.v3.internal;

import java.util.Objects;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
abstract class zztq extends zztw {
    private zzri zza;

    static {
        new zzut(zztq.class);
    }

    public zztq(zzri zzriVar, boolean z7, boolean z8) {
        super(zzriVar.size());
        this.zza = zzriVar;
    }

    private final void zzA(zzri zzriVar) {
        int iZzx = zzx();
        zzqh.zzi(iZzx >= 0, "Less than 0 remaining futures");
        if (iZzx == 0) {
            zzz();
            zzs();
            zzv(2);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final String zza() {
        zzri zzriVar = this.zza;
        return zzriVar != null ? "futures=".concat(zzriVar.toString()) : super.zza();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final void zzb() {
        zzri zzriVar = this.zza;
        zzv(1);
        if ((zzriVar != null) && isCancelled()) {
            boolean zZzr = zzr();
            zzss it = zzriVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zZzr);
            }
        }
    }

    public abstract void zzs();

    public final void zzt() {
        Objects.requireNonNull(this.zza);
        if (this.zza.isEmpty()) {
            zzs();
            return;
        }
        final zzri zzriVar = null;
        Runnable runnable = new Runnable(zzriVar) { // from class: com.google.ads.interactivemedia.v3.internal.zztp
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzu((zzri) null);
            }
        };
        zzss it = this.zza.iterator();
        while (it.hasNext()) {
            zzuu zzuuVar = (zzuu) it.next();
            if (zzuuVar.isDone()) {
                zzA((zzri) null);
            } else {
                zzuuVar.zzo(runnable, zzua.INSTANCE);
            }
        }
    }

    public final /* synthetic */ void zzu(zzri zzriVar) {
        zzA((zzri) null);
    }

    public void zzv(int i8) {
        this.zza = null;
    }
}
