package O5;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class l implements p130q5.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p130q5.k f5622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5623b = new ArrayList();

    public l(p130q5.h hVar) {
        this.f5622a = hVar;
    }

    @Override // p130q5.p
    public final void a(p130q5.o oVar) {
        this.f5623b.add(oVar);
    }

    public p096m2.l b(p130q5.j jVar) {
        return new p096m2.l(new p176w5.e(jVar));
    }
}
