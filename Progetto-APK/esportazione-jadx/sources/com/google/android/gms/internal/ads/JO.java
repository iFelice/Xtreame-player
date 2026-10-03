package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class JO {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final S0.g f14150e = new S0.g(2, -9223372036854775807L, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final S0.g f14151f = new S0.g(3, -9223372036854775807L, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f14152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RunnableC1026Zn f14153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GO f14154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public IOException f14155d;

    public JO() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC2055tt(0));
        this.f14152a = executorServiceNewSingleThreadExecutor;
        Objects.requireNonNull(executorServiceNewSingleThreadExecutor);
        this.f14153b = new RunnableC1026Zn(executorServiceNewSingleThreadExecutor, 24);
    }
}
