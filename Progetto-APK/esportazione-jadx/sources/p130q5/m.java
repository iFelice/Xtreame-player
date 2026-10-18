package p130q5;

import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o[] f29631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f29632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map f29633e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public m(String str, byte[] bArr, o[] oVarArr, a aVar) {
        this(str, bArr, oVarArr, aVar, 0);
        System.currentTimeMillis();
    }

    public final void a(Map map) {
        if (map != null) {
            Map map2 = this.f29633e;
            if (map2 == null) {
                this.f29633e = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public final void b(n nVar, Object obj) {
        if (this.f29633e == null) {
            this.f29633e = new EnumMap(n.class);
        }
        this.f29633e.put(nVar, obj);
    }

    public final String toString() {
        return this.f29629a;
    }

    public m(String str, byte[] bArr, o[] oVarArr, a aVar, int i8) {
        this.f29629a = str;
        this.f29630b = bArr;
        this.f29631c = oVarArr;
        this.f29632d = aVar;
        this.f29633e = null;
    }
}
