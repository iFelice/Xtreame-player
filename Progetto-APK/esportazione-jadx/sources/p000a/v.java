package p000a;

import C6.a;
import Y.D;
import android.os.Build;
import p032e0.B;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2983k;
import p032e0.m;
import p162u6.i;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class v implements InterfaceC2983k, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final B f8613G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final q f8614H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public w f8615I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ x f8616J;

    public v(x xVar, B b8, D d6) {
        q0.h(d6, "onBackPressedCallback");
        this.f8616J = xVar;
        this.f8613G = b8;
        this.f8614H = d6;
        b8.a(this);
    }

    @Override // p032e0.InterfaceC2983k
    public final void b(m mVar, EnumC2981i enumC2981i) {
        if (enumC2981i != EnumC2981i.ON_START) {
            if (enumC2981i != EnumC2981i.ON_STOP) {
                if (enumC2981i == EnumC2981i.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                w wVar = this.f8615I;
                if (wVar != null) {
                    wVar.cancel();
                    return;
                }
                return;
            }
        }
        x xVar = this.f8616J;
        xVar.getClass();
        q qVar = this.f8614H;
        q0.h(qVar, "onBackPressedCallback");
        ((i) xVar.f8621c).addLast(qVar);
        w wVar2 = new w(xVar, qVar);
        qVar.f8606b.add(wVar2);
        if (Build.VERSION.SDK_INT >= 33) {
            xVar.c();
            qVar.f8607c = (a) xVar.f8622d;
        }
        this.f8615I = wVar2;
    }

    @Override // p000a.a
    public final void cancel() {
        this.f8613G.c(this);
        q qVar = this.f8614H;
        qVar.getClass();
        qVar.f8606b.remove(this);
        w wVar = this.f8615I;
        if (wVar != null) {
            wVar.cancel();
        }
        this.f8615I = null;
    }
}
