package Y5;

import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: renamed from: Y5.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0414a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0416c f8148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IdentityHashMap f8149b;

    public C0414a(C0416c c0416c) {
        this.f8148a = c0416c;
    }

    public final C0416c a() {
        if (this.f8149b != null) {
            for (Map.Entry entry : this.f8148a.f8152a.entrySet()) {
                if (!this.f8149b.containsKey(entry.getKey())) {
                    this.f8149b.put((C0415b) entry.getKey(), entry.getValue());
                }
            }
            this.f8148a = new C0416c(this.f8149b);
            this.f8149b = null;
        }
        return this.f8148a;
    }

    public final void b(C0415b c0415b, Object obj) {
        if (this.f8149b == null) {
            this.f8149b = new IdentityHashMap(1);
        }
        this.f8149b.put(c0415b, obj);
    }
}
