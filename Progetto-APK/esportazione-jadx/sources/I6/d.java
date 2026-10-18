package I6;

import java.util.Iterator;
import java.util.NoSuchElementException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Iterator, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final CharSequence f4034G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4035H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4036I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f4037J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f4038K;

    public d(CharSequence charSequence) {
        q0.h(charSequence, "string");
        this.f4034G = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8;
        int i9;
        int i10 = this.f4035H;
        if (i10 != 0) {
            return i10 == 1;
        }
        if (this.f4038K < 0) {
            this.f4035H = 2;
            return false;
        }
        CharSequence charSequence = this.f4034G;
        int length = charSequence.length();
        int length2 = charSequence.length();
        for (int i11 = this.f4036I; i11 < length2; i11++) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i8 = (cCharAt == '\r' && (i9 = i11 + 1) < charSequence.length() && charSequence.charAt(i9) == '\n') ? 2 : 1;
                length = i11;
                this.f4035H = 1;
                this.f4038K = i8;
                this.f4037J = length;
                return true;
            }
        }
        i8 = -1;
        this.f4035H = 1;
        this.f4038K = i8;
        this.f4037J = length;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f4035H = 0;
        int i8 = this.f4037J;
        int i9 = this.f4036I;
        this.f4036I = this.f4038K + i8;
        return this.f4034G.subSequence(i9, i8).toString();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
