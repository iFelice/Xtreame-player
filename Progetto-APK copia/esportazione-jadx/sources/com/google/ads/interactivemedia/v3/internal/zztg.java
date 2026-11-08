package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public abstract class zztg<V> extends zzvi implements zzuu<V> {
    private static final zza zza;
    static final boolean zzb;
    private static final Object zzba;
    static final zzut zzc;
    private volatile zzd listeners;
    private volatile Object value;
    private volatile zzk waiters;

    abstract class zza {
        public /* synthetic */ zza(zztf zztfVar) {
        }

        public abstract zzd zza(zztg zztgVar, zzd zzdVar);

        public abstract zzk zzb(zztg zztgVar, zzk zzkVar);

        public abstract void zzc(zzk zzkVar, zzk zzkVar2);

        public abstract void zzd(zzk zzkVar, Thread thread);

        public abstract boolean zze(zztg zztgVar, zzd zzdVar, zzd zzdVar2);

        public abstract boolean zzf(zztg zztgVar, Object obj, Object obj2);

        public abstract boolean zzg(zztg zztgVar, zzk zzkVar, zzk zzkVar2);
    }

    final class zzb {
        static final zzb zza;
        static final zzb zzb;
        final boolean zzc;
        final Throwable zzd;

        static {
            if (zztg.zzb) {
                zzb = null;
                zza = null;
            } else {
                zzb = new zzb(false, null);
                zza = new zzb(true, null);
            }
        }

        public zzb(boolean z7, Throwable th) {
            this.zzc = z7;
            this.zzd = th;
        }
    }

    final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.ads.interactivemedia.v3.internal.zztg.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        public zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    final class zzd {
        static final zzd zza = new zzd();
        zzd next;
        final Runnable zzb;
        final Executor zzc;

        public zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    final class zze extends zza {
        final AtomicReferenceFieldUpdater<zzk, Thread> zza;
        final AtomicReferenceFieldUpdater<zzk, zzk> zzb;
        final AtomicReferenceFieldUpdater<? super zztg<?>, zzk> zzc;
        final AtomicReferenceFieldUpdater<? super zztg<?>, zzd> zzd;
        final AtomicReferenceFieldUpdater<? super zztg<?>, Object> zze;

        public zze(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(null);
            this.zza = atomicReferenceFieldUpdater;
            this.zzb = atomicReferenceFieldUpdater2;
            this.zzc = atomicReferenceFieldUpdater3;
            this.zzd = atomicReferenceFieldUpdater4;
            this.zze = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final zzd zza(zztg zztgVar, zzd zzdVar) {
            return this.zzd.getAndSet(zztgVar, zzdVar);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final zzk zzb(zztg zztgVar, zzk zzkVar) {
            return this.zzc.getAndSet(zztgVar, zzkVar);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final void zzc(zzk zzkVar, zzk zzkVar2) {
            this.zzb.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            this.zza.lazySet(zzkVar, thread);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zze(zztg zztgVar, zzd zzdVar, zzd zzdVar2) {
            return zzth.zza(this.zzd, zztgVar, zzdVar, zzdVar2);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zzf(zztg zztgVar, Object obj, Object obj2) {
            return zzth.zza(this.zze, zztgVar, obj, obj2);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zzg(zztg zztgVar, zzk zzkVar, zzk zzkVar2) {
            return zzth.zza(this.zzc, zztgVar, zzkVar, zzkVar2);
        }
    }

    final class zzf<V> implements Runnable {
        final zztg<V> zza;
        final zzuu<? extends V> zzb;

        public zzf(zztg zztgVar, zzuu zzuuVar) {
            this.zza = zztgVar;
            this.zzb = zzuuVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zztg) this.zza).value != this) {
                return;
            }
            zzuu<? extends V> zzuuVar = this.zzb;
            if (zztg.zza.zzf(this.zza, this, zztg.zzs(zzuuVar))) {
                zztg.zzx(this.zza, false);
            }
        }
    }

    final class zzg extends zza {
        private zzg() {
            throw null;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final zzd zza(zztg zztgVar, zzd zzdVar) {
            zzd zzdVar2;
            synchronized (zztgVar) {
                try {
                    zzdVar2 = zztgVar.listeners;
                    if (zzdVar2 != zzdVar) {
                        zztgVar.listeners = zzdVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final zzk zzb(zztg zztgVar, zzk zzkVar) {
            zzk zzkVar2;
            synchronized (zztgVar) {
                try {
                    zzkVar2 = zztgVar.waiters;
                    if (zzkVar2 != zzkVar) {
                        zztgVar.waiters = zzkVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzkVar2;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final void zzc(zzk zzkVar, zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zze(zztg zztgVar, zzd zzdVar, zzd zzdVar2) {
            synchronized (zztgVar) {
                try {
                    if (zztgVar.listeners != zzdVar) {
                        return false;
                    }
                    zztgVar.listeners = zzdVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zzf(zztg zztgVar, Object obj, Object obj2) {
            synchronized (zztgVar) {
                try {
                    if (zztgVar.value != obj) {
                        return false;
                    }
                    zztgVar.value = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zzg(zztg zztgVar, zzk zzkVar, zzk zzkVar2) {
            synchronized (zztgVar) {
                try {
                    if (zztgVar.waiters != zzkVar) {
                        return false;
                    }
                    zztgVar.waiters = zzkVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public /* synthetic */ zzg(zzti zztiVar) {
            super(null);
        }
    }

    interface zzh<V> extends zzuu<V> {
    }

    abstract class zzi<V> extends zztg<V> implements zzh<V> {
    }

    final class zzj extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.ads.interactivemedia.v3.internal.zztg.zzj.1
                        @Override // java.security.PrivilegedExceptionAction
                        public final /* bridge */ /* synthetic */ Unsafe run() throws IllegalAccessException {
                            for (Field field : Unsafe.class.getDeclaredFields()) {
                                field.setAccessible(true);
                                Object obj = field.get(null);
                                if (Unsafe.class.isInstance(obj)) {
                                    return (Unsafe) Unsafe.class.cast(obj);
                                }
                            }
                            throw new NoSuchFieldError("the Unsafe");
                        }
                    });
                }
                try {
                    zzc = unsafe.objectFieldOffset(zztg.class.getDeclaredField("waiters"));
                    zzb = unsafe.objectFieldOffset(zztg.class.getDeclaredField("listeners"));
                    zzd = unsafe.objectFieldOffset(zztg.class.getDeclaredField("value"));
                    zze = unsafe.objectFieldOffset(zzk.class.getDeclaredField("thread"));
                    zzf = unsafe.objectFieldOffset(zzk.class.getDeclaredField("next"));
                    zza = unsafe;
                } catch (NoSuchFieldException e8) {
                    throw new RuntimeException(e8);
                }
            } catch (PrivilegedActionException e9) {
                throw new RuntimeException("Could not initialize intrinsics", e9.getCause());
            }
        }

        private zzj() {
            throw null;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final zzd zza(zztg zztgVar, zzd zzdVar) {
            zzd zzdVar2;
            do {
                zzdVar2 = zztgVar.listeners;
                if (zzdVar == zzdVar2) {
                    break;
                }
            } while (!zze(zztgVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final zzk zzb(zztg zztgVar, zzk zzkVar) {
            zzk zzkVar2;
            do {
                zzkVar2 = zztgVar.waiters;
                if (zzkVar == zzkVar2) {
                    break;
                }
            } while (!zzg(zztgVar, zzkVar2, zzkVar));
            return zzkVar2;
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final void zzc(zzk zzkVar, zzk zzkVar2) {
            zza.putObject(zzkVar, zzf, zzkVar2);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            zza.putObject(zzkVar, zze, thread);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zze(zztg zztgVar, zzd zzdVar, zzd zzdVar2) {
            return zztj.zza(zza, zztgVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zzf(zztg zztgVar, Object obj, Object obj2) {
            return zztj.zza(zza, zztgVar, zzd, obj, obj2);
        }

        @Override // com.google.ads.interactivemedia.v3.internal.zztg.zza
        public final boolean zzg(zztg zztgVar, zzk zzkVar, zzk zzkVar2) {
            return zztj.zza(zza, zztgVar, zzc, zzkVar, zzkVar2);
        }

        public /* synthetic */ zzj(zztk zztkVar) {
            super(null);
        }
    }

    final class zzk {
        static final zzk zza = new zzk(false);
        volatile zzk next;
        volatile Thread thread;

        public zzk() {
            zztg.zza.zzd(this, Thread.currentThread());
        }

        public zzk(boolean z7) {
        }
    }

    static {
        boolean z7;
        Throwable th;
        Throwable th2;
        zza zzgVar;
        try {
            z7 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z7 = false;
        }
        zzb = z7;
        zzc = new zzut(zztg.class);
        byte b8 = 0;
        try {
            zzgVar = new zzj(null);
            th2 = null;
            th = null;
        } catch (Error | Exception e8) {
            try {
                th = null;
                th2 = e8;
                zzgVar = new zze(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, "next"), AtomicReferenceFieldUpdater.newUpdater(zztg.class, zzk.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zztg.class, zzd.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zztg.class, Object.class, "value"));
            } catch (Error | Exception e9) {
                th = e9;
                th2 = e8;
                zzgVar = new zzg(b8 == true ? 1 : 0);
            }
        }
        zza = zzgVar;
        if (th != null) {
            zzut zzutVar = zzc;
            Logger loggerZza = zzutVar.zza();
            Level level = Level.SEVERE;
            loggerZza.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzutVar.zza().logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        zzba = new Object();
    }

    private static final Object zzA(Object obj) throws ExecutionException {
        if (obj instanceof zzb) {
            Throwable th = ((zzb) obj).zzd;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).zzb);
        }
        if (obj == zzba) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object zzs(zzuu zzuuVar) {
        Throwable thZzj;
        if (zzuuVar instanceof zzh) {
            Object zzbVar = ((zztg) zzuuVar).value;
            if (zzbVar instanceof zzb) {
                zzb zzbVar2 = (zzb) zzbVar;
                if (zzbVar2.zzc) {
                    Throwable th = zzbVar2.zzd;
                    zzbVar = th != null ? new zzb(false, th) : zzb.zzb;
                }
            }
            Objects.requireNonNull(zzbVar);
            return zzbVar;
        }
        if ((zzuuVar instanceof zzvi) && (thZzj = ((zzvi) zzuuVar).zzj()) != null) {
            return new zzc(thZzj);
        }
        boolean zIsCancelled = zzuuVar.isCancelled();
        if ((!zzb) && zIsCancelled) {
            zzb zzbVar3 = zzb.zzb;
            Objects.requireNonNull(zzbVar3);
            return zzbVar3;
        }
        try {
            Object objZzt = zzt(zzuuVar);
            if (zIsCancelled) {
                return new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzuuVar))));
            }
            return objZzt == null ? zzba : objZzt;
        } catch (Error e8) {
            e = e8;
            return new zzc(e);
        } catch (CancellationException e9) {
            return !zIsCancelled ? new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzuuVar)), e9)) : new zzb(false, e9);
        } catch (ExecutionException e10) {
            return zIsCancelled ? new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzuuVar)), e10)) : new zzc(e10.getCause());
        } catch (Exception e11) {
            e = e11;
            return new zzc(e);
        }
    }

    private static Object zzt(Future future) {
        Object obj;
        boolean z7 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z7 = true;
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private final void zzu(StringBuilder sb) {
        try {
            Object objZzt = zzt(this);
            sb.append("SUCCESS, result=[");
            if (objZzt == null) {
                sb.append("null");
            } else if (objZzt == this) {
                sb.append("this future");
            } else {
                sb.append(objZzt.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objZzt)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e8) {
            sb.append("FAILURE, cause=[");
            sb.append(e8.getCause());
            sb.append("]");
        } catch (Exception e9) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e9.getClass());
            sb.append(" thrown from get()]");
        }
    }

    private final void zzv(StringBuilder sb) {
        String strConcat;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof zzf) {
            sb.append(", setFuture=[");
            zzw(sb, ((zzf) obj).zzb);
            sb.append("]");
        } else {
            try {
                strConcat = zzqm.zza(zza());
            } catch (Exception | StackOverflowError e8) {
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e8.getClass()));
            }
            if (strConcat != null) {
                sb.append(", info=[");
                sb.append(strConcat);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            zzu(sb);
        }
    }

    private final void zzw(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (Exception e8) {
            e = e8;
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        } catch (StackOverflowError e9) {
            e = e9;
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzx(zztg zztgVar, boolean z7) {
        zzd zzdVar = null;
        while (true) {
            for (zzk zzkVarZzb = zza.zzb(zztgVar, zzk.zza); zzkVarZzb != null; zzkVarZzb = zzkVarZzb.next) {
                Thread thread = zzkVarZzb.thread;
                if (thread != null) {
                    zzkVarZzb.thread = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z7) {
                zztgVar.zzp();
            }
            zztgVar.zzb();
            zzd zzdVar2 = zzdVar;
            zzd zzdVarZza = zza.zza(zztgVar, zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zzdVarZza != null) {
                zzd zzdVar4 = zzdVarZza.next;
                zzdVarZza.next = zzdVar3;
                zzdVar3 = zzdVarZza;
                zzdVarZza = zzdVar4;
            }
            while (zzdVar3 != null) {
                zzdVar = zzdVar3.next;
                Runnable runnable = zzdVar3.zzb;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzf) {
                    zzf zzfVar = (zzf) runnable2;
                    zztgVar = zzfVar.zza;
                    if (zztgVar.value == zzfVar) {
                        if (zza.zzf(zztgVar, zzfVar, zzs(zzfVar.zzb))) {
                            z7 = false;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar3.zzc;
                    Objects.requireNonNull(executor);
                    zzy(runnable2, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
        }
    }

    private static void zzy(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e8) {
            zzc.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", U2.m("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e8);
        }
    }

    private final void zzz(zzk zzkVar) {
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar2 = this.waiters;
            if (zzkVar2 != zzk.zza) {
                zzk zzkVar3 = null;
                while (zzkVar2 != null) {
                    zzk zzkVar4 = zzkVar2.next;
                    if (zzkVar2.thread != null) {
                        zzkVar3 = zzkVar2;
                    } else if (zzkVar3 != null) {
                        zzkVar3.next = zzkVar4;
                        if (zzkVar3.thread == null) {
                        }
                    } else if (!zza.zzg(this, zzkVar2, zzkVar4)) {
                    }
                    zzkVar2 = zzkVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        zzb zzbVar;
        Object obj = this.value;
        if (!(obj instanceof zzf) && !(obj == null)) {
            return false;
        }
        if (zzb) {
            zzbVar = new zzb(z7, new CancellationException("Future.cancel() was called."));
        } else {
            zzbVar = z7 ? zzb.zza : zzb.zzb;
            Objects.requireNonNull(zzbVar);
        }
        boolean z8 = false;
        zztg<V> zztgVar = this;
        while (true) {
            if (zza.zzf(zztgVar, obj, zzbVar)) {
                zzx(zztgVar, z7);
                if (obj instanceof zzf) {
                    zzuu<? extends V> zzuuVar = ((zzf) obj).zzb;
                    if (zzuuVar instanceof zzh) {
                        zztgVar = (zztg) zzuuVar;
                        obj = zztgVar.value;
                        if ((obj == null) | (obj instanceof zzf)) {
                            z8 = true;
                        }
                    } else {
                        zzuuVar.cancel(z7);
                    }
                }
                return true;
            }
            obj = zztgVar.value;
            if (!(obj instanceof zzf)) {
                return z8;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.value;
        if ((obj2 != null) && (!(obj2 instanceof zzf))) {
            return zzA(obj2);
        }
        zzk zzkVar = this.waiters;
        if (zzkVar != zzk.zza) {
            zzk zzkVar2 = new zzk();
            do {
                zza zzaVar = zza;
                zzaVar.zzc(zzkVar2, zzkVar);
                if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            zzz(zzkVar2);
                            throw new InterruptedException();
                        }
                        obj = this.value;
                    } while (!((obj != null) & (!(obj instanceof zzf))));
                    return zzA(obj);
                }
                zzkVar = this.waiters;
            } while (zzkVar != zzk.zza);
        }
        Object obj3 = this.value;
        Objects.requireNonNull(obj3);
        return zzA(obj3);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.value;
        return (obj != null) & (!(obj instanceof zzf));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.value instanceof zzb) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zzu(sb);
        } else {
            zzv(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String zza() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public void zzb() {
    }

    public boolean zzc(Object obj) {
        if (obj == null) {
            obj = zzba;
        }
        if (!zza.zzf(this, null, obj)) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    public boolean zzd(Throwable th) {
        th.getClass();
        if (!zza.zzf(this, null, new zzc(th))) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzvi
    public final Throwable zzj() {
        if (!(this instanceof zzh)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof zzc) {
            return ((zzc) obj).zzb;
        }
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzuu
    public final void zzo(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzqh.zzc(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listeners) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (zza.zze(this, zzdVar, zzdVar2)) {
                    return;
                } else {
                    zzdVar = this.listeners;
                }
            } while (zzdVar != zzd.zza);
        }
        zzy(runnable, executor);
    }

    public void zzp() {
    }

    public final boolean zzq(zzuu zzuuVar) {
        zzc zzcVar;
        zzuuVar.getClass();
        Object obj = this.value;
        if (obj == null) {
            if (zzuuVar.isDone()) {
                if (!zza.zzf(this, null, zzs(zzuuVar))) {
                    return false;
                }
                zzx(this, false);
                return true;
            }
            zzf zzfVar = new zzf(this, zzuuVar);
            if (zza.zzf(this, null, zzfVar)) {
                try {
                    zzuuVar.zzo(zzfVar, zzua.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zza.zzf(this, zzfVar, zzcVar);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof zzb) {
            zzuuVar.cancel(((zzb) obj).zzc);
        }
        return false;
    }

    public final boolean zzr() {
        Object obj = this.value;
        return (obj instanceof zzb) && ((zzb) obj).zzc;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j8);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            boolean z7 = true;
            if ((obj != null) & (!(obj instanceof zzf))) {
                return zzA(obj);
            }
            long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzk zzkVar = this.waiters;
                if (zzkVar != zzk.zza) {
                    zzk zzkVar2 = new zzk();
                    while (true) {
                        zza zzaVar = zza;
                        zzaVar.zzc(zzkVar2, zzkVar);
                        if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.value;
                                    if ((obj2 != null) & (!(obj2 instanceof zzf))) {
                                        return zzA(obj2);
                                    }
                                    nanos = jNanoTime - System.nanoTime();
                                } else {
                                    zzz(zzkVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zzz(zzkVar2);
                            break;
                        }
                        zzkVar = this.waiters;
                        if (zzkVar == zzk.zza) {
                        }
                    }
                }
                Object obj3 = this.value;
                Objects.requireNonNull(obj3);
                return zzA(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.value;
                if ((obj4 != null) & (!(obj4 instanceof zzf))) {
                    return zzA(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = jNanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String string = toString();
            String string2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = string2.toLowerCase(locale);
            String strConcat = "Waited " + j8 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String strConcat2 = strConcat.concat(" (plus ");
                long j9 = -nanos;
                long jConvert = timeUnit.convert(j9, TimeUnit.NANOSECONDS);
                long nanos2 = j9 - timeUnit.toNanos(jConvert);
                if (jConvert != 0 && nanos2 <= 1000) {
                    z7 = false;
                }
                if (jConvert > 0) {
                    String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                    if (z7) {
                        strConcat3 = strConcat3.concat(",");
                    }
                    strConcat2 = strConcat3.concat(" ");
                }
                if (z7) {
                    strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
                }
                strConcat = strConcat2.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(U2.l(strConcat, " for ", string));
        }
        throw new InterruptedException();
    }
}
