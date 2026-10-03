package I4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ a[] f4013G = {new a("GRANTED", 0), new a("DENIED", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    a EF6;

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f4013G.clone();
    }
}
