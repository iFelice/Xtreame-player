package z4;

import java.util.Comparator;

/* JADX INFO: renamed from: z4.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3257v extends AbstractC3259x {
    public static AbstractC3259x f(int i8) {
        if (i8 < 0) {
            return AbstractC3259x.f31904b;
        }
        return i8 > 0 ? AbstractC3259x.f31905c : AbstractC3259x.f31903a;
    }

    @Override // z4.AbstractC3259x
    public final AbstractC3259x a(int i8, int i9) {
        return f(Integer.compare(i8, i9));
    }

    @Override // z4.AbstractC3259x
    public final AbstractC3259x b(Object obj, Object obj2, Comparator comparator) {
        return f(comparator.compare(obj, obj2));
    }

    @Override // z4.AbstractC3259x
    public final AbstractC3259x c(boolean z7, boolean z8) {
        return f(Boolean.compare(z7, z8));
    }

    @Override // z4.AbstractC3259x
    public final AbstractC3259x d(boolean z7, boolean z8) {
        return f(Boolean.compare(z8, z7));
    }

    @Override // z4.AbstractC3259x
    public final int e() {
        return 0;
    }
}
