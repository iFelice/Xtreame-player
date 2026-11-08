package Z3;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class P extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f8266H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f8267I;

    public P(Object obj) {
        super(6);
        this.f8266H = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f8267I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (this.f8267I) {
            throw new NoSuchElementException();
        }
        this.f8267I = true;
        return this.f8266H;
    }
}
