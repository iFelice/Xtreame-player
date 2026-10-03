package C2;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class t implements p173w2.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u f1410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URL f1411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public URL f1414f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile byte[] f1415g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1416h;

    public t(URL url) {
        x xVar = u.f1417a;
        p102n0.c.c(url, "Argument must not be null");
        this.f1411c = url;
        this.f1412d = null;
        p102n0.c.c(xVar, "Argument must not be null");
        this.f1410b = xVar;
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        if (this.f1415g == null) {
            this.f1415g = c().getBytes(p173w2.i.f30994a);
        }
        messageDigest.update(this.f1415g);
    }

    public final String c() {
        String str = this.f1412d;
        if (str != null) {
            return str;
        }
        URL url = this.f1411c;
        p102n0.c.c(url, "Argument must not be null");
        return url.toString();
    }

    public final String d() {
        if (TextUtils.isEmpty(this.f1413e)) {
            String string = this.f1412d;
            if (TextUtils.isEmpty(string)) {
                URL url = this.f1411c;
                p102n0.c.c(url, "Argument must not be null");
                string = url.toString();
            }
            this.f1413e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f1413e;
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return c().equals(tVar.c()) && this.f1410b.equals(tVar.f1410b);
    }

    @Override // p173w2.i
    public final int hashCode() {
        if (this.f1416h == 0) {
            int iHashCode = c().hashCode();
            this.f1416h = iHashCode;
            this.f1416h = this.f1410b.hashCode() + (iHashCode * 31);
        }
        return this.f1416h;
    }

    public final String toString() {
        return c();
    }

    public t(String str, x xVar) {
        this.f1411c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f1412d = str;
            p102n0.c.c(xVar, "Argument must not be null");
            this.f1410b = xVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
