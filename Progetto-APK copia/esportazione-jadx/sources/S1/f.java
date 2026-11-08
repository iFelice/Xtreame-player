package S1;

import android.os.Bundle;
import java.util.Map;
import p032e0.EnumC2982j;
import p032e0.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f6393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f6394b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6395c;

    public f(g gVar) {
        this.f6393a = gVar;
    }

    public final void a() {
        g gVar = this.f6393a;
        o oVarH = gVar.h();
        if (oVarH.f24751L != EnumC2982j.f24742H) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        oVarH.a(new a(gVar));
        this.f6394b.b(oVarH);
        this.f6395c = true;
    }

    public final void b(Bundle bundle) {
        if (!this.f6395c) {
            a();
        }
        o oVarH = this.f6393a.h();
        if (!(!(oVarH.f24751L.compareTo(EnumC2982j.f24744J) >= 0))) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + oVarH.f24751L).toString());
        }
        e eVar = this.f6394b;
        if (!eVar.f6390b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!eVar.f6392d)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        eVar.f6391c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        eVar.f6392d = true;
    }

    public final void c(Bundle bundle) {
        q0.h(bundle, "outBundle");
        e eVar = this.f6394b;
        eVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = eVar.f6391c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        p101n.g gVar = eVar.f6389a;
        gVar.getClass();
        p101n.d dVar = new p101n.d(gVar);
        gVar.f27302I.put(dVar, Boolean.FALSE);
        while (dVar.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar.next();
            bundle2.putBundle((String) entry.getKey(), ((d) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
