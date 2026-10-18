package p074j2;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import p027d2.n;
import p066i2.c;
import p066i2.d;
import p082k2.f;
import p082k2.g;
import p096m2.q;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f25688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f25689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f25690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f25691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f25692e;

    public b(f fVar) {
        q0.h(fVar, "tracker");
        this.f25688a = fVar;
        this.f25689b = new ArrayList();
        this.f25690c = new ArrayList();
    }

    public abstract boolean a(q qVar);

    public abstract boolean b(Object obj);

    public final void c(Collection collection) {
        q0.h(collection, "workSpecs");
        this.f25689b.clear();
        this.f25690c.clear();
        ArrayList arrayList = this.f25689b;
        for (Object obj : collection) {
            if (a((q) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = this.f25689b;
        ArrayList arrayList3 = this.f25690c;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((q) it.next()).f27242a);
        }
        if (this.f25689b.isEmpty()) {
            this.f25688a.b(this);
        } else {
            f fVar = this.f25688a;
            fVar.getClass();
            synchronized (fVar.f25922c) {
                try {
                    if (fVar.f25923d.add(this)) {
                        if (fVar.f25923d.size() == 1) {
                            fVar.f25924e = fVar.a();
                            n.d().a(g.f25925a, fVar.getClass().getSimpleName() + ": initial state = " + fVar.f25924e);
                            fVar.d();
                        }
                        Object obj2 = fVar.f25924e;
                        this.f25691d = obj2;
                        d(this.f25692e, obj2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        d(this.f25692e, this.f25691d);
    }

    public final void d(c cVar, Object obj) {
        if (this.f25689b.isEmpty() || cVar == null) {
            return;
        }
        if (obj == null || b(obj)) {
            cVar.b(this.f25689b);
            return;
        }
        ArrayList arrayList = this.f25689b;
        q0.h(arrayList, "workSpecs");
        synchronized (cVar.f25559c) {
            try {
                ArrayList<q> arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    if (cVar.a(((q) obj2).f27242a)) {
                        arrayList2.add(obj2);
                    }
                }
                for (q qVar : arrayList2) {
                    n.d().a(d.f25560a, "Constraints met for " + qVar);
                }
                p066i2.b bVar = cVar.f25557a;
                if (bVar != null) {
                    bVar.f(arrayList2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
