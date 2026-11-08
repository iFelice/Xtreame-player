package p120p3;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import p090l3.C3097p;

/* JADX INFO: loaded from: classes.dex */
public final class k implements c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f28218G;

    public k(String str) {
        this.f28218G = str;
    }

    @Override // p120p3.c
    public final boolean c(String str) {
        boolean z7 = false;
        try {
            h.b("Pinging URL: " + str);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URI(str).toURL().openConnection();
            try {
                d dVar = C3097p.f26618f.f26619a;
                String str2 = this.f28218G;
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setReadTimeout(60000);
                if (str2 != null) {
                    httpURLConnection.setRequestProperty("User-Agent", str2);
                }
                httpURLConnection.setUseCaches(false);
                g gVar = new g();
                gVar.a(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                gVar.b(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    h.g("Received non-success response code " + responseCode + " from pinging URL: " + str);
                } else {
                    z7 = true;
                }
                return z7;
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e8) {
            e = e8;
            h.g("Error while pinging URL: " + str + ". " + e.getMessage());
        } catch (IndexOutOfBoundsException e9) {
            e = e9;
            h.g("Error while parsing ping URL: " + str + ". " + e.getMessage());
        } catch (RuntimeException e10) {
            e = e10;
            h.g("Error while pinging URL: " + str + ". " + e.getMessage());
        } catch (URISyntaxException e11) {
            e = e11;
            h.g("Error while parsing ping URL: " + str + ". " + e.getMessage());
        } catch (Throwable th) {
            throw th;
        }
    }
}
