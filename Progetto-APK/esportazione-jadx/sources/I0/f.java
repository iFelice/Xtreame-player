package I0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f3839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f3840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f3843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f3844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f3845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f3847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f3848k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final H f3849l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final H f3850m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final d0 f3851n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f3852o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f3853p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f3854q;

    public f(String str, Uri uri, Uri uri2, long j8, long j9, long j10, long j11, List list, boolean z7, long j12, long j13, List list2, List list3, ArrayList arrayList, boolean z8, String str2, String str3) {
        H1.d((uri == null || uri2 == null) && !(uri == null && uri2 == null));
        this.f3838a = str;
        this.f3839b = uri;
        this.f3840c = uri2;
        this.f3841d = j8;
        this.f3842e = j9;
        this.f3843f = j10;
        this.f3844g = j11;
        this.f3845h = list;
        this.f3846i = z7;
        this.f3847j = j12;
        this.f3848k = j13;
        this.f3849l = H.s(list2);
        this.f3850m = H.s(list3);
        this.f3851n = H.B(new K.b(2), arrayList);
        this.f3852o = z8;
        this.f3853p = str2;
        this.f3854q = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f3841d == fVar.f3841d && this.f3842e == fVar.f3842e && this.f3843f == fVar.f3843f && this.f3844g == fVar.f3844g && this.f3846i == fVar.f3846i && this.f3847j == fVar.f3847j && this.f3848k == fVar.f3848k && this.f3852o == fVar.f3852o && Objects.equals(this.f3838a, fVar.f3838a) && Objects.equals(this.f3839b, fVar.f3839b) && Objects.equals(this.f3840c, fVar.f3840c) && Objects.equals(this.f3845h, fVar.f3845h) && Objects.equals(this.f3849l, fVar.f3849l) && Objects.equals(this.f3850m, fVar.f3850m) && Objects.equals(this.f3851n, fVar.f3851n) && Objects.equals(this.f3853p, fVar.f3853p) && Objects.equals(this.f3854q, fVar.f3854q);
    }

    public final int hashCode() {
        Long lValueOf = Long.valueOf(this.f3841d);
        Long lValueOf2 = Long.valueOf(this.f3842e);
        Long lValueOf3 = Long.valueOf(this.f3843f);
        Long lValueOf4 = Long.valueOf(this.f3844g);
        Boolean boolValueOf = Boolean.valueOf(this.f3846i);
        Long lValueOf5 = Long.valueOf(this.f3847j);
        Long lValueOf6 = Long.valueOf(this.f3848k);
        Boolean boolValueOf2 = Boolean.valueOf(this.f3852o);
        return Objects.hash(this.f3838a, this.f3839b, this.f3840c, lValueOf, lValueOf2, lValueOf3, lValueOf4, this.f3845h, boolValueOf, lValueOf5, lValueOf6, this.f3849l, this.f3850m, this.f3851n, boolValueOf2, this.f3853p, this.f3854q);
    }
}
