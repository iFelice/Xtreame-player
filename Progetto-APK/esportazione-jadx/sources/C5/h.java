package C5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j[] f1659b = new j[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j[] f1660a;

    public h(Map map) {
        Collection collection = map == null ? null : (Collection) map.get(p130q5.c.f29598I);
        boolean z7 = (map == null || map.get(p130q5.c.f29602M) == null) ? false : true;
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(p130q5.a.f29585N) || collection.contains(p130q5.a.f29592U) || collection.contains(p130q5.a.f29584M) || collection.contains(p130q5.a.f29593V)) {
                arrayList.add(new i(map));
            }
            if (collection.contains(p130q5.a.f29580I)) {
                arrayList.add(new c(z7));
            }
            if (collection.contains(p130q5.a.f29581J)) {
                arrayList.add(new d());
            }
            if (collection.contains(p130q5.a.f29582K)) {
                arrayList.add(new b());
            }
            if (collection.contains(p130q5.a.f29586O)) {
                arrayList.add(new g());
            }
            if (collection.contains(p130q5.a.f29579H)) {
                arrayList.add(new a());
            }
            if (collection.contains(p130q5.a.f29590S)) {
                arrayList.add(new D5.e());
            }
            if (collection.contains(p130q5.a.f29591T)) {
                arrayList.add(new E5.c());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new i(map));
            arrayList.add(new c(false));
            arrayList.add(new a());
            arrayList.add(new d());
            arrayList.add(new b());
            arrayList.add(new g());
            arrayList.add(new D5.e());
            arrayList.add(new E5.c());
        }
        this.f1660a = (j[]) arrayList.toArray(f1659b);
    }

    @Override // C5.j, p130q5.k
    public final void a() {
        for (j jVar : this.f1660a) {
            jVar.a();
        }
    }

    @Override // C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) throws p130q5.i {
        for (j jVar : this.f1660a) {
            try {
                return jVar.d(i8, aVar, map);
            } catch (p130q5.l unused) {
            }
        }
        throw p130q5.i.f29623I;
    }
}
