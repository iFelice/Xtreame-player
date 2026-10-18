package X1;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class v extends q {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f7618f0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public ArrayList f7616d0 = new ArrayList();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f7617e0 = true;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f7619g0 = false;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f7620h0 = 0;

    @Override // X1.q
    public final void A(long j8) {
        this.f7593I = j8;
        if (j8 >= 0) {
            int size = this.f7616d0.size();
            for (int i8 = 0; i8 < size; i8++) {
                ((q) this.f7616d0.get(i8)).A(j8);
            }
        }
    }

    @Override // X1.q
    public final void B(Q3.b bVar) {
        this.f7609Y = bVar;
        this.f7620h0 |= 8;
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((q) this.f7616d0.get(i8)).B(bVar);
        }
    }

    @Override // X1.q
    public final void C(TimeInterpolator timeInterpolator) {
        this.f7620h0 |= 1;
        ArrayList arrayList = this.f7616d0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                ((q) this.f7616d0.get(i8)).C(timeInterpolator);
            }
        }
        this.f7594J = timeInterpolator;
    }

    @Override // X1.q
    public final void D(U1.f fVar) {
        super.D(fVar);
        this.f7620h0 |= 4;
        for (int i8 = 0; i8 < this.f7616d0.size(); i8++) {
            ((q) this.f7616d0.get(i8)).D(fVar);
        }
    }

    @Override // X1.q
    public final void E() {
        this.f7620h0 |= 2;
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((q) this.f7616d0.get(i8)).E();
        }
    }

    @Override // X1.q
    public final void F(long j8) {
        this.f7592H = j8;
    }

    @Override // X1.q
    public final String H(String str) {
        String strH = super.H(str);
        for (int i8 = 0; i8 < this.f7616d0.size(); i8++) {
            StringBuilder sbL = p000a.r.l(strH, "\n");
            sbL.append(((q) this.f7616d0.get(i8)).H(str + "  "));
            strH = sbL.toString();
        }
        return strH;
    }

    public final void I(q qVar) {
        this.f7616d0.add(qVar);
        qVar.f7599O = this;
        long j8 = this.f7593I;
        if (j8 >= 0) {
            qVar.A(j8);
        }
        if ((this.f7620h0 & 1) != 0) {
            qVar.C(this.f7594J);
        }
        if ((this.f7620h0 & 2) != 0) {
            qVar.E();
        }
        if ((this.f7620h0 & 4) != 0) {
            qVar.D(this.f7610Z);
        }
        if ((this.f7620h0 & 8) != 0) {
            qVar.B(this.f7609Y);
        }
    }

    @Override // X1.q
    public final void a(p pVar) {
        super.a(pVar);
    }

    @Override // X1.q
    public final void b(View view) {
        for (int i8 = 0; i8 < this.f7616d0.size(); i8++) {
            ((q) this.f7616d0.get(i8)).b(view);
        }
        this.f7596L.add(view);
    }

    @Override // X1.q
    public final void d(x xVar) {
        if (t(xVar.f7625b)) {
            for (q qVar : this.f7616d0) {
                if (qVar.t(xVar.f7625b)) {
                    qVar.d(xVar);
                    xVar.f7626c.add(qVar);
                }
            }
        }
    }

    @Override // X1.q
    public final void f(x xVar) {
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((q) this.f7616d0.get(i8)).f(xVar);
        }
    }

    @Override // X1.q
    public final void g(x xVar) {
        if (t(xVar.f7625b)) {
            for (q qVar : this.f7616d0) {
                if (qVar.t(xVar.f7625b)) {
                    qVar.g(xVar);
                    xVar.f7626c.add(qVar);
                }
            }
        }
    }

    @Override // X1.q
    /* JADX INFO: renamed from: j */
    public final q clone() {
        v vVar = (v) super.clone();
        vVar.f7616d0 = new ArrayList();
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            vVar.I(((q) this.f7616d0.get(i8)).clone());
        }
        return vVar;
    }

    @Override // X1.q
    public final void m(ViewGroup viewGroup, p096m2.i iVar, p096m2.i iVar2, ArrayList arrayList, ArrayList arrayList2) {
        long j8 = this.f7592H;
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            q qVar = (q) this.f7616d0.get(i8);
            if (j8 > 0 && (this.f7617e0 || i8 == 0)) {
                long j9 = qVar.f7592H;
                if (j9 > 0) {
                    qVar.F(j9 + j8);
                } else {
                    qVar.F(j8);
                }
            }
            qVar.m(viewGroup, iVar, iVar2, arrayList, arrayList2);
        }
    }

    @Override // X1.q
    public final void v(View view) {
        super.v(view);
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((q) this.f7616d0.get(i8)).v(view);
        }
    }

    @Override // X1.q
    public final void w(p pVar) {
        super.w(pVar);
    }

    @Override // X1.q
    public final void x(View view) {
        for (int i8 = 0; i8 < this.f7616d0.size(); i8++) {
            ((q) this.f7616d0.get(i8)).x(view);
        }
        this.f7596L.remove(view);
    }

    @Override // X1.q
    public final void y(ViewGroup viewGroup) {
        super.y(viewGroup);
        int size = this.f7616d0.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((q) this.f7616d0.get(i8)).y(viewGroup);
        }
    }

    @Override // X1.q
    public final void z() {
        if (this.f7616d0.isEmpty()) {
            G();
            n();
            return;
        }
        u uVar = new u();
        uVar.f7615a = this;
        Iterator it = this.f7616d0.iterator();
        while (it.hasNext()) {
            ((q) it.next()).a(uVar);
        }
        this.f7618f0 = this.f7616d0.size();
        if (this.f7617e0) {
            Iterator it2 = this.f7616d0.iterator();
            while (it2.hasNext()) {
                ((q) it2.next()).z();
            }
            return;
        }
        for (int i8 = 1; i8 < this.f7616d0.size(); i8++) {
            ((q) this.f7616d0.get(i8 - 1)).a(new C0388g(2, this, (q) this.f7616d0.get(i8)));
        }
        q qVar = (q) this.f7616d0.get(0);
        if (qVar != null) {
            qVar.z();
        }
    }
}
