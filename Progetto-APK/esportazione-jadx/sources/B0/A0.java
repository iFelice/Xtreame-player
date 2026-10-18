package B0;

import O0.AbstractC0290n;
import p094m0.C3120c;

/* JADX INFO: loaded from: classes.dex */
public final class A0 extends AbstractC0290n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p094m0.e0 f680c;

    public A0(p094m0.f0 f0Var) {
        super(f0Var);
        this.f680c = new p094m0.e0();
    }

    @Override // O0.AbstractC0290n, p094m0.f0
    public final p094m0.d0 g(int i8, p094m0.d0 d0Var, boolean z7) {
        p094m0.f0 f0Var = this.f5221b;
        p094m0.d0 d0VarG = f0Var.g(i8, d0Var, z7);
        if (f0Var.n(d0VarG.f26827c, this.f680c, 0L).a()) {
            Object obj = d0Var.f26825a;
            Object obj2 = d0Var.f26826b;
            int i9 = d0Var.f26827c;
            long j8 = d0Var.f26828d;
            long j9 = d0Var.f26829e;
            C3120c c3120c = C3120c.f26819c;
            d0VarG.f26825a = obj;
            d0VarG.f26826b = obj2;
            d0VarG.f26827c = i9;
            d0VarG.f26828d = j8;
            d0VarG.f26829e = j9;
            d0VarG.f26831g = c3120c;
            d0VarG.f26830f = true;
        } else {
            d0VarG.f26830f = true;
        }
        return d0VarG;
    }
}
