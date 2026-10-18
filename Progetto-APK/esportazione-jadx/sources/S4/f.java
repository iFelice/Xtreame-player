package S4;

import K.k;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f implements P4.e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f6439f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final P4.c f6440g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final P4.c f6441h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final R4.a f6442i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OutputStream f6443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f6444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f6445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final P4.d f6446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final h f6447e = new h(this);

    static {
        k kVarC = k.c();
        kVarC.f4294H = 1;
        a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(e.class, aVarB);
        f6440g = new P4.c("key", Collections.unmodifiableMap(new HashMap(map)));
        k kVarC2 = k.c();
        kVarC2.f4294H = 2;
        a aVarB2 = kVarC2.b();
        HashMap map2 = new HashMap();
        map2.put(e.class, aVarB2);
        f6441h = new P4.c("value", Collections.unmodifiableMap(new HashMap(map2)));
        f6442i = new R4.a(1);
    }

    public f(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, P4.d dVar) {
        this.f6443a = byteArrayOutputStream;
        this.f6444b = map;
        this.f6445c = map2;
        this.f6446d = dVar;
    }

    public static int g(P4.c cVar) {
        e eVar = (e) ((Annotation) cVar.f5916b.get(e.class));
        if (eVar != null) {
            return ((a) eVar).f6434a;
        }
        throw new P4.b("Field has no @Protobuf config");
    }

    @Override // P4.e
    public final P4.e a(P4.c cVar, Object obj) {
        e(cVar, obj, true);
        return this;
    }

    @Override // P4.e
    public final P4.e b(P4.c cVar, long j8) throws IOException {
        d(cVar, j8, true);
        return this;
    }

    public final void c(P4.c cVar, int i8, boolean z7) {
        if (z7 && i8 == 0) {
            return;
        }
        e eVar = (e) ((Annotation) cVar.f5916b.get(e.class));
        if (eVar == null) {
            throw new P4.b("Field has no @Protobuf config");
        }
        a aVar = (a) eVar;
        int iOrdinal = aVar.f6435b.ordinal();
        int i9 = aVar.f6434a;
        if (iOrdinal == 0) {
            h(i9 << 3);
            h(i8);
        } else if (iOrdinal == 1) {
            h(i9 << 3);
            h((i8 << 1) ^ (i8 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            h((i9 << 3) | 5);
            this.f6443a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i8).array());
        }
    }

    public final void d(P4.c cVar, long j8, boolean z7) throws IOException {
        if (z7 && j8 == 0) {
            return;
        }
        e eVar = (e) ((Annotation) cVar.f5916b.get(e.class));
        if (eVar == null) {
            throw new P4.b("Field has no @Protobuf config");
        }
        a aVar = (a) eVar;
        int iOrdinal = aVar.f6435b.ordinal();
        int i8 = aVar.f6434a;
        if (iOrdinal == 0) {
            h(i8 << 3);
            i(j8);
        } else if (iOrdinal == 1) {
            h(i8 << 3);
            i((j8 >> 63) ^ (j8 << 1));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            h((i8 << 3) | 1);
            this.f6443a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j8).array());
        }
    }

    public final void e(P4.c cVar, Object obj, boolean z7) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z7 && charSequence.length() == 0) {
                return;
            }
            h((g(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f6439f);
            h(bytes.length);
            this.f6443a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                e(cVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                f(f6442i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z7 && dDoubleValue == 0.0d) {
                return;
            }
            h((g(cVar) << 3) | 1);
            this.f6443a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z7 && fFloatValue == 0.0f) {
                return;
            }
            h((g(cVar) << 3) | 5);
            this.f6443a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            d(cVar, ((Number) obj).longValue(), z7);
            return;
        }
        if (obj instanceof Boolean) {
            c(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z7);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z7 && bArr.length == 0) {
                return;
            }
            h((g(cVar) << 3) | 2);
            h(bArr.length);
            this.f6443a.write(bArr);
            return;
        }
        P4.d dVar = (P4.d) this.f6444b.get(obj.getClass());
        if (dVar != null) {
            f(dVar, cVar, obj, z7);
            return;
        }
        P4.f fVar = (P4.f) this.f6445c.get(obj.getClass());
        if (fVar != null) {
            h hVar = this.f6447e;
            hVar.f6449a = false;
            hVar.f6451c = cVar;
            hVar.f6450b = z7;
            fVar.a(obj, hVar);
            return;
        }
        if (obj instanceof c) {
            c(cVar, ((X2.c) ((c) obj)).f7645G, true);
        } else if (obj instanceof Enum) {
            c(cVar, ((Enum) obj).ordinal(), true);
        } else {
            f(this.f6446d, cVar, obj, z7);
        }
    }

    public final void f(P4.d dVar, P4.c cVar, Object obj, boolean z7) throws IOException {
        b bVar = new b();
        bVar.f6436G = 0L;
        try {
            OutputStream outputStream = this.f6443a;
            this.f6443a = bVar;
            try {
                dVar.a(obj, this);
                this.f6443a = outputStream;
                long j8 = bVar.f6436G;
                bVar.close();
                if (z7 && j8 == 0) {
                    return;
                }
                h((g(cVar) << 3) | 2);
                i(j8);
                dVar.a(obj, this);
            } catch (Throwable th) {
                this.f6443a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void h(int i8) throws IOException {
        while ((i8 & (-128)) != 0) {
            this.f6443a.write((i8 & 127) | 128);
            i8 >>>= 7;
        }
        this.f6443a.write(i8 & 127);
    }

    public final void i(long j8) throws IOException {
        while (((-128) & j8) != 0) {
            this.f6443a.write((((int) j8) & 127) | 128);
            j8 >>>= 7;
        }
        this.f6443a.write(((int) j8) & 127);
    }
}
