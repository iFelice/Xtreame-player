package F2;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: renamed from: F2.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0191a implements p173w2.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3126c;

    public /* synthetic */ C0191a(int i8, Object obj, Object obj2) {
        this.f3124a = i8;
        this.f3125b = obj;
        this.f3126c = obj2;
    }

    @Override // p173w2.n
    public final boolean a(Object obj, p173w2.l lVar) {
        int i8 = this.f3124a;
        Object obj2 = this.f3125b;
        switch (i8) {
            case 0:
                return ((p173w2.n) obj2).a(obj, lVar);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                ((p) obj2).getClass();
                return true;
        }
    }

    @Override // p173w2.n
    public final y2.D b(Object obj, int i8, int i9, p173w2.l lVar) {
        w wVar;
        boolean z7;
        P2.f fVar;
        switch (this.f3124a) {
            case 0:
                y2.D dB = ((p173w2.n) this.f3125b).b(obj, i8, i9, lVar);
                Resources resources = (Resources) this.f3126c;
                if (dB == null) {
                    return null;
                }
                return new C0194d(resources, dB);
            case 1:
                y2.D dC = ((G2.e) this.f3125b).c((Uri) obj, lVar);
                if (dC == null) {
                    return null;
                }
                return r.a((p196z2.d) this.f3126c, (Drawable) ((G2.b) dC).get(), i8, i9);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof w) {
                    wVar = (w) inputStream;
                    z7 = false;
                } else {
                    wVar = new w(inputStream, (p196z2.h) this.f3126c);
                    z7 = true;
                }
                ArrayDeque arrayDeque = P2.f.f5888I;
                synchronized (arrayDeque) {
                    fVar = (P2.f) arrayDeque.poll();
                    break;
                }
                if (fVar == null) {
                    fVar = new P2.f();
                }
                fVar.f5889G = wVar;
                P2.l lVar2 = new P2.l(fVar);
                p096m2.c cVar = new p096m2.c(11, wVar, fVar);
                try {
                    p pVar = (p) this.f3125b;
                    return pVar.a(new p096m2.u(pVar.f3160c, lVar2, pVar.f3161d), i8, i9, lVar, cVar);
                } finally {
                    fVar.k();
                    if (z7) {
                        wVar.E();
                    }
                }
        }
    }

    public C0191a(Resources resources, p173w2.n nVar) {
        this.f3124a = 0;
        this.f3126c = resources;
        this.f3125b = nVar;
    }
}
