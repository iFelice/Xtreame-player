package z4;

import com.google.android.gms.internal.ads.Cw;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Y implements p190y4.t, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31830G;

    public Y(int i8) {
        Cw.g(i8, "expectedValuesPerKey");
        this.f31830G = i8;
    }

    @Override // p190y4.t
    public final Object get() {
        return new ArrayList(this.f31830G);
    }
}
