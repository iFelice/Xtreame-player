package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
abstract class zzus extends AtomicReference implements Runnable {
    private static final Runnable zza = new zzur(null);
    private static final Runnable zzb = new zzur(null);

    private final void zzc(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzup zzupVar = null;
        boolean z7 = false;
        int i8 = 0;
        while (true) {
            if (!(runnable instanceof zzup)) {
                if (runnable != zzb) {
                    break;
                }
            } else {
                zzupVar = (zzup) runnable;
            }
            i8++;
            if (i8 > 1000) {
                Runnable runnable2 = zzb;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z7 = Thread.interrupted() || z7;
                    LockSupport.park(zzupVar);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z7) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        Object objZza = null;
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z7 = !zzg();
            if (z7) {
                try {
                    objZza = zza();
                } catch (Throwable th) {
                    try {
                        zzvc.zza(th);
                        if (!compareAndSet(threadCurrentThread, zza)) {
                            zzc(threadCurrentThread);
                        }
                        zzd(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(threadCurrentThread, zza)) {
                            zzc(threadCurrentThread);
                        }
                        zze(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, zza)) {
                zzc(threadCurrentThread);
            }
            if (z7) {
                zze(objZza);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String strG;
        Runnable runnable = (Runnable) get();
        if (runnable == zza) {
            strG = "running=[DONE]";
        } else if (runnable instanceof zzup) {
            strG = "running=[INTERRUPTED]";
        } else {
            strG = runnable instanceof Thread ? r.g("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]";
        }
        return U2.l(strG, ", ", zzb());
    }

    public abstract Object zza();

    public abstract String zzb();

    public abstract void zzd(Throwable th);

    public abstract void zze(Object obj);

    public abstract boolean zzg();

    public final void zzh() {
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            zzup zzupVar = new zzup(this, null);
            zzupVar.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, zzupVar)) {
                try {
                    ((Thread) runnable).interrupt();
                    if (((Runnable) getAndSet(zza)) == zzb) {
                    }
                } finally {
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }
}
