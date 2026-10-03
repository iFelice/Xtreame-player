package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class XM implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1103bN f17411G;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Pattern pattern = AbstractC1154cN.f18220a;
        InterfaceC1103bN interfaceC1103bN = this.f17411G;
        return interfaceC1103bN.zza(obj2) - interfaceC1103bN.zza(obj);
    }
}
