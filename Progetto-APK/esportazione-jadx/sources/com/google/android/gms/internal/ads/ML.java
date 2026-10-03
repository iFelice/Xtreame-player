package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ML implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14701G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f14702H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f14703I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ long f14704J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f14705K;

    public /* synthetic */ ML(Object obj, int i8, long j8, long j9, int i9) {
        this.f14701G = i9;
        this.f14705K = obj;
        this.f14702H = i8;
        this.f14703I = j8;
        this.f14704J = j9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object next;
        C2190wN c2190wN;
        int i8 = 0;
        int i9 = this.f14701G;
        Object obj = this.f14705K;
        switch (i9) {
            case 0:
                C1773oL c1773oL = (C1773oL) obj;
                c1773oL.getClass();
                int i10 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1011, new C1669mL(i8));
                return;
            default:
                C2032tL c2032tL2 = (C2032tL) ((AO) obj).f12004b;
                C1980sL c1980sL = c2032tL2.f21059J;
                if (c1980sL.f20882b.isEmpty()) {
                    c2190wN = null;
                } else {
                    AbstractC2073uA abstractC2073uA = c1980sL.f20882b;
                    if (!(abstractC2073uA instanceof List)) {
                        C1969sA c1969sAListIterator = abstractC2073uA.listIterator(0);
                        do {
                            next = c1969sAListIterator.next();
                        } while (c1969sAListIterator.hasNext());
                    } else {
                        if (abstractC2073uA.isEmpty()) {
                            throw new NoSuchElementException();
                        }
                        next = abstractC2073uA.get(abstractC2073uA.size() - 1);
                    }
                    c2190wN = (C2190wN) next;
                }
                C1204dL c1204dLJ = c2032tL2.j(c2190wN);
                c2032tL2.i(c1204dLJ, 1006, new C1721nL(c1204dLJ, this.f14702H, this.f14703I, this.f14704J));
                return;
        }
    }
}
