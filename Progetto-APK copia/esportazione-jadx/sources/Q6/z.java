package Q6;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f6104a = new y(new byte[0], 0, 0, false, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f6106c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f6105b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i8 = 0; i8 < iHighestOneBit; i8++) {
            atomicReferenceArr[i8] = new AtomicReference();
        }
        f6106c = atomicReferenceArr;
    }

    public static final void a(y yVar) {
        if (yVar.f6102f != null || yVar.f6103g != null) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (yVar.f6100d) {
            return;
        }
        AtomicReference atomicReference = f6106c[(int) (Thread.currentThread().getId() & (((long) f6105b) - 1))];
        y yVar2 = f6104a;
        y yVar3 = (y) atomicReference.getAndSet(yVar2);
        if (yVar3 == yVar2) {
            return;
        }
        int i8 = yVar3 != null ? yVar3.f6099c : 0;
        if (i8 >= 65536) {
            atomicReference.set(yVar3);
            return;
        }
        yVar.f6102f = yVar3;
        yVar.f6098b = 0;
        yVar.f6099c = i8 + 8192;
        atomicReference.set(yVar);
    }

    public static final y b() {
        AtomicReference atomicReference = f6106c[(int) (Thread.currentThread().getId() & (((long) f6105b) - 1))];
        y yVar = f6104a;
        y yVar2 = (y) atomicReference.getAndSet(yVar);
        if (yVar2 == yVar) {
            return new y();
        }
        if (yVar2 == null) {
            atomicReference.set(null);
            return new y();
        }
        atomicReference.set(yVar2.f6102f);
        yVar2.f6102f = null;
        yVar2.f6099c = 0;
        return yVar2;
    }
}
