package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2614p implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23234G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f23235H = 0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f23236I;

    public /* synthetic */ C2614p(Object obj, int i8) {
        this.f23234G = i8;
        this.f23236I = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8 = this.f23234G;
        Object obj = this.f23236I;
        switch (i8) {
            case 0:
                return this.f23235H < ((C2619q) obj).f23243G.length();
            case 1:
                return this.f23235H < ((C2619q) obj).f23243G.length();
            default:
                return this.f23235H < ((C2543d) obj).n();
        }
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i8 = this.f23234G;
        Object obj = this.f23236I;
        switch (i8) {
            case 0:
                int i9 = this.f23235H;
                if (i9 >= ((C2619q) obj).f23243G.length()) {
                    throw new NoSuchElementException();
                }
                this.f23235H = i9 + 1;
                return new C2619q(String.valueOf(i9));
            case 1:
                C2619q c2619q = (C2619q) obj;
                int i10 = this.f23235H;
                if (i10 >= c2619q.f23243G.length()) {
                    throw new NoSuchElementException();
                }
                this.f23235H = i10 + 1;
                return new C2619q(String.valueOf(c2619q.f23243G.charAt(i10)));
            default:
                C2543d c2543d = (C2543d) obj;
                if (this.f23235H >= c2543d.n()) {
                    throw new NoSuchElementException(p000a.r.f("Out of bounds index: ", this.f23235H));
                }
                int i11 = this.f23235H;
                this.f23235H = i11 + 1;
                return c2543d.o(i11);
        }
    }
}
