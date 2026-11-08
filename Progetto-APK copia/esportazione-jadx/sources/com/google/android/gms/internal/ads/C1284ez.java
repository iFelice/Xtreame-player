package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ez, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1284ez {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18630b;

    public C1284ez(int i8, String str) {
        this.f18629a = i8;
        this.f18630b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1284ez) {
            C1284ez c1284ez = (C1284ez) obj;
            if (this.f18629a == c1284ez.f18629a) {
                String str = c1284ez.f18630b;
                String str2 = this.f18630b;
                if (str2 != null ? str2.equals(str) : str == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18630b;
        return (str == null ? 0 : str.hashCode()) ^ ((this.f18629a ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayState{statusCode=");
        sb.append(this.f18629a);
        sb.append(", sessionToken=");
        return p000a.r.j(sb, this.f18630b, "}");
    }
}
