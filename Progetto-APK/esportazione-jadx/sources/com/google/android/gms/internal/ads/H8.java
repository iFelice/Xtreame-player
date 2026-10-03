package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class H8 extends O8 {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final int f13718O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final int f13719P;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f13720G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f13721H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f13722I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f13723J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f13724K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f13725L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f13726M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f13727N;

    static {
        int iRgb = Color.rgb(12, 174, 206);
        f13718O = Color.rgb(204, 204, 204);
        f13719P = iRgb;
    }

    public H8(String str, List list, Integer num, Integer num2, Integer num3, int i8, int i9) {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        this.f13721H = new ArrayList();
        this.f13722I = new ArrayList();
        this.f13720G = str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            K8 k8 = (K8) list.get(i10);
            this.f13721H.add(k8);
            this.f13722I.add(k8);
        }
        this.f13723J = num != null ? num.intValue() : f13718O;
        this.f13724K = num2 != null ? num2.intValue() : f13719P;
        this.f13725L = num3 != null ? num3.intValue() : 12;
        this.f13726M = i8;
        this.f13727N = i9;
    }

    @Override // com.google.android.gms.internal.ads.P8
    public final String zzg() {
        return this.f13720G;
    }

    @Override // com.google.android.gms.internal.ads.P8
    public final ArrayList zzh() {
        return this.f13722I;
    }
}
