package p162u6;

import N.P;
import Z5.C0456m;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends P implements ListIterator {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ e f30529J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, int i8) {
        super(eVar, 1);
        this.f30529J = eVar;
        C0456m.b(i8, eVar.b());
        this.f4851H = i8;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f4851H > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f4851H;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f4851H - 1;
        this.f4851H = i8;
        return this.f30529J.get(i8);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f4851H - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
