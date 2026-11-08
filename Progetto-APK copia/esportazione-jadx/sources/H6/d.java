package H6;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p155t6.h;
import p185x6.j;
import p185x6.k;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Iterator, p185x6.e, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3784G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f3785H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Iterator f3786I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public p185x6.e f3787J;

    public final RuntimeException a() {
        int i8 = this.f3784G;
        if (i8 == 4) {
            return new NoSuchElementException();
        }
        if (i8 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f3784G);
    }

    @Override // p185x6.e
    public final void b(Object obj) throws Throwable {
        q0.H(obj);
        this.f3784G = 4;
    }

    @Override // p185x6.e
    public final j getContext() {
        return k.f31227G;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i8 = this.f3784G;
            if (i8 != 0) {
                if (i8 != 1) {
                    if (i8 == 2 || i8 == 3) {
                        return true;
                    }
                    if (i8 == 4) {
                        return false;
                    }
                    throw a();
                }
                Iterator it = this.f3786I;
                q0.e(it);
                if (it.hasNext()) {
                    this.f3784G = 2;
                    return true;
                }
                this.f3786I = null;
            }
            this.f3784G = 5;
            p185x6.e eVar = this.f3787J;
            q0.e(eVar);
            this.f3787J = null;
            eVar.b(h.f30319a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i8 = this.f3784G;
        if (i8 == 0 || i8 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i8 == 2) {
            this.f3784G = 1;
            Iterator it = this.f3786I;
            q0.e(it);
            return it.next();
        }
        if (i8 != 3) {
            throw a();
        }
        this.f3784G = 0;
        Object obj = this.f3785H;
        this.f3785H = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
