package Y;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import android.view.View;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import okhttp3.HttpUrl;
import p021c4.C0584h;
import p021c4.C0597l0;
import p021c4.I1;

/* JADX INFO: loaded from: classes.dex */
public final class Y implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7804G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f7805H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f7806I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f7807J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f7808K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Object f7809L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Object f7810M;

    public /* synthetic */ Y(Object obj, int i8, Serializable serializable, Object obj2, Object obj3, Object obj4, int i9) {
        this.f7804G = i9;
        this.f7810M = obj;
        this.f7805H = i8;
        this.f7806I = serializable;
        this.f7807J = obj2;
        this.f7808K = obj3;
        this.f7809L = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7804G) {
            case 0:
                break;
            case 1:
                p021c4.T t7 = (p021c4.T) this.f7810M;
                p021c4.Z z7 = ((C0597l0) t7.f10616G).f11257N;
                C0597l0.i(z7);
                if (!z7.f11367H) {
                    Log.println(6, t7.x(), "Persisted config not initialized. Not logging error/warn");
                    return;
                }
                if (t7.f11036I == 0) {
                    C0584h c0584h = ((C0597l0) t7.f10616G).f11256M;
                    if (c0584h.f11194K == null) {
                        synchronized (c0584h) {
                            try {
                                if (c0584h.f11194K == null) {
                                    C0597l0 c0597l0 = (C0597l0) c0584h.f10616G;
                                    ApplicationInfo applicationInfo = c0597l0.f11250G.getApplicationInfo();
                                    String strC = P3.c.c();
                                    if (applicationInfo != null) {
                                        String str = applicationInfo.processName;
                                        c0584h.f11194K = Boolean.valueOf(str != null && str.equals(strC));
                                    }
                                    if (c0584h.f11194K == null) {
                                        c0584h.f11194K = Boolean.TRUE;
                                        p021c4.T t8 = c0597l0.f11258O;
                                        C0597l0.k(t8);
                                        t8.f11039L.a("My process not in the list of running processes");
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    if (c0584h.f11194K.booleanValue()) {
                        t7.f11036I = 'C';
                    } else {
                        t7.f11036I = 'c';
                    }
                    break;
                }
                if (t7.f11037J < 0) {
                    ((C0597l0) t7.f10616G).f11256M.u();
                    t7.f11037J = 119002L;
                }
                char cCharAt = "01VDIWEA?".charAt(this.f7805H);
                char c8 = t7.f11036I;
                long j8 = t7.f11037J;
                String str2 = (String) this.f7806I;
                String strU = p021c4.T.u(true, str2, this.f7807J, this.f7808K, this.f7809L);
                StringBuilder sb = new StringBuilder("2");
                sb.append(cCharAt);
                sb.append(c8);
                sb.append(j8);
                String strJ = p000a.r.j(sb, ":", strU);
                if (strJ.length() > 1024) {
                    strJ = str2.substring(0, 1024);
                }
                p151t2.c cVar = z7.f11089L;
                if (cVar != null) {
                    p021c4.Z z8 = (p021c4.Z) cVar.f30272H;
                    z8.m();
                    if (((p021c4.Z) cVar.f30272H).s().getLong((String) cVar.f30273I, 0L) == 0) {
                        cVar.e();
                    }
                    if (strJ == null) {
                        strJ = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    SharedPreferences sharedPreferencesS = z8.s();
                    String str3 = (String) cVar.f30274J;
                    long j9 = sharedPreferencesS.getLong(str3, 0L);
                    if (j9 <= 0) {
                        SharedPreferences.Editor editorEdit = z8.s().edit();
                        editorEdit.putString((String) cVar.f30275K, strJ);
                        editorEdit.putLong(str3, 1L);
                        editorEdit.apply();
                        return;
                    }
                    I1 i8 = ((C0597l0) z8.f10616G).f11261R;
                    C0597l0.i(i8);
                    long jNextLong = i8.y().nextLong() & Long.MAX_VALUE;
                    long j10 = j9 + 1;
                    long j11 = Long.MAX_VALUE / j10;
                    SharedPreferences.Editor editorEdit2 = z8.s().edit();
                    if (jNextLong < j11) {
                        editorEdit2.putString((String) cVar.f30275K, strJ);
                    }
                    editorEdit2.putLong(str3, j10);
                    editorEdit2.apply();
                    return;
                }
                return;
            default:
                ((p021c4.U) this.f7806I).a((String) this.f7809L, this.f7805H, (Throwable) this.f7807J, (byte[]) this.f7808K, (Map) this.f7810M);
                return;
        }
        for (int i9 = 0; i9 < this.f7805H; i9++) {
            View view = (View) ((ArrayList) this.f7806I).get(i9);
            String str4 = (String) ((ArrayList) this.f7807J).get(i9);
            WeakHashMap weakHashMap = N.N.f4843a;
            N.E.m(view, str4);
            N.E.m((View) ((ArrayList) this.f7808K).get(i9), (String) ((ArrayList) this.f7809L).get(i9));
        }
    }

    public /* synthetic */ Y(String str, p021c4.U u7, int i8, IOException iOException, byte[] bArr, Map map) {
        this.f7804G = 2;
        com.bumptech.glide.c.h(u7);
        this.f7806I = u7;
        this.f7805H = i8;
        this.f7807J = iOException;
        this.f7808K = bArr;
        this.f7809L = str;
        this.f7810M = map;
    }
}
