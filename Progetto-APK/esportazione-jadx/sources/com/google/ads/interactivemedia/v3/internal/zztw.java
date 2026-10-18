package com.google.ads.interactivemedia.v3.internal;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes.dex */
class zztw extends zztg.zzi {
    private static final zzts zza;
    private static final zzut zzd = new zzut(zztw.class);
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    static {
        zzts zztvVar;
        Throwable th;
        zztu zztuVar = null;
        try {
            zztvVar = new zztt(AtomicReferenceFieldUpdater.newUpdater(zztw.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zztw.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            zztvVar = new zztv(zztuVar);
            th = th2;
        }
        zza = zztvVar;
        if (th != null) {
            zzd.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public zztw(int i8) {
        this.remaining = i8;
    }

    public final int zzx() {
        return zza.zza(this);
    }

    public final void zzz() {
        this.seenExceptions = null;
    }
}
