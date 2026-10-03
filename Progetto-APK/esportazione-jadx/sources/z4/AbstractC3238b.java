package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: z4.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3238b extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f31834H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f31835I;

    public AbstractC3238b() {
        super(8);
        this.f31834H = 2;
    }

    public abstract Object a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        p190y4.k.w(this.f31834H != 4);
        int iB = p156u.h.b(this.f31834H);
        if (iB == 0) {
            return true;
        }
        if (iB == 2) {
            return false;
        }
        this.f31834H = 4;
        this.f31835I = a();
        if (this.f31834H == 3) {
            return false;
        }
        this.f31834H = 1;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f31834H = 2;
        Object obj = this.f31835I;
        this.f31835I = null;
        return obj;
    }
}
