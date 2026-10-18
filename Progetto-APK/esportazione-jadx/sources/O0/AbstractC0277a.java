package O0;

import android.os.Looper;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p094m0.f0;

/* JADX INFO: renamed from: O0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0277a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5185a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f5186b = new HashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final D f5187c = new D(new CopyOnWriteArrayList(), 0, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final G0.o f5188d = new G0.o(new CopyOnWriteArrayList(), 0, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Looper f5189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f0 f5190f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0.I f5191g;

    public final D a(C0300y c0300y) {
        return new D(this.f5187c.f5032c, 0, c0300y);
    }

    public abstract InterfaceC0298w b(C0300y c0300y, S0.d dVar, long j8);

    public final void c(InterfaceC0301z interfaceC0301z) {
        HashSet hashSet = this.f5186b;
        boolean z7 = !hashSet.isEmpty();
        hashSet.remove(interfaceC0301z);
        if (z7 && hashSet.isEmpty()) {
            d();
        }
    }

    public final void e(InterfaceC0301z interfaceC0301z) {
        this.f5189e.getClass();
        HashSet hashSet = this.f5186b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.add(interfaceC0301z);
        if (zIsEmpty) {
            f();
        }
    }

    public f0 g() {
        return null;
    }

    public abstract p094m0.I h();

    public boolean i() {
        return true;
    }

    public abstract void j();

    public final void k(InterfaceC0301z interfaceC0301z, p141s0.O o4, C0.I i8) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f5189e;
        H1.d(looper == null || looper == looperMyLooper);
        this.f5191g = i8;
        f0 f0Var = this.f5190f;
        this.f5185a.add(interfaceC0301z);
        if (this.f5189e == null) {
            this.f5189e = looperMyLooper;
            this.f5186b.add(interfaceC0301z);
            l(o4);
        } else if (f0Var != null) {
            e(interfaceC0301z);
            interfaceC0301z.a(f0Var);
        }
    }

    public abstract void l(p141s0.O o4);

    public final void m(f0 f0Var) {
        this.f5190f = f0Var;
        Iterator it = this.f5185a.iterator();
        while (it.hasNext()) {
            ((InterfaceC0301z) it.next()).a(f0Var);
        }
    }

    public abstract void n(InterfaceC0298w interfaceC0298w);

    public final void o(InterfaceC0301z interfaceC0301z) {
        ArrayList arrayList = this.f5185a;
        arrayList.remove(interfaceC0301z);
        if (!arrayList.isEmpty()) {
            c(interfaceC0301z);
            return;
        }
        this.f5189e = null;
        this.f5190f = null;
        this.f5191g = null;
        this.f5186b.clear();
        p();
    }

    public abstract void p();

    public final void q(G0.p pVar) {
        CopyOnWriteArrayList<G0.n> copyOnWriteArrayList = this.f5188d.f3376c;
        for (G0.n nVar : copyOnWriteArrayList) {
            if (nVar.f3373b == pVar) {
                copyOnWriteArrayList.remove(nVar);
            }
        }
    }

    public final void r(E e8) {
        CopyOnWriteArrayList<C> copyOnWriteArrayList = this.f5187c.f5032c;
        for (C c8 : copyOnWriteArrayList) {
            if (c8.f5029b == e8) {
                copyOnWriteArrayList.remove(c8);
            }
        }
    }

    public abstract void s(p094m0.I i8);

    public void d() {
    }

    public void f() {
    }
}
