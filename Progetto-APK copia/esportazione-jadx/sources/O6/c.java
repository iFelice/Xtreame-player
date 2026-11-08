package O6;

import A0.O;
import N6.s;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Executor, Closeable {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f5660N = AtomicLongFieldUpdater.newUpdater(c.class, "parkedWorkersStack$volatile");

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f5661O = AtomicLongFieldUpdater.newUpdater(c.class, "controlState$volatile");

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5662P = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isTerminated$volatile");

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final p120p3.e f5663Q = new p120p3.e("NOT_IN_STACK", 5);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f5664G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f5665H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f5666I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f5667J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final f f5668K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final f f5669L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final s f5670M;
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    public c(int i8, int i9, long j8, String str) {
        this.f5664G = i8;
        this.f5665H = i9;
        this.f5666I = j8;
        this.f5667J = str;
        if (i8 < 1) {
            throw new IllegalArgumentException(O.y("Core pool size ", i8, " should be at least 1").toString());
        }
        if (i9 < i8) {
            throw new IllegalArgumentException(U2.j("Max pool size ", i9, " should be greater than or equals to core pool size ", i8).toString());
        }
        if (i9 > 2097150) {
            throw new IllegalArgumentException(O.y("Max pool size ", i9, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j8 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j8 + " must be positive").toString());
        }
        this.f5668K = new f();
        this.f5669L = new f();
        this.f5670M = new s((i8 + 1) * 2);
        this.controlState$volatile = ((long) i8) << 42;
        this._isTerminated$volatile = 0;
    }

    public final void E(Runnable runnable, boolean z7, boolean z8) {
        i jVar;
        b bVar;
        k.f5684f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof i) {
            jVar = (i) runnable;
            jVar.f5676G = jNanoTime;
            jVar.f5677H = z7;
        } else {
            jVar = new j(runnable, jNanoTime, z7);
        }
        boolean z9 = jVar.f5677H;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f5661O;
        long jAddAndGet = z9 ? atomicLongFieldUpdater.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !q0.c(aVar.f5653N, this)) {
            aVar = null;
        }
        if (aVar != null && (bVar = aVar.f5648I) != b.f5658K && (jVar.f5677H || bVar != b.f5655H)) {
            aVar.f5652M = true;
            m mVar = aVar.f5646G;
            if (z8) {
                jVar = mVar.a(jVar);
            } else {
                mVar.getClass();
                i iVar = (i) m.f5686b.getAndSet(mVar, jVar);
                jVar = iVar == null ? null : mVar.a(iVar);
            }
        }
        if (jVar != null) {
            if (!(jVar.f5677H ? this.f5669L.a(jVar) : this.f5668K.a(jVar))) {
                throw new RejectedExecutionException(r.j(new StringBuilder(), this.f5667J, " was terminated"));
            }
        }
        boolean z10 = z8 && aVar != null;
        if (z9) {
            if (z10 || a0() || O(jAddAndGet)) {
                return;
            }
            a0();
            return;
        }
        if (z10 || a0() || O(atomicLongFieldUpdater.get(this))) {
            return;
        }
        a0();
    }

    public final void N(a aVar, int i8, int i9) {
        while (true) {
            long j8 = f5660N.get(this);
            int iB = (int) (2097151 & j8);
            long j9 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j8) & (-2097152);
            if (iB == i8) {
                if (i9 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == f5663Q) {
                            iB = -1;
                            break;
                        }
                        if (objC == null) {
                            iB = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        iB = aVar2.b();
                        if (iB != 0) {
                            break;
                        } else {
                            objC = aVar2.c();
                        }
                    }
                } else {
                    iB = i9;
                }
            }
            if (iB >= 0) {
                if (f5660N.compareAndSet(this, j8, j9 | ((long) iB))) {
                    return;
                }
            }
        }
    }

    public final boolean O(long j8) {
        int i8 = ((int) (2097151 & j8)) - ((int) ((j8 & 4398044413952L) >> 21));
        if (i8 < 0) {
            i8 = 0;
        }
        int i9 = this.f5664G;
        if (i8 < i9) {
            int iK = k();
            if (iK == 1 && i9 > 1) {
                k();
            }
            if (iK > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean a0() {
        p120p3.e eVar;
        int iB;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f5660N;
            long j8 = atomicLongFieldUpdater.get(this);
            a aVar = (a) this.f5670M.b((int) (2097151 & j8));
            if (aVar == null) {
                aVar = null;
            } else {
                long j9 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j8) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    eVar = f5663Q;
                    if (objC == eVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0 && atomicLongFieldUpdater.compareAndSet(this, j8, j9 | ((long) iB))) {
                    aVar.g(eVar);
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.f5645O.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008b  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i8;
        i iVarA;
        if (f5662P.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
            if (aVar == null || !q0.c(aVar.f5653N, this)) {
                aVar = null;
            }
            synchronized (this.f5670M) {
                i8 = (int) (f5661O.get(this) & 2097151);
            }
            if (1 <= i8) {
                int i9 = 1;
                while (true) {
                    Object objB = this.f5670M.b(i9);
                    q0.e(objB);
                    a aVar2 = (a) objB;
                    if (aVar2 != aVar) {
                        while (aVar2.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(aVar2);
                            aVar2.join(10000L);
                        }
                        m mVar = aVar2.f5646G;
                        f fVar = this.f5669L;
                        mVar.getClass();
                        i iVar = (i) m.f5686b.getAndSet(mVar, null);
                        if (iVar != null) {
                            fVar.a(iVar);
                        }
                        while (true) {
                            i iVarB = mVar.b();
                            if (iVarB == null) {
                                break;
                            } else {
                                fVar.a(iVarB);
                            }
                        }
                    }
                    if (i9 == i8) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.f5669L.b();
            this.f5668K.b();
            while (true) {
                if (aVar != null) {
                    iVarA = aVar.a(true);
                    if (iVarA == null) {
                        iVarA = (i) this.f5668K.d();
                        if (iVarA == null) {
                            break;
                            break;
                        }
                    }
                } else {
                    iVarA = (i) this.f5668K.d();
                    if (iVarA == null && (iVarA = (i) this.f5669L.d()) == null) {
                        break;
                    }
                }
                try {
                    iVarA.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (aVar != null) {
                aVar.h(b.f5658K);
            }
            f5660N.set(this, 0L);
            f5661O.set(this, 0L);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        E(runnable, false, false);
    }

    public final int k() {
        synchronized (this.f5670M) {
            try {
                if (f5662P.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f5661O;
                long j8 = atomicLongFieldUpdater.get(this);
                int i8 = (int) (j8 & 2097151);
                int i9 = i8 - ((int) ((j8 & 4398044413952L) >> 21));
                if (i9 < 0) {
                    i9 = 0;
                }
                if (i9 >= this.f5664G) {
                    return 0;
                }
                if (i8 >= this.f5665H) {
                    return 0;
                }
                int i10 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i10 <= 0 || this.f5670M.b(i10) != null) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                a aVar = new a(this, i10);
                this.f5670M.c(i10, aVar);
                if (i10 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                int i11 = i9 + 1;
                aVar.start();
                return i11;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        s sVar = this.f5670M;
        int iA = sVar.a();
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 1; i13 < iA; i13++) {
            a aVar = (a) sVar.b(i13);
            if (aVar != null) {
                m mVar = aVar.f5646G;
                mVar.getClass();
                int i14 = m.f5686b.get(mVar) != null ? (m.f5687c.get(mVar) - m.f5688d.get(mVar)) + 1 : m.f5687c.get(mVar) - m.f5688d.get(mVar);
                int iOrdinal = aVar.f5648I.ordinal();
                if (iOrdinal == 0) {
                    i8++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i14);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iOrdinal == 1) {
                    i9++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i14);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iOrdinal == 2) {
                    i10++;
                } else if (iOrdinal == 3) {
                    i11++;
                    if (i14 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i14);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (iOrdinal != 4) {
                        throw new Y.r(16, (Object) null);
                    }
                    i12++;
                }
            }
        }
        long j8 = f5661O.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f5667J);
        sb4.append('@');
        sb4.append(J6.r.i(this));
        sb4.append("[Pool Size {core = ");
        int i15 = this.f5664G;
        sb4.append(i15);
        sb4.append(", max = ");
        O.J(sb4, this.f5665H, "}, Worker States {CPU = ", i8, ", blocking = ");
        O.J(sb4, i9, ", parked = ", i10, ", dormant = ");
        O.J(sb4, i11, ", terminated = ", i12, "}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f5668K.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f5669L.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j8));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j8) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i15 - ((int) ((j8 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
