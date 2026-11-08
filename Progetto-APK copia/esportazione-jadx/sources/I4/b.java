package I4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ b[] f4014G = {new b("AD_STORAGE", 0), new b("ANALYTICS_STORAGE", 1), new b("AD_USER_DATA", 2), new b("AD_PERSONALIZATION", 3)};

    /* JADX INFO: Fake field, exist only in values array */
    b EF8;

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f4014G.clone();
    }
}
