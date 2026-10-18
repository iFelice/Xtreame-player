package z4;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: renamed from: z4.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3255t extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final Object f31900G = new Object();

    public abstract Map a();

    public abstract int b(Object obj);

    public abstract Object[] c();

    @Override // java.util.AbstractMap, java.util.Map
    public abstract void clear();

    public abstract Object[] d();

    @Override // java.util.AbstractMap, java.util.Map
    public abstract boolean isEmpty();

    @Override // java.util.AbstractMap, java.util.Map
    public abstract Object put(Object obj, Object obj2);

    @Override // java.util.AbstractMap, java.util.Map
    public abstract Object remove(Object obj);

    @Override // java.util.AbstractMap, java.util.Map
    public abstract int size();
}
