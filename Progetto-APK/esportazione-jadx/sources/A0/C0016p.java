package A0;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: renamed from: A0.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0016p implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f194b;

    public /* synthetic */ C0016p(Object obj, int i8) {
        this.f193a = i8;
        this.f194b = obj;
    }

    @Override // A0.g0
    public final void run() {
        int i8 = this.f193a;
        Object obj = this.f194b;
        switch (i8) {
            case 0:
                ((CountDownLatch) obj).countDown();
                break;
            case 1:
                ((D) obj).flush();
                break;
            case 2:
                E e8 = ((Z) obj).f110J;
                e8.getClass();
                e8.b();
                AbstractC0007g.b(Long.MIN_VALUE);
                break;
            case 3:
                ((E) obj).r();
                break;
            default:
                ((a0) obj).b();
                break;
        }
    }
}
