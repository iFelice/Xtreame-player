package p167v3;

import U2.m;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0693Cn;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p079k.RunnableC3015g;
import p083k3.l;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f30568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f30569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f30570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f30571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f30572f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f30573g = new ArrayDeque();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0783In f30574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ConcurrentHashMap f30575i;

    public C(C0783In c0783In) {
        this.f30574h = c0783In;
        J7 j8 = Q7.f15953u6;
        C3099q c3099q = C3099q.f26624d;
        this.f30567a = ((Integer) c3099q.f26627c.a(j8)).intValue();
        J7 j9 = Q7.f15960v6;
        O7 o7 = c3099q.f26627c;
        this.f30568b = ((Long) o7.a(j9)).longValue();
        this.f30569c = ((Boolean) o7.a(Q7.f15992z6)).booleanValue();
        this.f30570d = ((Boolean) o7.a(Q7.f15984y6)).booleanValue();
        this.f30571e = Collections.synchronizedMap(new A(this));
    }

    public final synchronized String a(String str, C0693Cn c0693Cn) {
        try {
            B b8 = (B) this.f30571e.get(str);
            c0693Cn.f12691a.put("request_id", str);
            if (b8 == null) {
                c0693Cn.f12691a.put("mhit", "false");
                return null;
            }
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15731T6)).booleanValue()) {
                this.f30571e.remove(str);
            }
            String str2 = b8.f30565b;
            c0693Cn.f12691a.put("mhit", "true");
            return str2;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(String str) {
        this.f30571e.remove(str);
    }

    public final synchronized boolean c(int i8, String str, String str2) {
        B b8 = (B) this.f30571e.get(str);
        if (b8 == null) {
            return false;
        }
        b8.f30566c.add(str2);
        return b8.f30566c.size() < i8;
    }

    public final synchronized boolean d(String str, String str2) {
        B b8 = (B) this.f30571e.get(str);
        return b8 != null && b8.f30566c.contains(str2);
    }

    public final synchronized void e(C0693Cn c0693Cn) {
        if (this.f30569c) {
            ArrayDeque arrayDeque = this.f30573g;
            ArrayDeque arrayDequeClone = arrayDeque.clone();
            arrayDeque.clear();
            ArrayDeque arrayDeque2 = this.f30572f;
            ArrayDeque arrayDequeClone2 = arrayDeque2.clone();
            arrayDeque2.clear();
            AbstractC1988se.f20906a.execute(new RunnableC3015g(this, c0693Cn, arrayDequeClone, arrayDequeClone2, 5, 0));
        }
    }

    public final void f(C0693Cn c0693Cn, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(c0693Cn.f12691a);
            this.f30575i = concurrentHashMap;
            concurrentHashMap.put("action", "ev");
            this.f30575i.put("e_r", str);
            this.f30575i.put("e_id", (String) pair2.first);
            if (this.f30570d) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(m.j(jSONObject.getJSONObject("extras").getString("query_info_type")), jSONObject.getString("request_agent"));
                } catch (JSONException unused) {
                    pair = new Pair(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET);
                }
                ConcurrentHashMap concurrentHashMap2 = this.f30575i;
                String str2 = (String) pair.first;
                if (!TextUtils.isEmpty(str2)) {
                    concurrentHashMap2.put("e_type", str2);
                }
                ConcurrentHashMap concurrentHashMap3 = this.f30575i;
                String str3 = (String) pair.second;
                if (!TextUtils.isEmpty(str3)) {
                    concurrentHashMap3.put("e_agent", str3);
                }
            }
            this.f30574h.a(this.f30575i, false);
        }
    }

    public final synchronized void g() {
        try {
            l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                Iterator it = this.f30571e.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (jCurrentTimeMillis - ((B) entry.getValue()).f30564a.longValue() <= this.f30568b) {
                        break;
                    }
                    this.f30573g.add(new Pair((String) entry.getKey(), ((B) entry.getValue()).f30565b));
                    it.remove();
                    throw th;
                }
            } catch (ConcurrentModificationException e8) {
                l.f25980A.f25987g.i("QueryJsonMap.removeExpiredEntries", e8);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
