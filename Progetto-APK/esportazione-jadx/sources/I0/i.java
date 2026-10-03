package I0;

import java.util.List;
import okhttp3.HttpUrl;
import p094m0.C3131n;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class i extends j {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f3860R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final H f3861S;

    public i(String str, i iVar, String str2, long j8, int i8, long j9, C3131n c3131n, String str3, String str4, long j10, long j11, boolean z7, List list) {
        super(str, iVar, j8, i8, j9, c3131n, str3, str4, j10, j11, z7);
        this.f3860R = str2;
        this.f3861S = H.s(list);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(long j8, long j9, String str, String str2, String str3) {
        this(str, null, HttpUrl.FRAGMENT_ENCODE_SET, 0L, -1, -9223372036854775807L, null, str2, str3, j8, j9, false, d0.f31844K);
        F f8 = H.f31804H;
    }
}
