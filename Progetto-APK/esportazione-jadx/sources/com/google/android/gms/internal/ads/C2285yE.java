package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2285yE implements InterfaceC2321yz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22009G;

    @Override // com.google.android.gms.internal.ads.InterfaceC2321yz
    public final boolean zza(Object obj) {
        switch (this.f22009G) {
            case 0:
                return ((Map.Entry) obj).getKey() != null;
            default:
                return ((String) obj) != null;
        }
    }
}
