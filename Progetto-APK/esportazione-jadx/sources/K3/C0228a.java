package K3;

import java.util.Arrays;

/* JADX INFO: renamed from: K3.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0228a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.gms.common.api.g f4526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.common.api.c f4527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4528d;

    public C0228a(com.google.android.gms.common.api.g gVar, com.google.android.gms.common.api.c cVar, String str) {
        this.f4526b = gVar;
        this.f4527c = cVar;
        this.f4528d = str;
        this.f4525a = Arrays.hashCode(new Object[]{gVar, cVar, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0228a)) {
            return false;
        }
        C0228a c0228a = (C0228a) obj;
        return U4.a.c(this.f4526b, c0228a.f4526b) && U4.a.c(this.f4527c, c0228a.f4527c) && U4.a.c(this.f4528d, c0228a.f4528d);
    }

    public final int hashCode() {
        return this.f4525a;
    }
}
