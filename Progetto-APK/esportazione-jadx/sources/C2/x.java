package C2;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class x implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f1421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Map f1422c;

    public x(Map map) {
        this.f1421b = Collections.unmodifiableMap(map);
    }

    @Override // C2.u
    public final Map a() {
        if (this.f1422c == null) {
            synchronized (this) {
                try {
                    if (this.f1422c == null) {
                        this.f1422c = Collections.unmodifiableMap(b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f1422c;
    }

    public final HashMap b() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f1421b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i8 = 0; i8 < size; i8++) {
                String str = ((w) list.get(i8)).f1420a;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i8 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof x) {
            return this.f1421b.equals(((x) obj).f1421b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1421b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f1421b + '}';
    }
}
