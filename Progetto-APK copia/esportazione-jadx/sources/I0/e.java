package I0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3821a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f3823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Uri f3824d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3830j;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Boolean f3835o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f3836p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f3837q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f3822b = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3825e = -9223372036854775807L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3826f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3827g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3828h = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f3829i = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3831k = -9223372036854775807L;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f3832l = -9223372036854775807L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List f3833m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List f3834n = new ArrayList();

    public e(String str) {
        this.f3821a = str;
    }

    public final f a() {
        Uri uri = this.f3824d;
        if ((uri != null || this.f3823c == null) && (uri == null || this.f3823c != null)) {
            return null;
        }
        long j8 = this.f3825e;
        if (j8 == -9223372036854775807L) {
            return null;
        }
        Uri uri2 = this.f3823c;
        long j9 = this.f3826f;
        long j10 = this.f3827g;
        long j11 = this.f3828h;
        List list = this.f3829i;
        boolean z7 = this.f3830j;
        long j12 = this.f3831k;
        long j13 = this.f3832l;
        List list2 = this.f3833m;
        List list3 = this.f3834n;
        ArrayList arrayList = new ArrayList(this.f3822b.values());
        Boolean bool = this.f3835o;
        boolean z8 = bool == null || bool.booleanValue();
        String str = this.f3836p;
        if (str == null) {
            str = "POINT";
        }
        String str2 = str;
        String str3 = this.f3837q;
        if (str3 == null) {
            str3 = "HIGHLIGHT";
        }
        return new f(this.f3821a, uri2, uri, j8, j9, j10, j11, list, z7, j12, j13, list2, list3, arrayList, z8, str2, str3);
    }

    public final void b(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            d dVar = (d) arrayList.get(i8);
            String str = dVar.f3817a;
            HashMap map = this.f3822b;
            d dVar2 = (d) map.get(str);
            if (dVar2 != null) {
                boolean zEquals = dVar2.equals(dVar);
                StringBuilder sbP = U2.p("Can't change ", str, " from ");
                sbP.append(dVar2.f3820d);
                sbP.append(" ");
                sbP.append(dVar2.f3819c);
                sbP.append(" to ");
                sbP.append(dVar.f3820d);
                sbP.append(" ");
                sbP.append(dVar.f3819c);
                H1.c(sbP.toString(), zEquals);
            }
            map.put(str, dVar);
        }
    }

    public final void c(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (!this.f3834n.isEmpty()) {
            boolean zEquals = this.f3834n.equals(arrayList);
            StringBuilder sb = new StringBuilder("Can't change restrictions from ");
            List list = this.f3834n;
            StringBuilder sb2 = new StringBuilder();
            Iterator it = list.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb2.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    } else {
                        sb2.append((CharSequence) ", ");
                    }
                }
            }
            sb.append(sb2.toString());
            sb.append(" to ");
            StringBuilder sb3 = new StringBuilder();
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                while (true) {
                    sb3.append((CharSequence) it2.next());
                    if (!it2.hasNext()) {
                        break;
                    } else {
                        sb3.append((CharSequence) ", ");
                    }
                }
            }
            sb.append(sb3.toString());
            H1.c(sb.toString(), zEquals);
        }
        this.f3834n = arrayList;
    }

    public final void d(String str) {
        if (str == null) {
            return;
        }
        String str2 = this.f3837q;
        if (str2 != null) {
            H1.c("Can't change timelineStyle from " + this.f3837q + " to " + str, str2.equals(str));
        }
        this.f3837q = str;
    }
}
