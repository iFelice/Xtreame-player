package p065i1;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f25521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f25522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f25523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j[] f25524f;

    public d(String str, boolean z7, boolean z8, String[] strArr, j[] jVarArr) {
        super("CTOC");
        this.f25520b = str;
        this.f25521c = z7;
        this.f25522d = z8;
        this.f25523e = strArr;
        this.f25524f = jVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f25521c == dVar.f25521c && this.f25522d == dVar.f25522d && Objects.equals(this.f25520b, dVar.f25520b) && Arrays.equals(this.f25523e, dVar.f25523e) && Arrays.equals(this.f25524f, dVar.f25524f);
    }

    public final int hashCode() {
        int i8 = (((527 + (this.f25521c ? 1 : 0)) * 31) + (this.f25522d ? 1 : 0)) * 31;
        String str = this.f25520b;
        return i8 + (str != null ? str.hashCode() : 0);
    }
}
