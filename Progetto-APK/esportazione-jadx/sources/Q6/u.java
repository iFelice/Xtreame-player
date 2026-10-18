package Q6;

import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class u extends p162u6.e implements RandomAccess {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final m[] f6083G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int[] f6084H;

    public u(m[] mVarArr, int[] iArr) {
        this.f6083G = mVarArr;
        this.f6084H = iArr;
    }

    @Override // p162u6.b
    public final int b() {
        return this.f6083G.length;
    }

    @Override // p162u6.b, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof m) {
            return super.contains((m) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        return this.f6083G[i8];
    }

    @Override // p162u6.e, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof m) {
            return super.indexOf((m) obj);
        }
        return -1;
    }

    @Override // p162u6.e, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof m) {
            return super.lastIndexOf((m) obj);
        }
        return -1;
    }
}
