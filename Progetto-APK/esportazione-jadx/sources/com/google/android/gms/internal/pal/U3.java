package com.google.android.gms.internal.pal;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class U3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f23667a = Logger.getLogger(U3.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f23668b = new AtomicBoolean(false);

    public static boolean a() {
        return f23668b.get();
    }
}
