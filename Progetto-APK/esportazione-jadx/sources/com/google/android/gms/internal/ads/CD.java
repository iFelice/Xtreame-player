package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CD {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f12591f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f12592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f12593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f12594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f12595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12596e;

    static {
        R7.a("media3.datasource");
    }

    public CD(Uri uri, long j8, long j9) {
        this(uri, Collections.emptyMap(), j8, j9, 0);
    }

    public final String toString() {
        StringBuilder sbP = com.google.protobuf.U2.p("DataSpec[GET ", this.f12592a.toString(), ", ");
        sbP.append(this.f12594c);
        sbP.append(", ");
        sbP.append(this.f12595d);
        sbP.append(", null, ");
        return p000a.r.h(sbP, this.f12596e, "]");
    }

    public CD(Uri uri, Map map, long j8, long j9, int i8) {
        boolean z7 = false;
        boolean z8 = j8 >= 0;
        p113o3.r.J(z8);
        p113o3.r.J(z8);
        if (j9 > 0) {
            z7 = true;
        } else if (j9 == -1) {
            j9 = -1;
            z7 = true;
        }
        p113o3.r.J(z7);
        uri.getClass();
        this.f12592a = uri;
        this.f12593b = Collections.unmodifiableMap(new HashMap(map));
        this.f12594c = j8;
        this.f12595d = j9;
        this.f12596e = i8;
    }
}
