package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.or, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1794or {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1229dw f20337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1842pn f20338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0738Fn f20339c;

    public C1794or(C1229dw c1229dw, C1842pn c1842pn, C0738Fn c0738Fn) {
        this.f20337a = c1229dw;
        this.f20338b = c1842pn;
        this.f20339c = c0738Fn;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0055  */
    public final void a(Qv qv, Ov ov, int i8, C2052tq c2052tq, long j8) {
        String strGroup;
        C0871Om c0871OmA = this.f20339c.a();
        c0871OmA.n("gqi", qv.f16150b);
        c0871OmA.q(ov);
        c0871OmA.n("action", "adapter_status");
        c0871OmA.n("adapter_l", String.valueOf(j8));
        c0871OmA.n("sc", Integer.toString(i8));
        C1790on c1790on = null;
        if (c2052tq != null) {
            c0871OmA.n("arec", Integer.toString(c2052tq.f21151H.f26629G));
            String message = c2052tq.getMessage();
            Pattern pattern = this.f20337a.f18389a;
            if (pattern == null || message == null) {
                strGroup = null;
            } else {
                Matcher matcher = pattern.matcher(message);
                if (matcher.find()) {
                    strGroup = matcher.group();
                } else {
                    strGroup = null;
                }
            }
            if (strGroup != null) {
                c0871OmA.n("areec", strGroup);
            }
        }
        Iterator it = ov.f15284t.iterator();
        while (it.hasNext()) {
            C1790on c1790onA = this.f20338b.a((String) it.next());
            if (c1790onA != null) {
                c1790on = c1790onA;
                break;
            }
        }
        if (c1790on != null) {
            c0871OmA.n("ancn", c1790on.f20331a);
            C0860Ob c0860Ob = c1790on.f20332b;
            if (c0860Ob != null) {
                c0871OmA.n("adapter_v", c0860Ob.toString());
            }
            C0860Ob c0860Ob2 = c1790on.f20333c;
            if (c0860Ob2 != null) {
                c0871OmA.n("adapter_sv", c0860Ob2.toString());
            }
        }
        c0871OmA.u();
    }
}
