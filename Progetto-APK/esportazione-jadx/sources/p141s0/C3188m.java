package p141s0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p000a.r;
import p094m0.J;

/* JADX INFO: renamed from: s0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3188m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f29963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f29964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f29966d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f29967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f29968f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f29969g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f29970h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f29971i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f29972j;

    static {
        J.a("media3.datasource");
    }

    public C3188m(Uri uri, long j8, int i8, byte[] bArr, Map map, long j9, long j10, String str, int i9, Object obj) {
        byte[] bArr2 = bArr;
        boolean z7 = true;
        H1.d(j8 + j9 >= 0);
        H1.d(j9 >= 0);
        if (j10 <= 0 && j10 != -1) {
            z7 = false;
        }
        H1.d(z7);
        uri.getClass();
        this.f29963a = uri;
        this.f29964b = j8;
        this.f29965c = i8;
        this.f29966d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f29967e = Collections.unmodifiableMap(new HashMap(map));
        this.f29968f = j9;
        this.f29969g = j10;
        this.f29970h = str;
        this.f29971i = i9;
        this.f29972j = obj;
    }

    public static String b(int i8) {
        if (i8 == 1) {
            return "GET";
        }
        if (i8 == 2) {
            return "POST";
        }
        if (i8 == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public final C3187l a() {
        C3187l c3187l = new C3187l();
        c3187l.f29953a = this.f29963a;
        c3187l.f29954b = this.f29964b;
        c3187l.f29955c = this.f29965c;
        c3187l.f29956d = this.f29966d;
        c3187l.f29957e = this.f29967e;
        c3187l.f29958f = this.f29968f;
        c3187l.f29959g = this.f29969g;
        c3187l.f29960h = this.f29970h;
        c3187l.f29961i = this.f29971i;
        c3187l.f29962j = this.f29972j;
        return c3187l;
    }

    public final C3188m c(long j8) {
        long j9 = this.f29969g;
        return d(j8, j9 != -1 ? j9 - j8 : -1L);
    }

    public final C3188m d(long j8, long j9) {
        if (j8 == 0 && this.f29969g == j9) {
            return this;
        }
        return new C3188m(this.f29963a, this.f29964b, this.f29965c, this.f29966d, this.f29967e, this.f29968f + j8, j9, this.f29970h, this.f29971i, this.f29972j);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DataSpec[");
        sb.append(b(this.f29965c));
        sb.append(" ");
        sb.append(this.f29963a);
        sb.append(", ");
        sb.append(this.f29968f);
        sb.append(", ");
        sb.append(this.f29969g);
        sb.append(", ");
        sb.append(this.f29970h);
        sb.append(", ");
        return r.h(sb, this.f29971i, "]");
    }
}
