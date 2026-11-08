package p043f3;

/* JADX INFO: loaded from: classes.dex */
public enum a {
    BANNER(0),
    INTERSTITIAL(1),
    REWARDED(2),
    REWARDED_INTERSTITIAL(3),
    NATIVE(4),
    APP_OPEN_AD(6);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f25158G;

    a(int i8) {
        this.f25158G = i8;
    }

    public static a a(int i8) {
        for (a aVar : values()) {
            if (aVar.f25158G == i8) {
                return aVar;
            }
        }
        return null;
    }
}
