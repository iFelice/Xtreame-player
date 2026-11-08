package A2;

import C2.A;
import C2.C0091g;
import P2.k;
import java.util.ArrayDeque;
import y2.D;
import y2.p;

/* JADX INFO: loaded from: classes.dex */
public final class f extends k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f623d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f624e;

    public f(long j8) {
        super(j8);
    }

    @Override // P2.k
    public final int b(Object obj) {
        switch (this.f623d) {
            case 0:
                D d6 = (D) obj;
                if (d6 == null) {
                    return 1;
                }
                return d6.d();
            default:
                return 1;
        }
    }

    @Override // P2.k
    public final void c(Object obj, Object obj2) {
        switch (this.f623d) {
            case 0:
                D d6 = (D) obj2;
                g gVar = (g) this.f624e;
                if (gVar == null || d6 == null) {
                    return;
                }
                ((p) gVar).f31359e.b(d6, true);
                return;
            default:
                A a8 = (A) obj;
                a8.getClass();
                ArrayDeque arrayDeque = A.f1343d;
                synchronized (arrayDeque) {
                    arrayDeque.offer(a8);
                    break;
                }
                return;
        }
    }

    public final void f(int i8) {
        long j8;
        if (i8 >= 40) {
            e(0L);
        } else if (i8 >= 20 || i8 == 15) {
            synchronized (this) {
                j8 = this.f5898b;
            }
            e(j8 / 2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(C0091g c0091g) {
        super(500L);
        this.f624e = c0091g;
    }
}
