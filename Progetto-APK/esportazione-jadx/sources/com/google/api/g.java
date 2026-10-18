package com.google.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final g f24205G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final g f24206H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final g f24207I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final g f24208J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ g[] f24209K;

    static {
        g gVar = new g("LINEAR_BUCKETS", 0);
        f24205G = gVar;
        g gVar2 = new g("EXPONENTIAL_BUCKETS", 1);
        f24206H = gVar2;
        g gVar3 = new g("EXPLICIT_BUCKETS", 2);
        f24207I = gVar3;
        g gVar4 = new g("OPTIONS_NOT_SET", 3);
        f24208J = gVar4;
        f24209K = new g[]{gVar, gVar2, gVar3, gVar4};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f24209K.clone();
    }
}
