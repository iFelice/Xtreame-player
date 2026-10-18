package androidx.media3.cast;

import C3.C0109i;
import D3.C0158b;
import E3.b;
import android.content.Context;
import com.google.android.gms.internal.cast.C2438e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultCastOptionsProvider {
    public List<C2438e> getAdditionalSessionProviders(Context context) {
        return Collections.emptyList();
    }

    public C0158b getCastOptions(Context context) {
        ArrayList arrayList = new ArrayList();
        C0109i c0109i = new C0109i();
        ArrayList arrayList2 = new ArrayList();
        b bVar = C0158b.f2351Y;
        if (bVar != null) {
            return new C0158b("A12D4273", arrayList, true, c0109i, false, bVar, false, 0.05000000074505806d, false, false, false, arrayList2, true, false, C0158b.f2349W, C0158b.f2350X);
        }
        throw new NullPointerException("use Optional.orNull() instead of Optional.or(null)");
    }
}
