package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class UD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f16817a = Logger.getLogger(UD.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f16818b = new AtomicBoolean(false);

    public static boolean a() {
        return f16818b.get();
    }
}
