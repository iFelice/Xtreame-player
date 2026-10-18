package O0;

import p094m0.C3120c;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;

/* JADX INFO: renamed from: O0.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0294s extends f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p094m0.I f5240b;

    public C0294s(p094m0.I i8) {
        this.f5240b = i8;
    }

    @Override // p094m0.f0
    public final int b(Object obj) {
        return obj == r.f5237e ? 0 : -1;
    }

    @Override // p094m0.f0
    public final d0 g(int i8, d0 d0Var, boolean z7) {
        Integer num = z7 ? 0 : null;
        Object obj = z7 ? r.f5237e : null;
        C3120c c3120c = C3120c.f26819c;
        d0Var.getClass();
        C3120c c3120c2 = C3120c.f26819c;
        d0Var.f26825a = num;
        d0Var.f26826b = obj;
        d0Var.f26827c = 0;
        d0Var.f26828d = -9223372036854775807L;
        d0Var.f26829e = 0L;
        d0Var.f26831g = c3120c2;
        d0Var.f26830f = true;
        return d0Var;
    }

    @Override // p094m0.f0
    public final int i() {
        return 1;
    }

    @Override // p094m0.f0
    public final Object m(int i8) {
        return r.f5237e;
    }

    @Override // p094m0.f0
    public final e0 n(int i8, e0 e0Var, long j8) {
        Object obj = e0.f26832q;
        e0Var.b(this.f5240b, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0L);
        e0Var.f26844k = true;
        return e0Var;
    }

    @Override // p094m0.f0
    public final int p() {
        return 1;
    }
}
