package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class DN extends AbstractC1567kN {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final C2225x6 f12823q;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AbstractC1257eN[] f12824k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AbstractC0774Ie[] f12825l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f12826m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12827n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long[][] f12828o = new long[0][];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public I0.u f12829p;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        Collections.emptyList();
        f12823q = new C2225x6("MergingMediaSource", new F3(), null, new A4(), C1451i9.f19243y, J5.f14124a);
    }

    public DN(GH gh, AbstractC1257eN... abstractC1257eNArr) {
        this.f12824k = abstractC1257eNArr;
        this.f12826m = new ArrayList(Arrays.asList(abstractC1257eNArr));
        this.f12825l = new AbstractC0774Ie[abstractC1257eNArr.length];
        new HashMap();
        new LA(new C1502jA(), new Jz());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void a(InterfaceC2138vN interfaceC2138vN) {
        CN cn = (CN) interfaceC2138vN;
        int i8 = 0;
        while (true) {
            AbstractC1257eN[] abstractC1257eNArr = this.f12824k;
            if (i8 >= abstractC1257eNArr.length) {
                return;
            }
            AbstractC1257eN abstractC1257eN = abstractC1257eNArr[i8];
            InterfaceC2138vN interfaceC2138vN2 = cn.f12620G[i8];
            if (interfaceC2138vN2 instanceof C1052aO) {
                interfaceC2138vN2 = ((C1052aO) interfaceC2138vN2).f17887G;
            }
            abstractC1257eN.a(interfaceC2138vN2);
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final InterfaceC2138vN b(C2190wN c2190wN, CO co, long j8) {
        AbstractC1257eN[] abstractC1257eNArr = this.f12824k;
        int length = abstractC1257eNArr.length;
        InterfaceC2138vN[] interfaceC2138vNArr = new InterfaceC2138vN[length];
        AbstractC0774Ie[] abstractC0774IeArr = this.f12825l;
        int iA = abstractC0774IeArr[0].a(c2190wN.f21690a);
        for (int i8 = 0; i8 < length; i8++) {
            interfaceC2138vNArr[i8] = abstractC1257eNArr[i8].b(c2190wN.a(abstractC0774IeArr[i8].f(iA)), co, j8 - this.f12828o[iA][i8]);
        }
        return new CN(this.f12828o[iA], interfaceC2138vNArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final C2225x6 c() {
        AbstractC1257eN[] abstractC1257eNArr = this.f12824k;
        return abstractC1257eNArr.length > 0 ? abstractC1257eNArr[0].c() : f12823q;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void j(InterfaceC1615lJ interfaceC1615lJ) {
        this.f19606j = interfaceC1615lJ;
        int i8 = Et.f13234a;
        Looper looperMyLooper = Looper.myLooper();
        p113o3.r.x(looperMyLooper);
        this.f19605i = new Handler(looperMyLooper, null);
        int i9 = 0;
        while (true) {
            AbstractC1257eN[] abstractC1257eNArr = this.f12824k;
            if (i9 >= abstractC1257eNArr.length) {
                return;
            }
            t(Integer.valueOf(i9), abstractC1257eNArr[i9]);
            i9++;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN, com.google.android.gms.internal.ads.AbstractC1257eN
    public final void m() {
        super.m();
        Arrays.fill(this.f12825l, (Object) null);
        this.f12827n = -1;
        this.f12829p = null;
        ArrayList arrayList = this.f12826m;
        arrayList.clear();
        Collections.addAll(arrayList, this.f12824k);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void p(C2225x6 c2225x6) {
        this.f12824k[0].p(c2225x6);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void r() throws I0.u {
        I0.u uVar = this.f12829p;
        if (uVar != null) {
            throw uVar;
        }
        Iterator it = this.f19604h.values().iterator();
        while (it.hasNext()) {
            ((C1515jN) it.next()).f19460a.r();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN
    public final void s(Object obj, AbstractC1257eN abstractC1257eN, AbstractC0774Ie abstractC0774Ie) {
        int iB;
        Integer num = (Integer) obj;
        if (this.f12829p != null) {
            return;
        }
        if (this.f12827n == -1) {
            iB = abstractC0774Ie.b();
            this.f12827n = iB;
        } else {
            int iB2 = abstractC0774Ie.b();
            int i8 = this.f12827n;
            if (iB2 != i8) {
                this.f12829p = new I0.u();
                return;
            }
            iB = i8;
        }
        int length = this.f12828o.length;
        AbstractC0774Ie[] abstractC0774IeArr = this.f12825l;
        if (length == 0) {
            this.f12828o = (long[][]) Array.newInstance((Class<?>) Long.TYPE, iB, abstractC0774IeArr.length);
        }
        ArrayList arrayList = this.f12826m;
        arrayList.remove(abstractC1257eN);
        abstractC0774IeArr[num.intValue()] = abstractC0774Ie;
        if (arrayList.isEmpty()) {
            k(abstractC0774IeArr[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN
    public final /* bridge */ /* synthetic */ C2190wN w(Object obj, C2190wN c2190wN) {
        if (((Integer) obj).intValue() == 0) {
            return c2190wN;
        }
        return null;
    }
}
