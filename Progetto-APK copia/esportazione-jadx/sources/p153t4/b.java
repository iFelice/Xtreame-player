package p153t4;

import I2.c;
import android.os.Parcelable;
import com.google.android.gms.internal.atv_ads_framework.AbstractC2396l;
import com.google.android.gms.internal.atv_ads_framework.AbstractC2402o;
import com.google.android.gms.internal.atv_ads_framework.C2398m;
import java.util.ArrayList;
import java.util.List;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f30303G;

    public b(List list) {
        if (list == null) {
            throw new NullPointerException("Null iconClickFallbackImageList");
        }
        this.f30303G = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c a(ArrayList arrayList) {
        AbstractC2402o abstractC2402oQ;
        c cVar = new c(4);
        C2398m c2398m = AbstractC2402o.f22343H;
        if (arrayList instanceof AbstractC2396l) {
            abstractC2402oQ = ((AbstractC2396l) arrayList).l();
            if (abstractC2402oQ.n()) {
                Object[] array = abstractC2402oQ.toArray(AbstractC2396l.f22337G);
                abstractC2402oQ = AbstractC2402o.q(array.length, array);
            }
        } else {
            Object[] array2 = arrayList.toArray();
            int length = array2.length;
            for (int i8 = 0; i8 < length; i8++) {
                if (array2[i8] == null) {
                    throw new NullPointerException(r.f("at index ", i8));
                }
            }
            abstractC2402oQ = AbstractC2402o.q(length, array2);
        }
        if (abstractC2402oQ == null) {
            throw new NullPointerException("Null iconClickFallbackImageList");
        }
        cVar.f4008G = abstractC2402oQ;
        return cVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f30303G.equals(((b) obj).f30303G);
    }

    public final int hashCode() {
        return this.f30303G.hashCode() ^ 1000003;
    }

    public final String toString() {
        return r.g("IconClickFallbackImages{iconClickFallbackImageList=", this.f30303G.toString(), "}");
    }
}
