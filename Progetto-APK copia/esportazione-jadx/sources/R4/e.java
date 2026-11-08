package R4;

import P4.f;
import P4.g;
import android.util.Base64;
import android.util.JsonWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e implements P4.e, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6301a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonWriter f6302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f6303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f6304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final P4.d f6305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6306f;

    public e(BufferedWriter bufferedWriter, HashMap map, HashMap map2, a aVar, boolean z7) {
        this.f6302b = new JsonWriter(bufferedWriter);
        this.f6303c = map;
        this.f6304d = map2;
        this.f6305e = aVar;
        this.f6306f = z7;
    }

    @Override // P4.e
    public final P4.e a(P4.c cVar, Object obj) throws IOException {
        f(obj, cVar.f5915a);
        return this;
    }

    @Override // P4.e
    public final P4.e b(P4.c cVar, long j8) throws IOException {
        String str = cVar.f5915a;
        g();
        JsonWriter jsonWriter = this.f6302b;
        jsonWriter.name(str);
        g();
        jsonWriter.value(j8);
        return this;
    }

    @Override // P4.g
    public final g c(String str) throws IOException {
        g();
        this.f6302b.value(str);
        return this;
    }

    @Override // P4.g
    public final g d(boolean z7) throws IOException {
        g();
        this.f6302b.value(z7);
        return this;
    }

    public final e e(Object obj) {
        int i8 = 0;
        JsonWriter jsonWriter = this.f6302b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    e(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        f(entry.getValue(), (String) key);
                    } catch (ClassCastException e8) {
                        throw new P4.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e8);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            P4.d dVar = (P4.d) this.f6303c.get(obj.getClass());
            if (dVar != null) {
                jsonWriter.beginObject();
                dVar.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            f fVar = (f) this.f6304d.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                g();
                jsonWriter.value(strName);
                return this;
            }
            jsonWriter.beginObject();
            this.f6305e.a(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            g();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i8 < length) {
                jsonWriter.value(iArr[i8]);
                i8++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i8 < length2) {
                long j8 = jArr[i8];
                g();
                jsonWriter.value(j8);
                i8++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i8 < length3) {
                jsonWriter.value(dArr[i8]);
                i8++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i8 < length4) {
                jsonWriter.value(zArr[i8]);
                i8++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i8 < length5) {
                e(numberArr[i8]);
                i8++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i8 < length6) {
                e(objArr[i8]);
                i8++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    public final e f(Object obj, String str) throws IOException {
        boolean z7 = this.f6306f;
        JsonWriter jsonWriter = this.f6302b;
        if (z7) {
            if (obj != null) {
                g();
                jsonWriter.name(str);
                e(obj);
            }
            return this;
        }
        g();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            e(obj);
        }
        return this;
    }

    public final void g() {
        if (!this.f6301a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
