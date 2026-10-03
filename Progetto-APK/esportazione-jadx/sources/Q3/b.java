package Q3;

import A0.O;
import G0.B;
import I6.k;
import U2.m;
import W0.w;
import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.media3.extractor.FlacStreamMetadata;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.android.gms.common.api.d;
import com.google.android.gms.internal.ads.AbstractC2073uA;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C2230xB;
import com.google.android.gms.internal.ads.C2342zJ;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.FB;
import com.google.android.gms.internal.ads.GB;
import com.google.android.gms.internal.ads.Gz;
import com.google.android.gms.internal.ads.N0;
import com.google.android.gms.internal.ads.P0;
import com.google.android.gms.internal.ads.Rv;
import com.google.android.gms.internal.ads.U0;
import com.google.android.gms.internal.ads.Zo;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p039f.AbstractC2987b;
import p117p0.E;
import p117p0.M;
import p120p3.h;
import p125q0.e;
import p141s0.A;
import p141s0.C3186k;
import p141s0.C3187l;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p162u6.j;
import p170w.f;
import p172w1.g;
import p178x.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f6034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f6035b;

    public static Bundle A(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        Bundle bundle = new Bundle();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt != null) {
                if (objOpt instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) objOpt).booleanValue());
                } else if (objOpt instanceof Double) {
                    bundle.putDouble(next, ((Double) objOpt).doubleValue());
                } else if (objOpt instanceof Integer) {
                    bundle.putInt(next, ((Integer) objOpt).intValue());
                } else if (objOpt instanceof Long) {
                    bundle.putLong(next, ((Long) objOpt).longValue());
                } else if (objOpt instanceof String) {
                    bundle.putString(next, (String) objOpt);
                } else if (objOpt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) objOpt;
                    if (jSONArray.length() != 0) {
                        int length = jSONArray.length();
                        int i8 = 0;
                        Object objOpt2 = null;
                        for (int i9 = 0; objOpt2 == null && i9 < length; i9++) {
                            objOpt2 = !jSONArray.isNull(i9) ? jSONArray.opt(i9) : null;
                        }
                        if (objOpt2 == null) {
                            h.g("Expected JSONArray with at least 1 non-null element for key:".concat(String.valueOf(next)));
                        } else if (objOpt2 instanceof JSONObject) {
                            Bundle[] bundleArr = new Bundle[length];
                            while (i8 < length) {
                                bundleArr[i8] = !jSONArray.isNull(i8) ? A(jSONArray.optJSONObject(i8)) : null;
                                i8++;
                            }
                            bundle.putParcelableArray(next, bundleArr);
                        } else if (objOpt2 instanceof Number) {
                            double[] dArr = new double[jSONArray.length()];
                            while (i8 < length) {
                                dArr[i8] = jSONArray.optDouble(i8);
                                i8++;
                            }
                            bundle.putDoubleArray(next, dArr);
                        } else if (objOpt2 instanceof CharSequence) {
                            String[] strArr = new String[length];
                            while (i8 < length) {
                                strArr[i8] = !jSONArray.isNull(i8) ? jSONArray.optString(i8) : null;
                                i8++;
                            }
                            bundle.putStringArray(next, strArr);
                        } else if (objOpt2 instanceof Boolean) {
                            boolean[] zArr = new boolean[length];
                            while (i8 < length) {
                                zArr[i8] = jSONArray.optBoolean(i8);
                                i8++;
                            }
                            bundle.putBooleanArray(next, zArr);
                        } else {
                            h.g("JSONArray with unsupported type " + objOpt2.getClass().getCanonicalName() + " for key:" + next);
                        }
                    }
                } else if (objOpt instanceof JSONObject) {
                    bundle.putBundle(next, A((JSONObject) objOpt));
                } else {
                    h.g("Unsupported type for key:".concat(String.valueOf(next)));
                }
            }
        }
        return bundle;
    }

    public static Object C(Gz gz) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return gz.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void D(File file, boolean z7) {
        if (z7 && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static int E(C1534jr c1534jr) {
        int iR = c1534jr.r();
        if (c1534jr.r() == 1684108385) {
            c1534jr.k(8);
            int i8 = iR - 16;
            if (i8 == 1) {
                return c1534jr.w();
            }
            if (i8 == 2) {
                return c1534jr.A();
            }
            if (i8 == 3) {
                return c1534jr.y();
            }
            if (i8 == 4 && (c1534jr.f19515a[c1534jr.f19516b] & 128) == 0) {
                return c1534jr.z();
            }
        }
        Zo.f("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static C2342zJ G(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new C2342zJ(cls.getSimpleName(), 0) : new C2342zJ(cls.getSimpleName(), 1);
    }

    public static File H(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(K(str, file), str2);
    }

    public static String I(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strC;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                strC = "null";
            } else {
                try {
                    strC = obj.toString();
                } catch (Exception e8) {
                    String strL = U2.l(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strL), (Throwable) e8);
                    strC = O.C("<", strL, " threw ", e8.getClass().getName(), ">");
                }
            }
            objArr[i9] = strC;
            i9++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = str.indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) str, i10, str.length());
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static P0 J(int i8, String str, C1534jr c1534jr, boolean z7, boolean z8) {
        int iE = E(c1534jr);
        if (z8) {
            iE = Math.min(1, iE);
        }
        if (iE >= 0) {
            return z7 ? new U0(str, null, AbstractC2073uA.w(Integer.toString(iE))) : new N0("und", str, Integer.toString(iE));
        }
        Zo.f("MetadataUtil", "Failed to parse uint8 attribute: ".concat(e.d(i8)));
        return null;
    }

    public static File K(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        D(file2, false);
        return file2;
    }

    public static List L(ArrayList arrayList, JSONArray jSONArray) {
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        if (jSONArray != null) {
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                arrayList.add(jSONArray.getString(i8));
            }
        }
        return arrayList;
    }

    public static U0 N(int i8, String str, C1534jr c1534jr) {
        int iR = c1534jr.r();
        if (c1534jr.r() == 1684108385 && iR >= 22) {
            c1534jr.k(10);
            int iA = c1534jr.A();
            if (iA > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iA);
                String string = sb.toString();
                int iA2 = c1534jr.A();
                if (iA2 > 0) {
                    string = string + MqttTopic.TOPIC_LEVEL_SEPARATOR + iA2;
                }
                return new U0(str, null, AbstractC2073uA.w(string));
            }
        }
        Zo.f("MetadataUtil", "Failed to parse index/count attribute: ".concat(e.d(i8)));
        return null;
    }

    public static ArrayList O(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static boolean Q(File file) {
        boolean z7;
        if (!file.exists()) {
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            z7 = true;
            for (int i8 = 0; i8 < fileArrListFiles.length; i8++) {
                File file2 = fileArrListFiles[i8];
                z7 = file2 != null && Q(file2) && z7;
            }
        } else {
            z7 = true;
        }
        return file.delete() && z7;
    }

    public static U0 R(int i8, String str, C1534jr c1534jr) {
        int iR = c1534jr.r();
        if (c1534jr.r() == 1684108385) {
            c1534jr.k(8);
            return new U0(str, null, AbstractC2073uA.w(c1534jr.a(iR - 16)));
        }
        Zo.f("MetadataUtil", "Failed to parse text attribute: ".concat(e.d(i8)));
        return null;
    }

    public static ArrayList S(byte[] bArr) {
        long j8 = ((bArr[11] & 255) << 8) | (bArr[10] & 255);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((j8 * 1000000000) / 48000).array());
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(80000000L).array());
        return arrayList;
    }

    public static boolean U(File file, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                if (Build.VERSION.SDK_INT >= 34) {
                    file.setReadOnly();
                }
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                AbstractC2987b.e(fileOutputStream2);
                return true;
            } catch (IOException unused) {
                fileOutputStream = fileOutputStream2;
                AbstractC2987b.e(fileOutputStream);
                return false;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                AbstractC2987b.e(fileOutputStream);
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static JSONArray V(JsonReader jsonReader) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(jsonTokenPeek)) {
                jSONArray.put(V(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(jsonTokenPeek)) {
                jSONArray.put(a0(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(jsonTokenPeek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(jsonTokenPeek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else {
                if (!JsonToken.STRING.equals(jsonTokenPeek)) {
                    throw new IllegalStateException("unexpected json token: ".concat(String.valueOf(jsonTokenPeek)));
                }
                jSONArray.put(jsonReader.nextString());
            }
        }
        jsonReader.endArray();
        return jSONArray;
    }

    public static long X(byte b8, byte b9) {
        int i8;
        int i9;
        int i10 = b8 & 255;
        int i11 = b8 & 3;
        if (i11 != 0) {
            i8 = 2;
            if (i11 != 1 && i11 != 2) {
                i8 = b9 & 63;
            }
        } else {
            i8 = 1;
        }
        int i12 = i10 >> 3;
        int i13 = i12 & 3;
        if (i12 >= 16) {
            i9 = 2500 << i13;
        } else if (i12 >= 12) {
            i9 = 10000 << (i12 & 1);
        } else {
            i9 = i13 == 3 ? 60000 : 10000 << i13;
        }
        return ((long) i8) * ((long) i9);
    }

    public static JSONObject Y(JSONObject jSONObject, String str) throws JSONException {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            return jSONObject2;
        }
    }

    public static JSONObject a0(JsonReader jsonReader) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(jsonTokenPeek)) {
                jSONObject.put(strNextName, V(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(jsonTokenPeek)) {
                jSONObject.put(strNextName, a0(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(jsonTokenPeek)) {
                jSONObject.put(strNextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(jsonTokenPeek)) {
                jSONObject.put(strNextName, jsonReader.nextDouble());
            } else {
                if (!JsonToken.STRING.equals(jsonTokenPeek)) {
                    throw new IllegalStateException("unexpected json token: ".concat(String.valueOf(jsonTokenPeek)));
                }
                jSONObject.put(strNextName, jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return jSONObject;
    }

    public static boolean b(E e8, FlacStreamMetadata flacStreamMetadata, int i8, w wVar) {
        long jB = e8.B();
        long j8 = jB >>> 16;
        if (j8 != i8) {
            return false;
        }
        boolean z7 = (j8 & 1) == 1;
        int i9 = (int) ((jB >> 12) & 15);
        int i10 = (int) ((jB >> 8) & 15);
        int i11 = (int) (15 & (jB >> 4));
        int i12 = (int) ((jB >> 1) & 7);
        boolean z8 = (jB & 1) == 1;
        if (i11 <= 7) {
            if (i11 != flacStreamMetadata.channels - 1) {
                return false;
            }
        } else if (i11 > 10 || flacStreamMetadata.channels != 2) {
            return false;
        }
        if (!(i12 == 0 || i12 == flacStreamMetadata.bitsPerSampleLookupKey) || z8) {
            return false;
        }
        try {
            long jG = e8.G();
            if (!z7) {
                jG *= (long) flacStreamMetadata.maxBlockSizeSamples;
            }
            wVar.f7458a = jG;
            int iS = s(i9, e8);
            if (iS == -1 || iS > flacStreamMetadata.maxBlockSizeSamples) {
                return false;
            }
            int i13 = flacStreamMetadata.sampleRate;
            if (i10 != 0) {
                if (i10 <= 11) {
                    if (i10 != flacStreamMetadata.sampleRateLookupKey) {
                        return false;
                    }
                } else if (i10 != 12) {
                    if (i10 > 14) {
                        return false;
                    }
                    int iF = e8.F();
                    if (i10 == 14) {
                        iF *= 10;
                    }
                    if (iF != i13) {
                        return false;
                    }
                } else if (e8.z() * 1000 != i13) {
                    return false;
                }
            }
            int iZ = e8.z();
            int i14 = e8.f28036b;
            byte[] bArr = e8.f28035a;
            int i15 = i14 - 1;
            String str = M.f28050a;
            int i16 = 0;
            for (int i17 = e8.f28036b; i17 < i15; i17++) {
                i16 = M.f28062m[i16 ^ (bArr[i17] & 255)];
            }
            return iZ == i16;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static void b0(JsonWriter jsonWriter, JSONArray jSONArray) throws IOException {
        try {
            jsonWriter.beginArray();
            for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                Object obj = jSONArray.get(i8);
                if (obj instanceof String) {
                    jsonWriter.value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    c0(jsonWriter, (JSONObject) obj);
                } else {
                    if (!(obj instanceof JSONArray)) {
                        throw new JSONException("unable to write field: " + String.valueOf(obj));
                    }
                    b0(jsonWriter, (JSONArray) obj);
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e8) {
            throw new IOException(e8);
        }
    }

    public static long c(long j8, long j9) {
        long j10 = j8 + j9;
        if (((j8 ^ j9) < 0) || ((j8 ^ j10) >= 0)) {
            return j10;
        }
        throw new ArithmeticException(r.i(p148t.a.d("overflow: checkedAdd(", j8, ", "), j9, ")"));
    }

    public static void c0(JsonWriter jsonWriter, JSONObject jSONObject) throws IOException {
        try {
            jsonWriter.beginObject();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    jsonWriter.name(next).value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.name(next).value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.name(next).value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    c0(jsonWriter.name(next), (JSONObject) obj);
                } else {
                    if (!(obj instanceof JSONArray)) {
                        throw new JSONException("unable to write field: " + String.valueOf(obj));
                    }
                    b0(jsonWriter.name(next), (JSONArray) obj);
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e8) {
            throw new IOException(e8);
        }
    }

    public static long d(long j8, long j9, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j10 = j8 / j9;
        long j11 = j8 - (j9 * j10);
        if (j11 == 0) {
            return j10;
        }
        int i8 = ((int) ((j8 ^ j9) >> 63)) | 1;
        switch (B4.e.f1217a[roundingMode.ordinal()]) {
            case 1:
                Cw.i(j11 == 0);
                return j10;
            case 2:
                return j10;
            case 3:
                if (i8 >= 0) {
                    return j10;
                }
                break;
            case 4:
                break;
            case 5:
                if (i8 <= 0) {
                    return j10;
                }
                break;
            case 6:
            case 7:
            case 8:
                long jAbs = Math.abs(j11);
                long jAbs2 = jAbs - (Math.abs(j9) - jAbs);
                if (jAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j10) == 0)) {
                        return j10;
                    }
                } else if (jAbs2 <= 0) {
                    return j10;
                }
            default:
                throw new AssertionError();
        }
        return j10 + ((long) i8);
    }

    public static String d0(Rv rv) {
        if (rv == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            f0(jsonWriter, rv);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e8) {
            h.e("Error when writing JSON.", e8);
            return null;
        }
    }

    public static byte[] e(InterfaceC3184i interfaceC3184i, String str, byte[] bArr, Map map) throws B {
        Map map2;
        List list;
        p141s0.M m7 = new p141s0.M(interfaceC3184i);
        Collections.emptyMap();
        Uri uri = Uri.parse(str);
        H1.k(uri, "The uri must be set.");
        C3188m c3188m = new C3188m(uri, 0L, 2, bArr, map, 0L, -1L, null, 1, null);
        C3188m c3188mA = c3188m;
        int i8 = 0;
        while (true) {
            try {
                C3186k c3186k = new C3186k(m7, c3188mA);
                try {
                    try {
                        byte[] bArrB = A4.e.b(c3186k);
                        M.g(c3186k);
                        return bArrB;
                    } catch (Throwable th) {
                        M.g(c3186k);
                        throw th;
                    }
                } catch (A e8) {
                    int i9 = e8.f29862J;
                    String str2 = null;
                    if ((i9 == 307 || i9 == 308) && i8 < 5 && (map2 = e8.f29863K) != null && (list = (List) map2.get("Location")) != null && !list.isEmpty()) {
                        str2 = (String) list.get(0);
                    }
                    if (str2 == null) {
                        throw e8;
                    }
                    i8++;
                    C3187l c3187lA = c3188mA.a();
                    c3187lA.f29953a = Uri.parse(str2);
                    c3188mA = c3187lA.a();
                    M.g(c3186k);
                }
            } catch (Exception e9) {
                throw new B(c3188m, m7.f29910c, m7.f29908a.k(), m7.f29909b, e9);
            }
        }
    }

    public static JSONObject e0(JSONObject jSONObject, String[] strArr) {
        for (int i8 = 0; i8 < strArr.length - 1; i8 = 1) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[0]);
        }
        return jSONObject;
    }

    public static int f(int i8, int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i9 <= i8) {
            return i8;
        }
        int iHighestOneBit = i8 + (i8 >> 1) + 1;
        if (iHighestOneBit < i9) {
            iHighestOneBit = Integer.highestOneBit(i9 - 1) << 1;
        }
        return iHighestOneBit < 0 ? d.API_PRIORITY_OTHER : iHighestOneBit;
    }

    public static void f0(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return;
        }
        if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof String) {
            jsonWriter.value((String) obj);
            return;
        }
        if (obj instanceof Rv) {
            c0(jsonWriter, ((Rv) obj).f16375d);
            return;
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                f0(jsonWriter, it.next());
            }
            jsonWriter.endArray();
            return;
        }
        jsonWriter.beginObject();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Object key = entry.getKey();
            if (key instanceof String) {
                f0(jsonWriter.name((String) key), entry.getValue());
            }
        }
        jsonWriter.endObject();
    }

    public static o g(p170w.d dVar, int i8, ArrayList arrayList, o oVar) {
        int i9;
        int i10 = i8 == 0 ? dVar.f30843m0 : dVar.f30845n0;
        if (i10 != -1 && (oVar == null || i10 != oVar.f31164b)) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                o oVar2 = (o) arrayList.get(i11);
                if (oVar2.f31164b == i10) {
                    if (oVar != null) {
                        oVar.c(i8, oVar2);
                        arrayList.remove(oVar);
                    }
                    oVar = oVar2;
                    break;
                }
            }
        } else if (i10 != -1) {
            return oVar;
        }
        if (oVar == null) {
            if (dVar instanceof p170w.h) {
                p170w.h hVar = (p170w.h) dVar;
                int i12 = 0;
                while (true) {
                    if (i12 >= hVar.f30887q0) {
                        i9 = -1;
                        break;
                    }
                    p170w.d dVar2 = hVar.f30886p0[i12];
                    if ((i8 == 0 && (i9 = dVar2.f30843m0) != -1) || (i8 == 1 && (i9 = dVar2.f30845n0) != -1)) {
                        break;
                    }
                    i12++;
                }
                if (i9 != -1) {
                    for (int i13 = 0; i13 < arrayList.size(); i13++) {
                        o oVar3 = (o) arrayList.get(i13);
                        if (oVar3.f31164b == i9) {
                            oVar = oVar3;
                            break;
                        }
                    }
                }
            }
            if (oVar == null) {
                oVar = new o();
                oVar.f31163a = new ArrayList();
                oVar.f31166d = null;
                oVar.f31167e = -1;
                int i14 = o.f31162f;
                o.f31162f = i14 + 1;
                oVar.f31164b = i14;
                oVar.f31165c = i8;
            }
            arrayList.add(oVar);
        }
        ArrayList arrayList2 = oVar.f31163a;
        if (!arrayList2.contains(dVar)) {
            arrayList2.add(dVar);
            if (dVar instanceof f) {
                f fVar = (f) dVar;
                fVar.f30883s0.b(fVar.f30884t0 == 0 ? 1 : 0, oVar, arrayList);
            }
            int i15 = oVar.f31164b;
            if (i8 == 0) {
                dVar.f30843m0 = i15;
                dVar.f30799H.b(i8, oVar, arrayList);
                dVar.f30801J.b(i8, oVar, arrayList);
            } else {
                dVar.f30845n0 = i15;
                dVar.f30800I.b(i8, oVar, arrayList);
                dVar.f30803L.b(i8, oVar, arrayList);
                dVar.f30802K.b(i8, oVar, arrayList);
            }
            dVar.f30806O.b(i8, oVar, arrayList);
        }
        return oVar;
    }

    public static long h(long j8, long j9) {
        Cw.f(j8, "a");
        Cw.f(j9, "b");
        if (j8 == 0) {
            return j9;
        }
        if (j9 == 0) {
            return j8;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j8);
        long jNumberOfTrailingZeros = j8 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j9);
        long j10 = j9 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j10) {
            long j11 = jNumberOfTrailingZeros - j10;
            long j12 = (j11 >> 63) & j11;
            long j13 = (j11 - j12) - j12;
            j10 += j12;
            jNumberOfTrailingZeros = j13 >> Long.numberOfTrailingZeros(j13);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static final int i(Cursor cursor, String str) {
        String strR;
        q0.h(cursor, "c");
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex < 0) {
            columnIndex = cursor.getColumnIndex("`" + str + '`');
            if (columnIndex < 0) {
                int i8 = -1;
                if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
                    String[] columnNames = cursor.getColumnNames();
                    q0.g(columnNames, "columnNames");
                    String strConcat = ".".concat(str);
                    String str2 = "." + str + '`';
                    int length = columnNames.length;
                    int i9 = 0;
                    int i10 = 0;
                    while (i9 < length) {
                        String str3 = columnNames[i9];
                        int i11 = i10 + 1;
                        if (str3.length() >= str.length() + 2 && (k.E0(str3, strConcat) || (str3.charAt(0) == '`' && k.E0(str3, str2)))) {
                            i8 = i10;
                            break;
                        }
                        i9++;
                        i10 = i11;
                    }
                }
                columnIndex = i8;
            }
        }
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames2 = cursor.getColumnNames();
            q0.g(columnNames2, "c.columnNames");
            strR = j.R(columnNames2);
        } catch (Exception e8) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e8);
            strR = zzbz.UNKNOWN_CONTENT_TYPE;
        }
        throw new IllegalArgumentException(U2.m("column '", str, "' does not exist. Available columns: ", strR));
    }

    public static int j(p196z2.h hVar, InputStream inputStream, List list) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new F2.w(inputStream, hVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            try {
                int iD = ((p173w2.f) list.get(i8)).d(inputStream, hVar);
                inputStream.reset();
                if (iD != -1) {
                    return iD;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType k(List list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = ((p173w2.f) list.get(i8)).a(byteBuffer);
                P2.c.c(byteBuffer);
                if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeA;
                }
            } catch (Throwable th) {
                P2.c.c(byteBuffer);
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static ImageHeaderParser$ImageType l(p196z2.h hVar, InputStream inputStream, List list) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new F2.w(inputStream, hVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = ((p173w2.f) list.get(i8)).c(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeC;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static int[] m(String str) {
        int iIndexOf;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int iIndexOf2 = str.indexOf(35);
        if (iIndexOf2 != -1) {
            length = iIndexOf2;
        }
        int iIndexOf3 = str.indexOf(63);
        if (iIndexOf3 == -1 || iIndexOf3 > length) {
            iIndexOf3 = length;
        }
        int iIndexOf4 = str.indexOf(47);
        if (iIndexOf4 == -1 || iIndexOf4 > iIndexOf3) {
            iIndexOf4 = iIndexOf3;
        }
        int iIndexOf5 = str.indexOf(58);
        if (iIndexOf5 > iIndexOf4) {
            iIndexOf5 = -1;
        }
        int i8 = iIndexOf5 + 2;
        if (i8 < iIndexOf3 && str.charAt(iIndexOf5 + 1) == '/' && str.charAt(i8) == '/') {
            iIndexOf = str.indexOf(47, iIndexOf5 + 3);
            if (iIndexOf == -1 || iIndexOf > iIndexOf3) {
                iIndexOf = iIndexOf3;
            }
        } else {
            iIndexOf = iIndexOf5 + 1;
        }
        iArr[0] = iIndexOf5;
        iArr[1] = iIndexOf;
        iArr[2] = iIndexOf3;
        iArr[3] = length;
        return iArr;
    }

    public static boolean n(Throwable th) {
        return Build.VERSION.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(");
    }

    public static boolean o(Throwable th) {
        return Build.VERSION.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(");
    }

    public static synchronized boolean p(Context context) {
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f6034a;
        if (context2 != null && (bool = f6035b) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        f6035b = null;
        if (m.a()) {
            f6035b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        } else {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                f6035b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                f6035b = Boolean.FALSE;
            }
        }
        f6034a = applicationContext;
        return f6035b.booleanValue();
    }

    public static void q(View view, EditorInfo editorInfo, InputConnection inputConnection) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static int s(int i8, E e8) {
        switch (i8) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i8 - 2);
            case 6:
                return e8.z() + 1;
            case 7:
                return e8.F() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i8 - 8);
            default:
                return -1;
        }
    }

    public static String t(StringBuilder sb, int i8, int i9) {
        int i10;
        int iLastIndexOf;
        if (i8 >= i9) {
            return sb.toString();
        }
        if (sb.charAt(i8) == '/') {
            i8++;
        }
        int i11 = i8;
        int i12 = i11;
        while (i11 <= i9) {
            if (i11 == i9) {
                i10 = i11;
            } else if (sb.charAt(i11) == '/') {
                i10 = i11 + 1;
            } else {
                i11++;
            }
            int i13 = i12 + 1;
            if (i11 == i13 && sb.charAt(i12) == '.') {
                sb.delete(i12, i10);
                i9 -= i10 - i12;
            } else {
                if (i11 == i12 + 2 && sb.charAt(i12) == '.' && sb.charAt(i13) == '.') {
                    iLastIndexOf = sb.lastIndexOf(MqttTopic.TOPIC_LEVEL_SEPARATOR, i12 - 2) + 1;
                    int i14 = iLastIndexOf > i8 ? iLastIndexOf : i8;
                    sb.delete(i14, i10);
                    i9 -= i10 - i14;
                } else {
                    iLastIndexOf = i11 + 1;
                }
                i12 = iLastIndexOf;
            }
            i11 = i12;
        }
        return sb.toString();
    }

    public static String u(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (str2 == null) {
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        int[] iArrM = m(str2);
        if (iArrM[0] != -1) {
            sb.append(str2);
            t(sb, iArrM[1], iArrM[2]);
            return sb.toString();
        }
        int[] iArrM2 = m(str);
        if (iArrM[3] == 0) {
            sb.append((CharSequence) str, 0, iArrM2[3]);
            sb.append(str2);
            return sb.toString();
        }
        if (iArrM[2] == 0) {
            sb.append((CharSequence) str, 0, iArrM2[2]);
            sb.append(str2);
            return sb.toString();
        }
        int i8 = iArrM[1];
        if (i8 != 0) {
            int i9 = iArrM2[0] + 1;
            sb.append((CharSequence) str, 0, i9);
            sb.append(str2);
            return t(sb, iArrM[1] + i9, i9 + iArrM[2]);
        }
        if (str2.charAt(i8) == '/') {
            sb.append((CharSequence) str, 0, iArrM2[1]);
            sb.append(str2);
            int i10 = iArrM2[1];
            return t(sb, i10, iArrM[2] + i10);
        }
        int i11 = iArrM2[0] + 2;
        int i12 = iArrM2[1];
        if (i11 >= i12 || i12 != iArrM2[2]) {
            int iLastIndexOf = str.lastIndexOf(47, iArrM2[2] - 1);
            int i13 = iLastIndexOf == -1 ? iArrM2[1] : iLastIndexOf + 1;
            sb.append((CharSequence) str, 0, i13);
            sb.append(str2);
            return t(sb, iArrM2[1], i13 + iArrM[2]);
        }
        sb.append((CharSequence) str, 0, i12);
        sb.append('/');
        sb.append(str2);
        int i14 = iArrM2[1];
        return t(sb, i14, iArrM[2] + i14 + 1);
    }

    public static g v(g gVar, String[] strArr, Map map) {
        int i8 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (g) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i8 < length) {
                    gVar2.a((g) map.get(strArr[i8]));
                    i8++;
                }
                return gVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                gVar.a((g) map.get(strArr[0]));
                return gVar;
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i8 < length2) {
                    gVar.a((g) map.get(strArr[i8]));
                    i8++;
                }
            }
        }
        return gVar;
    }

    public static Uri w(String str, String str2) {
        return Uri.parse(u(str, str2));
    }

    public static long x(long j8, long j9) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~j9) + Long.numberOfLeadingZeros(j9) + Long.numberOfLeadingZeros(~j8) + Long.numberOfLeadingZeros(j8);
        if (iNumberOfLeadingZeros > 65) {
            return j8 * j9;
        }
        long j10 = ((j8 ^ j9) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j9 == Long.MIN_VALUE) & (j8 < 0))) {
            return j10;
        }
        long j11 = j8 * j9;
        return (j8 == 0 || j11 / j8 == j9) ? j11 : j10;
    }

    public static int y(Context context, int i8) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i8});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    public static boolean z(int i8, int i9, int i10, int i11) {
        return (i10 == 1 || i10 == 2 || (i10 == 4 && i8 != 2)) || (i11 == 1 || i11 == 2 || (i11 == 4 && i9 != 2));
    }

    public abstract C2230xB B(GB gb);

    public abstract FB F(GB gb);

    public abstract void M(FB fb, FB fb2);

    public abstract void P(FB fb, Thread thread);

    public abstract boolean T(GB gb, C2230xB c2230xB, C2230xB c2230xB2);

    public abstract boolean W(GB gb, Object obj, Object obj2);

    public abstract boolean Z(GB gb, FB fb, FB fb2);

    public abstract b a(Object obj);

    public abstract Object r(int i8, Intent intent);
}
