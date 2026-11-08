package com.google.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class M2 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final M2 f24273G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final M2 f24274H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final M2 f24275I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final M2 f24276J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final M2 f24277K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final M2 f24278L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final M2 f24279M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ M2[] f24280N;

    static {
        M2 m7 = new M2("NULL_VALUE", 0);
        f24273G = m7;
        M2 m8 = new M2("NUMBER_VALUE", 1);
        f24274H = m8;
        M2 m9 = new M2("STRING_VALUE", 2);
        f24275I = m9;
        M2 m10 = new M2("BOOL_VALUE", 3);
        f24276J = m10;
        M2 m11 = new M2("STRUCT_VALUE", 4);
        f24277K = m11;
        M2 m12 = new M2("LIST_VALUE", 5);
        f24278L = m12;
        M2 m13 = new M2("KIND_NOT_SET", 6);
        f24279M = m13;
        f24280N = new M2[]{m7, m8, m9, m10, m11, m12, m13};
    }

    public static M2 valueOf(String str) {
        return (M2) java.lang.Enum.valueOf(M2.class, str);
    }

    public static M2[] values() {
        return (M2[]) f24280N.clone();
    }
}
