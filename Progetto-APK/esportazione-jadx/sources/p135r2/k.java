package p135r2;

import A0.O;
import A2.i;
import B0.C0041c;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.protobuf.U2;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class k implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final q f29813G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f29814H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f29815I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f29816J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f29817K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final m f29818L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Integer f29819M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public l f29820N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f29821O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f29822P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public i f29823Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public b f29824R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public s f29825S;

    public k(int i8, String str, m mVar) {
        Uri uri;
        String host;
        this.f29813G = q.f29841c ? new q() : null;
        this.f29817K = new Object();
        this.f29821O = true;
        int iHashCode = 0;
        this.f29822P = false;
        this.f29824R = null;
        this.f29814H = i8;
        this.f29815I = str;
        this.f29818L = mVar;
        this.f29823Q = new i(2500, 1);
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.f29816J = iHashCode;
    }

    public final void a(String str) {
        if (q.f29841c) {
            this.f29813G.a(Thread.currentThread().getId(), str);
        }
    }

    public abstract void b(Object obj);

    public final void c(String str) {
        l lVar = this.f29820N;
        if (lVar != null) {
            synchronized (((Set) lVar.f29827b)) {
                ((Set) lVar.f29827b).remove(this);
            }
            synchronized (((List) lVar.f29830e)) {
                Iterator it = ((List) lVar.f29830e).iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            }
            lVar.b();
        }
        if (q.f29841c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new j(this, str, id, 0));
            } else {
                this.f29813G.a(id, str);
                this.f29813G.b(toString());
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        k kVar = (k) obj;
        kVar.getClass();
        return this.f29819M.intValue() - kVar.f29819M.intValue();
    }

    public byte[] d() {
        return null;
    }

    public String e() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }

    public final String f() {
        String str = this.f29815I;
        int i8 = this.f29814H;
        if (i8 == 0 || i8 == -1) {
            return str;
        }
        return Integer.toString(i8) + '-' + str;
    }

    public Map g() {
        return Collections.emptyMap();
    }

    public byte[] h() {
        return null;
    }

    public final boolean i() {
        boolean z7;
        synchronized (this.f29817K) {
            z7 = this.f29822P;
        }
        return z7;
    }

    public final void j() {
        synchronized (this.f29817K) {
        }
    }

    public final void k() {
        s sVar;
        synchronized (this.f29817K) {
            sVar = this.f29825S;
        }
        if (sVar != null) {
            sVar.b(this);
        }
    }

    public final void l(C0041c c0041c) {
        s sVar;
        synchronized (this.f29817K) {
            sVar = this.f29825S;
        }
        if (sVar != null) {
            sVar.c(this, c0041c);
        }
    }

    public abstract C0041c m(i iVar);

    public final void n(int i8) {
        l lVar = this.f29820N;
        if (lVar != null) {
            lVar.b();
        }
    }

    public final void o(s sVar) {
        synchronized (this.f29817K) {
            this.f29825S = sVar;
        }
    }

    public final String toString() {
        String str = "0x" + Integer.toHexString(this.f29816J);
        StringBuilder sb = new StringBuilder("[ ] ");
        j();
        a.h(sb, this.f29815I, " ", str, " ");
        sb.append(U2.E(2));
        sb.append(" ");
        sb.append(this.f29819M);
        return sb.toString();
    }
}
