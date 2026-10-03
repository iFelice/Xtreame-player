package C2;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class H {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final U1.f f1361e = new U1.f(26, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0094j f1362f = new C0094j(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U1.f f1364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f1365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final M.c f1366d;

    public H(p096m2.u uVar) {
        U1.f fVar = f1361e;
        this.f1363a = new ArrayList();
        this.f1365c = new HashSet();
        this.f1366d = uVar;
        this.f1364b = fVar;
    }

    public final synchronized void a(Class cls, Class cls2, D d6) {
        G g8 = new G(cls, cls2, d6);
        ArrayList arrayList = this.f1363a;
        arrayList.add(arrayList.size(), g8);
    }

    public final C b(G g8) {
        return g8.f1360c.a(this);
    }

    public final synchronized C c(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z7 = false;
            for (G g8 : this.f1363a) {
                if (this.f1365c.contains(g8)) {
                    z7 = true;
                } else if (g8.f1358a.isAssignableFrom(cls) && g8.f1359b.isAssignableFrom(cls2)) {
                    this.f1365c.add(g8);
                    arrayList.add(b(g8));
                    this.f1365c.remove(g8);
                }
            }
            if (arrayList.size() > 1) {
                U1.f fVar = this.f1364b;
                M.c cVar = this.f1366d;
                fVar.getClass();
                return new C0100p(arrayList, cVar);
            }
            if (arrayList.size() == 1) {
                return (C) arrayList.get(0);
            }
            if (z7) {
                return f1362f;
            }
            throw new com.bumptech.glide.i("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.f1365c.clear();
            throw th;
        }
    }

    public final synchronized ArrayList d(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (G g8 : this.f1363a) {
                if (!this.f1365c.contains(g8) && g8.f1358a.isAssignableFrom(cls)) {
                    this.f1365c.add(g8);
                    arrayList.add(g8.f1360c.a(this));
                    this.f1365c.remove(g8);
                }
            }
        } catch (Throwable th) {
            this.f1365c.clear();
            throw th;
        }
        return arrayList;
    }

    public final synchronized ArrayList e(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (G g8 : this.f1363a) {
            if (!arrayList.contains(g8.f1359b) && g8.f1358a.isAssignableFrom(cls)) {
                arrayList.add(g8.f1359b);
            }
        }
        return arrayList;
    }

    public final synchronized ArrayList f() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f1363a.iterator();
        while (it.hasNext()) {
            G g8 = (G) it.next();
            if (g8.f1358a.isAssignableFrom(t.class) && g8.f1359b.isAssignableFrom(InputStream.class)) {
                it.remove();
                arrayList.add(g8.f1360c);
            }
        }
        return arrayList;
    }

    public final synchronized ArrayList g(p166v2.b bVar) {
        ArrayList arrayListF;
        arrayListF = f();
        a(t.class, InputStream.class, bVar);
        return arrayListF;
    }
}
