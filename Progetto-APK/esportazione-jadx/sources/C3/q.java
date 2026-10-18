package C3;

import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JSONObject f1569d;

    public /* synthetic */ q(long j8, int i8, boolean z7, JSONObject jSONObject) {
        this.f1566a = j8;
        this.f1567b = i8;
        this.f1568c = z7;
        this.f1569d = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f1566a == qVar.f1566a && this.f1567b == qVar.f1567b && this.f1568c == qVar.f1568c && U4.a.c(this.f1569d, qVar.f1569d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f1566a), Integer.valueOf(this.f1567b), Boolean.valueOf(this.f1568c), this.f1569d});
    }
}
