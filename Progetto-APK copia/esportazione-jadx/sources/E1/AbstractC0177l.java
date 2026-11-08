package E1;

import java.util.ArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: E1.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0177l extends AbstractC0178m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2766a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Executor f2767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0185u f2768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0173h f2769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f2770e;

    public final void j(C0173h c0173h, ArrayList arrayList) {
        if (c0173h == null) {
            throw new NullPointerException("groupRoute must not be null");
        }
        synchronized (this.f2766a) {
            try {
                Executor executor = this.f2767b;
                if (executor != null) {
                    executor.execute(new RunnableC0175j(this, this.f2768c, c0173h, arrayList, 1));
                } else {
                    this.f2769d = c0173h;
                    this.f2770e = new ArrayList(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
