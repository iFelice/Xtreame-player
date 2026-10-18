package com.google.android.gms.internal.ads;

import java.util.HashMap;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1842pn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f20485a = new HashMap();

    public final synchronized C1790on a(String str) {
        return (C1790on) this.f20485a.get(str);
    }

    public final synchronized void b(String str, C1385gw c1385gw) {
        C0860Ob c0860ObZzl;
        if (this.f20485a.containsKey(str)) {
            return;
        }
        C0860Ob c0860ObZzm = null;
        if (c1385gw == null) {
            c0860ObZzl = null;
        } else {
            try {
                c0860ObZzl = c1385gw.f19025a.zzl();
            } catch (Throwable th) {
                try {
                    throw new C1075aw(th);
                } catch (C1075aw unused) {
                }
            }
        }
        if (c1385gw != null) {
            try {
                c0860ObZzm = c1385gw.f19025a.zzm();
            } catch (Throwable th2) {
                try {
                    throw new C1075aw(th2);
                } catch (C1075aw unused2) {
                }
            }
        }
        boolean z7 = true;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.E8)).booleanValue()) {
            if (c1385gw == null) {
                z7 = false;
            } else {
                try {
                    c1385gw.a();
                } catch (C1075aw unused3) {
                    z7 = false;
                }
            }
        }
        this.f20485a.put(str, new C1790on(str, c0860ObZzl, c0860ObZzm, z7));
    }
}
