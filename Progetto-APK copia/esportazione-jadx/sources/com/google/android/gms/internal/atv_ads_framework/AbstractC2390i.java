package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.Cw;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2390i implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f22327G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final CharSequence f22329I;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f22328H = 2;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f22330J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f22331K = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public AbstractC2390i(x0 x0Var, String str) {
        this.f22329I = str;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        int i8;
        int i9 = this.f22328H;
        if (i9 == 4) {
            throw new IllegalStateException();
        }
        int i10 = i9 - 1;
        String string = null;
        if (i9 == 0) {
            throw null;
        }
        if (i10 == 0) {
            return true;
        }
        if (i10 != 2) {
            this.f22328H = 4;
            int i11 = this.f22330J;
            while (true) {
                int length = this.f22330J;
                if (length == -1) {
                    this.f22328H = 3;
                    break;
                }
                CharSequence charSequence = ((C2388h) this).f22329I;
                int length2 = charSequence.length();
                Cw.T0(length, length2);
                while (true) {
                    if (length >= length2) {
                        length = -1;
                        break;
                    }
                    if (charSequence.charAt(length) == ':') {
                        break;
                    }
                    length++;
                }
                CharSequence charSequence2 = this.f22329I;
                if (length == -1) {
                    length = charSequence2.length();
                    this.f22330J = -1;
                    i8 = -1;
                } else {
                    i8 = length + 1;
                    this.f22330J = i8;
                }
                if (i8 != i11) {
                    if (i11 < length) {
                        charSequence2.charAt(i11);
                    }
                    if (i11 < length) {
                        charSequence2.charAt(length - 1);
                    }
                    int i12 = this.f22331K;
                    if (i12 == 1) {
                        length = charSequence2.length();
                        this.f22330J = -1;
                        if (length > i11) {
                            charSequence2.charAt(length - 1);
                        }
                    } else {
                        this.f22331K = i12 - 1;
                    }
                    string = charSequence2.subSequence(i11, length).toString();
                    break;
                }
                int i13 = i8 + 1;
                this.f22330J = i13;
                if (i13 > charSequence2.length()) {
                    this.f22330J = -1;
                }
            }
            this.f22327G = string;
            if (this.f22328H != 3) {
                this.f22328H = 1;
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
        this.f22328H = 2;
        String str = this.f22327G;
        this.f22327G = null;
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
