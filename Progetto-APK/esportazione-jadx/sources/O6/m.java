package O6;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5686b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5687c = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5688d = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5689e = AtomicIntegerFieldUpdater.newUpdater(m.class, "blockingTasksInBuffer$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f5690a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    public final i a(i iVar) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f5687c;
        if (atomicIntegerFieldUpdater.get(this) - f5688d.get(this) == 127) {
            return iVar;
        }
        if (iVar.f5677H) {
            f5689e.incrementAndGet(this);
        }
        int i8 = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f5690a;
            if (atomicReferenceArray.get(i8) == null) {
                atomicReferenceArray.lazySet(i8, iVar);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final i b() {
        i iVar;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f5688d;
            int i8 = atomicIntegerFieldUpdater.get(this);
            if (i8 - f5687c.get(this) == 0) {
                return null;
            }
            int i9 = i8 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i8, i8 + 1) && (iVar = (i) this.f5690a.getAndSet(i9, null)) != null) {
                if (iVar.f5677H) {
                    f5689e.decrementAndGet(this);
                }
                return iVar;
            }
        }
    }

    public final i c(int i8, boolean z7) {
        int i9 = i8 & 127;
        AtomicReferenceArray atomicReferenceArray = this.f5690a;
        i iVar = (i) atomicReferenceArray.get(i9);
        if (iVar != null && iVar.f5677H == z7) {
            while (!atomicReferenceArray.compareAndSet(i9, iVar, null)) {
                if (atomicReferenceArray.get(i9) != iVar) {
                }
            }
            if (z7) {
                f5689e.decrementAndGet(this);
            }
            return iVar;
        }
        return null;
    }
}
