package y2;

import java.io.File;
import java.util.List;

/* JADX INFO: renamed from: y2.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3233e implements InterfaceC3236h, com.bumptech.glide.load.data.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f31281G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f31282H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC3235g f31283I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f31284J = -1;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p173w2.i f31285K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public List f31286L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f31287M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile C2.B f31288N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public File f31289O;

    public C3233e(List list, i iVar, InterfaceC3235g interfaceC3235g) {
        this.f31281G = list;
        this.f31282H = iVar;
        this.f31283I = interfaceC3235g;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b(Exception exc) {
        this.f31283I.a(this.f31285K, exc, this.f31288N.f1349c, p173w2.a.f30983I);
    }

    @Override // y2.InterfaceC3236h
    public final boolean c() {
        while (true) {
            List list = this.f31286L;
            boolean z7 = false;
            if (list != null && this.f31287M < list.size()) {
                this.f31288N = null;
                while (!z7 && this.f31287M < this.f31286L.size()) {
                    List list2 = this.f31286L;
                    int i8 = this.f31287M;
                    this.f31287M = i8 + 1;
                    C2.C c8 = (C2.C) list2.get(i8);
                    File file = this.f31289O;
                    i iVar = this.f31282H;
                    this.f31288N = c8.b(file, iVar.f31296e, iVar.f31297f, iVar.f31300i);
                    if (this.f31288N != null && this.f31282H.c(this.f31288N.f1349c.a()) != null) {
                        this.f31288N.f1349c.e(this.f31282H.f31306o, this);
                        z7 = true;
                    }
                }
                return z7;
            }
            int i9 = this.f31284J + 1;
            this.f31284J = i9;
            if (i9 >= this.f31281G.size()) {
                return false;
            }
            p173w2.i iVar2 = (p173w2.i) this.f31281G.get(this.f31284J);
            i iVar3 = this.f31282H;
            File fileA = iVar3.f31299h.a().a(new C3234f(iVar2, iVar3.f31305n));
            this.f31289O = fileA;
            if (fileA != null) {
                this.f31285K = iVar2;
                this.f31286L = this.f31282H.f31294c.b().g(fileA);
                this.f31287M = 0;
            }
        }
    }

    @Override // y2.InterfaceC3236h
    public final void cancel() {
        C2.B b8 = this.f31288N;
        if (b8 != null) {
            b8.f1349c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(Object obj) {
        this.f31283I.d(this.f31285K, obj, this.f31288N.f1349c, p173w2.a.f30983I, this.f31285K);
    }
}
