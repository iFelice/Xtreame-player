package Z6;

import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeZone f8503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8504b;

    public k(TimeZone timeZone, boolean z7) {
        this.f8503a = timeZone;
        this.f8504b = z7 ? timeZone.getDSTSavings() : 0;
    }
}
