package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class Wp extends p039f.H {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SparseArray f17323h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f17324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1062aj f17325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TelephonyManager f17326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Up f17327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17328g;

    static {
        SparseArray sparseArray = new SparseArray();
        f17323h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), L6.CONNECTED);
        int iOrdinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        L6 l8 = L6.CONNECTING;
        sparseArray.put(iOrdinal, l8);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), l8);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), l8);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), L6.DISCONNECTING);
        int iOrdinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        L6 l9 = L6.DISCONNECTED;
        sparseArray.put(iOrdinal2, l9);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), l9);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), l9);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), l9);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), l9);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), L6.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), l8);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), l8);
    }

    public Wp(Context context, C1062aj c1062aj, Up up, Rp rp, p113o3.L l4) {
        super(rp, l4);
        this.f17324c = context;
        this.f17325d = c1062aj;
        this.f17327f = up;
        this.f17326e = (TelephonyManager) context.getSystemService("phone");
    }
}
