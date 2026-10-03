package J6;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class P implements G {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4215b = AtomicIntegerFieldUpdater.newUpdater(P.class, "_isCompleting$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4216c = AtomicReferenceFieldUpdater.newUpdater(P.class, Object.class, "_rootCause$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4217d = AtomicReferenceFieldUpdater.newUpdater(P.class, Object.class, "_exceptionsHolder$volatile");
    private volatile /* synthetic */ Object _exceptionsHolder$volatile;
    private volatile /* synthetic */ int _isCompleting$volatile = 0;
    private volatile /* synthetic */ Object _rootCause$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f4218a;

    public P(T t7, Throwable th) {
        this.f4218a = t7;
        this._rootCause$volatile = th;
    }

    public final void a(Throwable th) {
        Throwable thB = b();
        if (thB == null) {
            f4216c.set(this, th);
            return;
        }
        if (th == thB) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4217d;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            atomicReferenceFieldUpdater.set(this, th);
            return;
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
                return;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
        }
        if (th == obj) {
            return;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(th);
        atomicReferenceFieldUpdater.set(this, arrayList);
    }

    public final Throwable b() {
        return (Throwable) f4216c.get(this);
    }

    @Override // J6.G
    public final T c() {
        return this.f4218a;
    }

    public final boolean d() {
        return b() != null;
    }

    public final ArrayList e(Throwable th) {
        ArrayList arrayList;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4217d;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else {
            if (!(obj instanceof ArrayList)) {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            arrayList = (ArrayList) obj;
        }
        Throwable thB = b();
        if (thB != null) {
            arrayList.add(0, thB);
        }
        if (th != null && !q0.c(th, thB)) {
            arrayList.add(th);
        }
        atomicReferenceFieldUpdater.set(this, r.f4255h);
        return arrayList;
    }

    @Override // J6.G
    public final boolean isActive() {
        return b() == null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Finishing[cancelling=");
        sb.append(d());
        sb.append(", completing=");
        sb.append(f4215b.get(this) != 0);
        sb.append(", rootCause=");
        sb.append(b());
        sb.append(", exceptions=");
        sb.append(f4217d.get(this));
        sb.append(", list=");
        sb.append(this.f4218a);
        sb.append(']');
        return sb.toString();
    }
}
