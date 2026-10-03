package J2;

import java.util.HashSet;
import java.util.Iterator;
import p032e0.B;
import p032e0.EnumC2981i;
import p032e0.EnumC2982j;
import p032e0.InterfaceC2984l;
import p032e0.x;

/* JADX INFO: loaded from: classes.dex */
public final class i implements h, InterfaceC2984l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashSet f4102G = new HashSet();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final B f4103H;

    public i(p032e0.o oVar) {
        this.f4103H = oVar;
        oVar.a(this);
    }

    @Override // J2.h
    public final void a(j jVar) {
        this.f4102G.remove(jVar);
    }

    @Override // J2.h
    public final void i(j jVar) {
        this.f4102G.add(jVar);
        EnumC2982j enumC2982j = ((p032e0.o) this.f4103H).f24751L;
        if (enumC2982j == EnumC2982j.f24741G) {
            jVar.onDestroy();
        } else if (enumC2982j.compareTo(EnumC2982j.f24744J) >= 0) {
            jVar.j();
        } else {
            jVar.e();
        }
    }

    @x(EnumC2981i.ON_DESTROY)
    public void onDestroy(p032e0.m mVar) {
        Iterator it = P2.o.e(this.f4102G).iterator();
        while (it.hasNext()) {
            ((j) it.next()).onDestroy();
        }
        mVar.h().c(this);
    }

    @x(EnumC2981i.ON_START)
    public void onStart(p032e0.m mVar) {
        Iterator it = P2.o.e(this.f4102G).iterator();
        while (it.hasNext()) {
            ((j) it.next()).j();
        }
    }

    @x(EnumC2981i.ON_STOP)
    public void onStop(p032e0.m mVar) {
        Iterator it = P2.o.e(this.f4102G).iterator();
        while (it.hasNext()) {
            ((j) it.next()).e();
        }
    }
}
