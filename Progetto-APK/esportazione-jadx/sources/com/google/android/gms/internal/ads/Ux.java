package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class Ux implements com.google.android.gms.internal.measurement.G1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap f16918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f16919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f16920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f16921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Serializable f16923f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f16924g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f16925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f16926i;

    public Ux(int i8) {
        if (i8 != 1) {
            this.f16918a = new HashMap();
            this.f16919b = new HashMap();
            this.f16920c = new HashMap();
            this.f16923f = new HashSet();
            this.f16924g = new HashSet();
            this.f16925h = new HashSet();
            this.f16921d = new HashMap();
            this.f16926i = new WeakHashMap();
            return;
        }
        this.f16923f = new AtomicBoolean();
        this.f16918a = null;
        this.f16919b = new HashMap(16, 1.0f);
        this.f16920c = new HashMap(16, 1.0f);
        this.f16921d = new HashMap(16, 1.0f);
        this.f16924g = new HashMap(16, 1.0f);
        this.f16925h = null;
        this.f16922e = false;
        this.f16926i = new String[0];
    }
}
