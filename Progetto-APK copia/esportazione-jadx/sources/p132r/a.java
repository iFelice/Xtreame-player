package p132r;

import com.google.android.gms.internal.ads.AbstractC1201dI;
import com.google.android.gms.internal.ads.C1304fI;
import com.google.protobuf.C2922l2;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends AbstractSet {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f29647G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Map f29648H;

    public /* synthetic */ a(int i8, Map map) {
        this.f29647G = i8;
        this.f29648H = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i8 = this.f29647G;
        Map map = this.f29648H;
        switch (i8) {
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                if (contains(entry)) {
                    return false;
                }
                ((AbstractC1201dI) map).i((Comparable) entry.getKey(), entry.getValue());
                return true;
            case 2:
                Map.Entry entry2 = (Map.Entry) obj;
                if (contains(entry2)) {
                    return false;
                }
                ((AbstractC1201dI) map).i((Comparable) entry2.getKey(), entry2.getValue());
                return true;
            case 3:
                Map.Entry entry3 = (Map.Entry) obj;
                if (contains(entry3)) {
                    return false;
                }
                ((C2922l2) map).put((Comparable) entry3.getKey(), entry3.getValue());
                return true;
            default:
                return super.add(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i8 = this.f29647G;
        Map map = this.f29648H;
        switch (i8) {
            case 1:
                ((AbstractC1201dI) map).a();
                break;
            case 2:
                ((AbstractC1201dI) map).b();
                break;
            case 3:
                ((C2922l2) map).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i8 = this.f29647G;
        boolean z7 = true;
        Map map = this.f29648H;
        switch (i8) {
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                Object objC = ((AbstractC1201dI) map).c(entry.getKey());
                Object value = entry.getValue();
                if (objC != value) {
                    if (objC == null) {
                        z7 = false;
                    } else if (!objC.equals(value)) {
                        return false;
                    }
                }
                return z7;
            case 2:
                Map.Entry entry2 = (Map.Entry) obj;
                Object objD = ((AbstractC1201dI) map).d(entry2.getKey());
                Object value2 = entry2.getValue();
                if (objD != value2) {
                    if (objD == null) {
                        z7 = false;
                    } else if (!objD.equals(value2)) {
                        return false;
                    }
                }
                return z7;
            case 3:
                Map.Entry entry3 = (Map.Entry) obj;
                Object objG = ((C2922l2) map).get(entry3.getKey());
                Object value3 = entry3.getValue();
                if (objG != value3) {
                    return objG != null && objG.equals(value3);
                }
                return true;
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        int i8 = 0;
        int i9 = this.f29647G;
        Map map = this.f29648H;
        switch (i9) {
            case 0:
                return new d((f) map);
            case 1:
                return new C1304fI((AbstractC1201dI) map, i8);
            case 2:
                return new C1304fI((AbstractC1201dI) map, 1);
            default:
                return new C1304fI((C2922l2) map, i8);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i8 = this.f29647G;
        Map map = this.f29648H;
        switch (i8) {
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                if (!contains(entry)) {
                    return false;
                }
                ((AbstractC1201dI) map).e(entry.getKey());
                return true;
            case 2:
                Map.Entry entry2 = (Map.Entry) obj;
                if (!contains(entry2)) {
                    return false;
                }
                ((AbstractC1201dI) map).f(entry2.getKey());
                return true;
            case 3:
                Map.Entry entry3 = (Map.Entry) obj;
                if (!contains(entry3)) {
                    return false;
                }
                ((C2922l2) map).remove(entry3.getKey());
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i8 = this.f29647G;
        Map map = this.f29648H;
        switch (i8) {
            case 0:
                return ((f) map).f29684I;
            case 1:
                return ((AbstractC1201dI) map).g();
            case 2:
                return ((AbstractC1201dI) map).h();
            default:
                return ((C2922l2) map).size();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(C2922l2 c2922l2) {
        this(3, c2922l2);
        this.f29647G = 3;
    }
}
