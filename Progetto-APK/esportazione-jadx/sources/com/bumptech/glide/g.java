package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final g f11535G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final g f11536H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final g f11537I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final g f11538J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ g[] f11539K;

    static {
        g gVar = new g("IMMEDIATE", 0);
        f11535G = gVar;
        g gVar2 = new g("HIGH", 1);
        f11536H = gVar2;
        g gVar3 = new g("NORMAL", 2);
        f11537I = gVar3;
        g gVar4 = new g("LOW", 3);
        f11538J = gVar4;
        f11539K = new g[]{gVar, gVar2, gVar3, gVar4};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f11539K.clone();
    }
}
