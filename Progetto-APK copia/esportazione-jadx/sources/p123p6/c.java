package p123p6;

import java.util.concurrent.atomic.AtomicReference;
import p054g6.d;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f28232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f28233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f28234d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f28235a;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        f28234d = iAvailableProcessors;
        new b(new i("RxComputationShutdown")).a();
        i iVar = new i(Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), "RxComputationThreadPool", true);
        f28233c = iVar;
        a aVar = new a(0, iVar);
        f28232b = aVar;
        for (b bVar : aVar.f28231a) {
            bVar.a();
        }
    }

    public c() {
        AtomicReference atomicReference;
        a aVar = f28232b;
        this.f28235a = new AtomicReference(aVar);
        a aVar2 = new a(f28234d, f28233c);
        do {
            atomicReference = this.f28235a;
            if (atomicReference.compareAndSet(aVar, aVar2)) {
                return;
            }
        } while (atomicReference.get() == aVar);
        for (b bVar : aVar2.f28231a) {
            bVar.a();
        }
    }
}
