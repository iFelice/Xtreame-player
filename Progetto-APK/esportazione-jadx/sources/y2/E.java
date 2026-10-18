package y2;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class E implements InterfaceC3236h, com.bumptech.glide.load.data.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC3235g f31246G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f31247H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f31248I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f31249J = -1;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p173w2.i f31250K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public List f31251L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f31252M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile C2.B f31253N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public File f31254O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public F f31255P;

    public E(i iVar, InterfaceC3235g interfaceC3235g) {
        this.f31247H = iVar;
        this.f31246G = interfaceC3235g;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b(Exception exc) {
        this.f31246G.a(this.f31255P, exc, this.f31253N.f1349c, p173w2.a.f30984J);
    }

    @Override // y2.InterfaceC3236h
    public final boolean c() {
        ArrayList arrayListA = this.f31247H.a();
        boolean z7 = false;
        if (arrayListA.isEmpty()) {
            return false;
        }
        List listD = this.f31247H.d();
        if (listD.isEmpty()) {
            if (File.class.equals(this.f31247H.f31302k)) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f31247H.f31295d.getClass() + " to " + this.f31247H.f31302k);
        }
        while (true) {
            List list = this.f31251L;
            if (list != null && this.f31252M < list.size()) {
                this.f31253N = null;
                while (!z7 && this.f31252M < this.f31251L.size()) {
                    List list2 = this.f31251L;
                    int i8 = this.f31252M;
                    this.f31252M = i8 + 1;
                    C2.C c8 = (C2.C) list2.get(i8);
                    File file = this.f31254O;
                    i iVar = this.f31247H;
                    this.f31253N = c8.b(file, iVar.f31296e, iVar.f31297f, iVar.f31300i);
                    if (this.f31253N != null && this.f31247H.c(this.f31253N.f1349c.a()) != null) {
                        this.f31253N.f1349c.e(this.f31247H.f31306o, this);
                        z7 = true;
                    }
                }
                return z7;
            }
            int i9 = this.f31249J + 1;
            this.f31249J = i9;
            if (i9 >= listD.size()) {
                int i10 = this.f31248I + 1;
                this.f31248I = i10;
                if (i10 >= arrayListA.size()) {
                    return false;
                }
                this.f31249J = 0;
            }
            p173w2.i iVar2 = (p173w2.i) arrayListA.get(this.f31248I);
            Class cls = (Class) listD.get(this.f31249J);
            p173w2.p pVarF = this.f31247H.f(cls);
            i iVar3 = this.f31247H;
            this.f31255P = new F(iVar3.f31294c.f11525a, iVar2, iVar3.f31305n, iVar3.f31296e, iVar3.f31297f, pVarF, cls, iVar3.f31300i);
            File fileA = iVar3.f31299h.a().a(this.f31255P);
            this.f31254O = fileA;
            if (fileA != null) {
                this.f31250K = iVar2;
                this.f31251L = this.f31247H.f31294c.b().g(fileA);
                this.f31252M = 0;
            }
        }
    }

    @Override // y2.InterfaceC3236h
    public final void cancel() {
        C2.B b8 = this.f31253N;
        if (b8 != null) {
            b8.f1349c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(Object obj) {
        this.f31246G.d(this.f31250K, obj, this.f31253N.f1349c, p173w2.a.f30984J, this.f31255P);
    }
}
