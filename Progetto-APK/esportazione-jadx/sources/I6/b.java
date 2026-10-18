package I6;

import A0.O;
import java.util.Iterator;
import java.util.NoSuchElementException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Iterator, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f4024G = -1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4025H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4026I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public F6.c f4027J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f4028K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ c f4029L;

    public b(c cVar) {
        this.f4029L = cVar;
        int i8 = cVar.f4031b;
        int length = cVar.f4030a.length();
        if (length < 0) {
            throw new IllegalArgumentException(O.y("Cannot coerce value to an empty range: maximum ", length, " is less than minimum 0."));
        }
        if (i8 < 0) {
            i8 = 0;
        } else if (i8 > length) {
            i8 = length;
        }
        this.f4025H = i8;
        this.f4026I = i8;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0022 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:17:0x0075  */
    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    public final void a() {
        p155t6.c cVar;
        int i8 = this.f4026I;
        if (i8 < 0) {
            this.f4024G = 0;
            this.f4027J = null;
            return;
        }
        c cVar2 = this.f4029L;
        int i9 = cVar2.f4032c;
        if (i9 > 0) {
            int i10 = this.f4028K + 1;
            this.f4028K = i10;
            if (i10 >= i9) {
                this.f4027J = new F6.c(this.f4025H, k.G0(cVar2.f4030a), 1);
                this.f4026I = -1;
            } else if (i8 > cVar2.f4030a.length() && (cVar = (p155t6.c) cVar2.f4033d.c(cVar2.f4030a, Integer.valueOf(this.f4026I))) != null) {
                int iIntValue = ((Number) cVar.f30311G).intValue();
                int iIntValue2 = ((Number) cVar.f30312H).intValue();
                this.f4027J = S3.e.s(this.f4025H, iIntValue);
                int i11 = iIntValue + iIntValue2;
                this.f4025H = i11;
                this.f4026I = i11 + (iIntValue2 == 0 ? 1 : 0);
            } else {
                this.f4027J = new F6.c(this.f4025H, k.G0(cVar2.f4030a), 1);
                this.f4026I = -1;
            }
        } else if (i8 > cVar2.f4030a.length()) {
            this.f4027J = new F6.c(this.f4025H, k.G0(cVar2.f4030a), 1);
            this.f4026I = -1;
        } else {
            int iIntValue3 = ((Number) cVar.f30311G).intValue();
            int iIntValue4 = ((Number) cVar.f30312H).intValue();
            this.f4027J = S3.e.s(this.f4025H, iIntValue3);
            int i12 = iIntValue3 + iIntValue4;
            this.f4025H = i12;
            this.f4026I = i12 + (iIntValue4 == 0 ? 1 : 0);
        }
        this.f4024G = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f4024G == -1) {
            a();
        }
        return this.f4024G == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f4024G == -1) {
            a();
        }
        if (this.f4024G == 0) {
            throw new NoSuchElementException();
        }
        F6.c cVar = this.f4027J;
        q0.f(cVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.f4027J = null;
        this.f4024G = -1;
        return cVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
