package com.google.android.gms.internal.cast;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2509w implements InterfaceC2505v {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final H3.b f22806j = new H3.b("ConnectivityMonitor", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final M1 f22807a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConnectivityManager f22809c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f22812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f22813g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f22814h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Set f22815i = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f22810d = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f22811e = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p082k2.h f22808b = new p082k2.h(this, 4);

    public C2509w(Context context, M1 m7) {
        this.f22807a = m7;
        this.f22813g = context;
        this.f22809c = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public final void a(Network network, LinkProperties linkProperties) {
        Object obj = this.f22814h;
        com.bumptech.glide.c.h(obj);
        synchronized (obj) {
            try {
                if (this.f22810d != null && this.f22811e != null) {
                    f22806j.b("a new network is available", new Object[0]);
                    if (this.f22810d.containsKey(network)) {
                        this.f22811e.remove(network);
                    }
                    this.f22810d.put(network, linkProperties);
                    this.f22811e.add(network);
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        if (this.f22807a == null) {
            return;
        }
        synchronized (this.f22815i) {
            try {
                Iterator it = this.f22815i.iterator();
                while (it.hasNext()) {
                    A0.O.I(it.next());
                    if (!((N1) this.f22807a).f22504G.isShutdown()) {
                        ((N1) this.f22807a).execute(new K3.V(this, (Object) null, 3));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2505v
    public final void zza() {
        ConnectivityManager connectivityManager;
        LinkProperties linkProperties;
        f22806j.b("Start monitoring connectivity changes", new Object[0]);
        if (this.f22812f || (connectivityManager = this.f22809c) == null || U4.a.b(this.f22813g, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork != null && (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) != null) {
            a(activeNetwork, linkProperties);
        }
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).build(), this.f22808b);
        this.f22812f = true;
    }
}
