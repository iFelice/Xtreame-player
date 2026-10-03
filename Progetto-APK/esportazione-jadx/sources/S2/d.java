package S2;

import T2.e;
import T2.f;
import T2.g;
import T2.i;
import T2.j;
import T2.k;
import T2.l;
import T2.n;
import T2.o;
import T2.q;
import T2.r;
import T2.s;
import T2.t;
import T2.u;
import T2.v;
import V2.h;
import Z3.C0433o;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p086l.C3061x;

/* JADX INFO: loaded from: classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0433o f6408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f6409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f6410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final URL f6411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p028d3.a f6412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p028d3.a f6413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6414g;

    public d(Context context, p028d3.a aVar, p028d3.a aVar2) {
        R4.d dVar = new R4.d();
        T2.c cVar = T2.c.f6538a;
        dVar.a(o.class, cVar);
        dVar.a(i.class, cVar);
        f fVar = f.f6551a;
        dVar.a(s.class, fVar);
        dVar.a(l.class, fVar);
        T2.d dVar2 = T2.d.f6540a;
        dVar.a(q.class, dVar2);
        dVar.a(j.class, dVar2);
        T2.b bVar = T2.b.f6525a;
        dVar.a(T2.a.class, bVar);
        dVar.a(T2.h.class, bVar);
        e eVar = e.f6543a;
        dVar.a(r.class, eVar);
        dVar.a(k.class, eVar);
        g gVar = g.f6559a;
        dVar.a(v.class, gVar);
        dVar.a(n.class, gVar);
        dVar.f6300d = true;
        this.f6408a = new C0433o(dVar, 13);
        this.f6410c = context;
        this.f6409b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f6411d = b(a.f6396c);
        this.f6412e = aVar2;
        this.f6413f = aVar;
        this.f6414g = 130000;
    }

    public static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e8) {
            throw new IllegalArgumentException(p148t.a.c("Invalid url: ", str), e8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00af  */
    /* JADX WARN: Code duplicated, block: B:30:0x010a  */
    public final U2.h a(U2.h hVar) {
        int type;
        int subtype;
        Map map;
        NetworkInfo activeNetworkInfo = this.f6409b.getActiveNetworkInfo();
        C3061x c3061xC = hVar.c();
        int i8 = Build.VERSION.SDK_INT;
        Map map2 = (Map) c3061xC.f26415L;
        if (map2 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map2.put("sdk-version", String.valueOf(i8));
        c3061xC.c("model", Build.MODEL);
        c3061xC.c("hardware", Build.HARDWARE);
        c3061xC.c("device", Build.DEVICE);
        c3061xC.c("product", Build.PRODUCT);
        c3061xC.c("os-uild", Build.ID);
        c3061xC.c("manufacturer", Build.MANUFACTURER);
        c3061xC.c("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
        Map map3 = (Map) c3061xC.f26415L;
        if (map3 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map3.put("tz-offset", String.valueOf(offset));
        int i9 = -1;
        if (activeNetworkInfo == null) {
            SparseArray sparseArray = u.f6598G;
            type = -1;
        } else {
            type = activeNetworkInfo.getType();
        }
        Map map4 = (Map) c3061xC.f26415L;
        if (map4 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map4.put("net-type", String.valueOf(type));
        if (activeNetworkInfo != null) {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                SparseArray sparseArray2 = t.f6596G;
                subtype = 100;
            } else if (((t) t.f6596G.get(subtype)) == null) {
            }
            map = (Map) c3061xC.f26415L;
            if (map != null) {
                throw new IllegalStateException("Property \"autoMetadata\" has not been set");
            }
            map.put("mobile-subtype", String.valueOf(subtype));
            c3061xC.c("country", Locale.getDefault().getCountry());
            c3061xC.c("locale", Locale.getDefault().getLanguage());
            Context context = this.f6410c;
            c3061xC.c("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
            try {
                i9 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e8) {
                E3.f.k("CctTransportBackend", "Unable to find version code for package", e8);
            }
            c3061xC.c("application_build", Integer.toString(i9));
            return c3061xC.e();
        }
        SparseArray sparseArray3 = t.f6596G;
        subtype = 0;
        map = (Map) c3061xC.f26415L;
        if (map != null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map.put("mobile-subtype", String.valueOf(subtype));
        c3061xC.c("country", Locale.getDefault().getCountry());
        c3061xC.c("locale", Locale.getDefault().getLanguage());
        Context context2 = this.f6410c;
        c3061xC.c("mcc_mnc", ((TelephonyManager) context2.getSystemService("phone")).getSimOperator());
        i9 = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode;
        c3061xC.c("application_build", Integer.toString(i9));
        return c3061xC.e();
    }
}
