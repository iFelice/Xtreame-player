package p065i1;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class c extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f25517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f25518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final j[] f25519g;

    public c(String str, int i8, int i9, long j8, long j9, j[] jVarArr) {
        super("CHAP");
        this.f25514b = str;
        this.f25515c = i8;
        this.f25516d = i9;
        this.f25517e = j8;
        this.f25518f = j9;
        this.f25519g = jVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f25515c == cVar.f25515c && this.f25516d == cVar.f25516d && this.f25517e == cVar.f25517e && this.f25518f == cVar.f25518f && Objects.equals(this.f25514b, cVar.f25514b) && Arrays.equals(this.f25519g, cVar.f25519g);
    }

    public final int hashCode() {
        int i8 = (((((((527 + this.f25515c) * 31) + this.f25516d) * 31) + ((int) this.f25517e)) * 31) + ((int) this.f25518f)) * 31;
        String str = this.f25514b;
        return i8 + (str != null ? str.hashCode() : 0);
    }
}
