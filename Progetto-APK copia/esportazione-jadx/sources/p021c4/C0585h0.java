package p021c4;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: renamed from: c4.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0585h0 extends FutureTask implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f11195G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f11196H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11197I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0591j0 f11198J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0585h0(C0591j0 c0591j0, Runnable runnable, boolean z7, String str) {
        super(runnable, null);
        this.f11198J = c0591j0;
        long andIncrement = C0591j0.f11221Q.getAndIncrement();
        this.f11195G = andIncrement;
        this.f11197I = str;
        this.f11196H = z7;
        if (andIncrement == Long.MAX_VALUE) {
            T t7 = ((C0597l0) c0591j0.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C0585h0 c0585h0 = (C0585h0) obj;
        boolean z7 = c0585h0.f11196H;
        boolean z8 = this.f11196H;
        if (z8 == z7) {
            long j8 = c0585h0.f11195G;
            long j9 = this.f11195G;
            if (j9 < j8) {
                return -1;
            }
            if (j9 <= j8) {
                T t7 = ((C0597l0) this.f11198J.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11040M.b(Long.valueOf(j9), "Two tasks share the same index. index");
                return 0;
            }
        } else if (z8) {
            return -1;
        }
        return 1;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        T t7 = ((C0597l0) this.f11198J.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11039L.b(th, this.f11197I);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0585h0(C0591j0 c0591j0, Callable callable, boolean z7) {
        super(callable);
        this.f11198J = c0591j0;
        long andIncrement = C0591j0.f11221Q.getAndIncrement();
        this.f11195G = andIncrement;
        this.f11197I = "Task exception on worker thread";
        this.f11196H = z7;
        if (andIncrement == Long.MAX_VALUE) {
            T t7 = ((C0597l0) c0591j0.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Tasks index overflow");
        }
    }
}
