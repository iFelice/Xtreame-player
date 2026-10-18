package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class XB implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final XB f17385G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ XB[] f17386H;

    static {
        XB xb = new XB("INSTANCE", 0);
        f17385G = xb;
        f17386H = new XB[]{xb};
    }

    public static XB[] values() {
        return (XB[]) f17386H.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
