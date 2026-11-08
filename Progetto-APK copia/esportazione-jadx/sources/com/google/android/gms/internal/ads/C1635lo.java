package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1635lo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1273eo f19844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1842pn f19845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f19846c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f19847d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19848e;

    public C1635lo(C1273eo c1273eo, C1842pn c1842pn) {
        this.f19844a = c1273eo;
        this.f19845b = c1842pn;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042 A[Catch: all -> 0x001a, LOOP:0: B:15:0x003c->B:17:0x0042, LOOP_END, TryCatch #0 {all -> 0x001a, blocks: (B:4:0x0008, B:6:0x000c, B:8:0x0012, B:11:0x001c, B:12:0x0034, B:14:0x0036, B:15:0x003c, B:17:0x0042, B:18:0x0050), top: B:22:0x0008 }] */
    public final JSONArray a() {
        Iterator it;
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f19846c) {
            try {
                if (this.f19848e) {
                    it = this.f19847d.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(((C1583ko) it.next()).a());
                    }
                } else {
                    C1273eo c1273eo = this.f19844a;
                    if (c1273eo.f18588b) {
                        b(c1273eo.a());
                        it = this.f19847d.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(((C1583ko) it.next()).a());
                        }
                    } else {
                        BinderC1531jo binderC1531jo = new BinderC1531jo(this);
                        C1273eo c1273eo2 = this.f19844a;
                        c1273eo2.getClass();
                        c1273eo2.f18591e.a(new RunnableC0755Ha(29, c1273eo2, binderC1531jo), c1273eo2.f18596j);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONArray;
    }

    public final void b(ArrayList arrayList) {
        C0860Ob c0860Ob;
        C1790on c1790onA;
        C1790on c1790onA2;
        C0860Ob c0860Ob2;
        synchronized (this.f19846c) {
            try {
                if (this.f19848e) {
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C1311fa c1311fa = (C1311fa) it.next();
                    J7 j8 = Q7.D8;
                    C3099q c3099q = C3099q.f26624d;
                    String string = (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || (c1790onA2 = this.f19845b.a(c1311fa.f18761G)) == null || (c0860Ob2 = c1790onA2.f20333c) == null) ? HttpUrl.FRAGMENT_ENCODE_SET : c0860Ob2.toString();
                    String str = string;
                    boolean z7 = ((Boolean) c3099q.f26627c.a(Q7.E8)).booleanValue() && (c1790onA = this.f19845b.a(c1311fa.f18761G)) != null && c1790onA.f20334d;
                    ArrayList arrayList2 = this.f19847d;
                    String str2 = c1311fa.f18761G;
                    C1790on c1790onA3 = this.f19845b.a(str2);
                    arrayList2.add(new C1583ko(str2, str, (c1790onA3 == null || (c0860Ob = c1790onA3.f20332b) == null) ? HttpUrl.FRAGMENT_ENCODE_SET : c0860Ob.toString(), c1311fa.f18762H ? 1 : 0, c1311fa.f18764J, c1311fa.f18763I, z7));
                }
                this.f19848e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
