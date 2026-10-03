package p032e0;

import S1.d;
import S1.e;
import S1.g;
import U4.b;
import Y.C0404p;
import java.util.Iterator;
import java.util.Map;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class B implements I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final b f24713G = new b();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final b f24714H = new b();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final b f24715I = new b();

    public static final void b(g gVar) {
        d dVar;
        String str;
        q0.h(gVar, "<this>");
        EnumC2982j enumC2982j = gVar.h().f24751L;
        if (enumC2982j != EnumC2982j.f24742H && enumC2982j != EnumC2982j.f24743I) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        e eVarD = gVar.d();
        eVarD.getClass();
        Iterator it = eVarD.f6389a.iterator();
        do {
            p101n.e eVar = (p101n.e) it;
            if (!eVar.hasNext()) {
                dVar = null;
                break;
            }
            Map.Entry entry = (Map.Entry) eVar.next();
            q0.g(entry, "components");
            str = (String) entry.getKey();
            dVar = (d) entry.getValue();
        } while (!q0.c(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        if (dVar == null) {
            D d6 = new D(gVar.d(), (L) gVar);
            gVar.d().c("androidx.lifecycle.internal.SavedStateHandlesProvider", d6);
            gVar.h().a(new C0404p(d6));
        }
    }

    public abstract void a(InterfaceC2984l interfaceC2984l);

    public abstract void c(InterfaceC2984l interfaceC2984l);
}
