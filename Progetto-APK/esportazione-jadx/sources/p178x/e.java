package p178x;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.ads.C1381gs;
import com.google.android.gms.internal.ads.C2054ts;
import com.google.android.gms.internal.ads.C2310yo;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC1791oo;
import com.google.android.gms.internal.ads.InterfaceC1840pl;
import com.google.android.gms.internal.ads.InterfaceC2101un;
import com.google.android.gms.internal.ads.Nr;
import com.google.android.gms.internal.ads.RunnableC0858Nn;
import com.google.android.gms.internal.measurement.H1;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import p094m0.C3134q;
import p113o3.r;
import p117p0.G;
import p117p0.H;
import p117p0.I;
import p117p0.InterfaceC3168f;
import p117p0.q;
import p117p0.t;
import p117p0.u;
import p117p0.v;
import p117p0.w;
import p170w.c;
import p170w.d;
import p170w.f;
import p170w.h;
import p178x.e;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f31127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f31129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f31130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f31131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AbstractCollection f31132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AbstractCollection f31133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f31134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f31135i;

    public e(Looper looper, InterfaceC1840pl interfaceC1840pl, InterfaceC1791oo interfaceC1791oo) {
        this(new CopyOnWriteArraySet(), looper, interfaceC1840pl, interfaceC1791oo, true);
    }

    public final void a(Object obj) {
        obj.getClass();
        synchronized (this.f31135i) {
            try {
                if (this.f31127a) {
                    return;
                }
                ((CopyOnWriteArraySet) this.f31132f).add(new w(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(f fVar, int i8, ArrayList arrayList, l lVar) {
        p pVar = fVar.f31139d;
        if (pVar.f31170c == null) {
            p170w.e eVar = (p170w.e) this.f31129c;
            if (pVar == eVar.f30824d || pVar == eVar.f30826e) {
                return;
            }
            if (lVar == null) {
                lVar = new l();
                lVar.f31151a = null;
                lVar.f31152b = new ArrayList();
                lVar.f31151a = pVar;
                arrayList.add(lVar);
            }
            pVar.f31170c = lVar;
            lVar.f31152b.add(pVar);
            f fVar2 = pVar.f31175h;
            for (d dVar : fVar2.f31146k) {
                if (dVar instanceof f) {
                    b((f) dVar, i8, arrayList, lVar);
                }
            }
            f fVar3 = pVar.f31176i;
            for (d dVar2 : fVar3.f31146k) {
                if (dVar2 instanceof f) {
                    b((f) dVar2, i8, arrayList, lVar);
                }
            }
            if (i8 == 1 && (pVar instanceof m)) {
                for (d dVar3 : ((m) pVar).f31153k.f31146k) {
                    if (dVar3 instanceof f) {
                        b((f) dVar3, i8, arrayList, lVar);
                    }
                }
            }
            Iterator it = fVar2.f31147l.iterator();
            while (it.hasNext()) {
                b((f) it.next(), i8, arrayList, lVar);
            }
            Iterator it2 = fVar3.f31147l.iterator();
            while (it2.hasNext()) {
                b((f) it2.next(), i8, arrayList, lVar);
            }
            if (i8 == 1 && (pVar instanceof m)) {
                Iterator it3 = ((m) pVar).f31153k.f31147l.iterator();
                while (it3.hasNext()) {
                    b((f) it3.next(), i8, arrayList, lVar);
                }
            }
        }
    }

    public final void c(p170w.e eVar) {
        int iO;
        for (d dVar : eVar.f30889p0) {
            int[] iArr = dVar.f30847o0;
            int i8 = iArr[0];
            int i9 = iArr[1];
            if (dVar.f30829f0 == 8) {
                dVar.f30818a = true;
            } else {
                float f8 = dVar.f30855w;
                if (f8 < 1.0f && i8 == 3) {
                    dVar.f30850r = 2;
                }
                float f9 = dVar.f30858z;
                if (f9 < 1.0f && i9 == 3) {
                    dVar.f30851s = 2;
                }
                int i10 = 1;
                if (dVar.f30813V > 0.0f) {
                    if (i8 == 3 && (i9 == 2 || i9 == 1)) {
                        dVar.f30850r = 3;
                    } else if (i9 == 3 && (i8 == 2 || i8 == 1)) {
                        dVar.f30851s = 3;
                    } else if (i8 == 3 && i9 == 3) {
                        if (dVar.f30850r == 0) {
                            dVar.f30850r = 3;
                        }
                        if (dVar.f30851s == 0) {
                            dVar.f30851s = 3;
                        }
                    }
                }
                c cVar = dVar.f30801J;
                c cVar2 = dVar.f30799H;
                if (i8 == 3 && dVar.f30850r == 1 && (cVar2.f30788f == null || cVar.f30788f == null)) {
                    i8 = 2;
                }
                c cVar3 = dVar.f30802K;
                c cVar4 = dVar.f30800I;
                int i11 = (i9 == 3 && dVar.f30851s == 1 && (cVar4.f30788f == null || cVar3.f30788f == null)) ? 2 : i9;
                k kVar = dVar.f30824d;
                kVar.f31171d = i8;
                int i12 = dVar.f30850r;
                kVar.f31168a = i12;
                m mVar = dVar.f30826e;
                mVar.f31171d = i11;
                int i13 = dVar.f30851s;
                mVar.f31168a = i13;
                if ((i8 == 4 || i8 == 1 || i8 == 2) && (i11 == 4 || i11 == 1 || i11 == 2)) {
                    int iO2 = dVar.o();
                    if (i8 == 4) {
                        iO = (eVar.o() - cVar2.f30789g) - cVar.f30789g;
                        i8 = 1;
                    } else {
                        iO = iO2;
                    }
                    int i14 = dVar.i();
                    if (i11 == 4) {
                        i14 = (eVar.i() - cVar4.f30789g) - cVar3.f30789g;
                    } else {
                        i10 = i11;
                    }
                    h(dVar, i8, iO, i10, i14);
                    dVar.f30824d.f31172e.d(dVar.o());
                    dVar.f30826e.f31172e.d(dVar.i());
                    dVar.f30818a = true;
                } else {
                    int[] iArr2 = eVar.f30847o0;
                    c[] cVarArr = dVar.f30807P;
                    if (i8 == 3 && (i11 == 2 || i11 == 1)) {
                        if (i12 == 3) {
                            if (i11 == 2) {
                                h(dVar, 2, 0, 2, 0);
                            }
                            int i15 = dVar.i();
                            h(dVar, 1, (int) ((i15 * dVar.f30813V) + 0.5f), 1, i15);
                            dVar.f30824d.f31172e.d(dVar.o());
                            dVar.f30826e.f31172e.d(dVar.i());
                            dVar.f30818a = true;
                        } else if (i12 == 1) {
                            h(dVar, 2, 0, i11, 0);
                            dVar.f30824d.f31172e.f31148m = dVar.o();
                        } else if (i12 == 2) {
                            int i16 = iArr2[0];
                            if (i16 == 1 || i16 == 4) {
                                h(dVar, 1, (int) ((f8 * eVar.o()) + 0.5f), i11, dVar.i());
                                dVar.f30824d.f31172e.d(dVar.o());
                                dVar.f30826e.f31172e.d(dVar.i());
                                dVar.f30818a = true;
                            }
                        } else if (cVarArr[0].f30788f == null || cVarArr[1].f30788f == null) {
                            h(dVar, 2, 0, i11, 0);
                            dVar.f30824d.f31172e.d(dVar.o());
                            dVar.f30826e.f31172e.d(dVar.i());
                            dVar.f30818a = true;
                        }
                    }
                    if (i11 == 3 && (i8 == 2 || i8 == 1)) {
                        if (i13 == 3) {
                            if (i8 == 2) {
                                h(dVar, 2, 0, 2, 0);
                            }
                            int iO3 = dVar.o();
                            float f10 = dVar.f30813V;
                            if (dVar.f30814W == -1) {
                                f10 = 1.0f / f10;
                            }
                            h(dVar, 1, iO3, 1, (int) ((iO3 * f10) + 0.5f));
                            dVar.f30824d.f31172e.d(dVar.o());
                            dVar.f30826e.f31172e.d(dVar.i());
                            dVar.f30818a = true;
                        } else if (i13 == 1) {
                            h(dVar, i8, 0, 2, 0);
                            dVar.f30826e.f31172e.f31148m = dVar.i();
                        } else if (i13 == 2) {
                            int i17 = iArr2[1];
                            if (i17 == 1 || i17 == 4) {
                                h(dVar, i8, dVar.o(), 1, (int) ((f9 * eVar.i()) + 0.5f));
                                dVar.f30824d.f31172e.d(dVar.o());
                                dVar.f30826e.f31172e.d(dVar.i());
                                dVar.f30818a = true;
                            }
                        } else if (cVarArr[2].f30788f == null || cVarArr[3].f30788f == null) {
                            h(dVar, 2, 0, i11, 0);
                            dVar.f30824d.f31172e.d(dVar.o());
                            dVar.f30826e.f31172e.d(dVar.i());
                            dVar.f30818a = true;
                        }
                    }
                    if (i8 == 3 && i11 == 3) {
                        if (i12 == 1 || i13 == 1) {
                            h(dVar, 2, 0, 2, 0);
                            dVar.f30824d.f31172e.f31148m = dVar.o();
                            dVar.f30826e.f31172e.f31148m = dVar.i();
                        } else if (i13 == 2 && i12 == 2 && iArr2[0] == 1 && iArr2[1] == 1) {
                            h(dVar, 1, (int) ((f8 * eVar.o()) + 0.5f), 1, (int) ((f9 * eVar.i()) + 0.5f));
                            dVar.f30824d.f31172e.d(dVar.o());
                            dVar.f30826e.f31172e.d(dVar.i());
                            dVar.f30818a = true;
                        }
                    }
                }
            }
        }
    }

    public final void d() {
        ArrayList<p> arrayList = (ArrayList) this.f31131e;
        arrayList.clear();
        p170w.e eVar = (p170w.e) this.f31130d;
        eVar.f30824d.f();
        eVar.f30826e.f();
        arrayList.add(eVar.f30824d);
        arrayList.add(eVar.f30826e);
        HashSet hashSet = null;
        for (d dVar : eVar.f30889p0) {
            if (dVar instanceof f) {
                i iVar = new i(dVar);
                dVar.f30824d.f();
                dVar.f30826e.f();
                iVar.f31173f = ((f) dVar).f30884t0;
                arrayList.add(iVar);
            } else {
                if (dVar.v()) {
                    if (dVar.f30820b == null) {
                        dVar.f30820b = new c(0, dVar);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f30820b);
                } else {
                    arrayList.add(dVar.f30824d);
                }
                if (dVar.w()) {
                    if (dVar.f30822c == null) {
                        dVar.f30822c = new c(1, dVar);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f30822c);
                } else {
                    arrayList.add(dVar.f30826e);
                }
                if (dVar instanceof h) {
                    arrayList.add(new j(dVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((p) it.next()).f();
        }
        for (p pVar : arrayList) {
            if (pVar.f31169b != eVar) {
                pVar.d();
            }
        }
        ArrayList arrayList2 = (ArrayList) this.f31133g;
        arrayList2.clear();
        p170w.e eVar2 = (p170w.e) this.f31129c;
        f(eVar2.f30824d, 0, arrayList2);
        f(eVar2.f30826e, 1, arrayList2);
        this.f31127a = false;
    }

    public final int e(p170w.e eVar, int i8) {
        ArrayList arrayList;
        int i9;
        int i10;
        long j8;
        float f8;
        long j9;
        ArrayList arrayList2 = (ArrayList) this.f31133g;
        int size = arrayList2.size();
        int i11 = 0;
        long jMax = 0;
        while (i11 < size) {
            p pVar = ((l) arrayList2.get(i11)).f31151a;
            if (!(pVar instanceof c) ? !(i8 != 0 ? (pVar instanceof m) : (pVar instanceof k)) : ((c) pVar).f31173f != i8) {
                f fVar = (i8 == 0 ? eVar.f30824d : eVar.f30826e).f31175h;
                f fVar2 = (i8 == 0 ? eVar.f30824d : eVar.f30826e).f31176i;
                boolean zContains = pVar.f31175h.f31147l.contains(fVar);
                f fVar3 = pVar.f31176i;
                boolean zContains2 = fVar3.f31147l.contains(fVar2);
                long j10 = pVar.j();
                f fVar4 = pVar.f31175h;
                if (zContains && zContains2) {
                    long jB = l.b(fVar4, 0L);
                    ArrayList arrayList3 = arrayList2;
                    i9 = size;
                    long jA = l.a(fVar3, 0L);
                    long j11 = jB - j10;
                    int i12 = fVar3.f31141f;
                    arrayList = arrayList3;
                    i10 = i11;
                    if (j11 >= (-i12)) {
                        j11 += (long) i12;
                    }
                    long j12 = (-jA) - j10;
                    long j13 = fVar4.f31141f;
                    long j14 = j12 - j13;
                    if (j14 >= j13) {
                        j14 -= j13;
                    }
                    d dVar = pVar.f31169b;
                    if (i8 == 0) {
                        f8 = dVar.f30823c0;
                    } else if (i8 == 1) {
                        f8 = dVar.f30825d0;
                    } else {
                        dVar.getClass();
                        f8 = -1.0f;
                    }
                    if (f8 > 0.0f) {
                        j9 = (long) ((j11 / (1.0f - f8)) + (j14 / f8));
                    } else {
                        j9 = 0;
                    }
                    float f9 = j9;
                    j8 = (((long) fVar4.f31141f) + ((((long) ((f9 * f8) + 0.5f)) + j10) + ((long) (((1.0f - f8) * f9) + 0.5f)))) - ((long) fVar3.f31141f);
                } else {
                    arrayList = arrayList2;
                    i9 = size;
                    i10 = i11;
                    if (zContains) {
                        j8 = Math.max(l.b(fVar4, fVar4.f31141f), ((long) fVar4.f31141f) + j10);
                    } else if (zContains2) {
                        j8 = Math.max(-l.a(fVar3, fVar3.f31141f), ((long) (-fVar3.f31141f)) + j10);
                    } else {
                        j8 = (pVar.j() + ((long) fVar4.f31141f)) - ((long) fVar3.f31141f);
                    }
                }
            } else {
                arrayList = arrayList2;
                i9 = size;
                i10 = i11;
                j8 = 0;
            }
            jMax = Math.max(jMax, j8);
            i11 = i10 + 1;
            size = i9;
            arrayList2 = arrayList;
        }
        return (int) jMax;
    }

    public final void f(p pVar, int i8, ArrayList arrayList) {
        f fVar;
        Iterator it = pVar.f31175h.f31146k.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            fVar = pVar.f31176i;
            if (!zHasNext) {
                break;
            }
            d dVar = (d) it.next();
            if (dVar instanceof f) {
                b((f) dVar, i8, arrayList, null);
            } else if (dVar instanceof p) {
                b(((p) dVar).f31175h, i8, arrayList, null);
            }
        }
        for (d dVar2 : fVar.f31146k) {
            if (dVar2 instanceof f) {
                b((f) dVar2, i8, arrayList, null);
            } else if (dVar2 instanceof p) {
                b(((p) dVar2).f31176i, i8, arrayList, null);
            }
        }
        if (i8 == 1) {
            for (d dVar3 : ((m) pVar).f31153k.f31146k) {
                if (dVar3 instanceof f) {
                    b((f) dVar3, i8, arrayList, null);
                }
            }
        }
    }

    public final void g() {
        m();
        if (((ArrayDeque) this.f31134h).isEmpty()) {
            return;
        }
        I i8 = (I) ((q) this.f31130d);
        if (!i8.f28043a.hasMessages(1)) {
            i8.getClass();
            H hB = I.b();
            hB.f28041a = i8.f28043a.obtainMessage(1);
            i8.getClass();
            Message message = hB.f28041a;
            message.getClass();
            i8.f28043a.sendMessageAtFrontOfQueue(message);
            hB.a();
        }
        ArrayDeque arrayDeque = (ArrayDeque) this.f31133g;
        boolean z7 = !arrayDeque.isEmpty();
        arrayDeque.addAll((ArrayDeque) this.f31134h);
        ((ArrayDeque) this.f31134h).clear();
        if (z7) {
            return;
        }
        while (!arrayDeque.isEmpty()) {
            ((Runnable) arrayDeque.peekFirst()).run();
            arrayDeque.removeFirst();
        }
    }

    public final void h(d dVar, int i8, int i9, int i10, int i11) {
        b bVar = (b) this.f31135i;
        bVar.f31115a = i8;
        bVar.f31116b = i10;
        bVar.f31117c = i9;
        bVar.f31118d = i11;
        ((p193z.f) this.f31134h).b(dVar, bVar);
        dVar.K(bVar.f31119e);
        dVar.H(bVar.f31120f);
        dVar.f30796E = bVar.f31122h;
        int i12 = bVar.f31121g;
        dVar.f30817Z = i12;
        dVar.f30796E = i12 > 0;
    }

    public final void i() {
        a aVar;
        for (d dVar : ((p170w.e) this.f31129c).f30889p0) {
            if (!dVar.f30818a) {
                int[] iArr = dVar.f30847o0;
                boolean z7 = false;
                int i8 = iArr[0];
                int i9 = iArr[1];
                int i10 = dVar.f30850r;
                int i11 = dVar.f30851s;
                boolean z8 = i8 == 2 || (i8 == 3 && i10 == 1);
                if (i9 == 2 || (i9 == 3 && i11 == 1)) {
                    z7 = true;
                }
                g gVar = dVar.f30824d.f31172e;
                boolean z9 = gVar.f31145j;
                g gVar2 = dVar.f30826e.f31172e;
                boolean z10 = gVar2.f31145j;
                if (z9 && z10) {
                    h(dVar, 1, gVar.f31142g, 1, gVar2.f31142g);
                    dVar.f30818a = true;
                } else if (z9 && z7) {
                    h(dVar, 1, gVar.f31142g, 2, gVar2.f31142g);
                    if (i9 == 3) {
                        dVar.f30826e.f31172e.f31148m = dVar.i();
                    } else {
                        dVar.f30826e.f31172e.d(dVar.i());
                        dVar.f30818a = true;
                    }
                } else if (z10 && z8) {
                    h(dVar, 2, gVar.f31142g, 1, gVar2.f31142g);
                    if (i8 == 3) {
                        dVar.f30824d.f31172e.f31148m = dVar.o();
                    } else {
                        dVar.f30824d.f31172e.d(dVar.o());
                        dVar.f30818a = true;
                    }
                }
                if (dVar.f30818a && (aVar = dVar.f30826e.f31154l) != null) {
                    aVar.d(dVar.f30817Z);
                }
            }
        }
    }

    public final void j(int i8, u uVar) {
        m();
        ((ArrayDeque) this.f31134h).add(new t(new CopyOnWriteArraySet((CopyOnWriteArraySet) this.f31132f), i8, uVar, 0));
    }

    public final void k() {
        m();
        synchronized (this.f31135i) {
            this.f31127a = true;
        }
        for (w wVar : (CopyOnWriteArraySet) this.f31132f) {
            v vVar = (v) this.f31131e;
            wVar.f28125d = true;
            if (wVar.f28124c) {
                wVar.f28124c = false;
                vVar.c(wVar.f28122a, wVar.f28123b.b());
            }
        }
        ((CopyOnWriteArraySet) this.f31132f).clear();
    }

    public final void l(int i8, u uVar) {
        j(i8, uVar);
        g();
    }

    public final void m() {
        if (this.f31128b) {
            H1.i(Thread.currentThread() == ((I) ((q) this.f31130d)).f28043a.getLooper().getThread());
        }
    }

    public final void n(Object obj) {
        synchronized (this.f31135i) {
            try {
                if (this.f31127a) {
                    return;
                }
                ((CopyOnWriteArraySet) this.f31132f).add(new C2310yo(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        r();
        if (((ArrayDeque) this.f31134h).isEmpty()) {
            return;
        }
        C2054ts c2054ts = (C2054ts) ((InterfaceC2101un) this.f31130d);
        if (!c2054ts.f21154a.hasMessages(1)) {
            c2054ts.getClass();
            C1381gs c1381gsE = C2054ts.e();
            Handler handler = c2054ts.f21154a;
            Message messageObtainMessage = handler.obtainMessage(1);
            c1381gsE.f19016a = messageObtainMessage;
            messageObtainMessage.getClass();
            handler.sendMessageAtFrontOfQueue(messageObtainMessage);
            c1381gsE.f19016a = null;
            C2054ts.d(c1381gsE);
        }
        ArrayDeque arrayDeque = (ArrayDeque) this.f31133g;
        boolean z7 = !arrayDeque.isEmpty();
        arrayDeque.addAll((ArrayDeque) this.f31134h);
        ((ArrayDeque) this.f31134h).clear();
        if (z7) {
            return;
        }
        while (!arrayDeque.isEmpty()) {
            ((Runnable) arrayDeque.peekFirst()).run();
            arrayDeque.removeFirst();
        }
    }

    public final void p(int i8, InterfaceC1119bo interfaceC1119bo) {
        r();
        ((ArrayDeque) this.f31134h).add(new RunnableC0858Nn(new CopyOnWriteArraySet((CopyOnWriteArraySet) this.f31132f), i8, interfaceC1119bo, 0));
    }

    public final void q() {
        r();
        synchronized (this.f31135i) {
            this.f31127a = true;
        }
        for (C2310yo c2310yo : (CopyOnWriteArraySet) this.f31132f) {
            InterfaceC1791oo interfaceC1791oo = (InterfaceC1791oo) this.f31131e;
            c2310yo.f22065d = true;
            if (c2310yo.f22064c) {
                c2310yo.f22064c = false;
                interfaceC1791oo.b(c2310yo.f22062a, c2310yo.f22063b.d());
            }
        }
        ((CopyOnWriteArraySet) this.f31132f).clear();
    }

    public final void r() {
        if (this.f31128b) {
            r.M(Thread.currentThread() == ((C2054ts) ((InterfaceC2101un) this.f31130d)).f21154a.getLooper().getThread());
        }
    }

    public e(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, InterfaceC1840pl interfaceC1840pl, InterfaceC1791oo interfaceC1791oo, boolean z7) {
        this.f31129c = interfaceC1840pl;
        this.f31132f = copyOnWriteArraySet;
        this.f31131e = interfaceC1791oo;
        this.f31135i = new Object();
        this.f31133g = new ArrayDeque();
        this.f31134h = new ArrayDeque();
        this.f31130d = ((Nr) interfaceC1840pl).a(looper, new Handler.Callback() { // from class: com.google.android.gms.internal.ads.Dn
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                p178x.e eVar = this.f12877G;
                for (C2310yo c2310yo : (CopyOnWriteArraySet) eVar.f31132f) {
                    InterfaceC1791oo interfaceC1791oo2 = (InterfaceC1791oo) eVar.f31131e;
                    if (!c2310yo.f22065d && c2310yo.f22064c) {
                        C1751o c1751oD = c2310yo.f22063b.d();
                        c2310yo.f22063b = new C3134q(1);
                        c2310yo.f22064c = false;
                        interfaceC1791oo2.b(c2310yo.f22062a, c1751oD);
                    }
                    if (((C2054ts) ((InterfaceC2101un) eVar.f31130d)).f21154a.hasMessages(1)) {
                        break;
                    }
                }
                return true;
            }
        });
        this.f31128b = z7;
    }

    public e(Looper looper, InterfaceC3168f interfaceC3168f, v vVar) {
        this(new CopyOnWriteArraySet(), looper, interfaceC3168f, vVar, true);
    }

    public e(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, InterfaceC3168f interfaceC3168f, v vVar, boolean z7) {
        this.f31129c = interfaceC3168f;
        this.f31132f = copyOnWriteArraySet;
        this.f31131e = vVar;
        this.f31135i = new Object();
        this.f31133g = new ArrayDeque();
        this.f31134h = new ArrayDeque();
        this.f31130d = ((G) interfaceC3168f).a(looper, new Handler.Callback() { // from class: p0.s
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                e eVar = this.f28117G;
                for (w wVar : (CopyOnWriteArraySet) eVar.f31132f) {
                    v vVar2 = (v) eVar.f31131e;
                    if (!wVar.f28125d && wVar.f28124c) {
                        p094m0.r rVarB = wVar.f28123b.b();
                        wVar.f28123b = new C3134q(0);
                        wVar.f28124c = false;
                        vVar2.c(wVar.f28122a, rVarB);
                    }
                    if (((I) ((q) eVar.f31130d)).f28043a.hasMessages(1)) {
                        break;
                    }
                }
                return true;
            }
        });
        this.f31128b = z7;
    }
}
