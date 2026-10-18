package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import java.util.Objects;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2344zL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2292yL f22155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f22156c;

    static {
        if (Et.f13234a < 31) {
            new C2344zL(HttpUrl.FRAGMENT_ENCODE_SET);
        } else {
            int i8 = C2292yL.f22021b;
        }
    }

    public C2344zL(LogSessionId logSessionId, String str) {
        this.f22155b = new C2292yL(logSessionId);
        this.f22154a = str;
        this.f22156c = new Object();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2344zL)) {
            return false;
        }
        C2344zL c2344zL = (C2344zL) obj;
        return Objects.equals(this.f22154a, c2344zL.f22154a) && Objects.equals(this.f22155b, c2344zL.f22155b) && Objects.equals(this.f22156c, c2344zL.f22156c);
    }

    public final int hashCode() {
        return Objects.hash(this.f22154a, this.f22155b, this.f22156c);
    }

    public C2344zL(String str) {
        p113o3.r.M(Et.f13234a < 31);
        this.f22154a = str;
        this.f22155b = null;
        this.f22156c = new Object();
    }
}
