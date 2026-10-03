package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p039f.AbstractC2987b;
import z4.AbstractC3255t;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1400hA implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19055G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f19056H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f19057I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f19058J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractMap f19059K;

    public /* synthetic */ AbstractC1400hA(AbstractC3255t abstractC3255t, int i8) {
        this(abstractC3255t);
    }

    public abstract Object a(int i8);

    public abstract Object b(int i8);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f19055G) {
            case 0:
                return this.f19057I >= 0;
            default:
                return this.f19057I >= 0;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        AbstractMap abstractMap = this.f19059K;
        switch (this.f19055G) {
            case 0:
                if (((C1502jA) abstractMap).f19439K != this.f19056H) {
                    throw new ConcurrentModificationException();
                }
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i8 = this.f19057I;
                this.f19058J = i8;
                Object objB = b(i8);
                int i9 = this.f19057I + 1;
                this.f19057I = i9 < ((C1502jA) abstractMap).f19440L ? i9 : -1;
                return objB;
            default:
                ((AbstractC3255t) abstractMap).getClass();
                if (this.f19056H != 0) {
                    throw new ConcurrentModificationException();
                }
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i10 = this.f19057I;
                this.f19058J = i10;
                Object objA = a(i10);
                int i11 = this.f19057I + 1;
                ((AbstractC3255t) abstractMap).getClass();
                this.f19057I = i11 < 0 ? i11 : -1;
                return objA;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        AbstractMap abstractMap = this.f19059K;
        switch (this.f19055G) {
            case 0:
                if (((C1502jA) abstractMap).f19439K != this.f19056H) {
                    throw new ConcurrentModificationException();
                }
                AbstractC2987b.E0("no calls to next() since the last call to remove()", this.f19058J >= 0);
                this.f19056H += 32;
                C1502jA c1502jA = (C1502jA) abstractMap;
                c1502jA.remove(c1502jA.b()[this.f19058J]);
                this.f19057I--;
                this.f19058J = -1;
                return;
            default:
                ((AbstractC3255t) abstractMap).getClass();
                if (this.f19056H != 0) {
                    throw new ConcurrentModificationException();
                }
                p190y4.k.v("no calls to next() since the last call to remove()", this.f19058J >= 0);
                this.f19056H += 32;
                AbstractC3255t abstractC3255t = (AbstractC3255t) abstractMap;
                abstractC3255t.remove(abstractC3255t.c()[this.f19058J]);
                this.f19057I--;
                this.f19058J = -1;
                return;
        }
    }

    public AbstractC1400hA(C1502jA c1502jA) {
        this.f19059K = c1502jA;
        this.f19056H = c1502jA.f19439K;
        this.f19057I = c1502jA.isEmpty() ? -1 : 0;
        this.f19058J = -1;
    }

    public AbstractC1400hA(AbstractC3255t abstractC3255t) {
        this.f19059K = abstractC3255t;
        abstractC3255t.getClass();
        this.f19056H = 0;
        this.f19057I = abstractC3255t.isEmpty() ? -1 : 0;
        this.f19058J = -1;
    }
}
