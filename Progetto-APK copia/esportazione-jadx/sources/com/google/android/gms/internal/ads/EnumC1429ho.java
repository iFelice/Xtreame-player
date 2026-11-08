package com.google.android.gms.internal.ads;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ho, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1429ho {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final EnumC1429ho f19142G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC1429ho f19143H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC1429ho f19144I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ EnumC1429ho[] f19145J;

    static {
        EnumC1429ho enumC1429ho = new EnumC1429ho("AD_REQUESTED", 0);
        f19142G = enumC1429ho;
        EnumC1429ho enumC1429ho2 = new EnumC1429ho("AD_LOADED", 1);
        f19143H = enumC1429ho2;
        EnumC1429ho enumC1429ho3 = new EnumC1429ho("AD_LOAD_FAILED", 2);
        f19144I = enumC1429ho3;
        f19145J = new EnumC1429ho[]{enumC1429ho, enumC1429ho2, enumC1429ho3};
    }

    public static EnumC1429ho[] values() {
        return (EnumC1429ho[]) f19145J.clone();
    }
}
