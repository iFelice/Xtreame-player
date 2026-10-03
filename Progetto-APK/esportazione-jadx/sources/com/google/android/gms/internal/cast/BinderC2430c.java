package com.google.android.gms.internal.cast;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2430c extends D3.l {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final H3.b f22655J = new H3.b("AppVisibilityProxy", null);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final int f22656K = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Set f22657H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f22658I;

    public BinderC2430c() {
        super("com.google.android.gms.cast.framework.IAppVisibilityListener", 0);
        this.f22657H = Collections.synchronizedSet(new HashSet());
        this.f22658I = f22656K;
    }
}
