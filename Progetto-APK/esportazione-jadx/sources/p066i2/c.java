package p066i2;

import java.util.ArrayList;
import java.util.Collection;
import p027d2.n;
import p074j2.a;
import p074j2.b;
import p074j2.d;
import p082k2.f;
import p096m2.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f25557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b[] f25558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f25559c;

    public c(o oVar, b bVar) {
        q0.h(oVar, "trackers");
        a aVar = new a((f) oVar.f27236G, 0);
        a aVar2 = new a((p082k2.a) oVar.f27237H);
        a aVar3 = new a((f) oVar.f27239J, 4);
        a aVar4 = new a((f) oVar.f27238I, 2);
        a aVar5 = new a((f) oVar.f27238I, 3);
        f fVar = (f) oVar.f27238I;
        q0.h(fVar, "tracker");
        d dVar = new d(fVar);
        f fVar2 = (f) oVar.f27238I;
        q0.h(fVar2, "tracker");
        b[] bVarArr = {aVar, aVar2, aVar3, aVar4, aVar5, dVar, new p074j2.c(fVar2)};
        this.f25557a = bVar;
        this.f25558b = bVarArr;
        this.f25559c = new Object();
    }

    public final boolean a(String str) {
        b bVar;
        boolean z7;
        q0.h(str, "workSpecId");
        synchronized (this.f25559c) {
            try {
                b[] bVarArr = this.f25558b;
                int length = bVarArr.length;
                int i8 = 0;
                while (true) {
                    if (i8 >= length) {
                        bVar = null;
                        break;
                    }
                    bVar = bVarArr[i8];
                    bVar.getClass();
                    Object obj = bVar.f25691d;
                    if (obj != null && bVar.b(obj) && bVar.f25690c.contains(str)) {
                        break;
                    }
                    i8++;
                }
                if (bVar != null) {
                    n.d().a(d.f25560a, "Work " + str + " constrained by " + bVar.getClass().getSimpleName());
                }
                z7 = bVar == null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    public final void b(ArrayList arrayList) {
        q0.h(arrayList, "workSpecs");
        synchronized (this.f25559c) {
            b bVar = this.f25557a;
            if (bVar != null) {
                bVar.e(arrayList);
            }
        }
    }

    public final void c(Collection collection) {
        q0.h(collection, "workSpecs");
        synchronized (this.f25559c) {
            try {
                for (b bVar : this.f25558b) {
                    if (bVar.f25692e != null) {
                        bVar.f25692e = null;
                        bVar.d(null, bVar.f25691d);
                    }
                }
                for (b bVar2 : this.f25558b) {
                    bVar2.c(collection);
                }
                for (b bVar3 : this.f25558b) {
                    if (bVar3.f25692e != this) {
                        bVar3.f25692e = this;
                        bVar3.d(this, bVar3.f25691d);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.f25559c) {
            for (b bVar : this.f25558b) {
                ArrayList arrayList = bVar.f25689b;
                if (!arrayList.isEmpty()) {
                    arrayList.clear();
                    bVar.f25688a.b(bVar);
                }
            }
        }
    }
}
