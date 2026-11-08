package U2;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class o implements R2.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f6965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f6966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p f6967c;

    public o(Set set, i iVar, p pVar) {
        this.f6965a = set;
        this.f6966b = iVar;
        this.f6967c = pVar;
    }

    public final p109o.j a(String str, R2.b bVar, R2.d dVar) {
        Set set = this.f6965a;
        if (!set.contains(bVar)) {
            throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, set));
        }
        p109o.j jVar = new p109o.j();
        jVar.f27592G = this.f6966b;
        jVar.f27593H = str;
        jVar.f27594I = bVar;
        jVar.f27595J = dVar;
        jVar.f27596K = this.f6967c;
        return jVar;
    }
}
