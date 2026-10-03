package P2;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f5897a = new LinkedHashMap(100, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f5899c;

    public k(long j8) {
        this.f5898b = j8;
    }

    public final synchronized Object a(Object obj) {
        j jVar;
        jVar = (j) this.f5897a.get(obj);
        return jVar != null ? jVar.f5895a : null;
    }

    public int b(Object obj) {
        return 1;
    }

    public final synchronized Object d(Object obj, Object obj2) {
        int iB = b(obj2);
        long j8 = iB;
        if (j8 >= this.f5898b) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f5899c += j8;
        }
        j jVar = (j) this.f5897a.put(obj, obj2 == null ? null : new j(obj2, iB));
        if (jVar != null) {
            this.f5899c -= (long) jVar.f5896b;
            if (!jVar.f5895a.equals(obj2)) {
                c(obj, jVar.f5895a);
            }
        }
        e(this.f5898b);
        return jVar != null ? jVar.f5895a : null;
    }

    public final synchronized void e(long j8) {
        while (this.f5899c > j8) {
            Iterator it = this.f5897a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            j jVar = (j) entry.getValue();
            this.f5899c -= (long) jVar.f5896b;
            Object key = entry.getKey();
            it.remove();
            c(key, jVar.f5895a);
        }
    }

    public void c(Object obj, Object obj2) {
    }
}
