package z4;

import com.google.android.gms.internal.ads.Qz;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: renamed from: z4.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3248l extends Qz implements ListIterator {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ C3249m f31877K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3248l(C3249m c3249m) {
        super(c3249m, 0);
        this.f31877K = c3249m;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        C3249m c3249m = this.f31877K;
        boolean zIsEmpty = c3249m.isEmpty();
        c().add(obj);
        c3249m.f31879M.f31838K++;
        if (zIsEmpty) {
            c3249m.b();
        }
    }

    public final ListIterator c() {
        a();
        return (ListIterator) this.f16185H;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return c().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return c().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return c().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return c().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        c().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3248l(C3249m c3249m, int i8) {
        super(c3249m, ((List) c3249m.f17696I).listIterator(i8), 0);
        this.f31877K = c3249m;
    }
}
