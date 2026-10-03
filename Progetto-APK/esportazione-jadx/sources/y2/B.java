package y2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final M.c f31238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31240c;

    public B(Class cls, Class cls2, Class cls3, List list, p096m2.u uVar) {
        this.f31238a = uVar;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f31239b = list;
        this.f31240c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final D a(int i8, int i9, p096m2.c cVar, p173w2.l lVar, com.bumptech.glide.load.data.g gVar) {
        M.c cVar2 = this.f31238a;
        Object objH = cVar2.h();
        p102n0.c.c(objH, "Argument must not be null");
        List list = (List) objH;
        try {
            List list2 = this.f31239b;
            int size = list2.size();
            D dA = null;
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    dA = ((m) list2.get(i10)).a(i8, i9, cVar, lVar, gVar);
                } catch (z e8) {
                    list.add(e8);
                }
                if (dA != null) {
                    break;
                }
            }
            if (dA != null) {
                cVar2.a(list);
                return dA;
            }
            throw new z(this.f31240c, new ArrayList(list));
        } catch (Throwable th) {
            cVar2.a(list);
            throw th;
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f31239b.toArray()) + '}';
    }
}
