package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class Ez implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f13256G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final CharSequence f13258I;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f13257H = 2;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f13259J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f13260K = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public Ez(CharSequence charSequence) {
        this.f13258I = charSequence;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        int iD;
        int i8 = this.f13257H;
        if (i8 == 4) {
            throw new IllegalStateException();
        }
        int i9 = i8 - 1;
        String string = null;
        if (i8 == 0) {
            throw null;
        }
        if (i9 == 0) {
            return true;
        }
        if (i9 != 2) {
            this.f13257H = 4;
            int i10 = this.f13259J;
            while (true) {
                int i11 = this.f13259J;
                if (i11 == -1) {
                    this.f13257H = 3;
                    break;
                }
                int iE = e(i11);
                CharSequence charSequence = this.f13258I;
                if (iE == -1) {
                    iE = charSequence.length();
                    this.f13259J = -1;
                    iD = -1;
                } else {
                    iD = d(iE);
                    this.f13259J = iD;
                }
                if (iD != i10) {
                    if (i10 < iE) {
                        charSequence.charAt(i10);
                    }
                    if (i10 < iE) {
                        charSequence.charAt(iE - 1);
                    }
                    int i12 = this.f13260K;
                    if (i12 == 1) {
                        iE = charSequence.length();
                        this.f13259J = -1;
                        if (iE > i10) {
                            charSequence.charAt(iE - 1);
                        }
                    } else {
                        this.f13260K = i12 - 1;
                    }
                    string = charSequence.subSequence(i10, iE).toString();
                    break;
                }
                int i13 = iD + 1;
                this.f13259J = i13;
                if (i13 > charSequence.length()) {
                    this.f13259J = -1;
                }
            }
            this.f13256G = string;
            if (this.f13257H != 3) {
                this.f13257H = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f13257H = 2;
        String str = this.f13256G;
        this.f13256G = null;
        return str;
    }

    public final void c() {
        throw new UnsupportedOperationException();
    }

    public abstract int d(int i8);

    public abstract int e(int i8);

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ void remove() {
        c();
        throw null;
    }
}
