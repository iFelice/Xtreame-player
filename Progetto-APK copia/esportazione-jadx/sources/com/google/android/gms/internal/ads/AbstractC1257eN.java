package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1257eN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f18517a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f18518b = new HashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1294f8 f18519c = new C1294f8(8, 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2137vM f18520d = new C2137vM(new CopyOnWriteArrayList(), null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Looper f18521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AbstractC0774Ie f18522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C2344zL f18523g;

    public abstract void a(InterfaceC2138vN interfaceC2138vN);

    public abstract InterfaceC2138vN b(C2190wN c2190wN, CO co, long j8);

    public abstract C2225x6 c();

    public void d() {
    }

    public final void e(InterfaceC2242xN interfaceC2242xN) {
        HashSet hashSet = this.f18518b;
        boolean z7 = !hashSet.isEmpty();
        hashSet.remove(interfaceC2242xN);
        if (z7 && hashSet.isEmpty()) {
            f();
        }
    }

    public void f() {
    }

    public final void g(InterfaceC2242xN interfaceC2242xN) {
        this.f18521e.getClass();
        HashSet hashSet = this.f18518b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.add(interfaceC2242xN);
        if (zIsEmpty) {
            h();
        }
    }

    public void h() {
    }

    public final void i(InterfaceC2242xN interfaceC2242xN, InterfaceC1615lJ interfaceC1615lJ, C2344zL c2344zL) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f18521e;
        boolean z7 = true;
        if (looper != null && looper != looperMyLooper) {
            z7 = false;
        }
        p113o3.r.J(z7);
        this.f18523g = c2344zL;
        AbstractC0774Ie abstractC0774Ie = this.f18522f;
        this.f18517a.add(interfaceC2242xN);
        if (this.f18521e == null) {
            this.f18521e = looperMyLooper;
            this.f18518b.add(interfaceC2242xN);
            j(interfaceC1615lJ);
        } else if (abstractC0774Ie != null) {
            g(interfaceC2242xN);
            interfaceC2242xN.a(this, abstractC0774Ie);
        }
    }

    public abstract void j(InterfaceC1615lJ interfaceC1615lJ);

    public final void k(AbstractC0774Ie abstractC0774Ie) {
        this.f18522f = abstractC0774Ie;
        ArrayList arrayList = this.f18517a;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((InterfaceC2242xN) arrayList.get(i8)).a(this, abstractC0774Ie);
        }
    }

    public final void l(InterfaceC2242xN interfaceC2242xN) {
        ArrayList arrayList = this.f18517a;
        arrayList.remove(interfaceC2242xN);
        if (!arrayList.isEmpty()) {
            e(interfaceC2242xN);
            return;
        }
        this.f18521e = null;
        this.f18522f = null;
        this.f18523g = null;
        this.f18518b.clear();
        m();
    }

    public abstract void m();

    public final void n(InterfaceC2189wM interfaceC2189wM) {
        CopyOnWriteArrayList<C2085uM> copyOnWriteArrayList = this.f18520d.f21518b;
        for (C2085uM c2085uM : copyOnWriteArrayList) {
            if (c2085uM.f21225a == interfaceC2189wM) {
                copyOnWriteArrayList.remove(c2085uM);
            }
        }
    }

    public final void o(AN an) {
        C1294f8 c1294f8 = this.f18519c;
        for (C2346zN c2346zN : (CopyOnWriteArrayList) c1294f8.f18728J) {
            if (c2346zN.f22159b == an) {
                ((CopyOnWriteArrayList) c1294f8.f18728J).remove(c2346zN);
            }
        }
    }

    public abstract void p(C2225x6 c2225x6);

    public void q() {
    }

    public abstract void r();
}
