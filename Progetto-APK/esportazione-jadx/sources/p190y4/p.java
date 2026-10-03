package p190y4;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p156u.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class p implements Iterator {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f31429H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final CharSequence f31430I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final b f31431J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f31432K;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f31434M;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f31428G = 2;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f31433L = 0;

    public p(q qVar, CharSequence charSequence) {
        this.f31431J = qVar.f31435a;
        this.f31432K = qVar.f31436b;
        this.f31434M = qVar.f31438d;
        this.f31430I = charSequence;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        String string;
        b bVar;
        k.w(this.f31428G != 4);
        int iB = h.b(this.f31428G);
        if (iB == 0) {
            return true;
        }
        if (iB == 2) {
            return false;
        }
        this.f31428G = 4;
        int i8 = this.f31433L;
        while (true) {
            int i9 = this.f31433L;
            if (i9 == -1) {
                this.f31428G = 3;
                string = null;
                break;
            }
            o oVar = (o) this;
            int iA = ((b) oVar.f31427N.f8372H).a(i9, oVar.f31430I);
            CharSequence charSequence = this.f31430I;
            if (iA == -1) {
                iA = charSequence.length();
                this.f31433L = -1;
            } else {
                this.f31433L = iA + 1;
            }
            int i10 = this.f31433L;
            if (i10 == i8) {
                int i11 = i10 + 1;
                this.f31433L = i11;
                if (i11 > charSequence.length()) {
                    this.f31433L = -1;
                }
            } else {
                while (true) {
                    bVar = this.f31431J;
                    if (i8 >= iA || !bVar.b(charSequence.charAt(i8))) {
                        break;
                    }
                    i8++;
                }
                while (iA > i8 && bVar.b(charSequence.charAt(iA - 1))) {
                    iA--;
                }
                if (!this.f31432K || i8 != iA) {
                    int i12 = this.f31434M;
                    if (i12 == 1) {
                        iA = charSequence.length();
                        this.f31433L = -1;
                        while (iA > i8 && bVar.b(charSequence.charAt(iA - 1))) {
                            iA--;
                        }
                    } else {
                        this.f31434M = i12 - 1;
                    }
                    string = charSequence.subSequence(i8, iA).toString();
                    break;
                }
                i8 = this.f31433L;
            }
        }
        this.f31429H = string;
        if (this.f31428G == 3) {
            return false;
        }
        this.f31428G = 1;
        return true;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f31428G = 2;
        String str = this.f31429H;
        this.f31429H = null;
        return str;
    }

    public final void c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ void remove() {
        c();
        throw null;
    }
}
