package A0;

import java.util.concurrent.LinkedBlockingQueue;
import p094m0.C3138v;

/* JADX INFO: renamed from: A0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0002b implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0003c f123b;

    public /* synthetic */ C0002b(C0003c c0003c, int i8) {
        this.f122a = i8;
        this.f123b = c0003c;
    }

    @Override // A0.g0
    public final void run() {
        int i8 = this.f122a;
        C0003c c0003c = this.f123b;
        switch (i8) {
            case 0:
                if (c0003c.f128J.isEmpty()) {
                    K k8 = c0003c.f129K;
                    k8.getClass();
                    ((AbstractC0001a) k8).a();
                    AbstractC0007g.b(Long.MIN_VALUE);
                    return;
                }
                return;
            case 1:
                c0003c.f131M++;
                LinkedBlockingQueue linkedBlockingQueue = c0003c.f128J;
                if (linkedBlockingQueue.isEmpty() || c0003c.f131M == 0) {
                    return;
                }
                O.I(linkedBlockingQueue.element());
                throw null;
            default:
                C3138v c3138v = c0003c.f130L;
                if (c3138v != null) {
                    c3138v.a();
                }
                c0003c.f128J.clear();
                return;
        }
    }
}
