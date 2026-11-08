package p065i1;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class e extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f25527d;

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f25525b = str;
        this.f25526c = str2;
        this.f25527d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return Objects.equals(this.f25526c, eVar.f25526c) && Objects.equals(this.f25525b, eVar.f25525b) && Objects.equals(this.f25527d, eVar.f25527d);
    }

    public final int hashCode() {
        String str = this.f25525b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f25526c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f25527d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": language=" + this.f25525b + ", description=" + this.f25526c + ", text=" + this.f25527d;
    }
}
