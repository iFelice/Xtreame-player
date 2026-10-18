package p130q5;

import K5.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import p096m2.l;
import p138r5.b;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k[] f29620c = new k[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map f29621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k[] f29622b;

    @Override // p130q5.k
    public final void a() {
        k[] kVarArr = this.f29622b;
        if (kVarArr != null) {
            for (k kVar : kVarArr) {
                kVar.a();
            }
        }
    }

    @Override // p130q5.k
    public final m b(l lVar) {
        e(null);
        return d(lVar);
    }

    @Override // p130q5.k
    public final m c(l lVar, Map map) {
        e(map);
        return d(lVar);
    }

    public final m d(l lVar) throws i {
        k[] kVarArr = this.f29622b;
        if (kVarArr != null) {
            for (k kVar : kVarArr) {
                try {
                    return kVar.c(lVar, this.f29621a);
                } catch (l unused) {
                }
            }
        }
        throw i.f29623I;
    }

    public final void e(Map map) {
        this.f29621a = map;
        boolean z7 = map != null && map.containsKey(c.f29599J);
        Collection collection = map == null ? null : (Collection) map.get(c.f29598I);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            boolean z8 = collection.contains(a.f29592U) || collection.contains(a.f29593V) || collection.contains(a.f29585N) || collection.contains(a.f29584M) || collection.contains(a.f29579H) || collection.contains(a.f29580I) || collection.contains(a.f29581J) || collection.contains(a.f29582K) || collection.contains(a.f29586O) || collection.contains(a.f29590S) || collection.contains(a.f29591T);
            if (z8 && !z7) {
                arrayList.add(new C5.h(map));
            }
            if (collection.contains(a.f29589R)) {
                arrayList.add(new a());
            }
            if (collection.contains(a.f29583L)) {
                arrayList.add(new p191y5.a());
            }
            if (collection.contains(a.f29578G)) {
                arrayList.add(new b());
            }
            if (collection.contains(a.f29588Q)) {
                arrayList.add(new G5.b());
            }
            if (collection.contains(a.f29587P)) {
                arrayList.add(new A5.a());
            }
            if (z8 && z7) {
                arrayList.add(new C5.h(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z7) {
                arrayList.add(new C5.h(map));
            }
            arrayList.add(new a());
            arrayList.add(new p191y5.a());
            arrayList.add(new b());
            arrayList.add(new G5.b());
            arrayList.add(new A5.a());
            if (z7) {
                arrayList.add(new C5.h(map));
            }
        }
        this.f29622b = (k[]) arrayList.toArray(f29620c);
    }
}
