package C2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class F implements com.bumptech.glide.load.data.e, com.bumptech.glide.load.data.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f1351G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final M.c f1352H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f1353I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public com.bumptech.glide.g f1354J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public com.bumptech.glide.load.data.d f1355K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public List f1356L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f1357M;

    public F(ArrayList arrayList, M.c cVar) {
        this.f1352H = cVar;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f1351G = arrayList;
        this.f1353I = 0;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return ((com.bumptech.glide.load.data.e) this.f1351G.get(0)).a();
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b(Exception exc) {
        List list = this.f1356L;
        p102n0.c.c(list, "Argument must not be null");
        list.add(exc);
        g();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        List list = this.f1356L;
        if (list != null) {
            this.f1352H.a(list);
        }
        this.f1356L = null;
        Iterator it = this.f1351G.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).c();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f1357M = true;
        Iterator it = this.f1351G.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return ((com.bumptech.glide.load.data.e) this.f1351G.get(0)).d();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        this.f1354J = gVar;
        this.f1355K = dVar;
        this.f1356L = (List) this.f1352H.h();
        ((com.bumptech.glide.load.data.e) this.f1351G.get(this.f1353I)).e(gVar, this);
        if (this.f1357M) {
            cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(Object obj) {
        if (obj != null) {
            this.f1355K.f(obj);
        } else {
            g();
        }
    }

    public final void g() {
        if (this.f1357M) {
            return;
        }
        if (this.f1353I < this.f1351G.size() - 1) {
            this.f1353I++;
            e(this.f1354J, this.f1355K);
        } else {
            p102n0.c.b(this.f1356L);
            this.f1355K.b(new y2.z("Fetch failed", new ArrayList(this.f1356L)));
        }
    }
}
