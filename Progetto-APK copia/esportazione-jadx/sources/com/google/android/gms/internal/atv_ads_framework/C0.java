package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.cast.R2;
import com.google.protobuf.C2;
import java.util.Iterator;
import p021c4.C0611t;

/* JADX INFO: loaded from: classes.dex */
public final class C0 implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22252G = 2;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Iterator f22253H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Iterable f22254I;

    public C0(C0611t c0611t) {
        this.f22253H = c0611t.f11369G.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f22252G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f22253H.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f22252G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return (String) this.f22253H.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f22252G) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException("Remove not supported");
            default:
                throw new UnsupportedOperationException();
        }
    }

    public C0(D0 d6) {
        this.f22253H = d6.f22255G.iterator();
    }

    public C0(R2 r7) {
        this.f22253H = r7.f22527G.iterator();
    }

    public C0(C2 c8) {
        this.f22253H = c8.f24241G.iterator();
    }
}
