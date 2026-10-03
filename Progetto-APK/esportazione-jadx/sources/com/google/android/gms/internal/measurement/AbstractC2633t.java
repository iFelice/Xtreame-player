package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2633t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f23254a = new ArrayList();

    public final void a(String str) {
        if (!this.f23254a.contains(Cw.x1(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
    }
}
