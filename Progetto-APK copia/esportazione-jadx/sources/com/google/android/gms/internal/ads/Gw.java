package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class Gw {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1298fC f13664d = Cw.N1(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f13665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f13666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Hw f13667c;

    public Gw(C1936re c1936re, ScheduledExecutorService scheduledExecutorService, C0720Ek c0720Ek) {
        this.f13665a = c1936re;
        this.f13666b = scheduledExecutorService;
        this.f13667c = c0720Ek;
    }

    public final p004a3.b a(Iw iw, D4.b... bVarArr) {
        return new p004a3.b(this, iw, Arrays.asList(bVarArr));
    }

    public final C1950rs b(D4.b bVar, Iw iw) {
        return new C1950rs(this, iw, null, bVar, Collections.singletonList(bVar), bVar);
    }
}
