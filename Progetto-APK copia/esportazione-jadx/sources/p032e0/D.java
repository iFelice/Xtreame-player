package p032e0;

import A0.O;
import S1.d;
import S1.e;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;
import p155t6.f;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class D implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f24718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f24719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f24720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f24721d;

    public D(e eVar, L l4) {
        q0.h(eVar, "savedStateRegistry");
        q0.h(l4, "viewModelStoreOwner");
        this.f24718a = eVar;
        this.f24721d = new f(new C(l4, 0));
    }

    @Override // S1.d
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f24720c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = b().f24722b.entrySet().iterator();
        if (!it.hasNext()) {
            this.f24719b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        O.I(entry.getValue());
        throw null;
    }

    public final E b() {
        return (E) this.f24721d.a();
    }
}
