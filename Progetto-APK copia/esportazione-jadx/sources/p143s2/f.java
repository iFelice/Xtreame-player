package p143s2;

import A1.H;
import com.google.android.gms.internal.measurement.H1;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p135r2.k;

/* JADX INFO: loaded from: classes.dex */
public final class f extends H1 {
    public static void O(HttpURLConnection httpURLConnection, k kVar, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", kVar.e());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    public static ArrayList P(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new p135r2.f((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }

    public static void Q(k kVar, HttpURLConnection httpURLConnection) throws IOException {
        switch (kVar.f29814H) {
            case -1:
                byte[] bArrH = kVar.h();
                if (bArrH != null) {
                    httpURLConnection.setRequestMethod("POST");
                    O(httpURLConnection, kVar, bArrH);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                byte[] bArrD = kVar.d();
                if (bArrD != null) {
                    O(httpURLConnection, kVar, bArrD);
                    return;
                }
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                byte[] bArrD2 = kVar.d();
                if (bArrD2 != null) {
                    O(httpURLConnection, kVar, bArrD2);
                    return;
                }
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                byte[] bArrD3 = kVar.d();
                if (bArrD3 != null) {
                    O(httpURLConnection, kVar, bArrD3);
                    return;
                }
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.H1
    public final H o(k kVar, Map map) throws Throwable {
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(kVar.g());
        URL url = new URL(kVar.f29815I);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int i8 = kVar.f29823Q.f630a;
        httpURLConnection.setConnectTimeout(i8);
        httpURLConnection.setReadTimeout(i8);
        boolean z7 = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url.getProtocol());
        try {
            for (String str : map2.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) map2.get(str));
            }
            Q(kVar, httpURLConnection);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (kVar.f29814H == 4 || ((100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304)) {
                H h8 = new H(responseCode, P(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
                return h8;
            }
            try {
                return new H(responseCode, P(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new e(httpURLConnection, 0));
            } catch (Throwable th) {
                th = th;
                z7 = true;
                if (!z7) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
