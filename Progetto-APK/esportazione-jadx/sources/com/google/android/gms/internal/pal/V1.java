package com.google.android.gms.internal.pal;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class V1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final F1 f23673h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f23674i;

    public V1(A1 a8, L4 l4, int i8, F1 f8) {
        super(a8, "mkunJHFc5vhTAVOcsaNSYx7OvFB6slgbORGrA/joIDO0IYq5rQvDcAbp2AI6CPUh", "k8GEQUoJxJPI/0jAlfeUix8QD7WaaXAfMcSQAzrpgrU=", l4, i8, 53);
        this.f23673h = f8;
        if (f8 != null) {
            if (f8.f23521R <= -2) {
                WeakReference weakReference = f8.f23517N;
                if ((weakReference != null ? (View) weakReference.get() : null) == null) {
                    f8.f23521R = -3L;
                }
            }
            this.f23674i = f8.f23521R;
        }
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        if (this.f23673h != null) {
            long jLongValue = ((Long) this.f23702e.invoke(null, Long.valueOf(this.f23674i))).longValue();
            L4 l4 = this.f23701d;
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.z((C2765m0) l4.f23475H, jLongValue);
        }
    }
}
