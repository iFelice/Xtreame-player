package p149t0;

import com.google.android.gms.internal.atv_ads_framework.x0;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r f30236c = new r(Collections.emptyMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f30237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f30238b;

    public r(Map map) {
        this.f30238b = Collections.unmodifiableMap(map);
    }

    public static boolean b(Map map, Map map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!Arrays.equals((byte[]) entry.getValue(), (byte[]) map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public final r a(x0 x0Var) {
        byte[] bytes;
        Map map = this.f30238b;
        HashMap map2 = new HashMap(map);
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList((List) x0Var.f22391I));
        for (int i8 = 0; i8 < listUnmodifiableList.size(); i8++) {
            map2.remove(listUnmodifiableList.get(i8));
        }
        HashMap map3 = new HashMap((Map) x0Var.f22390H);
        for (Map.Entry entry : map3.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        for (Map.Entry entry2 : Collections.unmodifiableMap(map3).entrySet()) {
            String str = (String) entry2.getKey();
            Object value2 = entry2.getValue();
            if (value2 instanceof Long) {
                bytes = ByteBuffer.allocate(8).putLong(((Long) value2).longValue()).array();
            } else if (value2 instanceof String) {
                bytes = ((String) value2).getBytes(StandardCharsets.UTF_8);
            } else {
                if (!(value2 instanceof byte[])) {
                    throw new IllegalArgumentException();
                }
                bytes = (byte[]) value2;
            }
            map2.put(str, bytes);
        }
        return b(map, map2) ? this : new r(map2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        return b(this.f30238b, ((r) obj).f30238b);
    }

    public final int hashCode() {
        if (this.f30237a == 0) {
            int iHashCode = 0;
            for (Map.Entry entry : this.f30238b.entrySet()) {
                iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
            }
            this.f30237a = iHashCode;
        }
        return this.f30237a;
    }
}
