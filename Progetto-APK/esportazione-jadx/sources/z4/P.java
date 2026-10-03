package z4;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class P implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final P f31822G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ P[] f31823H;

    static {
        P p7 = new P("INSTANCE", 0);
        f31822G = p7;
        f31823H = new P[]{p7};
    }

    public static P valueOf(String str) {
        return (P) Enum.valueOf(P.class, str);
    }

    public static P[] values() {
        return (P[]) f31823H.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        p190y4.k.v("no calls to next() since the last call to remove()", false);
    }
}
