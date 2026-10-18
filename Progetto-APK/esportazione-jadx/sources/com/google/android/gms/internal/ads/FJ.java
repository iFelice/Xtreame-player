package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class FJ implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f13346a;

    public FJ(LinkedHashMap linkedHashMap) {
        this.f13346a = Collections.unmodifiableMap(linkedHashMap);
    }
}
