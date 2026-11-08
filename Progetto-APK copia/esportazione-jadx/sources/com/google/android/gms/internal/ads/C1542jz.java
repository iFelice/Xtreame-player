package com.google.android.gms.internal.ads;

import C2.C0091g;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1542jz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final J f19538c = new J("OverlayDisplayService", 11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Intent f19539d = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1854pz f19540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19541b;

    public C1542jz(Context context) {
        if (AbstractC1906qz.a(context)) {
            this.f19540a = new C1854pz(context.getApplicationContext(), f19538c, f19539d);
        } else {
            this.f19540a = null;
        }
        this.f19541b = context.getPackageName();
    }

    public static void b(String str, C1388gz c1388gz) {
        if ((str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str).trim().isEmpty()) {
            return;
        }
        str.getClass();
        c1388gz.accept(str.trim());
    }

    public static boolean c(C0091g c0091g, String str, List list) {
        if (list.stream().anyMatch(new C1440hz())) {
            return true;
        }
        f19538c.b(str, new Object[0]);
        c0091g.u(new C1284ez(8160, null));
        return false;
    }

    public final void a(int i8, C0091g c0091g, C1336fz c1336fz) {
        C1854pz c1854pz = this.f19540a;
        if (c1854pz == null) {
            f19538c.b("error: %s", "Play Store not found.");
        } else if (c(c0091g, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken.", Arrays.asList(c1336fz.f18855a, c1336fz.f18856b))) {
            c1854pz.a(new RunnableC1698mz(c1854pz, new RunnableC1368gf(this, c1336fz, i8, c0091g), 1));
        }
    }
}
