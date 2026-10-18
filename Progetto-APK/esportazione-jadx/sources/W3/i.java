package W3;

import C2.C0091g;
import android.content.Context;
import p052g4.j;
import p052g4.r;

/* JADX INFO: loaded from: classes.dex */
public final class i implements A3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f7477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f7478b;

    public i(Context context) {
        f fVar;
        this.f7477a = new h(context, J3.f.f4145b);
        synchronized (f.class) {
            try {
                if (f.f7470c == null) {
                    f.f7470c = new f(context.getApplicationContext());
                }
                fVar = f.f7470c;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f7478b = fVar;
    }

    @Override // A3.a
    public final p052g4.h a() {
        p052g4.h hVarA = this.f7477a.a();
        C0091g c0091g = new C0091g(this, 24);
        r rVar = (r) hVarA;
        rVar.getClass();
        return rVar.i(j.f25346a, c0091g);
    }
}
