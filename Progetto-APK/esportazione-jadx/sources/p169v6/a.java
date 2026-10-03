package p169v6;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import p162u6.f;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements ListIterator, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30725G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f30726H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f30727I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f30728J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final f f30729K;

    public a(c cVar, int i8) {
        q0.h(cVar, "list");
        this.f30729K = cVar;
        this.f30726H = i8;
        this.f30727I = -1;
        this.f30728J = ((AbstractList) cVar).modCount;
    }

    public final void a() {
        if (((AbstractList) ((b) this.f30729K).f30734K).modCount != this.f30728J) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        f fVar = this.f30729K;
        switch (this.f30725G) {
            case 0:
                a();
                b bVar = (b) fVar;
                int i8 = this.f30726H;
                this.f30726H = i8 + 1;
                bVar.add(i8, obj);
                this.f30727I = -1;
                this.f30728J = ((AbstractList) bVar).modCount;
                break;
            default:
                b();
                c cVar = (c) fVar;
                int i9 = this.f30726H;
                this.f30726H = i9 + 1;
                cVar.add(i9, obj);
                this.f30727I = -1;
                this.f30728J = ((AbstractList) cVar).modCount;
                break;
        }
    }

    public final void b() {
        if (((AbstractList) ((c) this.f30729K)).modCount != this.f30728J) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        f fVar = this.f30729K;
        switch (this.f30725G) {
            case 0:
                return this.f30726H < ((b) fVar).f30732I;
            default:
                return this.f30726H < ((c) fVar).f30737H;
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f30725G) {
            case 0:
                return this.f30726H > 0;
            default:
                return this.f30726H > 0;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        f fVar = this.f30729K;
        switch (this.f30725G) {
            case 0:
                a();
                int i8 = this.f30726H;
                b bVar = (b) fVar;
                if (i8 >= bVar.f30732I) {
                    throw new NoSuchElementException();
                }
                this.f30726H = i8 + 1;
                this.f30727I = i8;
                return bVar.f30730G[bVar.f30731H + i8];
            default:
                b();
                int i9 = this.f30726H;
                c cVar = (c) fVar;
                if (i9 >= cVar.f30737H) {
                    throw new NoSuchElementException();
                }
                this.f30726H = i9 + 1;
                this.f30727I = i9;
                return cVar.f30736G[i9];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f30725G) {
            case 0:
                break;
        }
        return this.f30726H;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        f fVar = this.f30729K;
        switch (this.f30725G) {
            case 0:
                a();
                int i8 = this.f30726H;
                if (i8 <= 0) {
                    throw new NoSuchElementException();
                }
                int i9 = i8 - 1;
                this.f30726H = i9;
                this.f30727I = i9;
                b bVar = (b) fVar;
                return bVar.f30730G[bVar.f30731H + i9];
            default:
                b();
                int i10 = this.f30726H;
                if (i10 <= 0) {
                    throw new NoSuchElementException();
                }
                int i11 = i10 - 1;
                this.f30726H = i11;
                this.f30727I = i11;
                return ((c) fVar).f30736G[i11];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        switch (this.f30725G) {
            case 0:
                break;
        }
        return this.f30726H - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        f fVar = this.f30729K;
        switch (this.f30725G) {
            case 0:
                a();
                int i8 = this.f30727I;
                if (i8 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
                }
                b bVar = (b) fVar;
                bVar.c(i8);
                this.f30726H = this.f30727I;
                this.f30727I = -1;
                this.f30728J = ((AbstractList) bVar).modCount;
                return;
            default:
                b();
                int i9 = this.f30727I;
                if (i9 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
                }
                c cVar = (c) fVar;
                cVar.c(i9);
                this.f30726H = this.f30727I;
                this.f30727I = -1;
                this.f30728J = ((AbstractList) cVar).modCount;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        f fVar = this.f30729K;
        switch (this.f30725G) {
            case 0:
                a();
                int i8 = this.f30727I;
                if (i8 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
                }
                ((b) fVar).set(i8, obj);
                return;
            default:
                b();
                int i9 = this.f30727I;
                if (i9 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
                }
                ((c) fVar).set(i9, obj);
                return;
        }
    }

    public a(b bVar, int i8) {
        q0.h(bVar, "list");
        this.f30729K = bVar;
        this.f30726H = i8;
        this.f30727I = -1;
        this.f30728J = ((AbstractList) bVar).modCount;
    }
}
