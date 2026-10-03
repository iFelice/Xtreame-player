package p021c4;

/* JADX INFO: renamed from: c4.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC0614u0 {
    UNINITIALIZED("uninitialized"),
    POLICY("eu_consent_policy"),
    DENIED("denied"),
    GRANTED("granted");


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f11380G;

    EnumC0614u0(String str) {
        this.f11380G = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f11380G;
    }
}
