package C5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m[] f1661b = new m[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m[] f1662a;

    public i(Map map) {
        Collection collection = map == null ? null : (Collection) map.get(p130q5.c.f29598I);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(p130q5.a.f29585N)) {
                arrayList.add(new e());
            } else if (collection.contains(p130q5.a.f29592U)) {
                arrayList.add(new f(1));
            }
            if (collection.contains(p130q5.a.f29584M)) {
                arrayList.add(new f(0));
            }
            if (collection.contains(p130q5.a.f29593V)) {
                arrayList.add(new n());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new e());
            arrayList.add(new f(0));
            arrayList.add(new n());
        }
        this.f1662a = (m[]) arrayList.toArray(f1661b);
    }

    @Override // C5.j, p130q5.k
    public final void a() {
        for (m mVar : this.f1662a) {
            mVar.getClass();
        }
    }

    @Override // C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) throws p130q5.i {
        int[] iArrO = m.o(aVar);
        for (m mVar : this.f1662a) {
            try {
                p130q5.m mVarM = mVar.m(i8, aVar, iArrO, map);
                p130q5.a aVar2 = mVarM.f29632d;
                p130q5.a aVar3 = p130q5.a.f29585N;
                String str = mVarM.f29629a;
                boolean z7 = aVar2 == aVar3 && str.charAt(0) == '0';
                Collection collection = map == null ? null : (Collection) map.get(p130q5.c.f29598I);
                p130q5.a aVar4 = p130q5.a.f29592U;
                boolean z8 = collection == null || collection.contains(aVar4);
                if (!z7 || !z8) {
                    return mVarM;
                }
                p130q5.m mVar2 = new p130q5.m(str.substring(1), mVarM.f29630b, mVarM.f29631c, aVar4);
                mVar2.a(mVarM.f29633e);
                return mVar2;
            } catch (p130q5.l unused) {
            }
        }
        throw p130q5.i.f29623I;
    }
}
