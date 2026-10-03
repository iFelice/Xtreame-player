package z4;

import com.google.android.gms.internal.ads.Yz;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: renamed from: z4.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3249m extends Yz implements List {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ AbstractC3239c f31879M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3249m(AbstractC3239c abstractC3239c, Object obj, List list, Yz yz) {
        super(abstractC3239c, obj, list, yz);
        this.f31879M = abstractC3239c;
    }

    @Override // java.util.List
    public final void add(int i8, Object obj) {
        c();
        boolean zIsEmpty = this.f17696I.isEmpty();
        ((List) this.f17696I).add(i8, obj);
        this.f31879M.f31838K++;
        if (zIsEmpty) {
            b();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i8, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.f17696I).addAll(i8, collection);
        if (zAddAll) {
            this.f31879M.f31838K += this.f17696I.size() - size;
            if (size == 0) {
                b();
            }
        }
        return zAddAll;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        c();
        return ((List) this.f17696I).get(i8);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        c();
        return ((List) this.f17696I).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        c();
        return ((List) this.f17696I).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        c();
        return new C3248l(this);
    }

    @Override // java.util.List
    public final Object remove(int i8) {
        c();
        Object objRemove = ((List) this.f17696I).remove(i8);
        this.f31879M.f31838K--;
        i();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i8, Object obj) {
        c();
        return ((List) this.f17696I).set(i8, obj);
    }

    @Override // java.util.List
    public final List subList(int i8, int i9) {
        c();
        List listSubList = ((List) this.f17696I).subList(i8, i9);
        Yz yz = this.f17698K;
        if (yz == null) {
            yz = this;
        }
        AbstractC3239c abstractC3239c = this.f31879M;
        abstractC3239c.getClass();
        boolean z7 = listSubList instanceof RandomAccess;
        Object obj = this.f17695H;
        return z7 ? new C3245i(abstractC3239c, obj, listSubList, yz) : new C3249m(abstractC3239c, obj, listSubList, yz);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i8) {
        c();
        return new C3248l(this, i8);
    }
}
