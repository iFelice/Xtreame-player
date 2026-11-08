package X1;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f7613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f7614b;

    static {
        C0382a c0382a = new C0382a();
        c0382a.f7617e0 = false;
        c0382a.I(new h(2));
        c0382a.I(new C0387f());
        c0382a.I(new h(1));
        f7613a = new ThreadLocal();
        f7614b = new ArrayList();
    }

    public static p132r.f a() {
        p132r.f fVar;
        ThreadLocal threadLocal = f7613a;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (fVar = (p132r.f) weakReference.get()) != null) {
            return fVar;
        }
        p132r.f fVar2 = new p132r.f();
        threadLocal.set(new WeakReference(fVar2));
        return fVar2;
    }
}
