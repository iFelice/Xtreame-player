package A0;

import android.content.Context;
import android.util.SparseArray;
import java.util.concurrent.Executor;
import p094m0.C3126i;

/* JADX INFO: loaded from: classes.dex */
public final class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f66a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3126i f67b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final F.i f68c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h0 f69d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final H f70e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f71f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SparseArray f72g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f73h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f74i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public K f75j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a0 f76k;

    public N(Context context, C3126i c3126i, F.i iVar, h0 h0Var, Executor executor, C0014n c0014n, boolean z7, boolean z8, boolean z9) {
        this.f66a = context;
        this.f67b = c3126i;
        this.f68c = iVar;
        this.f69d = h0Var;
        this.f71f = executor;
        this.f70e = c0014n;
        SparseArray sparseArray = new SparseArray();
        this.f72g = sparseArray;
        this.f73h = 0;
        this.f74i = z8;
        M m7 = new M(new B(iVar, h0Var, z7, z8));
        sparseArray.put(1, m7);
        sparseArray.put(4, m7);
        sparseArray.put(2, new M(new C0003c(iVar, h0Var, z9)));
        sparseArray.put(3, new M(new Z(iVar, h0Var)));
    }

    public final void a() {
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f72g;
            if (i8 >= sparseArray.size()) {
                return;
            }
            M m7 = (M) sparseArray.get(sparseArray.keyAt(i8));
            if (!m7.f65d) {
                m7.f65d = true;
                m7.f62a.f();
                InterfaceC0024y interfaceC0024y = m7.f63b;
                if (interfaceC0024y != null) {
                    ((C0013m) interfaceC0024y).release();
                }
            }
            i8++;
        }
    }
}
