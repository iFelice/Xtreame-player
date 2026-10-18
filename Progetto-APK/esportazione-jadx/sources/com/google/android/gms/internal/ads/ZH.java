package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class ZH implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayDeque f17753G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public VG f17754H;

    public ZH(XG xg) {
        if (!(xg instanceof C1046aI)) {
            this.f17753G = null;
            this.f17754H = (VG) xg;
            return;
        }
        C1046aI c1046aI = (C1046aI) xg;
        ArrayDeque arrayDeque = new ArrayDeque(c1046aI.f17865M);
        this.f17753G = arrayDeque;
        arrayDeque.push(c1046aI);
        XG xg2 = c1046aI.f17862J;
        while (xg2 instanceof C1046aI) {
            C1046aI c1046aI2 = (C1046aI) xg2;
            this.f17753G.push(c1046aI2);
            xg2 = c1046aI2.f17862J;
        }
        this.f17754H = (VG) xg2;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final VG next() {
        VG vg;
        VG vg2 = this.f17754H;
        if (vg2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.f17753G;
            vg = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            XG xg = ((C1046aI) arrayDeque.pop()).f17863K;
            while (xg instanceof C1046aI) {
                C1046aI c1046aI = (C1046aI) xg;
                arrayDeque.push(c1046aI);
                xg = c1046aI.f17862J;
            }
            vg = (VG) xg;
        } while (vg.n() == 0);
        this.f17754H = vg;
        return vg2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17754H != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
