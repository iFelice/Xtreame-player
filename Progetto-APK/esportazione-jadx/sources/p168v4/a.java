package p168v4;

import androidx.annotation.RecentlyNonNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f30718G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final a f30719H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final a f30720I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ a[] f30721J;

    static {
        a aVar = new a("UNKNOWN", 0);
        f30718G = aVar;
        a aVar2 = new a("NOT_REQUIRED", 1);
        f30719H = aVar2;
        a aVar3 = new a("REQUIRED", 2);
        f30720I = aVar3;
        f30721J = new a[]{aVar, aVar2, aVar3};
    }

    @RecentlyNonNull
    public static a valueOf(@RecentlyNonNull String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    @RecentlyNonNull
    public static a[] values() {
        return (a[]) f30721J.clone();
    }
}
