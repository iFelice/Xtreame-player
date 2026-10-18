package O6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5645O = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl$volatile");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final m f5646G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final D6.k f5647H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public b f5648I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f5649J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f5650K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f5651L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f5652M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ c f5653N;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    private volatile /* synthetic */ int workerCtl$volatile;

    public a(c cVar, int i8) {
        this.f5653N = cVar;
        setDaemon(true);
        setContextClassLoader(cVar.getClass().getClassLoader());
        this.f5646G = new m();
        this.f5647H = new D6.k();
        this.f5648I = b.f5657J;
        this.nextParkedWorker = c.f5663Q;
        int iNanoTime = (int) System.nanoTime();
        this.f5651L = iNanoTime == 0 ? 42 : iNanoTime;
        f(i8);
    }

    public final i a(boolean z7) {
        i iVarE;
        i iVarE2;
        c cVar;
        long j8;
        b bVar = this.f5648I;
        b bVar2 = b.f5654G;
        i iVar = null;
        m mVar = this.f5646G;
        c cVar2 = this.f5653N;
        if (bVar != bVar2) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = c.f5661O;
            do {
                cVar = this.f5653N;
                j8 = atomicLongFieldUpdater.get(cVar);
                if (((int) ((9223367638808264704L & j8) >> 42)) == 0) {
                    mVar.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m.f5686b;
                        i iVar2 = (i) atomicReferenceFieldUpdater.get(mVar);
                        if (iVar2 == null || !iVar2.f5677H) {
                            int i8 = m.f5688d.get(mVar);
                            int i9 = m.f5687c.get(mVar);
                            while (i8 != i9 && m.f5689e.get(mVar) != 0) {
                                i9--;
                                i iVarC = mVar.c(i9, true);
                                if (iVarC != null) {
                                    iVar = iVarC;
                                    break;
                                }
                            }
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(mVar, iVar2, null)) {
                                iVar = iVar2;
                                break loop1;
                            }
                        } while (atomicReferenceFieldUpdater.get(mVar) == iVar2);
                    }
                    if (iVar != null) {
                        return iVar;
                    }
                    i iVar3 = (i) cVar2.f5669L.d();
                    return iVar3 == null ? i(1) : iVar3;
                }
            } while (!c.f5661O.compareAndSet(cVar, j8, j8 - 4398046511104L));
            this.f5648I = b.f5654G;
        }
        if (z7) {
            boolean z8 = d(cVar2.f5664G * 2) == 0;
            if (z8 && (iVarE2 = e()) != null) {
                return iVarE2;
            }
            mVar.getClass();
            i iVarB = (i) m.f5686b.getAndSet(mVar, null);
            if (iVarB == null) {
                iVarB = mVar.b();
            }
            if (iVarB != null) {
                return iVarB;
            }
            if (!z8 && (iVarE = e()) != null) {
                return iVarE;
            }
        } else {
            i iVarE3 = e();
            if (iVarE3 != null) {
                return iVarE3;
            }
        }
        return i(3);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i8) {
        int i9 = this.f5651L;
        int i10 = i9 ^ (i9 << 13);
        int i11 = i10 ^ (i10 >> 17);
        int i12 = i11 ^ (i11 << 5);
        this.f5651L = i12;
        int i13 = i8 - 1;
        return (i13 & i8) == 0 ? i12 & i13 : (i12 & com.google.android.gms.common.api.d.API_PRIORITY_OTHER) % i8;
    }

    public final i e() {
        int iD = d(2);
        c cVar = this.f5653N;
        if (iD == 0) {
            i iVar = (i) cVar.f5668K.d();
            return iVar != null ? iVar : (i) cVar.f5669L.d();
        }
        i iVar2 = (i) cVar.f5669L.d();
        return iVar2 != null ? iVar2 : (i) cVar.f5668K.d();
    }

    public final void f(int i8) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5653N.f5667J);
        sb.append("-worker-");
        sb.append(i8 == 0 ? "TERMINATED" : String.valueOf(i8));
        setName(sb.toString());
        this.indexInArray = i8;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(b bVar) {
        b bVar2 = this.f5648I;
        boolean z7 = bVar2 == b.f5654G;
        if (z7) {
            c.f5661O.addAndGet(this.f5653N, 4398046511104L);
        }
        if (bVar2 != bVar) {
            this.f5648I = bVar;
        }
        return z7;
    }

    public final i i(int i8) {
        i iVarC;
        long j8;
        long j9;
        AtomicLongFieldUpdater atomicLongFieldUpdater = c.f5661O;
        c cVar = this.f5653N;
        int i9 = (int) (atomicLongFieldUpdater.get(cVar) & 2097151);
        if (i9 < 2) {
            return null;
        }
        int iD = d(i9);
        long jMin = Long.MAX_VALUE;
        for (int i10 = 0; i10 < i9; i10++) {
            iD++;
            if (iD > i9) {
                iD = 1;
            }
            a aVar = (a) cVar.f5670M.b(iD);
            if (aVar != null && aVar != this) {
                m mVar = aVar.f5646G;
                if (i8 != 3) {
                    mVar.getClass();
                    int i11 = m.f5688d.get(mVar);
                    int i12 = m.f5687c.get(mVar);
                    boolean z7 = i8 == 1;
                    while (true) {
                        if (i11 == i12 || (z7 && m.f5689e.get(mVar) == 0)) {
                            iVarC = null;
                            break;
                        }
                        int i13 = i11 + 1;
                        iVarC = mVar.c(i11, z7);
                        if (iVarC != null) {
                            break;
                        }
                        i11 = i13;
                    }
                } else {
                    iVarC = mVar.b();
                }
                D6.k kVar = this.f5647H;
                if (iVarC != null) {
                    kVar.f2436G = iVarC;
                    j9 = -1;
                } else {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m.f5686b;
                        i iVar = (i) atomicReferenceFieldUpdater.get(mVar);
                        j8 = -2;
                        if (iVar == null) {
                            break;
                        }
                        if (((iVar.f5677H ? 1 : 2) & i8) == 0) {
                            break;
                        }
                        k.f5684f.getClass();
                        long jNanoTime = System.nanoTime() - iVar.f5676G;
                        long j10 = k.f5680b;
                        if (jNanoTime < j10) {
                            j8 = j10 - jNanoTime;
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(mVar, iVar, null)) {
                                kVar.f2436G = iVar;
                                j8 = -1;
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(mVar) == iVar);
                    }
                    j9 = j8;
                }
                if (j9 == -1) {
                    i iVar2 = (i) kVar.f2436G;
                    kVar.f2436G = null;
                    return iVar2;
                }
                if (j9 > 0) {
                    jMin = Math.min(jMin, j9);
                }
            }
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f5650K = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z7 = false;
        loop0: while (true) {
            boolean z8 = false;
            while (true) {
                c cVar = this.f5653N;
                cVar.getClass();
                if (c.f5662P.get(cVar) == 0) {
                    b bVar = this.f5648I;
                    b bVar2 = b.f5658K;
                    if (bVar == bVar2) {
                        break loop0;
                    }
                    i iVarA = a(this.f5652M);
                    long j8 = -2097152;
                    if (iVarA != null) {
                        this.f5650K = 0L;
                        this.f5649J = 0L;
                        if (this.f5648I == b.f5656I) {
                            this.f5648I = b.f5655H;
                        }
                        boolean z9 = iVarA.f5677H;
                        c cVar2 = this.f5653N;
                        if (!z9) {
                            cVar2.getClass();
                            try {
                                iVarA.run();
                                break;
                            } catch (Throwable th) {
                                Thread threadCurrentThread = Thread.currentThread();
                                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                                break;
                            }
                        }
                        if (h(b.f5655H) && !cVar2.a0() && !cVar2.O(c.f5661O.get(cVar2))) {
                            cVar2.a0();
                        }
                        cVar2.getClass();
                        try {
                            iVarA.run();
                        } catch (Throwable th2) {
                            Thread threadCurrentThread2 = Thread.currentThread();
                            threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th2);
                        }
                        c.f5661O.addAndGet(cVar2, -2097152L);
                        if (this.f5648I == bVar2) {
                            break;
                        }
                        this.f5648I = b.f5657J;
                        break;
                    }
                    this.f5652M = z7;
                    if (this.f5650K == 0) {
                        Object obj = this.nextParkedWorker;
                        p120p3.e eVar = c.f5663Q;
                        if (obj != eVar) {
                            f5645O.set(this, -1);
                            while (this.nextParkedWorker != c.f5663Q) {
                                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f5645O;
                                if (atomicIntegerFieldUpdater.get(this) != -1) {
                                    break;
                                }
                                c cVar3 = this.f5653N;
                                cVar3.getClass();
                                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = c.f5662P;
                                if (atomicIntegerFieldUpdater2.get(cVar3) != 0) {
                                    break;
                                }
                                b bVar3 = this.f5648I;
                                b bVar4 = b.f5658K;
                                if (bVar3 == bVar4) {
                                    break;
                                }
                                h(b.f5656I);
                                Thread.interrupted();
                                if (this.f5649J == 0) {
                                    this.f5649J = System.nanoTime() + this.f5653N.f5666I;
                                }
                                LockSupport.parkNanos(this.f5653N.f5666I);
                                if (System.nanoTime() - this.f5649J >= 0) {
                                    this.f5649J = 0L;
                                    c cVar4 = this.f5653N;
                                    synchronized (cVar4.f5670M) {
                                        try {
                                            if (!(atomicIntegerFieldUpdater2.get(cVar4) != 0)) {
                                                AtomicLongFieldUpdater atomicLongFieldUpdater = c.f5661O;
                                                if (((int) (atomicLongFieldUpdater.get(cVar4) & 2097151)) > cVar4.f5664G && atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                    int i8 = this.indexInArray;
                                                    f(0);
                                                    cVar4.N(this, i8, 0);
                                                    int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(cVar4) & 2097151);
                                                    if (andDecrement != i8) {
                                                        Object objB = cVar4.f5670M.b(andDecrement);
                                                        q0.e(objB);
                                                        a aVar = (a) objB;
                                                        cVar4.f5670M.c(i8, aVar);
                                                        aVar.f(i8);
                                                        cVar4.N(aVar, andDecrement, i8);
                                                    }
                                                    cVar4.f5670M.c(andDecrement, null);
                                                    this.f5648I = bVar4;
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            throw th3;
                                        }
                                    }
                                }
                            }
                        } else {
                            c cVar5 = this.f5653N;
                            cVar5.getClass();
                            if (this.nextParkedWorker == eVar) {
                                while (true) {
                                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = c.f5660N;
                                    long j9 = atomicLongFieldUpdater2.get(cVar5);
                                    long j10 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j9) & j8;
                                    int i9 = this.indexInArray;
                                    this.nextParkedWorker = cVar5.f5670M.b((int) (j9 & 2097151));
                                    if (atomicLongFieldUpdater2.compareAndSet(cVar5, j9, j10 | ((long) i9))) {
                                        break;
                                    } else {
                                        j8 = -2097152;
                                    }
                                }
                            }
                        }
                        z7 = false;
                    } else {
                        if (z8) {
                            h(b.f5656I);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f5650K);
                            this.f5650K = 0L;
                            break;
                        }
                        z8 = true;
                    }
                } else {
                    break loop0;
                }
            }
        }
        h(b.f5658K);
    }
}
