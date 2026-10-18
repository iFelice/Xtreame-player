package U6;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.SortedMap;
import java.util.TreeMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Serializable {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public double f6984I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public double f6985J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public double f6986K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public double f6987L;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X6.a f6983H = new X6.a();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ArrayList f6988M = new ArrayList();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final X6.a f6989N = new X6.a();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f6982G = HttpUrl.FRAGMENT_ENCODE_SET;

    public d() {
        double dDoubleValue;
        this.f6984I = Double.MAX_VALUE;
        this.f6985J = -1.7976931348623157E308d;
        this.f6986K = Double.MAX_VALUE;
        this.f6987L = -1.7976931348623157E308d;
        this.f6984I = Double.MAX_VALUE;
        this.f6985J = -1.7976931348623157E308d;
        this.f6986K = Double.MAX_VALUE;
        this.f6987L = -1.7976931348623157E308d;
        int iB = b();
        for (int i8 = 0; i8 < iB; i8++) {
            synchronized (this) {
                dDoubleValue = ((Double) this.f6983H.f7689G.get(i8)).doubleValue();
            }
            e(dDoubleValue, d(i8));
        }
    }

    public final synchronized void a(double d6, double d8) {
        while (this.f6983H.get(Double.valueOf(d6)) != 0) {
            d6 += Math.ulp(d6);
        }
        this.f6983H.put(Double.valueOf(d6), Double.valueOf(d8));
        e(d6, d8);
    }

    public final synchronized int b() {
        return this.f6983H.size();
    }

    public final synchronized SortedMap c(double d6, double d8, boolean z7) {
        if (z7) {
            try {
                SortedMap sortedMapHeadMap = this.f6983H.headMap(Double.valueOf(d6));
                if (!sortedMapHeadMap.isEmpty()) {
                    d6 = ((Double) sortedMapHeadMap.lastKey()).doubleValue();
                }
                SortedMap sortedMapTailMap = this.f6983H.tailMap(Double.valueOf(d8));
                if (!sortedMapTailMap.isEmpty()) {
                    Iterator it = sortedMapTailMap.keySet().iterator();
                    d8 = it.hasNext() ? ((Double) it.next()).doubleValue() : d8 + ((Double) it.next()).doubleValue();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (d6 <= d8) {
            return this.f6983H.subMap(Double.valueOf(d6), Double.valueOf(d8));
        }
        return new TreeMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized double d(int i8) {
        X6.a aVar;
        aVar = this.f6983H;
        return ((Double) aVar.get(aVar.f7689G.get(i8))).doubleValue();
    }

    public final void e(double d6, double d8) {
        this.f6984I = Math.min(this.f6984I, d6);
        this.f6985J = Math.max(this.f6985J, d6);
        this.f6986K = Math.min(this.f6986K, d8);
        this.f6987L = Math.max(this.f6987L, d8);
    }
}
