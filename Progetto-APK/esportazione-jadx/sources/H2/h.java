package H2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.l;
import com.bumptech.glide.n;
import java.util.ArrayList;
import p173w2.p;
import y2.o;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p159u2.a f3656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f3657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f3658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n f3659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p196z2.d f3660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l f3663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f3664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f3666k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Bitmap f3667l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public e f3668m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3669n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3670o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3671p;

    public h(com.bumptech.glide.b bVar, p159u2.e eVar, int i8, int i9, E2.d dVar, Bitmap bitmap) {
        p196z2.d dVar2 = bVar.f11497G;
        com.bumptech.glide.f fVar = bVar.f11499I;
        n nVarD = com.bumptech.glide.b.d(fVar.getBaseContext());
        n nVarD2 = com.bumptech.glide.b.d(fVar.getBaseContext());
        nVarD2.getClass();
        l lVarB = new l(nVarD2.f11595G, nVarD2, Bitmap.class, nVarD2.f11596H).a(n.f11594Q).a(((L2.f) ((L2.f) ((L2.f) new L2.f().e(o.f31351a)).z()).u()).l(i8, i9));
        this.f3658c = new ArrayList();
        this.f3659d = nVarD;
        Handler handler = new Handler(Looper.getMainLooper(), new g(this, 0));
        this.f3660e = dVar2;
        this.f3657b = handler;
        this.f3663h = lVarB;
        this.f3656a = eVar;
        c(dVar, bitmap);
    }

    public final void a() {
        int i8;
        int i9;
        if (!this.f3661f || this.f3662g) {
            return;
        }
        e eVar = this.f3668m;
        if (eVar != null) {
            this.f3668m = null;
            b(eVar);
            return;
        }
        this.f3662g = true;
        p159u2.a aVar = this.f3656a;
        p159u2.e eVar2 = (p159u2.e) aVar;
        p159u2.c cVar = eVar2.f30482l;
        int i10 = cVar.f30458c;
        if (i10 <= 0 || (i9 = eVar2.f30481k) < 0) {
            i8 = 0;
        } else {
            i8 = (i9 < 0 || i9 >= i10) ? -1 : ((p159u2.b) cVar.f30460e.get(i9)).f30453i;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i8);
        int i11 = (eVar2.f30481k + 1) % eVar2.f30482l.f30458c;
        eVar2.f30481k = i11;
        this.f3666k = new e(this.f3657b, i11, jUptimeMillis);
        l lVarG = this.f3663h.a((L2.f) new L2.f().t(new O2.d(Double.valueOf(Math.random())))).G(aVar);
        lVarG.E(this.f3666k, lVarG);
    }

    public final void b(e eVar) {
        this.f3662g = false;
        boolean z7 = this.f3665j;
        Handler handler = this.f3657b;
        if (z7) {
            handler.obtainMessage(2, eVar).sendToTarget();
            return;
        }
        if (!this.f3661f) {
            this.f3668m = eVar;
            return;
        }
        if (eVar.f3653M != null) {
            Bitmap bitmap = this.f3667l;
            if (bitmap != null) {
                this.f3660e.a(bitmap);
                this.f3667l = null;
            }
            e eVar2 = this.f3664i;
            this.f3664i = eVar;
            ArrayList arrayList = this.f3658c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                c cVar = (c) ((f) arrayList.get(size));
                Object callback = cVar.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    cVar.stop();
                    cVar.invalidateSelf();
                } else {
                    cVar.invalidateSelf();
                    h hVar = cVar.f3639G.f3638a;
                    e eVar3 = hVar.f3664i;
                    if ((eVar3 != null ? eVar3.f3651K : -1) == ((p159u2.e) hVar.f3656a).f30482l.f30458c - 1) {
                        cVar.f3644L++;
                    }
                    int i8 = cVar.f3645M;
                    if (i8 != -1 && cVar.f3644L >= i8) {
                        cVar.stop();
                    }
                }
            }
            if (eVar2 != null) {
                handler.obtainMessage(2, eVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(p pVar, Bitmap bitmap) {
        p102n0.c.c(pVar, "Argument must not be null");
        p102n0.c.c(bitmap, "Argument must not be null");
        this.f3667l = bitmap;
        this.f3663h = this.f3663h.a(new L2.f().y(pVar, true));
        this.f3669n = P2.o.c(bitmap);
        this.f3670o = bitmap.getWidth();
        this.f3671p = bitmap.getHeight();
    }
}
