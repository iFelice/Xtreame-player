package y2;

import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f31292a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f31293b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.f f31294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f31295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31296e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31297f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Class f31298g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public J3.k f31299h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p173w2.l f31300i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map f31301j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class f31302k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f31303l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f31304m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p173w2.i f31305n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.g f31306o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public o f31307p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f31308q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f31309r;

    public final ArrayList a() {
        boolean z7 = this.f31304m;
        ArrayList arrayList = this.f31293b;
        if (!z7) {
            this.f31304m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i8 = 0; i8 < size; i8++) {
                C2.B b8 = (C2.B) arrayListB.get(i8);
                if (!arrayList.contains(b8.f1347a)) {
                    arrayList.add(b8.f1347a);
                }
                int i9 = 0;
                while (true) {
                    List list = b8.f1348b;
                    if (i9 < list.size()) {
                        if (!arrayList.contains(list.get(i9))) {
                            arrayList.add(list.get(i9));
                        }
                        i9++;
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z7 = this.f31303l;
        ArrayList arrayList = this.f31292a;
        if (!z7) {
            this.f31303l = true;
            arrayList.clear();
            List listG = this.f31294c.b().g(this.f31295d);
            int size = listG.size();
            for (int i8 = 0; i8 < size; i8++) {
                C2.B b8 = ((C2.C) listG.get(i8)).b(this.f31295d, this.f31296e, this.f31297f, this.f31300i);
                if (b8 != null) {
                    arrayList.add(b8);
                }
            }
        }
        return arrayList;
    }

    public final B c(Class cls) {
        B b8;
        com.bumptech.glide.j jVarB = this.f31294c.b();
        Class cls2 = this.f31298g;
        Class cls3 = this.f31302k;
        K2.b bVar = jVarB.f11548i;
        P2.m mVar = (P2.m) bVar.f4465b.getAndSet(null);
        if (mVar == null) {
            mVar = new P2.m();
        }
        mVar.f5902a = cls;
        mVar.f5903b = cls2;
        mVar.f5904c = cls3;
        synchronized (bVar.f4464a) {
            b8 = (B) bVar.f4464a.get(mVar);
        }
        bVar.f4465b.set(mVar);
        jVarB.f11548i.getClass();
        if (K2.b.f4463c.equals(b8)) {
            return null;
        }
        if (b8 != null) {
            return b8;
        }
        ArrayList arrayListE = jVarB.e(cls, cls2, cls3);
        B b9 = arrayListE.isEmpty() ? null : new B(cls, cls2, cls3, arrayListE, jVarB.f11549j);
        jVarB.f11548i.a(cls, cls2, cls3, b9);
        return b9;
    }

    public final List d() {
        List list;
        com.bumptech.glide.j jVarB = this.f31294c.b();
        Class<?> cls = this.f31295d.getClass();
        Class cls2 = this.f31298g;
        Class cls3 = this.f31302k;
        x0 x0Var = jVarB.f11547h;
        P2.m mVar = (P2.m) ((AtomicReference) x0Var.f22390H).getAndSet(null);
        if (mVar == null) {
            mVar = new P2.m(cls, cls2, cls3);
        } else {
            mVar.f5902a = cls;
            mVar.f5903b = cls2;
            mVar.f5904c = cls3;
        }
        synchronized (((p132r.f) x0Var.f22391I)) {
            list = (List) ((p132r.f) x0Var.f22391I).get(mVar);
        }
        ((AtomicReference) x0Var.f22390H).set(mVar);
        List list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = jVarB.f11540a.o(cls).iterator();
            while (it.hasNext()) {
                for (Class cls4 : jVarB.f11542c.l((Class) it.next(), cls2)) {
                    if (!jVarB.f11545f.g(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            jVarB.f11547h.s(cls, cls2, cls3, Collections.unmodifiableList(arrayList));
            list2 = arrayList;
        }
        return list2;
    }

    public final p173w2.c e(Object obj) {
        p173w2.c cVar;
        I2.c cVar2 = this.f31294c.b().f11541b;
        Class<?> cls = obj.getClass();
        synchronized (cVar2) {
            for (K2.a aVar : cVar2.f4008G) {
                if (aVar.f4461a.isAssignableFrom(cls)) {
                    cVar = aVar.f4462b;
                }
            }
            cVar = null;
        }
        if (cVar != null) {
            return cVar;
        }
        throw new com.bumptech.glide.i(3, obj.getClass());
    }

    public final p173w2.p f(Class cls) {
        p173w2.p pVar = (p173w2.p) this.f31301j.get(cls);
        if (pVar == null) {
            for (Map.Entry entry : this.f31301j.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    pVar = (p173w2.p) entry.getValue();
                    break;
                }
            }
        }
        if (pVar != null) {
            return pVar;
        }
        if (!this.f31301j.isEmpty() || !this.f31308q) {
            return E2.d.f2824b;
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }
}
