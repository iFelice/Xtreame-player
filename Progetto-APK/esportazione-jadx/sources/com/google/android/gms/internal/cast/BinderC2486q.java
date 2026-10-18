package com.google.android.gms.internal.cast;

import D3.C0158b;
import E1.AbstractC0182q;
import E1.C0181p;
import E1.C0189y;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2486q extends AbstractBinderC2446g {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final H3.b f22780M = new H3.b("MediaRouterProxy", null);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final E1.H f22781H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0158b f22782I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f22783J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C2497t f22784K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f22785L;

    public BinderC2486q(Context context, E1.H h8, C0158b c0158b, H3.t tVar) {
        super("com.google.android.gms.cast.framework.internal.IMediaRouter", 0);
        this.f22783J = new HashMap();
        this.f22781H = h8;
        this.f22782I = c0158b;
        int i8 = Build.VERSION.SDK_INT;
        H3.b bVar = f22780M;
        if (i8 <= 32) {
            Log.i(bVar.f3679a, bVar.c("Don't need to set MediaRouterParams for Android S v2 or below", new Object[0]));
            return;
        }
        bVar.b("Set up MediaRouterParams based on module flag and CastOptions for Android T or above", new Object[0]);
        this.f22784K = new C2497t(c0158b);
        Intent intent = new Intent(context, (Class<?>) E1.S.class);
        intent.setPackage(context.getPackageName());
        boolean z7 = !context.getPackageManager().queryBroadcastReceivers(intent, 0).isEmpty();
        this.f22785L = z7;
        if (z7) {
            D0.a(EnumC2435d0.CAST_OUTPUT_SWITCHER_ENABLED);
        }
        tVar.c(new String[]{"com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"}).a(new F.i(15, this, c0158b));
    }

    public final void j0(MediaSessionCompat mediaSessionCompat) {
        C0189y c0189y;
        this.f22781H.getClass();
        E1.H.b();
        E1.A aC = E1.H.c();
        if (mediaSessionCompat != null) {
            aC.getClass();
            c0189y = new C0189y(aC, mediaSessionCompat);
        } else {
            c0189y = null;
        }
        C0189y c0189y2 = aC.f2582D;
        if (c0189y2 != null) {
            c0189y2.a();
        }
        aC.f2582D = c0189y;
        if (c0189y != null) {
            aC.n();
        }
    }

    public final void r1(C0181p c0181p) {
        Set set = (Set) this.f22783J.get(c0181p);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.f22781H.e((AbstractC0182q) it.next());
        }
    }

    public final void v0(C0181p c0181p, int i8) {
        Set set = (Set) this.f22783J.get(c0181p);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.f22781H.a(c0181p, (AbstractC0182q) it.next(), i8);
        }
    }
}
