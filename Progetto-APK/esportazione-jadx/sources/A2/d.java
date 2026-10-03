package A2;

import android.content.Context;
import java.io.File;
import p096m2.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f621a = 262144000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p096m2.e f622b;

    public d(p096m2.e eVar) {
        this.f622b = eVar;
    }

    public final p151t2.c a() {
        p096m2.e eVar = this.f622b;
        File cacheDir = ((Context) eVar.f27215H).getCacheDir();
        if (cacheDir == null) {
            cacheDir = null;
        } else if (((String) eVar.f27216I) != null) {
            cacheDir = new File(cacheDir, (String) eVar.f27216I);
        }
        if (cacheDir == null) {
            return null;
        }
        if (!cacheDir.isDirectory() && !cacheDir.mkdirs()) {
            return null;
        }
        p151t2.c cVar = new p151t2.c();
        cVar.f30275K = new p096m2.c(10);
        cVar.f30274J = cacheDir;
        cVar.f30271G = this.f621a;
        cVar.f30273I = new l(10);
        return cVar;
    }
}
