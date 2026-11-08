package com.google.android.gms.internal.ads;

import com.google.protobuf.C2922l2;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1304fI implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18740G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f18741H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f18742I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Iterator f18743J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractMap f18744K;

    public /* synthetic */ C1304fI(AbstractMap abstractMap, int i8) {
        this.f18740G = i8;
        this.f18744K = abstractMap;
        this.f18741H = -1;
    }

    public final Iterator a() {
        if (this.f18743J == null) {
            this.f18743J = ((C2922l2) this.f18744K).f24474I.entrySet().iterator();
        }
        return this.f18743J;
    }

    public final Iterator b() {
        int i8 = this.f18740G;
        AbstractMap abstractMap = this.f18744K;
        switch (i8) {
            case 0:
                if (this.f18743J != null) {
                    return this.f18743J;
                }
                ((AbstractC1201dI) abstractMap).getClass();
                throw null;
            default:
                if (this.f18743J != null) {
                    return this.f18743J;
                }
                ((AbstractC1201dI) abstractMap).getClass();
                throw null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8 = this.f18740G;
        AbstractMap abstractMap = this.f18744K;
        switch (i8) {
            case 0:
                int i9 = this.f18741H + 1;
                AbstractC1201dI abstractC1201dI = (AbstractC1201dI) abstractMap;
                abstractC1201dI.getClass();
                if (i9 < 0) {
                    return true;
                }
                abstractC1201dI.getClass();
                throw null;
            case 1:
                int i10 = this.f18741H + 1;
                AbstractC1201dI abstractC1201dI2 = (AbstractC1201dI) abstractMap;
                abstractC1201dI2.getClass();
                if (i10 < 0) {
                    return true;
                }
                abstractC1201dI2.getClass();
                throw null;
            default:
                C2922l2 c2922l2 = (C2922l2) abstractMap;
                return this.f18741H + 1 < c2922l2.f24473H.size() || (!c2922l2.f24474I.isEmpty() && a().hasNext());
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i8 = this.f18740G;
        AbstractMap abstractMap = this.f18744K;
        switch (i8) {
            case 0:
                this.f18742I = true;
                int i9 = this.f18741H + 1;
                this.f18741H = i9;
                AbstractC1201dI abstractC1201dI = (AbstractC1201dI) abstractMap;
                abstractC1201dI.getClass();
                if (i9 >= 0) {
                    return (Map.Entry) b().next();
                }
                abstractC1201dI.getClass();
                throw null;
            case 1:
                this.f18742I = true;
                int i10 = this.f18741H + 1;
                this.f18741H = i10;
                AbstractC1201dI abstractC1201dI2 = (AbstractC1201dI) abstractMap;
                abstractC1201dI2.getClass();
                if (i10 >= 0) {
                    return (Map.Entry) b().next();
                }
                abstractC1201dI2.getClass();
                throw null;
            default:
                this.f18742I = true;
                int i11 = this.f18741H + 1;
                this.f18741H = i11;
                C2922l2 c2922l2 = (C2922l2) abstractMap;
                return i11 < c2922l2.f24473H.size() ? (Map.Entry) c2922l2.f24473H.get(this.f18741H) : (Map.Entry) a().next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i8 = this.f18740G;
        AbstractMap abstractMap = this.f18744K;
        switch (i8) {
            case 0:
                if (!this.f18742I) {
                    throw new IllegalStateException("remove() was called before next()");
                }
                this.f18742I = false;
                AbstractC1201dI abstractC1201dI = (AbstractC1201dI) abstractMap;
                int i9 = AbstractC1201dI.f18314G;
                abstractC1201dI.k();
                int i10 = this.f18741H;
                abstractC1201dI.getClass();
                if (i10 >= 0) {
                    b().remove();
                    return;
                } else {
                    this.f18741H = i10 - 1;
                    abstractC1201dI.j(i10);
                    return;
                }
            case 1:
                if (!this.f18742I) {
                    throw new IllegalStateException("remove() was called before next()");
                }
                this.f18742I = false;
                AbstractC1201dI abstractC1201dI2 = (AbstractC1201dI) abstractMap;
                int i11 = AbstractC1201dI.f18314G;
                abstractC1201dI2.k();
                int i12 = this.f18741H;
                abstractC1201dI2.getClass();
                if (i12 >= 0) {
                    b().remove();
                    return;
                } else {
                    this.f18741H = i12 - 1;
                    abstractC1201dI2.j(i12);
                    return;
                }
            default:
                if (!this.f18742I) {
                    throw new IllegalStateException("remove() was called before next()");
                }
                this.f18742I = false;
                C2922l2 c2922l2 = (C2922l2) abstractMap;
                int i13 = C2922l2.f24471M;
                c2922l2.b();
                if (this.f18741H >= c2922l2.f24473H.size()) {
                    a().remove();
                    return;
                }
                int i14 = this.f18741H;
                this.f18741H = i14 - 1;
                c2922l2.n(i14);
                return;
        }
    }

    public C1304fI(C2922l2 c2922l2) {
        this.f18740G = 2;
        this.f18744K = c2922l2;
        this.f18741H = -1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1304fI(C2922l2 c2922l2, int i8) {
        this(c2922l2);
        this.f18740G = 2;
    }
}
