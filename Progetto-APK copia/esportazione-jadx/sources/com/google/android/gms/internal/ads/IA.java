package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class IA extends AbstractC2987b {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Comparator f13858M;

    public IA(NA na) {
        this.f13858M = na;
    }

    @Override // p039f.AbstractC2987b
    public final Map b0() {
        return new TreeMap(this.f13858M);
    }
}
