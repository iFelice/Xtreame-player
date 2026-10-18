package J6;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: J6.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC0218q {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC0218q f4246G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ EnumC0218q[] f4247H;

    static {
        EnumC0218q enumC0218q = new EnumC0218q("DEFAULT", 0);
        f4246G = enumC0218q;
        f4247H = new EnumC0218q[]{enumC0218q, new EnumC0218q("LAZY", 1), new EnumC0218q("ATOMIC", 2), new EnumC0218q("UNDISPATCHED", 3)};
    }

    public static EnumC0218q valueOf(String str) {
        return (EnumC0218q) Enum.valueOf(EnumC0218q.class, str);
    }

    public static EnumC0218q[] values() {
        return (EnumC0218q[]) f4247H.clone();
    }
}
