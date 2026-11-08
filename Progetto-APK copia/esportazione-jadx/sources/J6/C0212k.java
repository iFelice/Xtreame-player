package J6;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: renamed from: J6.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C0212k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4241b = AtomicIntegerFieldUpdater.newUpdater(C0212k.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f4242a;

    public C0212k(boolean z7, Throwable th) {
        this.f4242a = th;
        this._handled$volatile = z7 ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f4242a + ']';
    }
}
