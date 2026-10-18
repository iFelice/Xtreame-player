package S1;

import android.os.Bundle;
import p032e0.B;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2983k;
import p032e0.m;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p101n.g f6389a = new p101n.g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f6391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6392d;

    public final Bundle a(String str) {
        if (!this.f6392d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.f6391c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f6391c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f6391c;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f6391c = null;
        }
        return bundle2;
    }

    public final void b(B b8) {
        if (!(!this.f6390b)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        b8.a(new InterfaceC2983k() { // from class: S1.b
            @Override // p032e0.InterfaceC2983k
            public final void b(m mVar, EnumC2981i enumC2981i) {
                q0.h(this.f6388G, "this$0");
            }
        });
        this.f6390b = true;
    }

    public final void c(String str, d dVar) {
        Object obj;
        p101n.g gVar = this.f6389a;
        p101n.c cVarB = gVar.b(str);
        if (cVarB != null) {
            obj = cVarB.f27292H;
        } else {
            p101n.c cVar = new p101n.c(str, dVar);
            gVar.f27303J++;
            p101n.c cVar2 = gVar.f27301H;
            if (cVar2 == null) {
                gVar.f27300G = cVar;
                gVar.f27301H = cVar;
            } else {
                cVar2.f27293I = cVar;
                cVar.f27294J = cVar2;
                gVar.f27301H = cVar;
            }
            obj = null;
        }
        if (((d) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }
}
