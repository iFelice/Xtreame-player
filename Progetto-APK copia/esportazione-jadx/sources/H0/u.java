package H0;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f3614f;

    public u(int i8, int i9, String str, String str2, String str3, String str4) {
        this.f3609a = i8;
        this.f3610b = i9;
        this.f3611c = str;
        this.f3612d = str2;
        this.f3613e = str3;
        this.f3614f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        return this.f3609a == uVar.f3609a && this.f3610b == uVar.f3610b && TextUtils.equals(this.f3611c, uVar.f3611c) && TextUtils.equals(this.f3612d, uVar.f3612d) && TextUtils.equals(this.f3613e, uVar.f3613e) && TextUtils.equals(this.f3614f, uVar.f3614f);
    }

    public final int hashCode() {
        int i8 = ((this.f3609a * 31) + this.f3610b) * 31;
        String str = this.f3611c;
        int iHashCode = (i8 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f3612d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f3613e;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f3614f;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }
}
