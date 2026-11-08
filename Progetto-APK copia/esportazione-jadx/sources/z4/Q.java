package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f31824H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f31825I;

    public Q(Object obj) {
        super(8);
        this.f31824H = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f31825I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (this.f31825I) {
            throw new NoSuchElementException();
        }
        this.f31825I = true;
        return this.f31824H;
    }
}
