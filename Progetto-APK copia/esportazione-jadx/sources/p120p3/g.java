package p120p3;

import K.k;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p096m2.o;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f28213c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f28214d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f28216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f28212b = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashSet f28215e = new HashSet(Arrays.asList(new String[0]));

    public g() {
        this.f28216a = !c() ? new ArrayList() : Arrays.asList("network_request_".concat(String.valueOf(UUID.randomUUID().toString())));
    }

    public static boolean c() {
        boolean z7;
        synchronized (f28212b) {
            try {
                z7 = false;
                if (f28213c && f28214d) {
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    public static void e(JsonWriter jsonWriter, Map map) {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (!f28215e.contains(str)) {
                if (!(entry.getValue() instanceof List)) {
                    if (!(entry.getValue() instanceof String)) {
                        h.d("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(str);
                    jsonWriter.name("value").value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(str);
                        jsonWriter.name("value").value(str2);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public final void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (c()) {
            HashMap map = httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties());
            String str = new String(httpURLConnection.getURL().toString());
            String str2 = new String(httpURLConnection.getRequestMethod());
            o oVar = new o();
            oVar.f27236G = str;
            oVar.f27237H = str2;
            oVar.f27238I = map;
            oVar.f27239J = bArr;
            d("onNetworkRequest", oVar);
        }
    }

    public final void b(HttpURLConnection httpURLConnection, int i8) {
        if (c()) {
            String responseMessage = null;
            d("onNetworkResponse", new k(i8, httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), 6));
            if (i8 < 200 || i8 >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e8) {
                    h.g("Can not get error message from error HttpURLConnection\n".concat(String.valueOf(e8.getMessage())));
                }
                d("onNetworkRequestError", new e(responseMessage, 0));
            }
        }
    }

    public final void d(String str, f fVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(System.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = this.f28216a.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            fVar.m(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e8) {
            h.e("unable to log", e8);
        }
        String string = stringWriter.toString();
        synchronized (g.class) {
            try {
                h.f("GMA Debug BEGIN");
                int i8 = 0;
                while (i8 < string.length()) {
                    int i9 = i8 + 4000;
                    h.f("GMA Debug CONTENT ".concat(String.valueOf(string.substring(i8, Math.min(i9, string.length())))));
                    i8 = i9;
                }
                h.f("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
