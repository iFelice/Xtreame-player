package y2;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: y2.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3230b extends WeakReference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p173w2.i f31273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public D f31275c;

    public C3230b(p173w2.i iVar, x xVar, ReferenceQueue referenceQueue, boolean z7) {
        D d6;
        super(xVar, referenceQueue);
        p102n0.c.c(iVar, "Argument must not be null");
        this.f31273a = iVar;
        if (xVar.f31403G && z7) {
            d6 = xVar.f31405I;
            p102n0.c.c(d6, "Argument must not be null");
        } else {
            d6 = null;
        }
        this.f31275c = d6;
        this.f31274b = xVar.f31403G;
    }
}
