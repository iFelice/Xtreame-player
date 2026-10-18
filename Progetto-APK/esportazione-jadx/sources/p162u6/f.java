package p162u6;

import E6.b;
import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends AbstractList implements List, b {
    public abstract int b();

    public abstract Object c(int i8);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i8) {
        return c(i8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return b();
    }
}
