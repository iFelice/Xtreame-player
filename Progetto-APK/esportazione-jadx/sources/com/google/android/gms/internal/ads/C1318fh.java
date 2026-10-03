package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1318fh implements InterfaceC1215dh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p113o3.K f18789b;

    public /* synthetic */ C1318fh(p113o3.L l4, int i8) {
        this.f18788a = i8;
        this.f18789b = l4;
    }

    private final void b(HashMap map) {
        boolean z7 = Boolean.parseBoolean((String) map.get("content_url_opted_out"));
        p113o3.L l4 = (p113o3.L) this.f18789b;
        l4.s();
        synchronized (l4.f27894a) {
            try {
                if (l4.f27914u == z7) {
                    return;
                }
                l4.f27914u = z7;
                SharedPreferences.Editor editor = l4.f27900g;
                if (editor != null) {
                    editor.putBoolean("content_url_opted_out", z7);
                    l4.f27900g.apply();
                }
                l4.t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1215dh
    public final void a(HashMap map) {
        switch (this.f18788a) {
            case 0:
                b(map);
                return;
            default:
                boolean z7 = Boolean.parseBoolean((String) map.get("content_vertical_opted_out"));
                p113o3.L l4 = (p113o3.L) this.f18789b;
                l4.s();
                synchronized (l4.f27894a) {
                    try {
                        if (l4.f27915v == z7) {
                            return;
                        }
                        l4.f27915v = z7;
                        SharedPreferences.Editor editor = l4.f27900g;
                        if (editor != null) {
                            editor.putBoolean("content_vertical_opted_out", z7);
                            l4.f27900g.apply();
                        }
                        l4.t();
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
